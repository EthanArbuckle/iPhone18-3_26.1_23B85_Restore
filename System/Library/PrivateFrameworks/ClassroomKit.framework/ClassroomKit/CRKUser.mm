@interface CRKUser
+ (id)customUserFromMeCardUser:(id)user;
+ (id)makeMeCardUserProvider;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUser:(id)user;
- (BOOL)isMeCardUser;
- (BOOL)isValid;
- (CRKUser)initWithCoder:(id)coder;
- (CRKUser)initWithDictionary:(id)dictionary;
- (NSPersonNameComponents)nameComponents;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKUser

- (CRKUser)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v69.receiver = self;
  v69.super_class = CRKUser;
  v5 = [(CRKUser *)&v69 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"UserIdentifier"];
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
      userIdentifier = [dictionaryCopy objectForKeyedSubscript:@"Identifier"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"Name"];
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
      displayName = [dictionaryCopy objectForKeyedSubscript:@"Name"];
      v19 = [displayName copy];
      v20 = v5->_displayName;
      v5->_displayName = v19;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"GivenName"];
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
      givenName = [dictionaryCopy objectForKeyedSubscript:@"GivenName"];
      v26 = [givenName copy];
      v27 = v5->_givenName;
      v5->_givenName = v26;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"FamilyName"];
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
      familyName = [dictionaryCopy objectForKeyedSubscript:@"FamilyName"];
      v33 = [familyName copy];
      v34 = v5->_familyName;
      v5->_familyName = v33;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"PhoneticGivenName"];
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
      phoneticGivenName = [dictionaryCopy objectForKeyedSubscript:@"PhoneticGivenName"];
      v40 = [phoneticGivenName copy];
      v41 = v5->_phoneticGivenName;
      v5->_phoneticGivenName = v40;
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"PhoneticFamilyName"];
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
      phoneticFamilyName = [dictionaryCopy objectForKeyedSubscript:@"PhoneticFamilyName"];
      v47 = [phoneticFamilyName copy];
      v48 = v5->_phoneticFamilyName;
      v5->_phoneticFamilyName = v47;
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"ImageURL"];
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
      imageURL = [dictionaryCopy objectForKeyedSubscript:@"ImageURL"];
      v54 = [imageURL copy];
      v55 = v5->_imageURL;
      v5->_imageURL = v54;
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"ImageIdentifier"];
    v57 = [v56 copy];
    imageIdentifier = v5->_imageIdentifier;
    v5->_imageIdentifier = v57;

    v59 = [dictionaryCopy objectForKeyedSubscript:@"UserSource"];
    v60 = [v59 copy];
    userSource = v5->_userSource;
    v5->_userSource = v60;

    v62 = [dictionaryCopy objectForKeyedSubscript:@"ImageData"];
    v63 = [v62 copy];
    userImageData = v5->_userImageData;
    v5->_userImageData = v63;

    v65 = [dictionaryCopy objectForKeyedSubscript:@"Role"];
    if (v65)
    {
      v66 = [dictionaryCopy objectForKeyedSubscript:@"Role"];
      v5->_role = [v66 unsignedIntegerValue];
    }

    else
    {
      v5->_role = 0;
    }

    v67 = [dictionaryCopy objectForKeyedSubscript:@"UseMeCardIfAvailable"];
    v5->_useMeCardIfAvailable = [v67 BOOLValue];
  }

  return v5;
}

+ (id)makeMeCardUserProvider
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)customUserFromMeCardUser:(id)user
{
  userCopy = user;
  if ([userCopy isMeCardUser])
  {
    v4 = [CRKUser alloc];
    dictionaryValue = [userCopy dictionaryValue];
    v6 = [(CRKUser *)v4 initWithDictionary:dictionaryValue];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(CRKUser *)v6 setUserIdentifier:uUIDString];

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
  givenName = [(CRKUser *)self givenName];
  if (givenName)
  {

LABEL_4:
    givenName2 = [(CRKUser *)self givenName];
    [v3 setGivenName:givenName2];

    familyName = [(CRKUser *)self familyName];
    [v3 setFamilyName:familyName];
    goto LABEL_5;
  }

  familyName2 = [(CRKUser *)self familyName];

  if (familyName2)
  {
    goto LABEL_4;
  }

  familyName = [(CRKUser *)self displayName];
  [v3 setGivenName:familyName];
LABEL_5:

  phoneticGivenName = [(CRKUser *)self phoneticGivenName];
  if (phoneticGivenName)
  {
  }

  else
  {
    phoneticFamilyName = [(CRKUser *)self phoneticFamilyName];

    if (!phoneticFamilyName)
    {
      goto LABEL_9;
    }
  }

  v10 = objc_opt_new();
  [v3 setPhoneticRepresentation:v10];

  phoneticGivenName2 = [(CRKUser *)self phoneticGivenName];
  phoneticRepresentation = [v3 phoneticRepresentation];
  [phoneticRepresentation setGivenName:phoneticGivenName2];

  phoneticFamilyName2 = [(CRKUser *)self phoneticFamilyName];
  phoneticRepresentation2 = [v3 phoneticRepresentation];
  [phoneticRepresentation2 setFamilyName:phoneticFamilyName2];

LABEL_9:

  return v3;
}

- (id)dictionaryValue
{
  v3 = objc_opt_new();
  userIdentifier = [(CRKUser *)self userIdentifier];

  if (userIdentifier)
  {
    userIdentifier2 = [(CRKUser *)self userIdentifier];
    [v3 setObject:userIdentifier2 forKeyedSubscript:@"Identifier"];
  }

  displayName = [(CRKUser *)self displayName];

  if (displayName)
  {
    displayName2 = [(CRKUser *)self displayName];
    [v3 setObject:displayName2 forKeyedSubscript:@"Name"];
  }

  givenName = [(CRKUser *)self givenName];

  if (givenName)
  {
    givenName2 = [(CRKUser *)self givenName];
    [v3 setObject:givenName2 forKeyedSubscript:@"GivenName"];
  }

  familyName = [(CRKUser *)self familyName];

  if (familyName)
  {
    familyName2 = [(CRKUser *)self familyName];
    [v3 setObject:familyName2 forKeyedSubscript:@"FamilyName"];
  }

  phoneticGivenName = [(CRKUser *)self phoneticGivenName];

  if (phoneticGivenName)
  {
    phoneticGivenName2 = [(CRKUser *)self phoneticGivenName];
    [v3 setObject:phoneticGivenName2 forKeyedSubscript:@"PhoneticGivenName"];
  }

  phoneticFamilyName = [(CRKUser *)self phoneticFamilyName];

  if (phoneticFamilyName)
  {
    phoneticFamilyName2 = [(CRKUser *)self phoneticFamilyName];
    [v3 setObject:phoneticFamilyName2 forKeyedSubscript:@"PhoneticFamilyName"];
  }

  imageURL = [(CRKUser *)self imageURL];

  if (imageURL)
  {
    imageURL2 = [(CRKUser *)self imageURL];
    [v3 setObject:imageURL2 forKeyedSubscript:@"ImageURL"];
  }

  userSource = [(CRKUser *)self userSource];

  if (userSource)
  {
    userSource2 = [(CRKUser *)self userSource];
    [v3 setObject:userSource2 forKeyedSubscript:@"UserSource"];
  }

  userImageData = [(CRKUser *)self userImageData];

  if (userImageData)
  {
    userImageData2 = [(CRKUser *)self userImageData];
    [v3 setObject:userImageData2 forKeyedSubscript:@"ImageData"];
  }

  imageIdentifier = [(CRKUser *)self imageIdentifier];

  if (imageIdentifier)
  {
    imageIdentifier2 = [(CRKUser *)self imageIdentifier];
    [v3 setObject:imageIdentifier2 forKeyedSubscript:@"ImageIdentifier"];
  }

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKUser role](self, "role")}];
  [v3 setObject:v24 forKeyedSubscript:@"Role"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKUser shouldUseMeCardIfAvailable](self, "shouldUseMeCardIfAvailable")}];
  [v3 setObject:v25 forKeyedSubscript:@"UseMeCardIfAvailable"];

  return v3;
}

- (BOOL)isMeCardUser
{
  userSource = [(CRKUser *)self userSource];
  v3 = [userSource isEqualToString:@"MeCard"];

  return v3;
}

- (BOOL)isValid
{
  givenName = [(CRKUser *)self givenName];
  if ([givenName length])
  {
    v4 = 1;
  }

  else
  {
    familyName = [(CRKUser *)self familyName];
    v4 = [familyName length] != 0;
  }

  return v4;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  userIdentifier = [(CRKUser *)self userIdentifier];
  displayName = [(CRKUser *)self displayName];
  givenName = [(CRKUser *)self givenName];
  familyName = [(CRKUser *)self familyName];
  v10 = MEMORY[0x277CCABB0];
  imageURL = [(CRKUser *)self imageURL];
  if (imageURL)
  {
    v12 = 1;
  }

  else
  {
    imageIdentifier = [(CRKUser *)self imageIdentifier];
    v12 = imageIdentifier != 0;
  }

  v13 = [v10 numberWithInt:v12];
  v14 = [v4 stringWithFormat:@"<%@: %p {identifier = %@, displayName = %@, given = %@, family = %@, hasImage = %@ }>", v5, self, userIdentifier, displayName, givenName, familyName, v13];

  if (!imageURL)
  {
  }

  return v14;
}

- (unint64_t)hash
{
  userIdentifier = [(CRKUser *)self userIdentifier];
  v3 = [userIdentifier hash];
  displayName = [(CRKUser *)self displayName];
  v4 = [displayName hash] ^ v3;
  givenName = [(CRKUser *)self givenName];
  v6 = [givenName hash];
  familyName = [(CRKUser *)self familyName];
  v8 = v4 ^ v6 ^ [familyName hash];
  phoneticGivenName = [(CRKUser *)self phoneticGivenName];
  v10 = [phoneticGivenName hash];
  phoneticFamilyName = [(CRKUser *)self phoneticFamilyName];
  v12 = v10 ^ [phoneticFamilyName hash];
  imageURL = [(CRKUser *)self imageURL];
  v14 = v8 ^ v12 ^ [imageURL hash];
  imageIdentifier = [(CRKUser *)self imageIdentifier];
  v16 = [imageIdentifier hash];
  userSource = [(CRKUser *)self userSource];
  v18 = v16 ^ [userSource hash];
  v19 = v18 ^ [(CRKUser *)self role];
  v20 = v19 ^ [(CRKUser *)self shouldUseMeCardIfAvailable];

  return v14 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CRKUser *)self isEqualToUser:v5];
  }

  return v6;
}

- (BOOL)isEqualToUser:(id)user
{
  userCopy = user;
  if (!userCopy)
  {
    [(CRKUser *)a2 isEqualToUser:?];
  }

  userIdentifier = [(CRKUser *)self userIdentifier];
  if (userIdentifier || ([userCopy userIdentifier], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    userIdentifier2 = [(CRKUser *)self userIdentifier];
    userIdentifier3 = [userCopy userIdentifier];
    if (![userIdentifier2 isEqual:userIdentifier3])
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

  displayName = [(CRKUser *)self displayName];
  if (displayName || ([userCopy displayName], (v53 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    displayName2 = [(CRKUser *)self displayName];
    displayName3 = [userCopy displayName];
    if (![displayName2 isEqual:displayName3])
    {
      LOBYTE(v13) = 0;
      goto LABEL_81;
    }

    v59 = userCopy;
    v56 = 1;
    v57 = v12;
  }

  else
  {
    v59 = userCopy;
    v56 = 0;
    v57 = v12;
    v53 = 0;
  }

  givenName = [(CRKUser *)self givenName];
  if (givenName || ([v59 givenName], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    givenName2 = [(CRKUser *)self givenName];
    givenName3 = [v59 givenName];
    v55 = givenName2;
    if (![givenName2 isEqual:?])
    {
      LOBYTE(v13) = 0;
      userCopy = v59;
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
  v51 = userCopy = v59;
  if (v51 || ([v59 familyName], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    givenName2 = [(CRKUser *)self familyName];
    familyName = [v59 familyName];
    v50 = givenName2;
    if (![givenName2 isEqual:familyName])
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

  phoneticGivenName = [(CRKUser *)self phoneticGivenName];
  if (phoneticGivenName || ([v59 phoneticGivenName], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    givenName2 = [(CRKUser *)self phoneticGivenName];
    phoneticGivenName2 = [v59 phoneticGivenName];
    v45 = givenName2;
    if (![givenName2 isEqual:phoneticGivenName2])
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

  phoneticFamilyName = [(CRKUser *)self phoneticFamilyName];
  if (phoneticFamilyName || ([v59 phoneticFamilyName], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    givenName2 = [(CRKUser *)self phoneticFamilyName];
    phoneticFamilyName2 = [v59 phoneticFamilyName];
    v40 = givenName2;
    if (![givenName2 isEqual:phoneticFamilyName2])
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

  imageURL = [(CRKUser *)self imageURL];
  if (imageURL || ([v59 imageURL], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    givenName2 = [(CRKUser *)self imageURL];
    imageURL2 = [v59 imageURL];
    v35 = givenName2;
    if (![givenName2 isEqual:imageURL2])
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

  imageIdentifier = [(CRKUser *)self imageIdentifier];
  if (imageIdentifier || ([v59 imageIdentifier], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    givenName2 = [(CRKUser *)self imageIdentifier];
    imageIdentifier2 = [v59 imageIdentifier];
    v30 = givenName2;
    if (![givenName2 isEqual:imageIdentifier2])
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

  userSource = [(CRKUser *)self userSource];
  if (userSource || ([v59 userSource], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    userSource2 = [(CRKUser *)self userSource];
    userSource3 = [v59 userSource];
    v25 = userSource2;
    v18 = userSource2;
    givenName2 = userSource3;
    if (![v18 isEqual:userSource3])
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

  role = [(CRKUser *)self role];
  if (role == [v59 role])
  {
    shouldUseMeCardIfAvailable = [(CRKUser *)self shouldUseMeCardIfAvailable];
    v13 = shouldUseMeCardIfAvailable ^ [v59 shouldUseMeCardIfAvailable] ^ 1;
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
  if (userSource)
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
  if (imageIdentifier)
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
  if (imageURL)
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
  if (phoneticFamilyName)
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
  if (phoneticGivenName)
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
  if (givenName)
  {

    if (v56)
    {
LABEL_80:
      v12 = v57;
LABEL_81:

      if (displayName)
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
  if (displayName)
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
  if (!userIdentifier)
  {
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  userIdentifier = [(CRKUser *)self userIdentifier];
  [v4 setUserIdentifier:userIdentifier];

  displayName = [(CRKUser *)self displayName];
  [v4 setDisplayName:displayName];

  givenName = [(CRKUser *)self givenName];
  [v4 setGivenName:givenName];

  familyName = [(CRKUser *)self familyName];
  [v4 setFamilyName:familyName];

  phoneticGivenName = [(CRKUser *)self phoneticGivenName];
  [v4 setPhoneticGivenName:phoneticGivenName];

  phoneticFamilyName = [(CRKUser *)self phoneticFamilyName];
  [v4 setPhoneticFamilyName:phoneticFamilyName];

  userImageData = [(CRKUser *)self userImageData];
  v12 = [userImageData copy];
  [v4 setUserImageData:v12];

  imageIdentifier = [(CRKUser *)self imageIdentifier];
  [v4 setImageIdentifier:imageIdentifier];

  imageURL = [(CRKUser *)self imageURL];
  [v4 setImageURL:imageURL];

  userSource = [(CRKUser *)self userSource];
  [v4 setUserSource:userSource];

  [v4 setRole:{-[CRKUser role](self, "role")}];
  [v4 setUseMeCardIfAvailable:{-[CRKUser shouldUseMeCardIfAvailable](self, "shouldUseMeCardIfAvailable")}];
  return v4;
}

- (CRKUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy)
  {
    [(CRKUser *)a2 initWithCoder:?];
  }

  v37.receiver = self;
  v37.super_class = CRKUser;
  v6 = [(CRKUser *)&v37 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"userIdentifier"];
    userIdentifier = v6->_userIdentifier;
    v6->_userIdentifier = v8;

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"displayName"];
    displayName = v6->_displayName;
    v6->_displayName = v11;

    v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"givenName"];
    givenName = v6->_givenName;
    v6->_givenName = v14;

    v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"familyName"];
    familyName = v6->_familyName;
    v6->_familyName = v17;

    v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"phoneticGivenName"];
    phoneticGivenName = v6->_phoneticGivenName;
    v6->_phoneticGivenName = v20;

    v22 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"phoneticFamilyName"];
    phoneticFamilyName = v6->_phoneticFamilyName;
    v6->_phoneticFamilyName = v23;

    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"imageURL"];
    imageURL = v6->_imageURL;
    v6->_imageURL = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"imageIdentifier"];
    imageIdentifier = v6->_imageIdentifier;
    v6->_imageIdentifier = v29;

    v31 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"userSource"];
    userSource = v6->_userSource;
    v6->_userSource = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    v6->_role = [v34 unsignedIntegerValue];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useMeCardIfAvailable"];
    v6->_useMeCardIfAvailable = [v35 BOOLValue];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy)
  {
    [(CRKUser *)a2 encodeWithCoder:?];
  }

  userIdentifier = [(CRKUser *)self userIdentifier];
  [coderCopy encodeObject:userIdentifier forKey:@"userIdentifier"];

  displayName = [(CRKUser *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  givenName = [(CRKUser *)self givenName];
  [coderCopy encodeObject:givenName forKey:@"givenName"];

  familyName = [(CRKUser *)self familyName];
  [coderCopy encodeObject:familyName forKey:@"familyName"];

  phoneticGivenName = [(CRKUser *)self phoneticGivenName];
  [coderCopy encodeObject:phoneticGivenName forKey:@"phoneticGivenName"];

  phoneticFamilyName = [(CRKUser *)self phoneticFamilyName];
  [coderCopy encodeObject:phoneticFamilyName forKey:@"phoneticFamilyName"];

  imageURL = [(CRKUser *)self imageURL];
  [coderCopy encodeObject:imageURL forKey:@"imageURL"];

  imageIdentifier = [(CRKUser *)self imageIdentifier];
  [coderCopy encodeObject:imageIdentifier forKey:@"imageIdentifier"];

  userSource = [(CRKUser *)self userSource];
  [coderCopy encodeObject:userSource forKey:@"userSource"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKUser role](self, "role")}];
  [coderCopy encodeObject:v14 forKey:@"role"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKUser shouldUseMeCardIfAvailable](self, "shouldUseMeCardIfAvailable")}];
  [coderCopy encodeObject:v15 forKey:@"useMeCardIfAvailable"];
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