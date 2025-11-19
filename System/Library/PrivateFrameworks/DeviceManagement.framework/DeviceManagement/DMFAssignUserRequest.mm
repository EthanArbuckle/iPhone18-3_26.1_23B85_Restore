@interface DMFAssignUserRequest
- (DMFAssignUserRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFAssignUserRequest

- (DMFAssignUserRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = DMFAssignUserRequest;
  v5 = [(CATTaskRequest *)&v42 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v19;

    v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"fullScreenImageURL"];
    fullScreenImageURL = v5->_fullScreenImageURL;
    v5->_fullScreenImageURL = v25;

    v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"passcodeType"];
    passcodeType = v5->_passcodeType;
    v5->_passcodeType = v31;

    v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"password"];
    password = v5->_password;
    v5->_password = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"enrolledGroupIdentifiers"];
    enrolledGroupIdentifiers = v5->_enrolledGroupIdentifiers;
    v5->_enrolledGroupIdentifiers = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = DMFAssignUserRequest;
  v4 = a3;
  [(CATTaskRequest *)&v16 encodeWithCoder:v4];
  v5 = [(DMFAssignUserRequest *)self userIdentifier:v16.receiver];
  [v4 encodeObject:v5 forKey:@"userIdentifier"];

  v6 = [(DMFAssignUserRequest *)self groupID];
  [v4 encodeObject:v6 forKey:@"groupID"];

  v7 = [(DMFAssignUserRequest *)self displayName];
  [v4 encodeObject:v7 forKey:@"displayName"];

  v8 = [(DMFAssignUserRequest *)self givenName];
  [v4 encodeObject:v8 forKey:@"givenName"];

  v9 = [(DMFAssignUserRequest *)self familyName];
  [v4 encodeObject:v9 forKey:@"familyName"];

  v10 = [(DMFAssignUserRequest *)self imageURL];
  [v4 encodeObject:v10 forKey:@"imageURL"];

  v11 = [(DMFAssignUserRequest *)self fullScreenImageURL];
  [v4 encodeObject:v11 forKey:@"fullScreenImageURL"];

  v12 = [(DMFAssignUserRequest *)self appleID];
  [v4 encodeObject:v12 forKey:@"appleID"];

  v13 = [(DMFAssignUserRequest *)self passcodeType];
  [v4 encodeObject:v13 forKey:@"passcodeType"];

  v14 = [(DMFAssignUserRequest *)self password];
  [v4 encodeObject:v14 forKey:@"password"];

  v15 = [(DMFAssignUserRequest *)self enrolledGroupIdentifiers];
  [v4 encodeObject:v15 forKey:@"enrolledGroupIdentifiers"];
}

@end