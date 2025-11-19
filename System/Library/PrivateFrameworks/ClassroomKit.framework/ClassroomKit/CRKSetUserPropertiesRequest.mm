@interface CRKSetUserPropertiesRequest
- (CRKSetUserPropertiesRequest)initWithCoder:(id)a3;
- (CRKSetUserPropertiesRequest)initWithUser:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetUserPropertiesRequest

- (CRKSetUserPropertiesRequest)initWithUser:(id)a3
{
  v4 = a3;
  v5 = [(CATTaskRequest *)self init];
  if (v5)
  {
    v6 = [v4 userIdentifier];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v6;

    v8 = [v4 displayName];
    v9 = v8;
    if (!v8)
    {
      v9 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_displayName, v9);
    if (!v8)
    {
    }

    v10 = [v4 givenName];
    v11 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_givenName, v11);
    if (!v10)
    {
    }

    v12 = [v4 familyName];
    v13 = v12;
    if (!v12)
    {
      v13 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_familyName, v13);
    if (!v12)
    {
    }

    v14 = [v4 phoneticGivenName];
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_phoneticGivenName, v15);
    if (!v14)
    {
    }

    v16 = [v4 phoneticFamilyName];
    v17 = v16;
    if (!v16)
    {
      v17 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_phoneticFamilyName, v17);
    if (!v16)
    {
    }

    v18 = [v4 userSource];
    v19 = v18;
    if (!v18)
    {
      v19 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_userSource, v19);
    if (!v18)
    {
    }

    v20 = [v4 userImageData];
    v21 = v20;
    if (!v20)
    {
      v21 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(&v5->_imageData, v21);
    if (!v20)
    {
    }

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "shouldUseMeCardIfAvailable")}];
    useMeCardIfAvailable = v5->_useMeCardIfAvailable;
    v5->_useMeCardIfAvailable = v22;
  }

  return v5;
}

- (CRKSetUserPropertiesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = CRKSetUserPropertiesRequest;
  v5 = [(CATTaskRequest *)&v51 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"phoneticGivenName"];
    phoneticGivenName = v5->_phoneticGivenName;
    v5->_phoneticGivenName = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"phoneticFamilyName"];
    phoneticFamilyName = v5->_phoneticFamilyName;
    v5->_phoneticFamilyName = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"userSource"];
    userSource = v5->_userSource;
    v5->_userSource = v40;

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v45;

    v47 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"useMeCardIfAvailable"];
    useMeCardIfAvailable = v5->_useMeCardIfAvailable;
    v5->_useMeCardIfAvailable = v48;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = CRKSetUserPropertiesRequest;
  v4 = a3;
  [(CATTaskRequest *)&v15 encodeWithCoder:v4];
  v5 = [(CRKSetUserPropertiesRequest *)self userIdentifier:v15.receiver];
  [v4 encodeObject:v5 forKey:@"userIdentifier"];

  v6 = [(CRKSetUserPropertiesRequest *)self courseIdentifier];
  [v4 encodeObject:v6 forKey:@"courseIdentifier"];

  v7 = [(CRKSetUserPropertiesRequest *)self displayName];
  [v4 encodeObject:v7 forKey:@"displayName"];

  v8 = [(CRKSetUserPropertiesRequest *)self givenName];
  [v4 encodeObject:v8 forKey:@"givenName"];

  v9 = [(CRKSetUserPropertiesRequest *)self familyName];
  [v4 encodeObject:v9 forKey:@"familyName"];

  v10 = [(CRKSetUserPropertiesRequest *)self phoneticGivenName];
  [v4 encodeObject:v10 forKey:@"phoneticGivenName"];

  v11 = [(CRKSetUserPropertiesRequest *)self phoneticFamilyName];
  [v4 encodeObject:v11 forKey:@"phoneticFamilyName"];

  v12 = [(CRKSetUserPropertiesRequest *)self userSource];
  [v4 encodeObject:v12 forKey:@"userSource"];

  v13 = [(CRKSetUserPropertiesRequest *)self imageData];
  [v4 encodeObject:v13 forKey:@"imageData"];

  v14 = [(CRKSetUserPropertiesRequest *)self useMeCardIfAvailable];
  [v4 encodeObject:v14 forKey:@"useMeCardIfAvailable"];
}

@end