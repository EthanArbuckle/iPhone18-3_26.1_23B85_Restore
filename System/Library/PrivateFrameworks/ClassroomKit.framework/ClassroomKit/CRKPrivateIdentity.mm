@interface CRKPrivateIdentity
+ (id)commonNameWithPrefix:(id)a3;
+ (id)freshPrivateIdentityWithCommonNamePrefix:(id)a3;
+ (id)keychainGroup;
+ (id)makeIdentityWithCommonName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)refreshIdentities;
- (CRKPrivateIdentity)initWithCoder:(id)a3;
- (CRKPrivateIdentity)initWithDictionary:(id)a3;
- (CRKPrivateIdentity)initWithIdentityPersistentId:(id)a3 stagedIdentityPersistentId:(id)a4 commonNamePrefix:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKPrivateIdentity

- (CRKPrivateIdentity)initWithIdentityPersistentId:(id)a3 stagedIdentityPersistentId:(id)a4 commonNamePrefix:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
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
    objc_storeStrong(&v13->_identityPersistentId, a3);
    objc_storeStrong(&v14->_stagedIdentityPersistentId, a4);
    v15 = [v12 copy];
    commonNamePrefix = v14->_commonNamePrefix;
    v14->_commonNamePrefix = v15;

    v17 = +[CRKKeychainProvider sharedProvider];
    v18 = [v17 keychain];

    v19 = [v18 identityWithPersistentID:v9];
    v20 = [v19 certificate];
    v21 = [v20 validityDateInterval];
    v22 = [v21 endDate];
    identityExpirationDate = v14->_identityExpirationDate;
    v14->_identityExpirationDate = v22;

    if (v10)
    {
      v24 = [v18 identityWithPersistentID:v10];
      v25 = [v24 certificate];
      v26 = [v25 validityDateInterval];
      v27 = [v26 endDate];
      stagedIdentityExpirationDate = v14->_stagedIdentityExpirationDate;
      v14->_stagedIdentityExpirationDate = v27;
    }
  }

  return v14;
}

+ (id)freshPrivateIdentityWithCommonNamePrefix:(id)a3
{
  v4 = a3;
  v5 = [a1 commonNameWithPrefix:v4];
  v6 = [a1 makeIdentityWithCommonName:v5];

  if (v6)
  {
    v7 = [objc_alloc(objc_opt_class()) initWithIdentityPersistentId:v6 stagedIdentityPersistentId:0 commonNamePrefix:v4];
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

+ (id)makeIdentityWithCommonName:(id)a3
{
  v4 = a3;
  v5 = [[CRKIdentityConfiguration alloc] initWithCommonName:v4];

  v6 = +[CRKKeychainProvider sharedProvider];
  v7 = [v6 keychain];

  v8 = [v7 makeIdentityWithConfiguration:v5];
  if (v8)
  {
    v9 = [a1 keychainGroup];
    v10 = [v7 addIdentity:v8 toAccessGroup:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)commonNameWithPrefix:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@", v5, v7];

  return v8;
}

- (BOOL)refreshIdentities
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 stringForKey:@"CERTIFICATE"];

  v5 = [v4 lowercaseString];
  v6 = [v5 isEqualToString:@"expire"];

  v7 = [v4 lowercaseString];
  v8 = [v7 isEqualToString:@"stage"];

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
    v11 = [(CRKPrivateIdentity *)self identityExpirationDate];
    v9 = [v11 dateByAddingTimeInterval:-86400.0];

    if ((v8 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1.0];
LABEL_6:
  v12 = v10;
  v13 = +[CRKKeychainProvider sharedProvider];
  v14 = [v13 keychain];

  v15 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    v17 = [v9 earlierDate:v16];

    if (v17 == v9)
    {
      v18 = [(CRKPrivateIdentity *)self identityPersistentId];
      [v14 removeItemWithPersistentID:v18];

      v19 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
      [(CRKPrivateIdentity *)self setIdentityPersistentId:v19];

      v15 = [(CRKPrivateIdentity *)self stagedIdentityExpirationDate];
      [(CRKPrivateIdentity *)self setIdentityExpirationDate:v15];

      [(CRKPrivateIdentity *)self setStagedIdentityPersistentId:0];
      [(CRKPrivateIdentity *)self setStagedIdentityExpirationDate:0];
      LOBYTE(v15) = 1;
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  v20 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
  if (v20)
  {
  }

  else
  {
    v21 = [MEMORY[0x277CBEAA8] date];
    v22 = [v12 earlierDate:v21];

    if (v22 == v12)
    {
      v23 = objc_opt_class();
      v24 = [(CRKPrivateIdentity *)self commonNamePrefix];
      v25 = [v23 commonNameWithPrefix:v24];

      v26 = _CRKLogGeneral_15();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138543362;
        v35 = v25;
        _os_log_impl(&dword_243550000, v26, OS_LOG_TYPE_DEFAULT, "Creating staged private identity with common name: %{public}@", &v34, 0xCu);
      }

      v27 = [objc_opt_class() makeIdentityWithCommonName:v25];
      [(CRKPrivateIdentity *)self setStagedIdentityPersistentId:v27];

      v28 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];

      if (v28)
      {
        v29 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
        v30 = [v14 identityWithPersistentID:v29];

        v15 = [v30 certificate];
        v31 = [v15 validityDateInterval];
        v32 = [v31 endDate];
        [(CRKPrivateIdentity *)self setStagedIdentityExpirationDate:v32];

        LOBYTE(v15) = 1;
      }
    }
  }

  return v15;
}

- (CRKPrivateIdentity)initWithDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CRKPrivateIdentity initWithDictionary:];
  }

  v5 = [v4 objectForKeyedSubscript:@"PersistentId"];
  v6 = [v4 objectForKeyedSubscript:@"StagedPersistentId"];
  v7 = [v4 objectForKeyedSubscript:@"CommonNamePrefix"];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v9 = [MEMORY[0x277CCAD78] UUID];
      v8 = [v9 UUIDString];
    }

    self = [(CRKPrivateIdentity *)self initWithIdentityPersistentId:v5 stagedIdentityPersistentId:v6 commonNamePrefix:v8];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CRKPrivateIdentity *)self identityPersistentId];
  [v3 setObject:v4 forKeyedSubscript:@"PersistentId"];

  v5 = [(CRKPrivateIdentity *)self commonNamePrefix];
  [v3 setObject:v5 forKeyedSubscript:@"CommonNamePrefix"];

  v6 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];

  if (v6)
  {
    v7 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
    [v3 setObject:v7 forKeyedSubscript:@"StagedPersistentId"];
  }

  v8 = [v3 copy];

  return v8;
}

+ (id)keychainGroup
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CRKPrivateIdentity.m" lineNumber:174 description:@"Group name should be overwritten by Private Identity subclass"];

  return &stru_285643BE8;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""identityPersistentId stagedIdentityPersistentId];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_18;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  v8 = self;
  v9 = v4;
  v10 = v7;
  if (v8 == v9)
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
          v18 = [(CRKPrivateIdentity *)v8 valueForKey:v16];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CRKPrivateIdentity *)self identityPersistentId];
  v6 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
  v7 = [(CRKPrivateIdentity *)self commonNamePrefix];
  v8 = [v4 initWithIdentityPersistentId:v5 stagedIdentityPersistentId:v6 commonNamePrefix:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    [CRKPrivateIdentity encodeWithCoder:];
  }

  v4 = [(CRKPrivateIdentity *)self identityPersistentId];
  [v7 encodeObject:v4 forKey:@"identityPersistentId"];

  v5 = [(CRKPrivateIdentity *)self stagedIdentityPersistentId];
  [v7 encodeObject:v5 forKey:@"stagedIdentityPersistentId"];

  v6 = [(CRKPrivateIdentity *)self commonNamePrefix];
  [v7 encodeObject:v6 forKey:@"commonNamePrefix"];
}

- (CRKPrivateIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CRKPrivateIdentity initWithCoder:];
  }

  v31.receiver = self;
  v31.super_class = CRKPrivateIdentity;
  v5 = [(CRKPrivateIdentity *)&v31 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identityPersistentId"];
    identityPersistentId = v5->_identityPersistentId;
    v5->_identityPersistentId = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"stagedIdentityPersistentId"];
    stagedIdentityPersistentId = v5->_stagedIdentityPersistentId;
    v5->_stagedIdentityPersistentId = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"commonNamePrefix"];
    commonNamePrefix = v5->_commonNamePrefix;
    v5->_commonNamePrefix = v13;

    if (!v5->_commonNamePrefix)
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      v16 = [v15 UUIDString];
      v17 = v5->_commonNamePrefix;
      v5->_commonNamePrefix = v16;
    }

    v18 = +[CRKKeychainProvider sharedProvider];
    v19 = [v18 keychain];

    if (v5->_identityPersistentId)
    {
      v20 = [v19 identityWithPersistentID:?];
      v21 = [v20 certificate];
      v22 = [v21 validityDateInterval];
      v23 = [v22 endDate];
      identityExpirationDate = v5->_identityExpirationDate;
      v5->_identityExpirationDate = v23;
    }

    if (v5->_stagedIdentityPersistentId)
    {
      v25 = [v19 identityWithPersistentID:?];
      v26 = [v25 certificate];
      v27 = [v26 validityDateInterval];
      v28 = [v27 endDate];
      stagedIdentityExpirationDate = v5->_stagedIdentityExpirationDate;
      v5->_stagedIdentityExpirationDate = v28;
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