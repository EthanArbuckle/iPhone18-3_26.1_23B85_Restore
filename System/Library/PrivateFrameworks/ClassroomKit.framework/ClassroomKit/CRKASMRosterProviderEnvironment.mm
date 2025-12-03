@interface CRKASMRosterProviderEnvironment
- (BOOL)isEqual:(id)equal;
- (CRKASMRosterProviderEnvironment)initWithConfiguration:(id)configuration;
- (CRKASMRosterProviderEnvironment)initWithConfiguration:(id)configuration certificateVendor:(id)vendor userFactory:(id)factory;
- (id)identityVendorForUserIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation CRKASMRosterProviderEnvironment

- (CRKASMRosterProviderEnvironment)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [CRKASMCertificateVendor alloc];
  credentialStore = [configurationCopy credentialStore];
  v7 = [(CRKASMCertificateVendor *)v5 initWithCredentialStore:credentialStore];

  v8 = [[CRKASMUserFactory alloc] initWithConfiguration:configurationCopy certificateVendor:v7];
  v9 = [(CRKASMRosterProviderEnvironment *)self initWithConfiguration:configurationCopy certificateVendor:v7 userFactory:v8];

  return v9;
}

- (CRKASMRosterProviderEnvironment)initWithConfiguration:(id)configuration certificateVendor:(id)vendor userFactory:(id)factory
{
  configurationCopy = configuration;
  vendorCopy = vendor;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = CRKASMRosterProviderEnvironment;
  v12 = [(CRKASMRosterProviderEnvironment *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
    objc_storeStrong(&v13->_certificateVendor, vendor);
    objc_storeStrong(&v13->_userFactory, factory);
  }

  return v13;
}

- (id)identityVendorForUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [CRKASMIdentityVendor alloc];
  configuration = [(CRKASMRosterProviderEnvironment *)self configuration];
  userCommonNamePrefix = [configuration userCommonNamePrefix];
  configuration2 = [(CRKASMRosterProviderEnvironment *)self configuration];
  credentialStore = [configuration2 credentialStore];
  v10 = [(CRKASMIdentityVendor *)v5 initWithUserIdentifier:identifierCopy commonNamePrefix:userCommonNamePrefix credentialStore:credentialStore];

  return v10;
}

- (unint64_t)hash
{
  configuration = [(CRKASMRosterProviderEnvironment *)self configuration];
  v4 = [configuration hash];
  certificateVendor = [(CRKASMRosterProviderEnvironment *)self certificateVendor];
  v6 = [certificateVendor hash] ^ v4;
  userFactory = [(CRKASMRosterProviderEnvironment *)self userFactory];
  v8 = [userFactory hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  certificateVendor = [CFSTR(""configuration certificateVendor];
  v6 = [certificateVendor mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_2;
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

  else if ([(CRKASMRosterProviderEnvironment *)v9 isMemberOfClass:objc_opt_class()])
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
          v18 = [(CRKASMRosterProviderEnvironment *)selfCopy valueForKey:v16];
          v19 = [(CRKASMRosterProviderEnvironment *)v17 valueForKey:v16];

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

@end