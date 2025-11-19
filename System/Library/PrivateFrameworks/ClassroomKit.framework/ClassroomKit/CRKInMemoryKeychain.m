@interface CRKInMemoryKeychain
- (CRKInMemoryKeychain)init;
- (CRKInMemoryKeychainDelegate)delegate;
- (id)addItem:(id)a3 toAccessGroup:(id)a4;
- (id)existingPersistentIDForItem:(id)a3;
- (id)itemWithPersistentID:(id)a3 expectedProtocol:(id)a4;
- (id)makeIdentityWithCertificate:(id)a3 privateKey:(id)a4;
- (id)makeIdentityWithConfiguration:(id)a3;
- (id)makePrivateKeyWithData:(id)a3;
- (id)passwordForService:(id)a3;
- (id)validityDateIntervalForConfiguration:(id)a3;
- (void)enumerateKeychainUsingBlock:(id)a3;
- (void)removeItemWithPersistentID:(id)a3;
- (void)setPassword:(id)a3 forService:(id)a4 accessGroup:(id)a5;
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

- (void)setPassword:(id)a3 forService:(id)a4 accessGroup:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CRKInMemoryKeychain *)self passwordDatasByService];
  [v9 setObject:v8 forKeyedSubscript:v7];
}

- (id)passwordForService:(id)a3
{
  v4 = a3;
  v5 = [(CRKInMemoryKeychain *)self passwordDatasByService];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)enumerateKeychainUsingBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CRKInMemoryKeychain *)self keychainItemsByPersistentID];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = [(CRKInMemoryKeychain *)self itemWithPersistentID:v11 expectedProtocol:&unk_285673750];
      v4[2](v4, v11, v12, &v17);
      LOBYTE(v11) = v17;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)makeIdentityWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CRKInMemoryKeychain *)self validityDateIntervalForConfiguration:v4];
  v6 = [CRKInMemoryIdentity identityWithConfiguration:v4 validityDateInterval:v5];

  return v6;
}

- (void)removeItemWithPersistentID:(id)a3
{
  v4 = a3;
  v5 = [(CRKInMemoryKeychain *)self keychainItemsByPersistentID];
  [v5 setObject:0 forKeyedSubscript:v4];
}

- (id)makeIdentityWithCertificate:(id)a3 privateKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CRKInMemoryIdentity alloc] initWithCertificate:v6 privateKey:v5];

  return v7;
}

- (id)makePrivateKeyWithData:(id)a3
{
  v3 = a3;
  v4 = [[CRKInMemoryPrivateKey alloc] initWithData:v3];

  return v4;
}

- (id)itemWithPersistentID:(id)a3 expectedProtocol:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRKInMemoryKeychain *)self keychainItemsByPersistentID];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [(CRKInMemoryKeychain *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CRKInMemoryKeychain *)self delegate];
    v13 = [v12 inMemoryKeychain:self overriddenItemForPersistentID:v6 originalItem:v9];

    v9 = v13;
  }

  if (v9)
  {
    if ([v9 conformsToProtocol:v7])
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

- (id)validityDateIntervalForConfiguration:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v6 = objc_opt_new();
  v7 = [v5 initWithStartDate:v6 duration:15768000.0 + 15768000.0];

  v8 = [(CRKInMemoryKeychain *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CRKInMemoryKeychain *)self delegate];
    v11 = [v10 inMemoryKeychain:self validityDateIntervalForNewIdentityWithConfiguration:v4 defaultInterval:v7];

    v7 = v11;
  }

  return v7;
}

- (id)addItem:(id)a3 toAccessGroup:(id)a4
{
  v5 = a3;
  v6 = [(CRKInMemoryKeychain *)self existingPersistentIDForItem:v5];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    v6 = [v8 dataUsingEncoding:4];

    v9 = [(CRKInMemoryKeychain *)self keychainItemsByPersistentID];
    [v9 setObject:v5 forKeyedSubscript:v6];
  }

  v10 = v6;

  return v10;
}

- (id)existingPersistentIDForItem:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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