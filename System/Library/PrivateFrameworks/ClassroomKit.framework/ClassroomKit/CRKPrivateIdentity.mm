@interface CRKPrivateIdentity
+ (id)commonNameWithPrefix:(id)prefix;
+ (id)freshPrivateIdentityWithCommonNamePrefix:(id)prefix;
+ (id)keychainGroup;
+ (id)makeIdentityWithCommonName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)refreshIdentities;
- (CRKPrivateIdentity)initWithCoder:(id)coder;
- (CRKPrivateIdentity)initWithDictionary:(id)dictionary;
- (CRKPrivateIdentity)initWithIdentityPersistentId:(id)id stagedIdentityPersistentId:(id)persistentId commonNamePrefix:(id)prefix;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKPrivateIdentity

- (CRKPrivateIdentity)initWithIdentityPersistentId:(id)id stagedIdentityPersistentId:(id)persistentId commonNamePrefix:(id)prefix
{
  idCopy = id;
  persistentIdCopy = persistentId;
  prefixCopy = prefix;
  v12 = prefixCopy;
  if (idCopy)
  {
    if (prefixCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKPrivateIdentity initWithIdentityPersistentId:stagedIdentityPersistentId:commonNamePrefix:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [CRKPrivateIdentity initWithIdentityPersistentId:stagedIdentityPersistentId:commonNamePrefix:];
LABEL_3:
  v30.receiver = self;
  v30.super_class = CRKPrivateIdentity;
  v13 = [(CRKPrivateIdentity *)&v30 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identityPersistentId, id);
    objc_storeStrong(&v14->_stagedIdentityPersistentId, persistentId);
    v15 = [v12 copy];
    commonNamePrefix = v14->_commonNamePrefix;
    v14->_commonNamePrefix = v15;

    v17 = +[CRKKeychainProvider sharedProvider];
    keychain = [v17 keychain];

    v19 = [keychain identityWithPersistentID:idCopy];
    certificate = [v19 certificate];
    validityDateInterval = [certificate validityDateInterval];
    endDate = [validityDateInterval endDate];
    identityExpirationDate = v14->_identityExpirationDate;
    v14->_identityExpirationDate = endDate;

    if (persistentIdCopy)
    {
      v24 = [keychain identityWithPersistentID:persistentIdCopy];
      certificate2 = [v24 certificate];
      validityDateInterval2 = [certificate2 validityDateInterval];
      endDate2 = [validityDateInterval2 endDate];
      stagedIdentityExpirationDate = v14->_stagedIdentityExpirationDate;
      v14->_stagedIdentityExpirationDate = endDate2;
    }
  }

  return v14;
}

+ (id)freshPrivateIdentityWithCommonNamePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [self commonNameWithPrefix:prefixCopy];
  v6 = [self makeIdentityWithCommonName:v5];

  if (v6)
  {
    v7 = [objc_alloc(objc_opt_class()) initWithIdentityPersistentId:v6 stagedIdentityPersistentId:0 commonNamePrefix:prefixCopy];
  }

  else
  {
    v8 = _CRKLogGeneral_15();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CRKPrivateIdentity freshPrivateIdentityWithCommonNamePrefix:v8];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)makeIdentityWithCommonName:(id)name
{
  nameCopy = name;
  v5 = [[CRKIdentityConfiguration alloc] initWithCommonName:nameCopy];

  v6 = +[CRKKeychainProvider sharedProvider];
  keychain = [v6 keychain];

  v8 = [keychain makeIdentityWithConfiguration:v5];
  if (v8)
  {
    keychainGroup = [self keychainGroup];
    v10 = [keychain addIdentity:v8 toAccessGroup:keychainGroup];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)commonNameWithPrefix:(id)prefix
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCAD78];
  prefixCopy = prefix;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@", prefixCopy, uUIDString];

  return v8;
}

- (BOOL)refreshIdentities
{
  v36 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults stringForKey:@"CERTIFICATE"];

  lowercaseString = [v4 lowercaseString];
  v6 = [lowercaseString isEqualToString:@"expire"];

  lowercaseString2 = [v4 lowercaseString];
  v8 = [lowercaseString2 isEqualToString:@"stage"];

  if (v6)
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1.0];
    if ((v8 & 1) == 0)
    {
LABEL_3:
      v10 = [v9 dateByAddingTimeInterval:-15768000.0];
      goto LABEL_6;
    }
  }

  else
  {
    identityExpirationDate = [(CRKPrivateIdentity *)self identityExpirationDate];
    v9 = [identityExpirationDate dateByAddingTimeInterval:-86400.0];

    if ((v8 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1.0];
LABEL_6:
  v12 = v10;
  v13 = +[CRKKeychainProvider sharedProvider];
  keychain = [v13 keychain];

  stagedIdentityPersistentId = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
  if (stagedIdentityPersistentId)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v17 = [v9 earlierDate:date];

    if (v17 == v9)
    {
      identityPersistentId = [(CRKPrivateIdentity *)self identityPersistentId];
      [keychain removeItemWithPersistentID:identityPersistentId];

      stagedIdentityPersistentId2 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
      [(CRKPrivateIdentity *)self setIdentityPersistentId:stagedIdentityPersistentId2];

      stagedIdentityPersistentId = [(CRKPrivateIdentity *)self stagedIdentityExpirationDate];
      [(CRKPrivateIdentity *)self setIdentityExpirationDate:stagedIdentityPersistentId];

      [(CRKPrivateIdentity *)self setStagedIdentityPersistentId:0];
      [(CRKPrivateIdentity *)self setStagedIdentityExpirationDate:0];
      LOBYTE(stagedIdentityPersistentId) = 1;
    }

    else
    {
      LOBYTE(stagedIdentityPersistentId) = 0;
    }
  }

  stagedIdentityPersistentId3 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
  if (stagedIdentityPersistentId3)
  {
  }

  else
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    v22 = [v12 earlierDate:date2];

    if (v22 == v12)
    {
      v23 = objc_opt_class();
      commonNamePrefix = [(CRKPrivateIdentity *)self commonNamePrefix];
      v25 = [v23 commonNameWithPrefix:commonNamePrefix];

      v26 = _CRKLogGeneral_15();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138543362;
        v35 = v25;
        _os_log_impl(&dword_243550000, v26, OS_LOG_TYPE_DEFAULT, "Creating staged private identity with common name: %{public}@", &v34, 0xCu);
      }

      v27 = [objc_opt_class() makeIdentityWithCommonName:v25];
      [(CRKPrivateIdentity *)self setStagedIdentityPersistentId:v27];

      stagedIdentityPersistentId4 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];

      if (stagedIdentityPersistentId4)
      {
        stagedIdentityPersistentId5 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
        v30 = [keychain identityWithPersistentID:stagedIdentityPersistentId5];

        stagedIdentityPersistentId = [v30 certificate];
        validityDateInterval = [stagedIdentityPersistentId validityDateInterval];
        endDate = [validityDateInterval endDate];
        [(CRKPrivateIdentity *)self setStagedIdentityExpirationDate:endDate];

        LOBYTE(stagedIdentityPersistentId) = 1;
      }
    }
  }

  return stagedIdentityPersistentId;
}

- (CRKPrivateIdentity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    [CRKPrivateIdentity initWithDictionary:];
  }

  v5 = [dictionaryCopy objectForKeyedSubscript:@"PersistentId"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"StagedPersistentId"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"CommonNamePrefix"];
  uUIDString = v7;
  if (v5)
  {
    if (!v7)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
    }

    self = [(CRKPrivateIdentity *)self initWithIdentityPersistentId:v5 stagedIdentityPersistentId:v6 commonNamePrefix:uUIDString];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryValue
{
  v3 = objc_opt_new();
  identityPersistentId = [(CRKPrivateIdentity *)self identityPersistentId];
  [v3 setObject:identityPersistentId forKeyedSubscript:@"PersistentId"];

  commonNamePrefix = [(CRKPrivateIdentity *)self commonNamePrefix];
  [v3 setObject:commonNamePrefix forKeyedSubscript:@"CommonNamePrefix"];

  stagedIdentityPersistentId = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];

  if (stagedIdentityPersistentId)
  {
    stagedIdentityPersistentId2 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
    [v3 setObject:stagedIdentityPersistentId2 forKeyedSubscript:@"StagedPersistentId"];
  }

  v8 = [v3 copy];

  return v8;
}

+ (id)keychainGroup
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKPrivateIdentity.m" lineNumber:174 description:@"Group name should be overwritten by Private Identity subclass"];

  return &stru_285643BE8;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  stagedIdentityPersistentId = [CFSTR(""identityPersistentId stagedIdentityPersistentId];
  v6 = [stagedIdentityPersistentId mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_18;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  selfCopy = self;
  v9 = equalCopy;
  v10 = v7;
  if (selfCopy == v9)
  {
    v21 = 1;
  }

  else if ([(CRKPrivateIdentity *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKPrivateIdentity *)selfCopy valueForKey:v16];
          v19 = [(CRKPrivateIdentity *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identityPersistentId = [(CRKPrivateIdentity *)self identityPersistentId];
  stagedIdentityPersistentId = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
  commonNamePrefix = [(CRKPrivateIdentity *)self commonNamePrefix];
  v8 = [v4 initWithIdentityPersistentId:identityPersistentId stagedIdentityPersistentId:stagedIdentityPersistentId commonNamePrefix:commonNamePrefix];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy)
  {
    [CRKPrivateIdentity encodeWithCoder:];
  }

  identityPersistentId = [(CRKPrivateIdentity *)self identityPersistentId];
  [coderCopy encodeObject:identityPersistentId forKey:@"identityPersistentId"];

  stagedIdentityPersistentId = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
  [coderCopy encodeObject:stagedIdentityPersistentId forKey:@"stagedIdentityPersistentId"];

  commonNamePrefix = [(CRKPrivateIdentity *)self commonNamePrefix];
  [coderCopy encodeObject:commonNamePrefix forKey:@"commonNamePrefix"];
}

- (CRKPrivateIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy)
  {
    [CRKPrivateIdentity initWithCoder:];
  }

  v31.receiver = self;
  v31.super_class = CRKPrivateIdentity;
  v5 = [(CRKPrivateIdentity *)&v31 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identityPersistentId"];
    identityPersistentId = v5->_identityPersistentId;
    v5->_identityPersistentId = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"stagedIdentityPersistentId"];
    stagedIdentityPersistentId = v5->_stagedIdentityPersistentId;
    v5->_stagedIdentityPersistentId = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"commonNamePrefix"];
    commonNamePrefix = v5->_commonNamePrefix;
    v5->_commonNamePrefix = v13;

    if (!v5->_commonNamePrefix)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v17 = v5->_commonNamePrefix;
      v5->_commonNamePrefix = uUIDString;
    }

    v18 = +[CRKKeychainProvider sharedProvider];
    keychain = [v18 keychain];

    if (v5->_identityPersistentId)
    {
      v20 = [keychain identityWithPersistentID:?];
      certificate = [v20 certificate];
      validityDateInterval = [certificate validityDateInterval];
      endDate = [validityDateInterval endDate];
      identityExpirationDate = v5->_identityExpirationDate;
      v5->_identityExpirationDate = endDate;
    }

    if (v5->_stagedIdentityPersistentId)
    {
      v25 = [keychain identityWithPersistentID:?];
      certificate2 = [v25 certificate];
      validityDateInterval2 = [certificate2 validityDateInterval];
      endDate2 = [validityDateInterval2 endDate];
      stagedIdentityExpirationDate = v5->_stagedIdentityExpirationDate;
      v5->_stagedIdentityExpirationDate = endDate2;
    }
  }

  return v5;
}

- (void)initWithIdentityPersistentId:stagedIdentityPersistentId:commonNamePrefix:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"identityPersistentId" object:? file:? lineNumber:? description:?];
}

- (void)initWithIdentityPersistentId:stagedIdentityPersistentId:commonNamePrefix:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"commonNamePrefix" object:? file:? lineNumber:? description:?];
}

- (void)initWithDictionary:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"dictionary" object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"aCoder" object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"aDecoder" object:? file:? lineNumber:? description:?];
}

@end