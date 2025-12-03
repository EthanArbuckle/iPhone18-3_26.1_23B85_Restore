@interface CRKAnnotatedCredentialStore
+ (id)certificateStoreWithKeychain:(id)keychain accessGroup:(id)group manifestStorageKey:(id)key;
+ (id)identityStoreWithKeychain:(id)keychain accessGroup:(id)group manifestStorageKey:(id)key;
- (CRKAnnotatedCredentialManifest)manifest;
- (CRKAnnotatedCredentialStore)initWithKeychain:(id)keychain accessGroup:(id)group manifestStorageKey:(id)key addBlock:(id)block fetchBlock:(id)fetchBlock;
- (NSDictionary)debugInfo;
- (id)addCredential:(id)credential manifest:(id)manifest;
- (id)addCredentials:(id)credentials;
- (id)credentialWithPersistentID:(id)d;
- (id)dataForStorageKey:(id)key;
- (id)storedManifest;
- (id)storedManifestData;
- (void)forgetCredentialsWithPersistentIDs:(id)ds;
- (void)removeCredentialsWithPersistentIDs:(id)ds;
- (void)removePersistentIDsFromKeychain:(id)keychain;
- (void)setData:(id)data forStorageKey:(id)key;
- (void)setStoredManifest:(id)manifest;
- (void)setStoredManifestData:(id)data;
@end

@implementation CRKAnnotatedCredentialStore

+ (id)certificateStoreWithKeychain:(id)keychain accessGroup:(id)group manifestStorageKey:(id)key
{
  keychainCopy = keychain;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__CRKAnnotatedCredentialStore_certificateStoreWithKeychain_accessGroup_manifestStorageKey___block_invoke;
  v22[3] = &unk_278DC0E08;
  v8 = keychainCopy;
  v23 = v8;
  keyCopy = key;
  groupCopy = group;
  v11 = MEMORY[0x245D3AAD0](v22);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __91__CRKAnnotatedCredentialStore_certificateStoreWithKeychain_accessGroup_manifestStorageKey___block_invoke_2;
  v20 = &unk_278DC0E30;
  v21 = v8;
  v12 = v8;
  v13 = MEMORY[0x245D3AAD0](&v17);
  v14 = [CRKAnnotatedCredentialStore alloc];
  v15 = [(CRKAnnotatedCredentialStore *)v14 initWithKeychain:v12 accessGroup:groupCopy manifestStorageKey:keyCopy addBlock:v11 fetchBlock:v13, v17, v18, v19, v20];

  return v15;
}

+ (id)identityStoreWithKeychain:(id)keychain accessGroup:(id)group manifestStorageKey:(id)key
{
  keychainCopy = keychain;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__CRKAnnotatedCredentialStore_identityStoreWithKeychain_accessGroup_manifestStorageKey___block_invoke;
  v22[3] = &unk_278DC0E58;
  v8 = keychainCopy;
  v23 = v8;
  keyCopy = key;
  groupCopy = group;
  v11 = MEMORY[0x245D3AAD0](v22);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __88__CRKAnnotatedCredentialStore_identityStoreWithKeychain_accessGroup_manifestStorageKey___block_invoke_2;
  v20 = &unk_278DC0E80;
  v21 = v8;
  v12 = v8;
  v13 = MEMORY[0x245D3AAD0](&v17);
  v14 = [CRKAnnotatedCredentialStore alloc];
  v15 = [(CRKAnnotatedCredentialStore *)v14 initWithKeychain:v12 accessGroup:groupCopy manifestStorageKey:keyCopy addBlock:v11 fetchBlock:v13, v17, v18, v19, v20];

  return v15;
}

- (CRKAnnotatedCredentialStore)initWithKeychain:(id)keychain accessGroup:(id)group manifestStorageKey:(id)key addBlock:(id)block fetchBlock:(id)fetchBlock
{
  keychainCopy = keychain;
  groupCopy = group;
  keyCopy = key;
  blockCopy = block;
  fetchBlockCopy = fetchBlock;
  v29.receiver = self;
  v29.super_class = CRKAnnotatedCredentialStore;
  v18 = [(CRKAnnotatedCredentialStore *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_keychain, keychain);
    v20 = [groupCopy copy];
    accessGroup = v19->_accessGroup;
    v19->_accessGroup = v20;

    v22 = [keyCopy copy];
    manifestStorageKey = v19->_manifestStorageKey;
    v19->_manifestStorageKey = v22;

    v24 = MEMORY[0x245D3AAD0](blockCopy);
    addBlock = v19->_addBlock;
    v19->_addBlock = v24;

    v26 = MEMORY[0x245D3AAD0](fetchBlockCopy);
    fetchBlock = v19->_fetchBlock;
    v19->_fetchBlock = v26;
  }

  return v19;
}

- (NSDictionary)debugInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Manifest";
  manifest = [(CRKAnnotatedCredentialStore *)self manifest];
  debugInfo = [manifest debugInfo];
  v7[0] = debugInfo;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (CRKAnnotatedCredentialManifest)manifest
{
  storedManifest = [(CRKAnnotatedCredentialStore *)self storedManifest];
  v3 = storedManifest;
  if (storedManifest)
  {
    v4 = storedManifest;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (id)addCredentials:(id)credentials
{
  v21 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  if ([credentialsCopy count])
  {
    manifest = [(CRKAnnotatedCredentialStore *)self manifest];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = credentialsCopy;
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
          v13 = [(CRKAnnotatedCredentialStore *)self addCredential:v12 manifest:manifest, v16];
          if (v13)
          {
            credential = [v12 credential];
            [strongToStrongObjectsMapTable setObject:v13 forKey:credential];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if ([manifest modified])
    {
      [(CRKAnnotatedCredentialStore *)self setStoredManifest:manifest];
    }
  }

  return strongToStrongObjectsMapTable;
}

- (id)credentialWithPersistentID:(id)d
{
  dCopy = d;
  fetchBlock = [(CRKAnnotatedCredentialStore *)self fetchBlock];
  v6 = (fetchBlock)[2](fetchBlock, dCopy);

  return v6;
}

- (void)removeCredentialsWithPersistentIDs:(id)ds
{
  dsCopy = ds;
  [(CRKAnnotatedCredentialStore *)self removePersistentIDsFromKeychain:dsCopy];
  [(CRKAnnotatedCredentialStore *)self forgetCredentialsWithPersistentIDs:dsCopy];
}

- (void)forgetCredentialsWithPersistentIDs:(id)ds
{
  v16 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count])
  {
    storedManifest = [(CRKAnnotatedCredentialStore *)self storedManifest];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = dsCopy;
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

          [storedManifest removePersistentID:{*(*(&v11 + 1) + 8 * v10++), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    if ([storedManifest modified])
    {
      [(CRKAnnotatedCredentialStore *)self setStoredManifest:storedManifest];
    }
  }
}

- (id)addCredential:(id)credential manifest:(id)manifest
{
  credentialCopy = credential;
  manifestCopy = manifest;
  addBlock = [(CRKAnnotatedCredentialStore *)self addBlock];
  credential = [credentialCopy credential];
  accessGroup = [(CRKAnnotatedCredentialStore *)self accessGroup];
  v11 = (addBlock)[2](addBlock, credential, accessGroup);

  if (v11)
  {
    annotation = [credentialCopy annotation];
    [manifestCopy addPersistentID:v11 withAnnotation:annotation];

    v13 = v11;
  }

  return v11;
}

- (void)removePersistentIDsFromKeychain:(id)keychain
{
  v16 = *MEMORY[0x277D85DE8];
  keychainCopy = keychain;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [keychainCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(keychainCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        keychain = [(CRKAnnotatedCredentialStore *)self keychain];
        [keychain removeItemWithPersistentID:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [keychainCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)storedManifest
{
  storedManifestData = [(CRKAnnotatedCredentialStore *)self storedManifestData];
  if (storedManifestData)
  {
    v4 = [CRKAnnotatedCredentialManifest manifestWithData:storedManifestData];
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

- (void)setStoredManifest:(id)manifest
{
  dataRepresentation = [manifest dataRepresentation];
  [(CRKAnnotatedCredentialStore *)self setStoredManifestData:dataRepresentation];
}

- (id)storedManifestData
{
  manifestStorageKey = [(CRKAnnotatedCredentialStore *)self manifestStorageKey];
  v4 = [(CRKAnnotatedCredentialStore *)self dataForStorageKey:manifestStorageKey];

  return v4;
}

- (void)setStoredManifestData:(id)data
{
  dataCopy = data;
  manifestStorageKey = [(CRKAnnotatedCredentialStore *)self manifestStorageKey];
  [(CRKAnnotatedCredentialStore *)self setData:dataCopy forStorageKey:manifestStorageKey];
}

- (void)setData:(id)data forStorageKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  keychain = [(CRKAnnotatedCredentialStore *)self keychain];
  accessGroup = [(CRKAnnotatedCredentialStore *)self accessGroup];
  [keychain setPassword:dataCopy forService:keyCopy accessGroup:accessGroup];
}

- (id)dataForStorageKey:(id)key
{
  keyCopy = key;
  keychain = [(CRKAnnotatedCredentialStore *)self keychain];
  v6 = [keychain passwordForService:keyCopy];

  return v6;
}

@end