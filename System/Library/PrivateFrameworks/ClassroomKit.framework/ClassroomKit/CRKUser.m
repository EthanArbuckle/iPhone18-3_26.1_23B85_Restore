@interface CRKUser
+ (id)customUserFromMeCardUser:(id)a3;
+ (id)makeMeCardUserProvider;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUser:(id)a3;
- (BOOL)isMeCardUser;
- (BOOL)isValid;
- (CRKUser)initWithCoder:(id)a3;
- (CRKUser)initWithDictionary:(id)a3;
- (NSPersonNameComponents)nameComponents;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKUser

- (CRKUser)initWithDictionary:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = CRKUser;
  v5 = [(CRKUser *)&v69 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"UserIdentifier"];
    v7 = [v6 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      userIdentifier = v5->_userIdentifier;
      v5->_userIdentifier = v9;
    }

    else
    {
      userIdentifier = [v4 objectForKeyedSubscript:@"Identifier"];
      v11 = [userIdentifier copy];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = @"INVALID_IDENTIFIER";
      }

      objc_storeStrong(&v5->_userIdentifier, v13);
    }

    v14 = [v4 objectForKeyedSubscript:@"Name"];
    v15 = [v14 copy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      displayName = v5->_displayName;
      v5->_displayName = v17;
    }

    else
    {
      displayName = [v4 objectForKeyedSubscript:@"Name"];
      v19 = [displayName copy];
      v20 = v5->_displayName;
      v5->_displayName = v19;
    }

    v21 = [v4 objectForKeyedSubscript:@"GivenName"];
    v22 = [v21 copy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
      givenName = v5->_givenName;
      v5->_givenName = v24;
    }

    else
    {
      givenName = [v4 objectForKeyedSubscript:@"GivenName"];
      v26 = [givenName copy];
      v27 = v5->_givenName;
      v5->_givenName = v26;
    }

    v28 = [v4 objectForKeyedSubscript:@"FamilyName"];
    v29 = [v28 copy];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
      familyName = v5->_familyName;
      v5->_familyName = v31;
    }

    else
    {
      familyName = [v4 objectForKeyedSubscript:@"FamilyName"];
      v33 = [familyName copy];
      v34 = v5->_familyName;
      v5->_familyName = v33;
    }

    v35 = [v4 objectForKeyedSubscript:@"PhoneticGivenName"];
    v36 = [v35 copy];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
      phoneticGivenName = v5->_phoneticGivenName;
      v5->_phoneticGivenName = v38;
    }

    else
    {
      phoneticGivenName = [v4 objectForKeyedSubscript:@"PhoneticGivenName"];
      v40 = [phoneticGivenName copy];
      v41 = v5->_phoneticGivenName;
      v5->_phoneticGivenName = v40;
    }

    v42 = [v4 objectForKeyedSubscript:@"PhoneticFamilyName"];
    v43 = [v42 copy];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
      phoneticFamilyName = v5->_phoneticFamilyName;
      v5->_phoneticFamilyName = v45;
    }

    else
    {
      phoneticFamilyName = [v4 objectForKeyedSubscript:@"PhoneticFamilyName"];
      v47 = [phoneticFamilyName copy];
      v48 = v5->_phoneticFamilyName;
      v5->_phoneticFamilyName = v47;
    }

    v49 = [v4 objectForKeyedSubscript:@"ImageURL"];
    v50 = [v49 copy];
    v51 = v50;
    if (v50)
    {
      v52 = v50;
      imageURL = v5->_imageURL;
      v5->_imageURL = v52;
    }

    else
    {
      imageURL = [v4 objectForKeyedSubscript:@"ImageURL"];
      v54 = [imageURL copy];
      v55 = v5->_imageURL;
      v5->_imageURL = v54;
    }

    v56 = [v4 objectForKeyedSubscript:@"ImageIdentifier"];
    v57 = [v56 copy];
    imageIdentifier = v5->_imageIdentifier;
    v5->_imageIdentifier = v57;

    v59 = [v4 objectForKeyedSubscript:@"UserSource"];
    v60 = [v59 copy];
    userSource = v5->_userSource;
    v5->_userSource = v60;

    v62 = [v4 objectForKeyedSubscript:@"ImageData"];
    v63 = [v62 copy];
    userImageData = v5->_userImageData;
    v5->_userImageData = v63;

    v65 = [v4 objectForKeyedSubscript:@"Role"];
    if (v65)
    {
      v66 = [v4 objectForKeyedSubscript:@"Role"];
      v5->_role = [v66 unsignedIntegerValue];
    }

    else
    {
      v5->_role = 0;
    }

    v67 = [v4 objectForKeyedSubscript:@"UseMeCardIfAvailable"];
    v5->_useMeCardIfAvailable = [v67 BOOLValue];
  }

  return v5;
}

+ (id)makeMeCardUserProvider
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)customUserFromMeCardUser:(id)a3
{
  v3 = a3;
  if ([v3 isMeCardUser])
  {
    v4 = [CRKUser alloc];
    v5 = [v3 dictionaryValue];
    v6 = [(CRKUser *)v4 initWithDictionary:v5];

    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    [(CRKUser *)v6 setUserIdentifier:v8];

    [(CRKUser *)v6 setUserSource:@"Custom"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSPersonNameComponents)nameComponents
{
  v3 = objc_opt_new();
  v4 = [(CRKUser *)self givenName];
  if (v4)
  {

LABEL_4:
    v6 = [(CRKUser *)self givenName];
    [v3 setGivenName:v6];

    v7 = [(CRKUser *)self familyName];
    [v3 setFamilyName:v7];
    goto LABEL_5;
  }

  v5 = [(CRKUser *)self familyName];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = [(CRKUser *)self displayName];
  [v3 setGivenName:v7];
LABEL_5:

  v8 = [(CRKUser *)self phoneticGivenName];
  if (v8)
  {
  }

  else
  {
    v9 = [(CRKUser *)self phoneticFamilyName];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = objc_opt_new();
  [v3 setPhoneticRepresentation:v10];

  v11 = [(CRKUser *)self phoneticGivenName];
  v12 = [v3 phoneticRepresentation];
  [v12 setGivenName:v11];

  v13 = [(CRKUser *)self phoneticFamilyName];
  v14 = [v3 phoneticRepresentation];
  [v14 setFamilyName:v13];

LABEL_9:

  return v3;
}

- (id)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CRKUser *)self userIdentifier];

  if (v4)
  {
    v5 = [(CRKUser *)self userIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"Identifier"];
  }

  v6 = [(CRKUser *)self displayName];

  if (v6)
  {
    v7 = [(CRKUser *)self displayName];
    [v3 setObject:v7 forKeyedSubscript:@"Name"];
  }

  v8 = [(CRKUser *)self givenName];

  if (v8)
  {
    v9 = [(CRKUser *)self givenName];
    [v3 setObject:v9 forKeyedSubscript:@"GivenName"];
  }

  v10 = [(CRKUser *)self familyName];

  if (v10)
  {
    v11 = [(CRKUser *)self familyName];
    [v3 setObject:v11 forKeyedSubscript:@"FamilyName"];
  }

  v12 = [(CRKUser *)self phoneticGivenName];

  if (v12)
  {
    v13 = [(CRKUser *)self phoneticGivenName];
    [v3 setObject:v13 forKeyedSubscript:@"PhoneticGivenName"];
  }

  v14 = [(CRKUser *)self phoneticFamilyName];

  if (v14)
  {
    v15 = [(CRKUser *)self phoneticFamilyName];
    [v3 setObject:v15 forKeyedSubscript:@"PhoneticFamilyName"];
  }

  v16 = [(CRKUser *)self imageURL];

  if (v16)
  {
    v17 = [(CRKUser *)self imageURL];
    [v3 setObject:v17 forKeyedSubscript:@"ImageURL"];
  }

  v18 = [(CRKUser *)self userSource];

  if (v18)
  {
    v19 = [(CRKUser *)self userSource];
    [v3 setObject:v19 forKeyedSubscript:@"UserSource"];
  }

  v20 = [(CRKUser *)self userImageData];

  if (v20)
  {
    v21 = [(CRKUser *)self userImageData];
    [v3 setObject:v21 forKeyedSubscript:@"ImageData"];
  }

  v22 = [(CRKUser *)self imageIdentifier];

  if (v22)
  {
    v23 = [(CRKUser *)self imageIdentifier];
    [v3 setObject:v23 forKeyedSubscript:@"ImageIdentifier"];
  }

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKUser role](self, "role")}];
  [v3 setObject:v24 forKeyedSubscript:@"Role"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKUser shouldUseMeCardIfAvailable](self, "shouldUseMeCardIfAvailable")}];
  [v3 setObject:v25 forKeyedSubscript:@"UseMeCardIfAvailable"];

  return v3;
}

- (BOOL)isMeCardUser
{
  v2 = [(CRKUser *)self userSource];
  v3 = [v2 isEqualToString:@"MeCard"];

  return v3;
}

- (BOOL)isValid
{
  v3 = [(CRKUser *)self givenName];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRKUser *)self familyName];
    v4 = [v5 length] != 0;
  }

  return v4;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(CRKUser *)self userIdentifier];
  v7 = [(CRKUser *)self displayName];
  v8 = [(CRKUser *)self givenName];
  v9 = [(CRKUser *)self familyName];
  v10 = MEMORY[0x277CCABB0];
  v11 = [(CRKUser *)self imageURL];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v2 = [(CRKUser *)self imageIdentifier];
    v12 = v2 != 0;
  }

  v13 = [v10 numberWithInt:v12];
  v14 = [v4 stringWithFormat:@"<%@: %p {identifier = %@, displayName = %@, given = %@, family = %@, hasImage = %@ }>", v5, self, v6, v7, v8, v9, v13];

  if (!v11)
  {
  }

  return v14;
}

- (unint64_t)hash
{
  v23 = [(CRKUser *)self userIdentifier];
  v3 = [v23 hash];
  v22 = [(CRKUser *)self displayName];
  v4 = [v22 hash] ^ v3;
  v5 = [(CRKUser *)self givenName];
  v6 = [v5 hash];
  v7 = [(CRKUser *)self familyName];
  v8 = v4 ^ v6 ^ [v7 hash];
  v9 = [(CRKUser *)self phoneticGivenName];
  v10 = [v9 hash];
  v11 = [(CRKUser *)self phoneticFamilyName];
  v12 = v10 ^ [v11 hash];
  v13 = [(CRKUser *)self imageURL];
  v14 = v8 ^ v12 ^ [v13 hash];
  v15 = [(CRKUser *)self imageIdentifier];
  v16 = [v15 hash];
  v17 = [(CRKUser *)self userSource];
  v18 = v16 ^ [v17 hash];
  v19 = v18 ^ [(CRKUser *)self role];
  v20 = v19 ^ [(CRKUser *)self shouldUseMeCardIfAvailable];

  return v14 ^ v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CRKUser *)self isEqualToUser:v5];
  }

  return v6;
}

- (BOOL)isEqualToUser:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [(CRKUser *)a2 isEqualToUser:?];
  }

  v11 = [(CRKUser *)self userIdentifier];
  if (v11 || ([v10 userIdentifier], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(CRKUser *)self userIdentifier];
    v5 = [v10 userIdentifier];
    if (![v4 isEqual:v5])
    {
      LOBYTE(v13) = 0;
LABEL_83:

      goto LABEL_84;
    }

    v12 = 1;
  }

  else
  {
    v58 = 0;
    v12 = 0;
  }

  v14 = [(CRKUser *)self displayName];
  if (v14 || ([v10 displayName], (v53 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(CRKUser *)self displayName];
    v7 = [v10 displayName];
    if (![v6 isEqual:v7])
    {
      LOBYTE(v13) = 0;
      goto LABEL_81;
    }

    v59 = v10;
    v56 = 1;
    v57 = v12;
  }

  else
  {
    v59 = v10;
    v56 = 0;
    v57 = v12;
    v53 = 0;
  }

  v15 = [(CRKUser *)self givenName];
  if (v15 || ([v59 givenName], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CRKUser *)self givenName];
    v54 = [v59 givenName];
    v55 = v3;
    if (![v3 isEqual:?])
    {
      LOBYTE(v13) = 0;
      v10 = v59;
      goto LABEL_77;
    }

    v52 = 1;
  }

  else
  {
    v48 = 0;
    v52 = 0;
  }

  [(CRKUser *)self familyName];
  v51 = v10 = v59;
  if (v51 || ([v59 familyName], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CRKUser *)self familyName];
    v49 = [v59 familyName];
    v50 = v3;
    if (![v3 isEqual:v49])
    {
      LOBYTE(v13) = 0;
      goto LABEL_74;
    }

    v47 = 1;
  }

  else
  {
    v43 = 0;
    v47 = 0;
  }

  v46 = [(CRKUser *)self phoneticGivenName];
  if (v46 || ([v59 phoneticGivenName], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CRKUser *)self phoneticGivenName];
    v44 = [v59 phoneticGivenName];
    v45 = v3;
    if (![v3 isEqual:v44])
    {
      LOBYTE(v13) = 0;
      goto LABEL_71;
    }

    v42 = 1;
  }

  else
  {
    v38 = 0;
    v42 = 0;
  }

  v41 = [(CRKUser *)self phoneticFamilyName];
  if (v41 || ([v59 phoneticFamilyName], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CRKUser *)self phoneticFamilyName];
    v39 = [v59 phoneticFamilyName];
    v40 = v3;
    if (![v3 isEqual:v39])
    {
      LOBYTE(v13) = 0;
      goto LABEL_68;
    }

    v37 = 1;
  }

  else
  {
    v33 = 0;
    v37 = 0;
  }

  v36 = [(CRKUser *)self imageURL];
  if (v36 || ([v59 imageURL], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CRKUser *)self imageURL];
    v34 = [v59 imageURL];
    v35 = v3;
    if (![v3 isEqual:v34])
    {
      LOBYTE(v13) = 0;
      goto LABEL_65;
    }

    v32 = 1;
  }

  else
  {
    v28 = 0;
    v32 = 0;
  }

  v31 = [(CRKUser *)self imageIdentifier];
  if (v31 || ([v59 imageIdentifier], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CRKUser *)self imageIdentifier];
    v29 = [v59 imageIdentifier];
    v30 = v3;
    if (![v3 isEqual:v29])
    {
      LOBYTE(v13) = 0;
      goto LABEL_62;
    }

    v27 = 1;
  }

  else
  {
    v24 = 0;
    v27 = 0;
  }

  v26 = [(CRKUser *)self userSource];
  if (v26 || ([v59 userSource], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = [(CRKUser *)self userSource];
    v17 = [v59 userSource];
    v25 = v16;
    v18 = v16;
    v3 = v17;
    if (![v18 isEqual:v17])
    {
      LOBYTE(v13) = 0;
      goto LABEL_59;
    }

    v23 = 1;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v22 = [(CRKUser *)self role];
  if (v22 == [v59 role])
  {
    v19 = [(CRKUser *)self shouldUseMeCardIfAvailable];
    v13 = v19 ^ [v59 shouldUseMeCardIfAvailable] ^ 1;
    if ((v23 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  LOBYTE(v13) = 0;
  if (v23)
  {
LABEL_59:
  }

LABEL_60:
  if (v26)
  {

    if (!v27)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v27)
  {
LABEL_62:
  }

LABEL_63:
  if (v31)
  {

    if (!v32)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v32)
  {
LABEL_65:
  }

LABEL_66:
  if (v36)
  {

    if (!v37)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (v37)
  {
LABEL_68:
  }

LABEL_69:
  if (v41)
  {

    if (!v42)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (v42)
  {
LABEL_71:
  }

LABEL_72:
  if (v46)
  {

    if (!v47)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v47)
  {
LABEL_74:
  }

LABEL_75:
  if (v51)
  {

    if (!v52)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (v52)
  {
LABEL_77:
  }

LABEL_78:
  if (v15)
  {

    if (v56)
    {
LABEL_80:
      v12 = v57;
LABEL_81:

      if (v14)
      {
        goto LABEL_82;
      }

      goto LABEL_89;
    }
  }

  else
  {

    if (v56)
    {
      goto LABEL_80;
    }
  }

  v12 = v57;
  if (v14)
  {
LABEL_82:

    if (!v12)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_89:

  if (v12)
  {
    goto LABEL_83;
  }

LABEL_84:
  if (!v11)
  {
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(CRKUser *)self userIdentifier];
  [v4 setUserIdentifier:v5];

  v6 = [(CRKUser *)self displayName];
  [v4 setDisplayName:v6];

  v7 = [(CRKUser *)self givenName];
  [v4 setGivenName:v7];

  v8 = [(CRKUser *)self familyName];
  [v4 setFamilyName:v8];

  v9 = [(CRKUser *)self phoneticGivenName];
  [v4 setPhoneticGivenName:v9];

  v10 = [(CRKUser *)self phoneticFamilyName];
  [v4 setPhoneticFamilyName:v10];

  v11 = [(CRKUser *)self userImageData];
  v12 = [v11 copy];
  [v4 setUserImageData:v12];

  v13 = [(CRKUser *)self imageIdentifier];
  [v4 setImageIdentifier:v13];

  v14 = [(CRKUser *)self imageURL];
  [v4 setImageURL:v14];

  v15 = [(CRKUser *)self userSource];
  [v4 setUserSource:v15];

  [v4 setRole:{-[CRKUser role](self, "role")}];
  [v4 setUseMeCardIfAvailable:{-[CRKUser shouldUseMeCardIfAvailable](self, "shouldUseMeCardIfAvailable")}];
  return v4;
}

- (CRKUser)initWithCoder:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CRKUser *)a2 initWithCoder:?];
  }

  v37.receiver = self;
  v37.super_class = CRKUser;
  v6 = [(CRKUser *)&v37 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"userIdentifier"];
    userIdentifier = v6->_userIdentifier;
    v6->_userIdentifier = v8;

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = [v5 decodeObjectOfClasses:v10 forKey:@"displayName"];
    displayName = v6->_displayName;
    v6->_displayName = v11;

    v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v14 = [v5 decodeObjectOfClasses:v13 forKey:@"givenName"];
    givenName = v6->_givenName;
    v6->_givenName = v14;

    v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v17 = [v5 decodeObjectOfClasses:v16 forKey:@"familyName"];
    familyName = v6->_familyName;
    v6->_familyName = v17;

    v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v20 = [v5 decodeObjectOfClasses:v19 forKey:@"phoneticGivenName"];
    phoneticGivenName = v6->_phoneticGivenName;
    v6->_phoneticGivenName = v20;

    v22 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v23 = [v5 decodeObjectOfClasses:v22 forKey:@"phoneticFamilyName"];
    phoneticFamilyName = v6->_phoneticFamilyName;
    v6->_phoneticFamilyName = v23;

    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v26 = [v5 decodeObjectOfClasses:v25 forKey:@"imageURL"];
    imageURL = v6->_imageURL;
    v6->_imageURL = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [v5 decodeObjectOfClasses:v28 forKey:@"imageIdentifier"];
    imageIdentifier = v6->_imageIdentifier;
    v6->_imageIdentifier = v29;

    v31 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v32 = [v5 decodeObjectOfClasses:v31 forKey:@"userSource"];
    userSource = v6->_userSource;
    v6->_userSource = v32;

    v34 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    v6->_role = [v34 unsignedIntegerValue];

    v35 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"useMeCardIfAvailable"];
    v6->_useMeCardIfAvailable = [v35 BOOLValue];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  if (!v16)
  {
    [(CRKUser *)a2 encodeWithCoder:?];
  }

  v5 = [(CRKUser *)self userIdentifier];
  [v16 encodeObject:v5 forKey:@"userIdentifier"];

  v6 = [(CRKUser *)self displayName];
  [v16 encodeObject:v6 forKey:@"displayName"];

  v7 = [(CRKUser *)self givenName];
  [v16 encodeObject:v7 forKey:@"givenName"];

  v8 = [(CRKUser *)self familyName];
  [v16 encodeObject:v8 forKey:@"familyName"];

  v9 = [(CRKUser *)self phoneticGivenName];
  [v16 encodeObject:v9 forKey:@"phoneticGivenName"];

  v10 = [(CRKUser *)self phoneticFamilyName];
  [v16 encodeObject:v10 forKey:@"phoneticFamilyName"];

  v11 = [(CRKUser *)self imageURL];
  [v16 encodeObject:v11 forKey:@"imageURL"];

  v12 = [(CRKUser *)self imageIdentifier];
  [v16 encodeObject:v12 forKey:@"imageIdentifier"];

  v13 = [(CRKUser *)self userSource];
  [v16 encodeObject:v13 forKey:@"userSource"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKUser role](self, "role")}];
  [v16 encodeObject:v14 forKey:@"role"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKUser shouldUseMeCardIfAvailable](self, "shouldUseMeCardIfAvailable")}];
  [v16 encodeObject:v15 forKey:@"useMeCardIfAvailable"];
}

- (void)isEqualToUser:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKUser.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"user"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKUser.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"aDecoder"}];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKUser.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"aCoder"}];
}

@end