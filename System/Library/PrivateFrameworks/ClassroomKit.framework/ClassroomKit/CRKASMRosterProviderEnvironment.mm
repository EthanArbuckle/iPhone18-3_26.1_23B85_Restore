@interface CRKASMRosterProviderEnvironment
- (BOOL)isEqual:(id)a3;
- (CRKASMRosterProviderEnvironment)initWithConfiguration:(id)a3;
- (CRKASMRosterProviderEnvironment)initWithConfiguration:(id)a3 certificateVendor:(id)a4 userFactory:(id)a5;
- (id)identityVendorForUserIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation CRKASMRosterProviderEnvironment

- (CRKASMRosterProviderEnvironment)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [CRKASMCertificateVendor alloc];
  v6 = [v4 credentialStore];
  v7 = [(CRKASMCertificateVendor *)v5 initWithCredentialStore:v6];

  v8 = [[CRKASMUserFactory alloc] initWithConfiguration:v4 certificateVendor:v7];
  v9 = [(CRKASMRosterProviderEnvironment *)self initWithConfiguration:v4 certificateVendor:v7 userFactory:v8];

  return v9;
}

- (CRKASMRosterProviderEnvironment)initWithConfiguration:(id)a3 certificateVendor:(id)a4 userFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRKASMRosterProviderEnvironment;
  v12 = [(CRKASMRosterProviderEnvironment *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, a3);
    objc_storeStrong(&v13->_certificateVendor, a4);
    objc_storeStrong(&v13->_userFactory, a5);
  }

  return v13;
}

- (id)identityVendorForUserIdentifier:(id)a3
{
  v4 = a3;
  v5 = [CRKASMIdentityVendor alloc];
  v6 = [(CRKASMRosterProviderEnvironment *)self configuration];
  v7 = [v6 userCommonNamePrefix];
  v8 = [(CRKASMRosterProviderEnvironment *)self configuration];
  v9 = [v8 credentialStore];
  v10 = [(CRKASMIdentityVendor *)v5 initWithUserIdentifier:v4 commonNamePrefix:v7 credentialStore:v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(CRKASMRosterProviderEnvironment *)self configuration];
  v4 = [v3 hash];
  v5 = [(CRKASMRosterProviderEnvironment *)self certificateVendor];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKASMRosterProviderEnvironment *)self userFactory];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""configuration certificateVendor];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_2;
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
          v18 = [(CRKASMRosterProviderEnvironment *)v8 valueForKey:v16];
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