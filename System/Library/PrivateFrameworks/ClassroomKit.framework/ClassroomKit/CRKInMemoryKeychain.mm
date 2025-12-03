@interface CRKInMemoryKeychain
- (CRKInMemoryKeychain)init;
- (CRKInMemoryKeychainDelegate)delegate;
- (id)addItem:(id)item toAccessGroup:(id)group;
- (id)existingPersistentIDForItem:(id)item;
- (id)itemWithPersistentID:(id)d expectedProtocol:(id)protocol;
- (id)makeIdentityWithCertificate:(id)certificate privateKey:(id)key;
- (id)makeIdentityWithConfiguration:(id)configuration;
- (id)makePrivateKeyWithData:(id)data;
- (id)passwordForService:(id)service;
- (id)validityDateIntervalForConfiguration:(id)configuration;
- (void)enumerateKeychainUsingBlock:(id)block;
- (void)removeItemWithPersistentID:(id)d;
- (void)setPassword:(id)password forService:(id)service accessGroup:(id)group;
@end

@implementation CRKInMemoryKeychain

- (CRKInMemoryKeychain)init
{
  v8.receiver = self;
  v8.super_class = CRKInMemoryKeychain;
  v2 = [(CRKInMemoryKeychain *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keychainItemsByPersistentID = v2->_keychainItemsByPersistentID;
    v2->_keychainItemsByPersistentID = v3;

    v5 = objc_opt_new();
    passwordDatasByService = v2->_passwordDatasByService;
    v2->_passwordDatasByService = v5;
  }

  return v2;
}

- (void)setPassword:(id)password forService:(id)service accessGroup:(id)group
{
  serviceCopy = service;
  passwordCopy = password;
  passwordDatasByService = [(CRKInMemoryKeychain *)self passwordDatasByService];
  [passwordDatasByService setObject:passwordCopy forKeyedSubscript:serviceCopy];
}

- (id)passwordForService:(id)service
{
  serviceCopy = service;
  passwordDatasByService = [(CRKInMemoryKeychain *)self passwordDatasByService];
  v6 = [passwordDatasByService objectForKeyedSubscript:serviceCopy];

  return v6;
}

- (void)enumerateKeychainUsingBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keychainItemsByPersistentID = [(CRKInMemoryKeychain *)self keychainItemsByPersistentID];
  allKeys = [keychainItemsByPersistentID allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = [(CRKInMemoryKeychain *)self itemWithPersistentID:v11 expectedProtocol:&unk_285673750];
      blockCopy[2](blockCopy, v11, v12, &v17);
      LOBYTE(v11) = v17;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)makeIdentityWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(CRKInMemoryKeychain *)self validityDateIntervalForConfiguration:configurationCopy];
  v6 = [CRKInMemoryIdentity identityWithConfiguration:configurationCopy validityDateInterval:v5];

  return v6;
}

- (void)removeItemWithPersistentID:(id)d
{
  dCopy = d;
  keychainItemsByPersistentID = [(CRKInMemoryKeychain *)self keychainItemsByPersistentID];
  [keychainItemsByPersistentID setObject:0 forKeyedSubscript:dCopy];
}

- (id)makeIdentityWithCertificate:(id)certificate privateKey:(id)key
{
  keyCopy = key;
  certificateCopy = certificate;
  v7 = [[CRKInMemoryIdentity alloc] initWithCertificate:certificateCopy privateKey:keyCopy];

  return v7;
}

- (id)makePrivateKeyWithData:(id)data
{
  dataCopy = data;
  v4 = [[CRKInMemoryPrivateKey alloc] initWithData:dataCopy];

  return v4;
}

- (id)itemWithPersistentID:(id)d expectedProtocol:(id)protocol
{
  dCopy = d;
  protocolCopy = protocol;
  keychainItemsByPersistentID = [(CRKInMemoryKeychain *)self keychainItemsByPersistentID];
  v9 = [keychainItemsByPersistentID objectForKeyedSubscript:dCopy];

  delegate = [(CRKInMemoryKeychain *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CRKInMemoryKeychain *)self delegate];
    v13 = [delegate2 inMemoryKeychain:self overriddenItemForPersistentID:dCopy originalItem:v9];

    v9 = v13;
  }

  if (v9)
  {
    if ([v9 conformsToProtocol:protocolCopy])
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)validityDateIntervalForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v6 = objc_opt_new();
  v7 = [v5 initWithStartDate:v6 duration:15768000.0 + 15768000.0];

  delegate = [(CRKInMemoryKeychain *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CRKInMemoryKeychain *)self delegate];
    v11 = [delegate2 inMemoryKeychain:self validityDateIntervalForNewIdentityWithConfiguration:configurationCopy defaultInterval:v7];

    v7 = v11;
  }

  return v7;
}

- (id)addItem:(id)item toAccessGroup:(id)group
{
  itemCopy = item;
  v6 = [(CRKInMemoryKeychain *)self existingPersistentIDForItem:itemCopy];
  if (!v6)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v6 = [uUIDString dataUsingEncoding:4];

    keychainItemsByPersistentID = [(CRKInMemoryKeychain *)self keychainItemsByPersistentID];
    [keychainItemsByPersistentID setObject:itemCopy forKeyedSubscript:v6];
  }

  v10 = v6;

  return v10;
}

- (id)existingPersistentIDForItem:(id)item
{
  itemCopy = item;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__CRKInMemoryKeychain_existingPersistentIDForItem___block_invoke;
  v8[3] = &unk_278DC2B90;
  v5 = itemCopy;
  v9 = v5;
  v10 = &v11;
  [(CRKInMemoryKeychain *)self enumerateKeychainUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __51__CRKInMemoryKeychain_existingPersistentIDForItem___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (CRKInMemoryKeychainDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end