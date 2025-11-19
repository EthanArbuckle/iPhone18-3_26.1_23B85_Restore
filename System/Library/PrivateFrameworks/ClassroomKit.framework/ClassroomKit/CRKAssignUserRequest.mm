@interface CRKAssignUserRequest
- (CRKAssignUserRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKAssignUserRequest

- (CRKAssignUserRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = CRKAssignUserRequest;
  v5 = [(CATTaskRequest *)&v42 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v19;

    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v22;

    v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"fullScreenImageURL"];
    fullScreenImageURL = v5->_fullScreenImageURL;
    v5->_fullScreenImageURL = v25;

    v27 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v28;

    v30 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"passcodeType"];
    passcodeType = v5->_passcodeType;
    v5->_passcodeType = v31;

    v33 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"password"];
    password = v5->_password;
    v5->_password = v34;

    v36 = MEMORY[0x277CBEB98];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"enrolledCourseIdentifiers"];
    enrolledCourseIdentifiers = v5->_enrolledCourseIdentifiers;
    v5->_enrolledCourseIdentifiers = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = CRKAssignUserRequest;
  v4 = a3;
  [(CATTaskRequest *)&v16 encodeWithCoder:v4];
  v5 = [(CRKAssignUserRequest *)self userIdentifier:v16.receiver];
  [v4 encodeObject:v5 forKey:@"userIdentifier"];

  v6 = [(CRKAssignUserRequest *)self groupID];
  [v4 encodeObject:v6 forKey:@"groupID"];

  v7 = [(CRKAssignUserRequest *)self displayName];
  [v4 encodeObject:v7 forKey:@"displayName"];

  v8 = [(CRKAssignUserRequest *)self givenName];
  [v4 encodeObject:v8 forKey:@"givenName"];

  v9 = [(CRKAssignUserRequest *)self familyName];
  [v4 encodeObject:v9 forKey:@"familyName"];

  v10 = [(CRKAssignUserRequest *)self imageURL];
  [v4 encodeObject:v10 forKey:@"imageURL"];

  v11 = [(CRKAssignUserRequest *)self fullScreenImageURL];
  [v4 encodeObject:v11 forKey:@"fullScreenImageURL"];

  v12 = [(CRKAssignUserRequest *)self appleID];
  [v4 encodeObject:v12 forKey:@"appleID"];

  v13 = [(CRKAssignUserRequest *)self passcodeType];
  [v4 encodeObject:v13 forKey:@"passcodeType"];

  v14 = [(CRKAssignUserRequest *)self password];
  [v4 encodeObject:v14 forKey:@"password"];

  v15 = [(CRKAssignUserRequest *)self enrolledCourseIdentifiers];
  [v4 encodeObject:v15 forKey:@"enrolledCourseIdentifiers"];
}

@end