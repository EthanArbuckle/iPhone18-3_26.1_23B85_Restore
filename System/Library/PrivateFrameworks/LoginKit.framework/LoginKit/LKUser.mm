@interface LKUser
+ (id)fullNameWithFamilyName:(id)name givenName:(id)givenName;
+ (id)userFromDictionary:(id)dictionary;
+ (id)userFromUMUser:(id)user;
+ (unint64_t)LKPasswordTypeFromUMUserPasscodeType:(unint64_t)type;
+ (unint64_t)UMUserPasscodeTypeFromLKPasswordType:(unint64_t)type;
+ (unint64_t)passwordTypeFromPasswordTypeString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLKUser:(id)user;
- (CNContact)contact;
- (LKUser)initWithCoder:(id)coder;
- (NSString)tokenizedPhoneticDisplayName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDiffUMUserPropertiesFromUMUser:(id)user;
- (void)setLocalLargeImageURL:(id)l;
- (void)setLocalMediumImageURL:(id)l;
@end

@implementation LKUser

- (LKUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = LKUser;
  v5 = [(LKUser *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [coderCopy decodeObjectOfClass:v6 forKey:@"identifier"];
    [(LKUser *)v5 setIdentifier:v12];

    v13 = [coderCopy decodeObjectOfClass:v6 forKey:@"givenName"];
    [(LKUser *)v5 setGivenName:v13];

    v14 = [coderCopy decodeObjectOfClass:v6 forKey:@"familyName"];
    [(LKUser *)v5 setFamilyName:v14];

    v15 = [coderCopy decodeObjectOfClass:v6 forKey:@"phoneticGivenName"];
    [(LKUser *)v5 setPhoneticGivenName:v15];

    v16 = [coderCopy decodeObjectOfClass:v6 forKey:@"phoneticFamilyName"];
    [(LKUser *)v5 setPhoneticFamilyName:v16];

    v17 = [coderCopy decodeObjectOfClass:v7 forKey:@"mediumImageURL"];
    [(LKUser *)v5 setMediumImageURL:v17];

    v18 = [coderCopy decodeObjectOfClass:v7 forKey:@"largeImageURL"];
    [(LKUser *)v5 setLargeImageURL:v18];

    v19 = [coderCopy decodeObjectOfClass:v6 forKey:@"displayName"];
    [(LKUser *)v5 setDisplayName:v19];

    v20 = [coderCopy decodeObjectOfClass:v6 forKey:@"username"];
    [(LKUser *)v5 setUsername:v20];

    v21 = [coderCopy decodeObjectOfClass:v10 forKey:@"passwordType"];
    -[LKUser setPasswordType:](v5, "setPasswordType:", [v21 integerValue]);

    [(LKUser *)v5 setPasscodeType:[LKUser UMUserPasscodeTypeFromLKPasswordType:[(LKUser *)v5 passwordType]]];
    v22 = [coderCopy decodeObjectOfClass:v9 forKey:@"lastOnlineAuth"];
    [(LKUser *)v5 setLastOnlineAuth:v22];

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{v8, v10, v11, 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"namingSimilarityInfoByClassID"];
    [(LKUser *)v5 setNamingSimilarityInfoByClassID:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticName"];
    [(LKUser *)v5 setTokenizedPhoneticDisplayName:v25];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LKUser *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  givenName = [(LKUser *)self givenName];
  [coderCopy encodeObject:givenName forKey:@"givenName"];

  familyName = [(LKUser *)self familyName];
  [coderCopy encodeObject:familyName forKey:@"familyName"];

  phoneticGivenName = [(LKUser *)self phoneticGivenName];
  [coderCopy encodeObject:phoneticGivenName forKey:@"phoneticGivenName"];

  phoneticFamilyName = [(LKUser *)self phoneticFamilyName];
  [coderCopy encodeObject:phoneticFamilyName forKey:@"phoneticFamilyName"];

  mediumImageURL = [(LKUser *)self mediumImageURL];
  [coderCopy encodeObject:mediumImageURL forKey:@"mediumImageURL"];

  largeImageURL = [(LKUser *)self largeImageURL];
  [coderCopy encodeObject:largeImageURL forKey:@"largeImageURL"];

  displayName = [(LKUser *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  username = [(LKUser *)self username];
  [coderCopy encodeObject:username forKey:@"username"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LKUser passwordType](self, "passwordType")}];
  [coderCopy encodeObject:v14 forKey:@"passwordType"];

  lastOnlineAuth = [(LKUser *)self lastOnlineAuth];
  [coderCopy encodeObject:lastOnlineAuth forKey:@"lastOnlineAuth"];

  namingSimilarityInfoByClassID = [(LKUser *)self namingSimilarityInfoByClassID];
  [coderCopy encodeObject:namingSimilarityInfoByClassID forKey:@"namingSimilarityInfoByClassID"];

  tokenizedPhoneticDisplayName = [(LKUser *)self tokenizedPhoneticDisplayName];
  [coderCopy encodeObject:tokenizedPhoneticDisplayName forKey:@"phoneticName"];
}

- (unint64_t)hash
{
  identifier = [(LKUser *)self identifier];
  v3 = [identifier hash];

  return v3;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKUser *)self isEqualToLKUser:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKUser:(id)user
{
  userCopy = user;
  identifier = [(LKUser *)self identifier];
  identifier2 = [userCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (!v7)
  {
    goto LABEL_23;
  }

  givenName = [(LKUser *)self givenName];
  givenName2 = [userCopy givenName];
  v10 = [givenName isEqualToString:givenName2];

  if (!v10)
  {
    goto LABEL_23;
  }

  familyName = [(LKUser *)self familyName];
  familyName2 = [userCopy familyName];
  v13 = [familyName isEqualToString:familyName2];

  if (!v13)
  {
    goto LABEL_23;
  }

  mediumImageURL = [(LKUser *)self mediumImageURL];
  if (mediumImageURL || ([userCopy mediumImageURL], (familyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    mediumImageURL2 = [(LKUser *)self mediumImageURL];
    mediumImageURL3 = [userCopy mediumImageURL];
    v17 = [mediumImageURL2 isEqual:mediumImageURL3];

    if (mediumImageURL)
    {

      if (!v17)
      {
        goto LABEL_23;
      }
    }

    else
    {

      if ((v17 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  largeImageURL = [(LKUser *)self largeImageURL];
  if (!largeImageURL)
  {
    familyName2 = [userCopy largeImageURL];
    if (!familyName2)
    {
      goto LABEL_16;
    }
  }

  largeImageURL2 = [(LKUser *)self largeImageURL];
  largeImageURL3 = [userCopy largeImageURL];
  v21 = [largeImageURL2 isEqual:largeImageURL3];

  if (largeImageURL)
  {

    if (!v21)
    {
      goto LABEL_23;
    }

LABEL_16:
    displayName = [(LKUser *)self displayName];
    displayName2 = [userCopy displayName];
    v24 = [displayName isEqualToString:displayName2];

    if (!v24)
    {
      goto LABEL_23;
    }

    username = [(LKUser *)self username];
    username2 = [userCopy username];
    v27 = [username isEqualToString:username2];

    if (!v27)
    {
      goto LABEL_23;
    }

    passwordType = [(LKUser *)self passwordType];
    if (passwordType != [userCopy passwordType])
    {
      goto LABEL_23;
    }

    lastOnlineAuth = [(LKUser *)self lastOnlineAuth];
    if (lastOnlineAuth || ([userCopy lastOnlineAuth], (username2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      lastOnlineAuth2 = [(LKUser *)self lastOnlineAuth];
      lastOnlineAuth3 = [userCopy lastOnlineAuth];
      v32 = [lastOnlineAuth2 isEqual:lastOnlineAuth3];

      if (lastOnlineAuth)
      {
LABEL_27:

        goto LABEL_24;
      }
    }

    else
    {
      v32 = 1;
    }

    goto LABEL_27;
  }

  if (v21)
  {
    goto LABEL_16;
  }

LABEL_23:
  v32 = 0;
LABEL_24:

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = LKUser;
  v5 = [(LKUser *)&v18 copyWithZone:?];
  v6 = [LKUser userFromUMUser:v5];
  [v6 setPasswordType:{-[LKUser passwordType](self, "passwordType")}];
  identifier = [(LKUser *)self identifier];
  v8 = [identifier copyWithZone:zone];
  [v6 setIdentifier:v8];

  phoneticGivenName = [(LKUser *)self phoneticGivenName];
  v10 = [phoneticGivenName copyWithZone:zone];
  [v6 setPhoneticGivenName:v10];

  phoneticFamilyName = [(LKUser *)self phoneticFamilyName];
  v12 = [phoneticFamilyName copyWithZone:zone];
  [v6 setPhoneticFamilyName:v12];

  mediumImageURL = [(LKUser *)self mediumImageURL];
  v14 = [mediumImageURL copyWithZone:zone];
  [v6 setMediumImageURL:v14];

  largeImageURL = [(LKUser *)self largeImageURL];
  v16 = [largeImageURL copyWithZone:zone];
  [v6 setLargeImageURL:v16];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = LKUser;
  v5 = [(LKUser *)&v18 mutableCopyWithZone:?];
  v6 = [LKUser userFromUMUser:v5];
  [v6 setPasswordType:{-[LKUser passwordType](self, "passwordType")}];
  identifier = [(LKUser *)self identifier];
  v8 = [identifier copyWithZone:zone];
  [v6 setIdentifier:v8];

  phoneticGivenName = [(LKUser *)self phoneticGivenName];
  v10 = [phoneticGivenName copyWithZone:zone];
  [v6 setPhoneticGivenName:v10];

  phoneticFamilyName = [(LKUser *)self phoneticFamilyName];
  v12 = [phoneticFamilyName copyWithZone:zone];
  [v6 setPhoneticFamilyName:v12];

  mediumImageURL = [(LKUser *)self mediumImageURL];
  v14 = [mediumImageURL copyWithZone:zone];
  [v6 setMediumImageURL:v14];

  largeImageURL = [(LKUser *)self largeImageURL];
  v16 = [largeImageURL copyWithZone:zone];
  [v6 setLargeImageURL:v16];

  return v6;
}

+ (id)userFromUMUser:(id)user
{
  userCopy = user;
  v4 = objc_opt_new();
  if (v4)
  {
    [v4 setUid:{objc_msgSend(userCopy, "uid")}];
    [v4 setGid:{objc_msgSend(userCopy, "gid")}];
    alternateDSID = [userCopy alternateDSID];
    [v4 setAlternateDSID:alternateDSID];

    homeDirectoryURL = [userCopy homeDirectoryURL];
    [v4 setHomeDirectoryURL:homeDirectoryURL];

    username = [userCopy username];
    [v4 setUsername:username];

    givenName = [userCopy givenName];
    [v4 setGivenName:givenName];

    familyName = [userCopy familyName];
    [v4 setFamilyName:familyName];

    displayName = [userCopy displayName];
    [v4 setDisplayName:displayName];

    photoURL = [userCopy photoURL];
    [v4 setPhotoURL:photoURL];

    photoURL2 = [userCopy photoURL];
    [v4 setLocalMediumImageURL:photoURL2];

    creationDate = [userCopy creationDate];
    [v4 setCreationDate:creationDate];

    lastLoginDate = [userCopy lastLoginDate];
    [v4 setLastLoginDate:lastLoginDate];

    lastRemoteAuthDate = [userCopy lastRemoteAuthDate];
    [v4 setLastRemoteAuthDate:lastRemoteAuthDate];

    [v4 setIsLoginUser:{objc_msgSend(userCopy, "isLoginUser")}];
    [v4 setIsAuditor:{objc_msgSend(userCopy, "isAuditor")}];
    [v4 setIsDisabled:{objc_msgSend(userCopy, "isDisabled")}];
    [v4 setPasscodeLockGracePeriod:{objc_msgSend(userCopy, "passcodeLockGracePeriod")}];
    languages = [userCopy languages];
    [v4 setLanguages:languages];

    [v4 setHasManagedCredentials:{objc_msgSend(userCopy, "hasManagedCredentials")}];
    [v4 setRetryCount:0];
    [v4 setPasscodeType:{objc_msgSend(userCopy, "passcodeType")}];
    [v4 setPasswordType:{+[LKUser LKPasswordTypeFromUMUserPasscodeType:](LKUser, "LKPasswordTypeFromUMUserPasscodeType:", objc_msgSend(userCopy, "passcodeType"))}];
  }

  return v4;
}

+ (id)userFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  LKRegisterLoginKitLogging();
  v5 = objc_opt_new();
  if (!v5)
  {
    goto LABEL_37;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"Identifier"];
  [v5 setIdentifier:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"AppleID"];
  [v5 setUsername:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"GivenName"];
  [v5 setGivenName:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"FamilyName"];
  [v5 setFamilyName:v9];

  givenName = [v5 givenName];
  if (![givenName length])
  {

    goto LABEL_6;
  }

  familyName = [v5 familyName];
  v12 = [familyName length];

  if (!v12)
  {
LABEL_6:
    familyName2 = [dictionaryCopy objectForKeyedSubscript:@"Name"];
    [v5 setDisplayName:familyName2];
    goto LABEL_7;
  }

  familyName2 = [v5 familyName];
  givenName2 = [v5 givenName];
  v15 = [LKUser fullNameWithFamilyName:familyName2 givenName:givenName2];
  [v5 setDisplayName:v15];

LABEL_7:
  givenName3 = [v5 givenName];

  familyName3 = [v5 familyName];

  if (!givenName3 || !familyName3)
  {
    v18 = objc_opt_new();
    displayName = [v5 displayName];
    v20 = [v18 personNameComponentsFromString:displayName];

    if (v20)
    {
      if (givenName3)
      {
        if (familyName3)
        {
          goto LABEL_20;
        }

        givenName4 = [v5 givenName];
        givenName5 = [v20 givenName];
        v23 = [givenName4 isEqualToString:givenName5];

        if (!v23)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (!familyName3)
      {
        givenName6 = [v20 givenName];
        [v5 setGivenName:givenName6];

LABEL_18:
        familyName4 = [v20 familyName];
        [v5 setFamilyName:familyName4];
        goto LABEL_19;
      }

      familyName5 = [v5 familyName];
      familyName6 = [v20 familyName];
      v26 = [familyName5 isEqualToString:familyName6];

      if (v26)
      {
        familyName4 = [v20 givenName];
        [v5 setGivenName:familyName4];
LABEL_19:
      }
    }

LABEL_20:
  }

  v29 = [dictionaryCopy objectForKeyedSubscript:@"PhoneticGivenName"];
  [v5 setPhoneticGivenName:v29];

  v30 = [dictionaryCopy objectForKeyedSubscript:@"PhoneticFamilyName"];
  [v5 setPhoneticFamilyName:v30];

  phoneticGivenName = [v5 phoneticGivenName];
  if (phoneticGivenName)
  {
    [v5 setIsPhoneticInfoProvidedInConfiguration:1];
  }

  else
  {
    phoneticFamilyName = [v5 phoneticFamilyName];
    [v5 setIsPhoneticInfoProvidedInConfiguration:phoneticFamilyName != 0];
  }

  v33 = [dictionaryCopy objectForKeyedSubscript:@"ImageURL"];
  if (v33)
  {
    v34 = [MEMORY[0x277CBEBC0] URLWithString:v33];
    [v5 setMediumImageURL:v34];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v36 = [standardUserDefaults BOOLForKey:@"LUIAllowNonHttpsUrls"];

    if ((v36 & 1) == 0)
    {
      mediumImageURL = [v5 mediumImageURL];
      scheme = [mediumImageURL scheme];
      v39 = [scheme isEqualToString:@"https"];

      if ((v39 & 1) == 0)
      {
        v40 = LKLogParsing;
        if (os_log_type_enabled(LKLogParsing, OS_LOG_TYPE_DEBUG))
        {
          [(LKUser *)v40 userFromDictionary:v5];
        }

        [v5 setMediumImageURL:0];
      }
    }
  }

  v41 = [dictionaryCopy objectForKeyedSubscript:@"FullScreenImageURL"];

  if (v41)
  {
    v42 = [MEMORY[0x277CBEBC0] URLWithString:v41];
    [v5 setLargeImageURL:v42];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v44 = [standardUserDefaults2 BOOLForKey:@"LUIAllowNonHttpsUrls"];

    if ((v44 & 1) == 0)
    {
      largeImageURL = [v5 largeImageURL];
      scheme2 = [largeImageURL scheme];
      v47 = [scheme2 isEqualToString:@"https"];

      if ((v47 & 1) == 0)
      {
        v48 = LKLogParsing;
        if (os_log_type_enabled(LKLogParsing, OS_LOG_TYPE_DEBUG))
        {
          [(LKUser *)v48 userFromDictionary:v5];
        }

        [v5 setLargeImageURL:0];
      }
    }
  }

  [v5 setLocalLargeImageURL:0];
  [v5 setLocalMediumImageURL:0];
  v49 = [dictionaryCopy objectForKeyedSubscript:@"PasscodeType"];
  [v5 setPasswordType:{objc_msgSend(self, "passwordTypeFromPasswordTypeString:", v49)}];

  [v5 setPasscodeType:{+[LKUser UMUserPasscodeTypeFromLKPasswordType:](LKUser, "UMUserPasscodeTypeFromLKPasswordType:", objc_msgSend(v5, "passwordType"))}];
  v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setNamingSimilarityInfoByClassID:v50];

  [v5 setRetryCount:0];
LABEL_37:

  return v5;
}

- (void)setDiffUMUserPropertiesFromUMUser:(id)user
{
  if (self && user)
  {
    userCopy = user;
    -[LKUser setUid:](self, "setUid:", [userCopy uid]);
    -[LKUser setGid:](self, "setGid:", [userCopy gid]);
    alternateDSID = [userCopy alternateDSID];
    [(LKUser *)self setAlternateDSID:alternateDSID];

    homeDirectoryURL = [userCopy homeDirectoryURL];
    [(LKUser *)self setHomeDirectoryURL:homeDirectoryURL];

    creationDate = [userCopy creationDate];
    [(LKUser *)self setCreationDate:creationDate];

    lastLoginDate = [userCopy lastLoginDate];
    [(LKUser *)self setLastLoginDate:lastLoginDate];

    lastRemoteAuthDate = [userCopy lastRemoteAuthDate];
    [(LKUser *)self setLastRemoteAuthDate:lastRemoteAuthDate];

    -[LKUser setIsLoginUser:](self, "setIsLoginUser:", [userCopy isLoginUser]);
    -[LKUser setIsDisabled:](self, "setIsDisabled:", [userCopy isDisabled]);
    -[LKUser setIsAuditor:](self, "setIsAuditor:", [userCopy isAuditor]);
    -[LKUser setPasscodeLockGracePeriod:](self, "setPasscodeLockGracePeriod:", [userCopy passcodeLockGracePeriod]);
    languages = [userCopy languages];

    [(LKUser *)self setLanguages:languages];
  }
}

- (void)setLocalLargeImageURL:(id)l
{
  lCopy = l;
  if (self->_localLargeImageURL != lCopy)
  {
    v6 = lCopy;
    objc_storeStrong(&self->_localLargeImageURL, l);
    lCopy = v6;
  }
}

- (void)setLocalMediumImageURL:(id)l
{
  lCopy = l;
  if (self->_localMediumImageURL != lCopy)
  {
    v6 = lCopy;
    objc_storeStrong(&self->_localMediumImageURL, l);
    [(LKUser *)self setPhotoURL:self->_localMediumImageURL];
    lCopy = v6;
  }
}

- (NSString)tokenizedPhoneticDisplayName
{
  if (gPhoneticNameLocale)
  {
    if (![(LKUser *)self isAttemptedPhoneticTranscription]&& !self->_tokenizedPhoneticDisplayName)
    {
      [(LKUser *)self setIsAttemptedPhoneticTranscription:1];
      displayName = [(LKUser *)self displayName];
      displayName2 = [(LKUser *)self displayName];
      v13.length = [displayName2 length];
      v13.location = 0;
      v5 = CFStringTokenizerCreate(0, displayName, v13, 0, gPhoneticNameLocale);

      if (v5)
      {
        v6 = objc_opt_new();
        while (CFStringTokenizerAdvanceToNextToken(v5))
        {
          v7 = CFStringTokenizerCopyCurrentTokenAttribute(v5, 0x1000000uLL);
          if (v7)
          {
            [v6 appendString:v7];
          }
        }

        v10 = [v6 copy];
        tokenizedPhoneticDisplayName = self->_tokenizedPhoneticDisplayName;
        self->_tokenizedPhoneticDisplayName = v10;

        CFRelease(v5);
      }
    }
  }

  v8 = self->_tokenizedPhoneticDisplayName;

  return v8;
}

- (CNContact)contact
{
  contact = self->_contact;
  if (!contact)
  {
    v4 = objc_opt_new();
    if (![(LKUser *)self isPhoneticInfoProvidedInConfiguration])
    {
      tokenizedPhoneticDisplayName = [(LKUser *)self tokenizedPhoneticDisplayName];

      if (tokenizedPhoneticDisplayName)
      {
        tokenizedPhoneticDisplayName2 = [(LKUser *)self tokenizedPhoneticDisplayName];
LABEL_5:
        phoneticFamilyName = tokenizedPhoneticDisplayName2;
        [(CNContact *)v4 setGivenName:tokenizedPhoneticDisplayName2];
LABEL_10:

        v12 = self->_contact;
        self->_contact = v4;

        contact = self->_contact;
        goto LABEL_11;
      }
    }

    givenName = [(LKUser *)self givenName];
    if (givenName || ([(LKUser *)self familyName], (givenName = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (![(LKUser *)self isPhoneticInfoProvidedInConfiguration])
    {
      tokenizedPhoneticDisplayName2 = [(LKUser *)self displayName];
      goto LABEL_5;
    }

    givenName2 = [(LKUser *)self givenName];
    [(CNContact *)v4 setGivenName:givenName2];

    familyName = [(LKUser *)self familyName];
    [(CNContact *)v4 setFamilyName:familyName];

    phoneticGivenName = [(LKUser *)self phoneticGivenName];
    [(CNContact *)v4 setPhoneticGivenName:phoneticGivenName];

    phoneticFamilyName = [(LKUser *)self phoneticFamilyName];
    [(CNContact *)v4 setPhoneticFamilyName:phoneticFamilyName];
    goto LABEL_10;
  }

LABEL_11:

  return contact;
}

+ (id)fullNameWithFamilyName:(id)name givenName:(id)givenName
{
  givenNameCopy = givenName;
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 setGivenName:givenNameCopy];

  [v7 setFamilyName:nameCopy];
  v8 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v7 style:3 options:0];

  return v8;
}

+ (unint64_t)passwordTypeFromPasswordTypeString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"four"])
    {
      v5 = 2;
    }

    else
    {
      v5 = [v4 isEqualToString:@"six"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)LKPasswordTypeFromUMUserPasscodeType:(unint64_t)type
{
  if (type)
  {
    return type == 1;
  }

  else
  {
    return 2;
  }
}

+ (unint64_t)UMUserPasscodeTypeFromLKPasswordType:(unint64_t)type
{
  v3 = 3;
  if (type == 1)
  {
    v3 = 1;
  }

  if (type == 2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (void)userFromDictionary:(void *)a1 .cold.1(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 mediumImageURL];
  v5 = [v4 absoluteString];
  v6 = [a2 username];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25618F000, v7, v8, "Ignoring image url (%{private}@) for user (%{private}@). Https URLs are required.", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end