@interface CRKKeychainPasswordFacade
- (BOOL)removePasswordForService:(id)service error:(id *)error;
- (BOOL)setPassword:(id)password forService:(id)service accessGroup:(id)group error:(id *)error;
- (CRKKeychainPasswordFacade)initWithBaseQueryAttributes:(id)attributes;
- (id)errorForPasswordStatus:(int)status;
- (id)makeQueryWithAttributes:(id)attributes;
- (id)passwordForService:(id)service;
- (id)passwordForService:(id)service error:(id *)error;
- (void)setPassword:(id)password forService:(id)service accessGroup:(id)group;
@end

@implementation CRKKeychainPasswordFacade

- (CRKKeychainPasswordFacade)initWithBaseQueryAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = CRKKeychainPasswordFacade;
  v5 = [(CRKKeychainPasswordFacade *)&v9 init];
  if (v5)
  {
    v6 = [attributesCopy copy];
    baseQueryAttributes = v5->_baseQueryAttributes;
    v5->_baseQueryAttributes = v6;
  }

  return v5;
}

- (void)setPassword:(id)password forService:(id)service accessGroup:(id)group
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  groupCopy = group;
  v13 = 0;
  LOBYTE(self) = [(CRKKeychainPasswordFacade *)self setPassword:password forService:serviceCopy accessGroup:groupCopy error:&v13];
  v10 = v13;
  if ((self & 1) == 0)
  {
    v11 = _CRKLogGeneral_11();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      verboseDescription = [v10 verboseDescription];
      *buf = 138412802;
      v15 = serviceCopy;
      v16 = 2112;
      v17 = groupCopy;
      v18 = 2114;
      v19 = verboseDescription;
      _os_log_error_impl(&dword_243550000, v11, OS_LOG_TYPE_ERROR, "Could not set password for service %@, access group %@. Error (ignored): %{public}@.", buf, 0x20u);
    }
  }
}

- (id)passwordForService:(id)service
{
  v16 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v11 = 0;
  v5 = [(CRKKeychainPasswordFacade *)self passwordForService:serviceCopy error:&v11];
  v6 = v11;
  v7 = v6;
  if (!v5 && v6)
  {
    v8 = _CRKLogGeneral_11();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      verboseDescription = [v7 verboseDescription];
      *buf = 138412546;
      v13 = serviceCopy;
      v14 = 2114;
      v15 = verboseDescription;
      _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "Could not retrieve password for service %@. Error (ignored): %{public}@", buf, 0x16u);
    }
  }

  return v5;
}

- (BOOL)setPassword:(id)password forService:(id)service accessGroup:(id)group error:(id *)error
{
  v22[3] = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  serviceCopy = service;
  groupCopy = group;
  if (serviceCopy)
  {
    if (passwordCopy)
    {
      v13 = *MEMORY[0x277CDC238];
      v14 = *MEMORY[0x277CDC120];
      v21[0] = *MEMORY[0x277CDC228];
      v21[1] = v14;
      v22[0] = v13;
      v22[1] = serviceCopy;
      v21[2] = *MEMORY[0x277CDC5E8];
      v22[2] = passwordCopy;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
      v16 = [(CRKKeychainPasswordFacade *)self makeQueryWithAttributes:v15];

      [v16 setObject:groupCopy forKeyedSubscript:*MEMORY[0x277CDBEC8]];
      [(CRKKeychainPasswordFacade *)self addAccessibilityAttributeToQuery:v16];
      v17 = SecItemAdd(v16, 0);
      if (v17 == -25299)
      {
        if (![(CRKKeychainPasswordFacade *)self removePasswordForService:serviceCopy error:error])
        {
          v19 = 0;
LABEL_15:

          goto LABEL_16;
        }

        v17 = SecItemAdd(v16, 0);
      }

      v18 = [(CRKKeychainPasswordFacade *)self errorForPasswordStatus:v17];
      v19 = v18 == 0;
      if (error && v18)
      {
        v18 = v18;
        *error = v18;
      }

      goto LABEL_15;
    }

    v19 = [(CRKKeychainPasswordFacade *)self removePasswordForService:serviceCopy error:error];
  }

  else if (error)
  {
    CRKErrorWithCodeAndUserInfo(2, &unk_2856724F0);
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (BOOL)removePasswordForService:(id)service error:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v7 = serviceCopy;
  if (serviceCopy)
  {
    v8 = *MEMORY[0x277CDC238];
    v9 = *MEMORY[0x277CDC120];
    v15[0] = *MEMORY[0x277CDC228];
    v15[1] = v9;
    v16[0] = v8;
    v16[1] = serviceCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [(CRKKeychainPasswordFacade *)self makeQueryWithAttributes:v10];

    v12 = [(CRKKeychainPasswordFacade *)self errorForPasswordStatus:SecItemDelete(v11)];
    v13 = v12 == 0;
    if (error && v12)
    {
      v12 = v12;
      *error = v12;
    }
  }

  else if (error)
  {
    CRKErrorWithCodeAndUserInfo(2, &unk_285672518);
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)passwordForService:(id)service error:(id *)error
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (service)
  {
    v6 = *MEMORY[0x277CDC238];
    v7 = *MEMORY[0x277CDC558];
    v16[0] = *MEMORY[0x277CDC228];
    v16[1] = v7;
    v17[0] = v6;
    v17[1] = MEMORY[0x277CBEC38];
    v16[2] = *MEMORY[0x277CDC120];
    v17[2] = service;
    v8 = MEMORY[0x277CBEAC0];
    serviceCopy = service;
    v10 = [v8 dictionaryWithObjects:v17 forKeys:v16 count:3];

    v11 = [(CRKKeychainPasswordFacade *)self makeQueryWithAttributes:v10];

    v15 = 0;
    v12 = [(CRKKeychainPasswordFacade *)self errorForPasswordStatus:SecItemCopyMatching(v11, &v15)];
    if (v12)
    {
      if (error)
      {
        v12 = v12;
        v13 = 0;
        *error = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = v15;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)errorForPasswordStatus:(int)status
{
  if (status == -25300)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] crk_errorForSecurityOSStatus:v3];
  }

  return v5;
}

- (id)makeQueryWithAttributes:(id)attributes
{
  v4 = MEMORY[0x277CBEB38];
  attributesCopy = attributes;
  v6 = [v4 alloc];
  baseQueryAttributes = [(CRKKeychainPasswordFacade *)self baseQueryAttributes];
  v8 = [v6 initWithDictionary:baseQueryAttributes];

  [v8 addEntriesFromDictionary:attributesCopy];

  return v8;
}

@end