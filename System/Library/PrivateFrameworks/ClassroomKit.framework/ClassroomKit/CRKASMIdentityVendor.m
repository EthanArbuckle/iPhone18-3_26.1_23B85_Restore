@interface CRKASMIdentityVendor
- (BOOL)isEqual:(id)a3;
- (CRKASMIdentityVendor)initWithUserIdentifier:(id)a3 commonNamePrefix:(id)a4 credentialStore:(id)a5;
- (CRKIdentity)identity;
- (id)description;
- (id)existingIdentity;
- (id)makeIdentity;
- (id)makeIdentityAndAddToKeychain;
- (unint64_t)hash;
@end

@implementation CRKASMIdentityVendor

- (CRKASMIdentityVendor)initWithUserIdentifier:(id)a3 commonNamePrefix:(id)a4 credentialStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CRKASMIdentityVendor;
  v11 = [(CRKASMIdentityVendor *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    userIdentifier = v11->_userIdentifier;
    v11->_userIdentifier = v12;

    v14 = [v9 copy];
    commonNamePrefix = v11->_commonNamePrefix;
    v11->_commonNamePrefix = v14;

    objc_storeStrong(&v11->_credentialStore, a5);
  }

  return v11;
}

- (CRKIdentity)identity
{
  v3 = [(CRKASMIdentityVendor *)self existingIdentity];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CRKASMIdentityVendor *)self makeIdentityAndAddToKeychain];
  }

  v6 = v5;

  return v6;
}

- (id)existingIdentity
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [CRKASMIdentityPicker alloc];
  v4 = [(CRKASMIdentityVendor *)self credentialStore];
  v5 = [(CRKASMIdentityVendor *)self userIdentifier];
  v6 = [(CRKASMIdentityPicker *)v3 initWithCredentialStore:v4 userIdentifier:v5];

  v7 = [(CRKASMIdentityPicker *)v6 identity];
  if (v7)
  {
    v8 = _CRKLogASM_8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CRKASMIdentityVendor *)self userIdentifier];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "Found existing ASM identity for user identifier %@", &v11, 0xCu);
    }
  }

  return v7;
}

- (id)makeIdentityAndAddToKeychain
{
  v3 = [(CRKASMIdentityVendor *)self makeIdentity];
  if (v3)
  {
    v4 = [(CRKASMIdentityVendor *)self credentialStore];
    v5 = [(CRKASMIdentityVendor *)self userIdentifier];
    v6 = [v4 addIdentity:v3 forUserIdentifier:v5];

    if (!v6)
    {
      v7 = _CRKLogASM_8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CRKASMIdentityVendor *)v7 makeIdentityAndAddToKeychain];
      }
    }

    v8 = v3;
  }

  return v3;
}

- (id)makeIdentity
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogASM_8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRKASMIdentityVendor *)self userIdentifier];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Creating new identity for ASM user identifier %@", &v10, 0xCu);
  }

  v5 = [(CRKASMIdentityVendor *)self credentialStore];
  v6 = [(CRKASMIdentityVendor *)self commonNamePrefix];
  v7 = [(CRKASMIdentityVendor *)self userIdentifier];
  v8 = [v5 makeIdentityWithCommonNamePrefix:v6 userIdentifier:v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CRKASMIdentityVendor *)self userIdentifier];
  v4 = [v3 hash];
  v5 = [(CRKASMIdentityVendor *)self commonNamePrefix];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKASMIdentityVendor *)self credentialStore];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""userIdentifier commonNamePrefix];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_8;
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

  else if ([(CRKASMIdentityVendor *)v9 isMemberOfClass:objc_opt_class()])
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
          v18 = [(CRKASMIdentityVendor *)v8 valueForKey:v16];
          v19 = [(CRKASMIdentityVendor *)v17 valueForKey:v16];

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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKASMIdentityVendor *)self userIdentifier];
  v6 = [(CRKASMIdentityVendor *)self commonNamePrefix];
  v7 = [(CRKASMIdentityVendor *)self credentialStore];
  v8 = [v3 stringWithFormat:@"<%@: %p { userIdentifier = %@, commonNamePrefix = %@, credentialStore = %@ }>", v4, self, v5, v6, v7];

  return v8;
}

@end