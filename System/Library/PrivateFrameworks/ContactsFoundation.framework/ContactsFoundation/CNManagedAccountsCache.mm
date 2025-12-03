@interface CNManagedAccountsCache
+ (id)sharedCache;
- (CNManagedAccountsCache)init;
- (id)accountForIdentifier:(id)identifier;
- (id)accountsForIdentifiers:(id)identifiers;
- (void)clearCache;
@end

@implementation CNManagedAccountsCache

+ (id)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CNManagedAccountsCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_cn_once_token_2 != -1)
  {
    dispatch_once(&sharedCache_cn_once_token_2, block);
  }

  v2 = sharedCache_cn_once_object_2;

  return v2;
}

uint64_t __37__CNManagedAccountsCache_sharedCache__block_invoke(uint64_t a1)
{
  sharedCache_cn_once_object_2 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CNManagedAccountsCache)init
{
  v9.receiver = self;
  v9.super_class = CNManagedAccountsCache;
  v2 = [(CNManagedAccountsCache *)&v9 init];
  if (v2)
  {
    v3 = +[CNCache atomicCache];
    accountsCache = v2->_accountsCache;
    v2->_accountsCache = v3;

    v5 = objc_alloc_init(getACAccountStoreClass());
    accountStore = v2->_accountStore;
    v2->_accountStore = v5;

    v7 = v2;
  }

  return v2;
}

- (id)accountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountsCache = [(CNManagedAccountsCache *)self accountsCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CNManagedAccountsCache_accountForIdentifier___block_invoke;
  v9[3] = &unk_1E6ED5C60;
  v9[4] = self;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [accountsCache objectForKey:v6 onCacheMiss:v9];

  return v7;
}

id __47__CNManagedAccountsCache_accountForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 accountWithIdentifier:*(a1 + 40)];

  return v3;
}

- (id)accountsForIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CNManagedAccountsCache *)self accountForIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)clearCache
{
  accountsCache = [(CNManagedAccountsCache *)self accountsCache];
  [accountsCache removeAllObjects];
}

@end