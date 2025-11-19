@interface LKUser
+ (id)fullNameWithFamilyName:(id)a3 givenName:(id)a4;
+ (id)userFromDictionary:(id)a3;
+ (id)userFromUMUser:(id)a3;
+ (unint64_t)LKPasswordTypeFromUMUserPasscodeType:(unint64_t)a3;
+ (unint64_t)UMUserPasscodeTypeFromLKPasswordType:(unint64_t)a3;
+ (unint64_t)passwordTypeFromPasswordTypeString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLKUser:(id)a3;
- (CNContact)contact;
- (LKUser)initWithCoder:(id)a3;
- (NSString)tokenizedPhoneticDisplayName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDiffUMUserPropertiesFromUMUser:(id)a3;
- (void)setLocalLargeImageURL:(id)a3;
- (void)setLocalMediumImageURL:(id)a3;
@end

@implementation LKUser

- (LKUser)initWithCoder:(id)a3
{
  v4 = a3;
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
    v12 = [v4 decodeObjectOfClass:v6 forKey:@"identifier"];
    [(LKUser *)v5 setIdentifier:v12];

    v13 = [v4 decodeObjectOfClass:v6 forKey:@"givenName"];
    [(LKUser *)v5 setGivenName:v13];

    v14 = [v4 decodeObjectOfClass:v6 forKey:@"familyName"];
    [(LKUser *)v5 setFamilyName:v14];

    v15 = [v4 decodeObjectOfClass:v6 forKey:@"phoneticGivenName"];
    [(LKUser *)v5 setPhoneticGivenName:v15];

    v16 = [v4 decodeObjectOfClass:v6 forKey:@"phoneticFamilyName"];
    [(LKUser *)v5 setPhoneticFamilyName:v16];

    v17 = [v4 decodeObjectOfClass:v7 forKey:@"mediumImageURL"];
    [(LKUser *)v5 setMediumImageURL:v17];

    v18 = [v4 decodeObjectOfClass:v7 forKey:@"largeImageURL"];
    [(LKUser *)v5 setLargeImageURL:v18];

    v19 = [v4 decodeObjectOfClass:v6 forKey:@"displayName"];
    [(LKUser *)v5 setDisplayName:v19];

    v20 = [v4 decodeObjectOfClass:v6 forKey:@"username"];
    [(LKUser *)v5 setUsername:v20];

    v21 = [v4 decodeObjectOfClass:v10 forKey:@"passwordType"];
    -[LKUser setPasswordType:](v5, "setPasswordType:", [v21 integerValue]);

    [(LKUser *)v5 setPasscodeType:[LKUser UMUserPasscodeTypeFromLKPasswordType:[(LKUser *)v5 passwordType]]];
    v22 = [v4 decodeObjectOfClass:v9 forKey:@"lastOnlineAuth"];
    [(LKUser *)v5 setLastOnlineAuth:v22];

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{v8, v10, v11, 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"namingSimilarityInfoByClassID"];
    [(LKUser *)v5 setNamingSimilarityInfoByClassID:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneticName"];
    [(LKUser *)v5 setTokenizedPhoneticDisplayName:v25];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LKUser *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LKUser *)self givenName];
  [v4 encodeObject:v6 forKey:@"givenName"];

  v7 = [(LKUser *)self familyName];
  [v4 encodeObject:v7 forKey:@"familyName"];

  v8 = [(LKUser *)self phoneticGivenName];
  [v4 encodeObject:v8 forKey:@"phoneticGivenName"];

  v9 = [(LKUser *)self phoneticFamilyName];
  [v4 encodeObject:v9 forKey:@"phoneticFamilyName"];

  v10 = [(LKUser *)self mediumImageURL];
  [v4 encodeObject:v10 forKey:@"mediumImageURL"];

  v11 = [(LKUser *)self largeImageURL];
  [v4 encodeObject:v11 forKey:@"largeImageURL"];

  v12 = [(LKUser *)self displayName];
  [v4 encodeObject:v12 forKey:@"displayName"];

  v13 = [(LKUser *)self username];
  [v4 encodeObject:v13 forKey:@"username"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LKUser passwordType](self, "passwordType")}];
  [v4 encodeObject:v14 forKey:@"passwordType"];

  v15 = [(LKUser *)self lastOnlineAuth];
  [v4 encodeObject:v15 forKey:@"lastOnlineAuth"];

  v16 = [(LKUser *)self namingSimilarityInfoByClassID];
  [v4 encodeObject:v16 forKey:@"namingSimilarityInfoByClassID"];

  v17 = [(LKUser *)self tokenizedPhoneticDisplayName];
  [v4 encodeObject:v17 forKey:@"phoneticName"];
}

- (unint64_t)hash
{
  v2 = [(LKUser *)self identifier];
  v3 = [v2 hash];

  return v3;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKUser *)self isEqualToLKUser:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKUser:(id)a3
{
  v4 = a3;
  v5 = [(LKUser *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = [(LKUser *)self givenName];
  v9 = [v4 givenName];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = [(LKUser *)self familyName];
  v12 = [v4 familyName];
  v13 = [v11 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = [(LKUser *)self mediumImageURL];
  if (v14 || ([v4 mediumImageURL], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = [(LKUser *)self mediumImageURL];
    v16 = [v4 mediumImageURL];
    v17 = [v15 isEqual:v16];

    if (v14)
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

  v18 = [(LKUser *)self largeImageURL];
  if (!v18)
  {
    v12 = [v4 largeImageURL];
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  v19 = [(LKUser *)self largeImageURL];
  v20 = [v4 largeImageURL];
  v21 = [v19 isEqual:v20];

  if (v18)
  {

    if (!v21)
    {
      goto LABEL_23;
    }

LABEL_16:
    v22 = [(LKUser *)self displayName];
    v23 = [v4 displayName];
    v24 = [v22 isEqualToString:v23];

    if (!v24)
    {
      goto LABEL_23;
    }

    v25 = [(LKUser *)self username];
    v26 = [v4 username];
    v27 = [v25 isEqualToString:v26];

    if (!v27)
    {
      goto LABEL_23;
    }

    v28 = [(LKUser *)self passwordType];
    if (v28 != [v4 passwordType])
    {
      goto LABEL_23;
    }

    v29 = [(LKUser *)self lastOnlineAuth];
    if (v29 || ([v4 lastOnlineAuth], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = [(LKUser *)self lastOnlineAuth];
      v31 = [v4 lastOnlineAuth];
      v32 = [v30 isEqual:v31];

      if (v29)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = LKUser;
  v5 = [(LKUser *)&v18 copyWithZone:?];
  v6 = [LKUser userFromUMUser:v5];
  [v6 setPasswordType:{-[LKUser passwordType](self, "passwordType")}];
  v7 = [(LKUser *)self identifier];
  v8 = [v7 copyWithZone:a3];
  [v6 setIdentifier:v8];

  v9 = [(LKUser *)self phoneticGivenName];
  v10 = [v9 copyWithZone:a3];
  [v6 setPhoneticGivenName:v10];

  v11 = [(LKUser *)self phoneticFamilyName];
  v12 = [v11 copyWithZone:a3];
  [v6 setPhoneticFamilyName:v12];

  v13 = [(LKUser *)self mediumImageURL];
  v14 = [v13 copyWithZone:a3];
  [v6 setMediumImageURL:v14];

  v15 = [(LKUser *)self largeImageURL];
  v16 = [v15 copyWithZone:a3];
  [v6 setLargeImageURL:v16];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = LKUser;
  v5 = [(LKUser *)&v18 mutableCopyWithZone:?];
  v6 = [LKUser userFromUMUser:v5];
  [v6 setPasswordType:{-[LKUser passwordType](self, "passwordType")}];
  v7 = [(LKUser *)self identifier];
  v8 = [v7 copyWithZone:a3];
  [v6 setIdentifier:v8];

  v9 = [(LKUser *)self phoneticGivenName];
  v10 = [v9 copyWithZone:a3];
  [v6 setPhoneticGivenName:v10];

  v11 = [(LKUser *)self phoneticFamilyName];
  v12 = [v11 copyWithZone:a3];
  [v6 setPhoneticFamilyName:v12];

  v13 = [(LKUser *)self mediumImageURL];
  v14 = [v13 copyWithZone:a3];
  [v6 setMediumImageURL:v14];

  v15 = [(LKUser *)self largeImageURL];
  v16 = [v15 copyWithZone:a3];
  [v6 setLargeImageURL:v16];

  return v6;
}

+ (id)userFromUMUser:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v4)
  {
    [v4 setUid:{objc_msgSend(v3, "uid")}];
    [v4 setGid:{objc_msgSend(v3, "gid")}];
    v5 = [v3 alternateDSID];
    [v4 setAlternateDSID:v5];

    v6 = [v3 homeDirectoryURL];
    [v4 setHomeDirectoryURL:v6];

    v7 = [v3 username];
    [v4 setUsername:v7];

    v8 = [v3 givenName];
    [v4 setGivenName:v8];

    v9 = [v3 familyName];
    [v4 setFamilyName:v9];

    v10 = [v3 displayName];
    [v4 setDisplayName:v10];

    v11 = [v3 photoURL];
    [v4 setPhotoURL:v11];

    v12 = [v3 photoURL];
    [v4 setLocalMediumImageURL:v12];

    v13 = [v3 creationDate];
    [v4 setCreationDate:v13];

    v14 = [v3 lastLoginDate];
    [v4 setLastLoginDate:v14];

    v15 = [v3 lastRemoteAuthDate];
    [v4 setLastRemoteAuthDate:v15];

    [v4 setIsLoginUser:{objc_msgSend(v3, "isLoginUser")}];
    [v4 setIsAuditor:{objc_msgSend(v3, "isAuditor")}];
    [v4 setIsDisabled:{objc_msgSend(v3, "isDisabled")}];
    [v4 setPasscodeLockGracePeriod:{objc_msgSend(v3, "passcodeLockGracePeriod")}];
    v16 = [v3 languages];
    [v4 setLanguages:v16];

    [v4 setHasManagedCredentials:{objc_msgSend(v3, "hasManagedCredentials")}];
    [v4 setRetryCount:0];
    [v4 setPasscodeType:{objc_msgSend(v3, "passcodeType")}];
    [v4 setPasswordType:{+[LKUser LKPasswordTypeFromUMUserPasscodeType:](LKUser, "LKPasswordTypeFromUMUserPasscodeType:", objc_msgSend(v3, "passcodeType"))}];
  }

  return v4;
}

+ (id)userFromDictionary:(id)a3
{
  v4 = a3;
  LKRegisterLoginKitLogging();
  v5 = objc_opt_new();
  if (!v5)
  {
    goto LABEL_37;
  }

  v6 = [v4 objectForKeyedSubscript:@"Identifier"];
  [v5 setIdentifier:v6];

  v7 = [v4 objectForKeyedSubscript:@"AppleID"];
  [v5 setUsername:v7];

  v8 = [v4 objectForKeyedSubscript:@"GivenName"];
  [v5 setGivenName:v8];

  v9 = [v4 objectForKeyedSubscript:@"FamilyName"];
  [v5 setFamilyName:v9];

  v10 = [v5 givenName];
  if (![v10 length])
  {

    goto LABEL_6;
  }

  v11 = [v5 familyName];
  v12 = [v11 length];

  if (!v12)
  {
LABEL_6:
    v13 = [v4 objectForKeyedSubscript:@"Name"];
    [v5 setDisplayName:v13];
    goto LABEL_7;
  }

  v13 = [v5 familyName];
  v14 = [v5 givenName];
  v15 = [LKUser fullNameWithFamilyName:v13 givenName:v14];
  [v5 setDisplayName:v15];

LABEL_7:
  v16 = [v5 givenName];

  v17 = [v5 familyName];

  if (!v16 || !v17)
  {
    v18 = objc_opt_new();
    v19 = [v5 displayName];
    v20 = [v18 personNameComponentsFromString:v19];

    if (v20)
    {
      if (v16)
      {
        if (v17)
        {
          goto LABEL_20;
        }

        v21 = [v5 givenName];
        v22 = [v20 givenName];
        v23 = [v21 isEqualToString:v22];

        if (!v23)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (!v17)
      {
        v28 = [v20 givenName];
        [v5 setGivenName:v28];

LABEL_18:
        v27 = [v20 familyName];
        [v5 setFamilyName:v27];
        goto LABEL_19;
      }

      v24 = [v5 familyName];
      v25 = [v20 familyName];
      v26 = [v24 isEqualToString:v25];

      if (v26)
      {
        v27 = [v20 givenName];
        [v5 setGivenName:v27];
LABEL_19:
      }
    }

LABEL_20:
  }

  v29 = [v4 objectForKeyedSubscript:@"PhoneticGivenName"];
  [v5 setPhoneticGivenName:v29];

  v30 = [v4 objectForKeyedSubscript:@"PhoneticFamilyName"];
  [v5 setPhoneticFamilyName:v30];

  v31 = [v5 phoneticGivenName];
  if (v31)
  {
    [v5 setIsPhoneticInfoProvidedInConfiguration:1];
  }

  else
  {
    v32 = [v5 phoneticFamilyName];
    [v5 setIsPhoneticInfoProvidedInConfiguration:v32 != 0];
  }

  v33 = [v4 objectForKeyedSubscript:@"ImageURL"];
  if (v33)
  {
    v34 = [MEMORY[0x277CBEBC0] URLWithString:v33];
    [v5 setMediumImageURL:v34];

    v35 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v36 = [v35 BOOLForKey:@"LUIAllowNonHttpsUrls"];

    if ((v36 & 1) == 0)
    {
      v37 = [v5 mediumImageURL];
      v38 = [v37 scheme];
      v39 = [v38 isEqualToString:@"https"];

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

  v41 = [v4 objectForKeyedSubscript:@"FullScreenImageURL"];

  if (v41)
  {
    v42 = [MEMORY[0x277CBEBC0] URLWithString:v41];
    [v5 setLargeImageURL:v42];

    v43 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v44 = [v43 BOOLForKey:@"LUIAllowNonHttpsUrls"];

    if ((v44 & 1) == 0)
    {
      v45 = [v5 largeImageURL];
      v46 = [v45 scheme];
      v47 = [v46 isEqualToString:@"https"];

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
  v49 = [v4 objectForKeyedSubscript:@"PasscodeType"];
  [v5 setPasswordType:{objc_msgSend(a1, "passwordTypeFromPasswordTypeString:", v49)}];

  [v5 setPasscodeType:{+[LKUser UMUserPasscodeTypeFromLKPasswordType:](LKUser, "UMUserPasscodeTypeFromLKPasswordType:", objc_msgSend(v5, "passwordType"))}];
  v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setNamingSimilarityInfoByClassID:v50];

  [v5 setRetryCount:0];
LABEL_37:

  return v5;
}

- (void)setDiffUMUserPropertiesFromUMUser:(id)a3
{
  if (self && a3)
  {
    v4 = a3;
    -[LKUser setUid:](self, "setUid:", [v4 uid]);
    -[LKUser setGid:](self, "setGid:", [v4 gid]);
    v5 = [v4 alternateDSID];
    [(LKUser *)self setAlternateDSID:v5];

    v6 = [v4 homeDirectoryURL];
    [(LKUser *)self setHomeDirectoryURL:v6];

    v7 = [v4 creationDate];
    [(LKUser *)self setCreationDate:v7];

    v8 = [v4 lastLoginDate];
    [(LKUser *)self setLastLoginDate:v8];

    v9 = [v4 lastRemoteAuthDate];
    [(LKUser *)self setLastRemoteAuthDate:v9];

    -[LKUser setIsLoginUser:](self, "setIsLoginUser:", [v4 isLoginUser]);
    -[LKUser setIsDisabled:](self, "setIsDisabled:", [v4 isDisabled]);
    -[LKUser setIsAuditor:](self, "setIsAuditor:", [v4 isAuditor]);
    -[LKUser setPasscodeLockGracePeriod:](self, "setPasscodeLockGracePeriod:", [v4 passcodeLockGracePeriod]);
    v10 = [v4 languages];

    [(LKUser *)self setLanguages:v10];
  }
}

- (void)setLocalLargeImageURL:(id)a3
{
  v5 = a3;
  if (self->_localLargeImageURL != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_localLargeImageURL, a3);
    v5 = v6;
  }
}

- (void)setLocalMediumImageURL:(id)a3
{
  v5 = a3;
  if (self->_localMediumImageURL != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_localMediumImageURL, a3);
    [(LKUser *)self setPhotoURL:self->_localMediumImageURL];
    v5 = v6;
  }
}

- (NSString)tokenizedPhoneticDisplayName
{
  if (gPhoneticNameLocale)
  {
    if (![(LKUser *)self isAttemptedPhoneticTranscription]&& !self->_tokenizedPhoneticDisplayName)
    {
      [(LKUser *)self setIsAttemptedPhoneticTranscription:1];
      v3 = [(LKUser *)self displayName];
      v4 = [(LKUser *)self displayName];
      v13.length = [v4 length];
      v13.location = 0;
      v5 = CFStringTokenizerCreate(0, v3, v13, 0, gPhoneticNameLocale);

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
      v5 = [(LKUser *)self tokenizedPhoneticDisplayName];

      if (v5)
      {
        v6 = [(LKUser *)self tokenizedPhoneticDisplayName];
LABEL_5:
        v7 = v6;
        [(CNContact *)v4 setGivenName:v6];
LABEL_10:

        v12 = self->_contact;
        self->_contact = v4;

        contact = self->_contact;
        goto LABEL_11;
      }
    }

    v8 = [(LKUser *)self givenName];
    if (v8 || ([(LKUser *)self familyName], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (![(LKUser *)self isPhoneticInfoProvidedInConfiguration])
    {
      v6 = [(LKUser *)self displayName];
      goto LABEL_5;
    }

    v9 = [(LKUser *)self givenName];
    [(CNContact *)v4 setGivenName:v9];

    v10 = [(LKUser *)self familyName];
    [(CNContact *)v4 setFamilyName:v10];

    v11 = [(LKUser *)self phoneticGivenName];
    [(CNContact *)v4 setPhoneticGivenName:v11];

    v7 = [(LKUser *)self phoneticFamilyName];
    [(CNContact *)v4 setPhoneticFamilyName:v7];
    goto LABEL_10;
  }

LABEL_11:

  return contact;
}

+ (id)fullNameWithFamilyName:(id)a3 givenName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setGivenName:v5];

  [v7 setFamilyName:v6];
  v8 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v7 style:3 options:0];

  return v8;
}

+ (unint64_t)passwordTypeFromPasswordTypeString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"four"])
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

+ (unint64_t)LKPasswordTypeFromUMUserPasscodeType:(unint64_t)a3
{
  if (a3)
  {
    return a3 == 1;
  }

  else
  {
    return 2;
  }
}

+ (unint64_t)UMUserPasscodeTypeFromLKPasswordType:(unint64_t)a3
{
  v3 = 3;
  if (a3 == 1)
  {
    v3 = 1;
  }

  if (a3 == 2)
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