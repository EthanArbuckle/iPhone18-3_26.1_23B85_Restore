@interface CRKASMIdentityVendor
- (BOOL)isEqual:(id)equal;
- (CRKASMIdentityVendor)initWithUserIdentifier:(id)identifier commonNamePrefix:(id)prefix credentialStore:(id)store;
- (CRKIdentity)identity;
- (id)description;
- (id)existingIdentity;
- (id)makeIdentity;
- (id)makeIdentityAndAddToKeychain;
- (unint64_t)hash;
@end

@implementation CRKASMIdentityVendor

- (CRKASMIdentityVendor)initWithUserIdentifier:(id)identifier commonNamePrefix:(id)prefix credentialStore:(id)store
{
  identifierCopy = identifier;
  prefixCopy = prefix;
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = CRKASMIdentityVendor;
  v11 = [(CRKASMIdentityVendor *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    userIdentifier = v11->_userIdentifier;
    v11->_userIdentifier = v12;

    v14 = [prefixCopy copy];
    commonNamePrefix = v11->_commonNamePrefix;
    v11->_commonNamePrefix = v14;

    objc_storeStrong(&v11->_credentialStore, store);
  }

  return v11;
}

- (CRKIdentity)identity
{
  existingIdentity = [(CRKASMIdentityVendor *)self existingIdentity];
  v4 = existingIdentity;
  if (existingIdentity)
  {
    makeIdentityAndAddToKeychain = existingIdentity;
  }

  else
  {
    makeIdentityAndAddToKeychain = [(CRKASMIdentityVendor *)self makeIdentityAndAddToKeychain];
  }

  v6 = makeIdentityAndAddToKeychain;

  return v6;
}

- (id)existingIdentity
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [CRKASMIdentityPicker alloc];
  credentialStore = [(CRKASMIdentityVendor *)self credentialStore];
  userIdentifier = [(CRKASMIdentityVendor *)self userIdentifier];
  v6 = [(CRKASMIdentityPicker *)v3 initWithCredentialStore:credentialStore userIdentifier:userIdentifier];

  identity = [(CRKASMIdentityPicker *)v6 identity];
  if (identity)
  {
    v8 = _CRKLogASM_8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      userIdentifier2 = [(CRKASMIdentityVendor *)self userIdentifier];
      v11 = 138412290;
      v12 = userIdentifier2;
      _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "Found existing ASM identity for user identifier %@", &v11, 0xCu);
    }
  }

  return identity;
}

- (id)makeIdentityAndAddToKeychain
{
  makeIdentity = [(CRKASMIdentityVendor *)self makeIdentity];
  if (makeIdentity)
  {
    credentialStore = [(CRKASMIdentityVendor *)self credentialStore];
    userIdentifier = [(CRKASMIdentityVendor *)self userIdentifier];
    v6 = [credentialStore addIdentity:makeIdentity forUserIdentifier:userIdentifier];

    if (!v6)
    {
      v7 = _CRKLogASM_8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CRKASMIdentityVendor *)v7 makeIdentityAndAddToKeychain];
      }
    }

    v8 = makeIdentity;
  }

  return makeIdentity;
}

- (id)makeIdentity
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogASM_8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    userIdentifier = [(CRKASMIdentityVendor *)self userIdentifier];
    v10 = 138412290;
    v11 = userIdentifier;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Creating new identity for ASM user identifier %@", &v10, 0xCu);
  }

  credentialStore = [(CRKASMIdentityVendor *)self credentialStore];
  commonNamePrefix = [(CRKASMIdentityVendor *)self commonNamePrefix];
  userIdentifier2 = [(CRKASMIdentityVendor *)self userIdentifier];
  v8 = [credentialStore makeIdentityWithCommonNamePrefix:commonNamePrefix userIdentifier:userIdentifier2];

  return v8;
}

- (unint64_t)hash
{
  userIdentifier = [(CRKASMIdentityVendor *)self userIdentifier];
  v4 = [userIdentifier hash];
  commonNamePrefix = [(CRKASMIdentityVendor *)self commonNamePrefix];
  v6 = [commonNamePrefix hash] ^ v4;
  credentialStore = [(CRKASMIdentityVendor *)self credentialStore];
  v8 = [credentialStore hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  commonNamePrefix = [CFSTR(""userIdentifier commonNamePrefix];
  v6 = [commonNamePrefix mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_8;
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
          v18 = [(CRKASMIdentityVendor *)selfCopy valueForKey:v16];
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
  userIdentifier = [(CRKASMIdentityVendor *)self userIdentifier];
  commonNamePrefix = [(CRKASMIdentityVendor *)self commonNamePrefix];
  credentialStore = [(CRKASMIdentityVendor *)self credentialStore];
  v8 = [v3 stringWithFormat:@"<%@: %p { userIdentifier = %@, commonNamePrefix = %@, credentialStore = %@ }>", v4, self, userIdentifier, commonNamePrefix, credentialStore];

  return v8;
}

@end