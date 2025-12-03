@interface CRKSetUserPropertiesRequest
- (CRKSetUserPropertiesRequest)initWithCoder:(id)coder;
- (CRKSetUserPropertiesRequest)initWithUser:(id)user;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetUserPropertiesRequest

- (CRKSetUserPropertiesRequest)initWithUser:(id)user
{
  userCopy = user;
  v5 = [(CATTaskRequest *)self init];
  if (v5)
  {
    userIdentifier = [userCopy userIdentifier];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = userIdentifier;

    displayName = [userCopy displayName];
    null = displayName;
    if (!displayName)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_displayName, null);
    if (!displayName)
    {
    }

    givenName = [userCopy givenName];
    null2 = givenName;
    if (!givenName)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_givenName, null2);
    if (!givenName)
    {
    }

    familyName = [userCopy familyName];
    null3 = familyName;
    if (!familyName)
    {
      null3 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_familyName, null3);
    if (!familyName)
    {
    }

    phoneticGivenName = [userCopy phoneticGivenName];
    null4 = phoneticGivenName;
    if (!phoneticGivenName)
    {
      null4 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_phoneticGivenName, null4);
    if (!phoneticGivenName)
    {
    }

    phoneticFamilyName = [userCopy phoneticFamilyName];
    null5 = phoneticFamilyName;
    if (!phoneticFamilyName)
    {
      null5 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_phoneticFamilyName, null5);
    if (!phoneticFamilyName)
    {
    }

    userSource = [userCopy userSource];
    null6 = userSource;
    if (!userSource)
    {
      null6 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_userSource, null6);
    if (!userSource)
    {
    }

    userImageData = [userCopy userImageData];
    null7 = userImageData;
    if (!userImageData)
    {
      null7 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_imageData, null7);
    if (!userImageData)
    {
    }

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(userCopy, "shouldUseMeCardIfAvailable")}];
    useMeCardIfAvailable = v5->_useMeCardIfAvailable;
    v5->_useMeCardIfAvailable = v22;
  }

  return v5;
}

- (CRKSetUserPropertiesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v51.receiver = self;
  v51.super_class = CRKSetUserPropertiesRequest;
  v5 = [(CATTaskRequest *)&v51 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"phoneticGivenName"];
    phoneticGivenName = v5->_phoneticGivenName;
    v5->_phoneticGivenName = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"phoneticFamilyName"];
    phoneticFamilyName = v5->_phoneticFamilyName;
    v5->_phoneticFamilyName = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"userSource"];
    userSource = v5->_userSource;
    v5->_userSource = v40;

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v45;

    v47 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"useMeCardIfAvailable"];
    useMeCardIfAvailable = v5->_useMeCardIfAvailable;
    v5->_useMeCardIfAvailable = v48;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = CRKSetUserPropertiesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v15 encodeWithCoder:coderCopy];
  v5 = [(CRKSetUserPropertiesRequest *)self userIdentifier:v15.receiver];
  [coderCopy encodeObject:v5 forKey:@"userIdentifier"];

  courseIdentifier = [(CRKSetUserPropertiesRequest *)self courseIdentifier];
  [coderCopy encodeObject:courseIdentifier forKey:@"courseIdentifier"];

  displayName = [(CRKSetUserPropertiesRequest *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  givenName = [(CRKSetUserPropertiesRequest *)self givenName];
  [coderCopy encodeObject:givenName forKey:@"givenName"];

  familyName = [(CRKSetUserPropertiesRequest *)self familyName];
  [coderCopy encodeObject:familyName forKey:@"familyName"];

  phoneticGivenName = [(CRKSetUserPropertiesRequest *)self phoneticGivenName];
  [coderCopy encodeObject:phoneticGivenName forKey:@"phoneticGivenName"];

  phoneticFamilyName = [(CRKSetUserPropertiesRequest *)self phoneticFamilyName];
  [coderCopy encodeObject:phoneticFamilyName forKey:@"phoneticFamilyName"];

  userSource = [(CRKSetUserPropertiesRequest *)self userSource];
  [coderCopy encodeObject:userSource forKey:@"userSource"];

  imageData = [(CRKSetUserPropertiesRequest *)self imageData];
  [coderCopy encodeObject:imageData forKey:@"imageData"];

  useMeCardIfAvailable = [(CRKSetUserPropertiesRequest *)self useMeCardIfAvailable];
  [coderCopy encodeObject:useMeCardIfAvailable forKey:@"useMeCardIfAvailable"];
}

@end