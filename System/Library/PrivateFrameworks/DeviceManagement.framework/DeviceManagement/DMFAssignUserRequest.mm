@interface DMFAssignUserRequest
- (DMFAssignUserRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFAssignUserRequest

- (DMFAssignUserRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = DMFAssignUserRequest;
  v5 = [(CATTaskRequest *)&v42 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v19;

    v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"fullScreenImageURL"];
    fullScreenImageURL = v5->_fullScreenImageURL;
    v5->_fullScreenImageURL = v25;

    v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"passcodeType"];
    passcodeType = v5->_passcodeType;
    v5->_passcodeType = v31;

    v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"password"];
    password = v5->_password;
    v5->_password = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"enrolledGroupIdentifiers"];
    enrolledGroupIdentifiers = v5->_enrolledGroupIdentifiers;
    v5->_enrolledGroupIdentifiers = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = DMFAssignUserRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v16 encodeWithCoder:coderCopy];
  v5 = [(DMFAssignUserRequest *)self userIdentifier:v16.receiver];
  [coderCopy encodeObject:v5 forKey:@"userIdentifier"];

  groupID = [(DMFAssignUserRequest *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];

  displayName = [(DMFAssignUserRequest *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  givenName = [(DMFAssignUserRequest *)self givenName];
  [coderCopy encodeObject:givenName forKey:@"givenName"];

  familyName = [(DMFAssignUserRequest *)self familyName];
  [coderCopy encodeObject:familyName forKey:@"familyName"];

  imageURL = [(DMFAssignUserRequest *)self imageURL];
  [coderCopy encodeObject:imageURL forKey:@"imageURL"];

  fullScreenImageURL = [(DMFAssignUserRequest *)self fullScreenImageURL];
  [coderCopy encodeObject:fullScreenImageURL forKey:@"fullScreenImageURL"];

  appleID = [(DMFAssignUserRequest *)self appleID];
  [coderCopy encodeObject:appleID forKey:@"appleID"];

  passcodeType = [(DMFAssignUserRequest *)self passcodeType];
  [coderCopy encodeObject:passcodeType forKey:@"passcodeType"];

  password = [(DMFAssignUserRequest *)self password];
  [coderCopy encodeObject:password forKey:@"password"];

  enrolledGroupIdentifiers = [(DMFAssignUserRequest *)self enrolledGroupIdentifiers];
  [coderCopy encodeObject:enrolledGroupIdentifiers forKey:@"enrolledGroupIdentifiers"];
}

@end