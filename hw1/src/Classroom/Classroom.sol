// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    mapping(address => bool) _isEnrolled;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if(!_isEnrolled[msg.sender]){
            _isEnrolled[msg.sender] = true;
            return 1000;
        }
        return 123;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(!IClassroomV2(msg.sender).isEnrolled()){
            return 1000;
        }
        return 123;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
    }
}
