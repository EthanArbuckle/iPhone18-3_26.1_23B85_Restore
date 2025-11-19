@interface CRKAnnotatedCredentialStore
+ (id)certificateStoreWithKeychain:(id)a3 accessGroup:(id)a4 manifestStorageKey:(id)a5;
+ (id)identityStoreWithKeychain:(id)a3 accessGroup:(id)a4 manifestStorageKey:(id)a5;
- (CRKAnnotatedCredentialManifest)manifest;
- (CRKAnnotatedCredentialStore)initWithKeychain:(id)a3 accessGroup:(id)a4 manifestStorageKey:(id)a5 addBlock:(id)a6 fetchBlock:(id)a7;
- (NSDictionary)debugInfo;
- (id)addCredential:(id)a3 manifest:(id)a4;
- (id)addCredentials:(id)a3;
- (id)credentialWithPersistentID:(id)a3;
- (id)dataForStorageKey:(id)a3;
- (id)storedManifest;
- (id)storedManifestData;
- (void)forgetCredentialsWithPersistentIDs:(id)a3;
- (void)removeCredentialsWithPersistentIDs:(id)a3;
- (void)removePersistentIDsFromKeychain:(id)a3;
- (void)setData:(id)a3 forStorageKey:(id)a4;
- (void)setStoredManifest:(id)a3;
- (void)setStoredManifestData:(id)a3;
@end

@implementation CRKAnnotatedCredentialStore

+ (id)certificateStoreWithKeychain:(id)a3 accessGroup:(id)a4 manifestStorageKey:(id)a5
{
  v7 = a3;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__CRKAnnotatedCredentialStore_certificateStoreWithKeychain_accessGroup_manifestStorageKey___block_invoke;
  v22[3] = &unk_278DC0E08;
  v8 = v7;
  v23 = v8;
  v9 = a5;
  v10 = a4;
  v11 = MEMORY[0x245D3AAD0](v22);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __91__CRKAnnotatedCredentialStore_certificateStoreWithKeychain_accessGroup_manifestStorageKey___block_invoke_2;
  v20 = &unk_278DC0E30;
  v21 = v8;
  v12 = v8;
  v13 = MEMORY[0x245D3AAD0](&v17);
  v14 = [CRKAnnotatedCredentialStore alloc];
  v15 = [(CRKAnnotatedCredentialStore *)v14 initWithKeychain:v12 accessGroup:v10 manifestStorageKey:v9 addBlock:v11 fetchBlock:v13, v17, v18, v19, v20];

  return v15;
}

+ (id)identityStoreWithKeychain:(id)a3 accessGroup:(id)a4 manifestStorageKey:(id)a5
{
  v7 = a3;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__CRKAnnotatedCredentialStore_identityStoreWithKeychain_accessGroup_manifestStorageKey___block_invoke;
  v22[3] = &unk_278DC0E58;
  v8 = v7;
  v23 = v8;
  v9 = a5;
  v10 = a4;
  v11 = MEMORY[0x245D3AAD0](v22);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __88__CRKAnnotatedCredentialStore_identityStoreWithKeychain_accessGroup_manifestStorageKey___block_invoke_2;
  v20 = &unk_278DC0E80;
  v21 = v8;
  v12 = v8;
  v13 = MEMORY[0x245D3AAD0](&v17);
  v14 = [CRKAnnotatedCredentialStore alloc];
  v15 = [(CRKAnnotatedCredentialStore *)v14 initWithKeychain:v12 accessGroup:v10 manifestStorageKey:v9 addBlock:v11 fetchBlock:v13, v17, v18, v19, v20];

  return v15;
}

- (CRKAnnotatedCredentialStore)initWithKeychain:(id)a3 accessGroup:(id)a4 manifestStorageKey:(id)a5 addBlock:(id)a6 fetchBlock:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = CRKAnnotatedCredentialStore;
  v18 = [(CRKAnnotatedCredentialStore *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_keychain, a3);
    v20 = [v14 copy];
    accessGroup = v19->_accessGroup;
    v19->_accessGroup = v20;

    v22 = [v15 copy];
    manifestStorageKey = v19->_manifestStorageKey;
    v19->_manifestStorageKey = v22;

    v24 = MEMORY[0x245D3AAD0](v16);
    addBlock = v19->_addBlock;
    v19->_addBlock = v24;

    v26 = MEMORY[0x245D3AAD0](v17);
    fetchBlock = v19->_fetchBlock;
    v19->_fetchBlock = v26;
  }

  return v19;
}

- (NSDictionary)debugInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Manifest";
  v2 = [(CRKAnnotatedCredentialStore *)self manifest];
  v3 = [v2 debugInfo];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (CRKAnnotatedCredentialManifest)manifest
{
  v2 = [(CRKAnnotatedCredentialStore *)self storedManifest];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (id)addCredentials:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  if ([v4 count])
  {
    v6 = [(CRKAnnotatedCredentialStore *)self manifest];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [(CRKAnnotatedCredentialStore *)self addCredential:v12 manifest:v6, v16];
          if (v13)
          {
            v14 = [v12 credential];
            [v5 setObject:v13 forKey:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if ([v6 modified])
    {
      [(CRKAnnotatedCredentialStore *)self setStoredManifest:v6];
    }
  }

  return v5;
}

- (id)credentialWithPersistentID:(id)a3
{
  v4 = a3;
  v5 = [(CRKAnnotatedCredentialStore *)self fetchBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (void)removeCredentialsWithPersistentIDs:(id)a3
{
  v4 = a3;
  [(CRKAnnotatedCredentialStore *)self removePersistentIDsFromKeychain:v4];
  [(CRKAnnotatedCredentialStore *)self forgetCredentialsWithPersistentIDs:v4];
}

- (void)forgetCredentialsWithPersistentIDs:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(CRKAnnotatedCredentialStore *)self storedManifest];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 removePersistentID:{*(*(&v11 + 1) + 8 * v10++), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    if ([v5 modified])
    {
      [(CRKAnnotatedCredentialStore *)self setStoredManifest:v5];
    }
  }
}

- (id)addCredential:(id)a3 manifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRKAnnotatedCredentialStore *)self addBlock];
  v9 = [v6 credential];
  v10 = [(CRKAnnotatedCredentialStore *)self accessGroup];
  v11 = (v8)[2](v8, v9, v10);

  if (v11)
  {
    v12 = [v6 annotation];
    [v7 addPersistentID:v11 withAnnotation:v12];

    v13 = v11;
  }

  return v11;
}

- (void)removePersistentIDsFromKeychain:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(CRKAnnotatedCredentialStore *)self keychain];
        [v10 removeItemWithPersistentID:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)storedManifest
{
  v3 = [(CRKAnnotatedCredentialStore *)self storedManifestData];
  if (v3)
  {
    v4 = [CRKAnnotatedCredentialManifest manifestWithData:v3];
    if (!v4)
    {
      if (_CRKLogASM_onceToken != -1)
      {
        [CRKAnnotatedCredentialStore storedManifest];
      }

      v5 = _CRKLogASM_logObj;
      if (os_log_type_enabled(_CRKLogASM_logObj, OS_LOG_TYPE_ERROR))
      {
        [(CRKAnnotatedCredentialStore *)v5 storedManifest];
      }

      [(CRKAnnotatedCredentialStore *)self setStoredManifestData:0];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setStoredManifest:(id)a3
{
  v4 = [a3 dataRepresentation];
  [(CRKAnnotatedCredentialStore *)self setStoredManifestData:v4];
}

- (id)storedManifestData
{
  v3 = [(CRKAnnotatedCredentialStore *)self manifestStorageKey];
  v4 = [(CRKAnnotatedCredentialStore *)self dataForStorageKey:v3];

  return v4;
}

- (void)setStoredManifestData:(id)a3
{
  v4 = a3;
  v5 = [(CRKAnnotatedCredentialStore *)self manifestStorageKey];
  [(CRKAnnotatedCredentialStore *)self setData:v4 forStorageKey:v5];
}

- (void)setData:(id)a3 forStorageKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CRKAnnotatedCredentialStore *)self keychain];
  v8 = [(CRKAnnotatedCredentialStore *)self accessGroup];
  [v9 setPassword:v7 forService:v6 accessGroup:v8];
}

- (id)dataForStorageKey:(id)a3
{
  v4 = a3;
  v5 = [(CRKAnnotatedCredentialStore *)self keychain];
  v6 = [v5 passwordForService:v4];

  return v6;
}

@end