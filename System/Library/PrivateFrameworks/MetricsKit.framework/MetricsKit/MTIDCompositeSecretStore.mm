@interface MTIDCompositeSecretStore
- (MTIDCompositeSecretStore)init;
- (id)debugInfo;
- (id)maintainSchemes:(id)schemes options:(id)options;
- (id)resetSchemes:(id)schemes options:(id)options;
- (id)schemesGroupedByStore:(id)store;
- (id)secretForScheme:(id)scheme options:(id)options;
- (id)secretStoreForScheme:(id)scheme;
- (id)storeKeyForScheme:(id)scheme;
- (id)syncForSchemes:(id)schemes options:(id)options;
- (void)clearLocalData;
@end

@implementation MTIDCompositeSecretStore

- (MTIDCompositeSecretStore)init
{
  v5.receiver = self;
  v5.super_class = MTIDCompositeSecretStore;
  v2 = [(MTIDCompositeSecretStore *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    [(MTIDCompositeSecretStore *)v2 setStores:v3];
  }

  return v2;
}

- (id)storeKeyForScheme:(id)scheme
{
  schemeCopy = scheme;
  idType = [schemeCopy idType];
  v5 = @"Local";
  if (idType == 2)
  {
    v5 = @"Cloud";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = v5;
  containerIdentifier = [schemeCopy containerIdentifier];

  v9 = [v6 stringWithFormat:@"%@-%@", v7, containerIdentifier];

  return v9;
}

- (id)secretStoreForScheme:(id)scheme
{
  schemeCopy = scheme;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MTIDCompositeSecretStore *)selfCopy storeKeyForScheme:schemeCopy];
  stores = [(MTIDCompositeSecretStore *)selfCopy stores];
  v8 = [stores objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [MTIDCloudKitStore alloc];
    containerIdentifier = [schemeCopy containerIdentifier];
    v9 = -[MTIDCloudKitStore initWithContainerIdentifer:enableSync:](v10, "initWithContainerIdentifer:enableSync:", containerIdentifier, [schemeCopy idType] == 2);

    stores2 = [(MTIDCompositeSecretStore *)selfCopy stores];
    [stores2 setObject:v9 forKeyedSubscript:v6];
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)schemesGroupedByStore:(id)store
{
  v24 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = storeCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(MTIDCompositeSecretStore *)self storeKeyForScheme:v11, v19];
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
        }

        v16 = v15;

        [v16 addObject:v11];
        [v5 setObject:v16 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)secretForScheme:(id)scheme options:(id)options
{
  optionsCopy = options;
  schemeCopy = scheme;
  v8 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:schemeCopy];
  v9 = [v8 secretForScheme:schemeCopy options:optionsCopy];

  return v9;
}

- (id)resetSchemes:(id)schemes options:(id)options
{
  v28 = *MEMORY[0x277D85DE8];
  schemesCopy = schemes;
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  v22 = schemesCopy;
  v9 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v9 objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
        firstObject = [v14 firstObject];
        v16 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        v17 = [v16 resetSchemes:v14 options:optionsCopy];
        [array addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    v18 = [MTPromise promiseWithAll:array];
    v19 = [v18 thenWithBlock:&__block_literal_global_17];
  }

  else
  {
    v19 = [MTPromise promiseWithResult:MEMORY[0x277CBEC38]];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)maintainSchemes:(id)schemes options:(id)options
{
  v28 = *MEMORY[0x277D85DE8];
  schemesCopy = schemes;
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  v21 = schemesCopy;
  v8 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v8 objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
        firstObject = [v13 firstObject];
        v15 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        if (objc_opt_respondsToSelector())
        {
          v16 = [v15 maintainSchemes:v13 options:optionsCopy];
          [array addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    v17 = [MTPromise promiseWithAll:array];
    v18 = [v17 thenWithBlock:&__block_literal_global_15];
  }

  else
  {
    v18 = [MTPromise promiseWithResult:MEMORY[0x277CBEC38]];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)clearLocalData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stores = [(MTIDCompositeSecretStore *)selfCopy stores];
  v4 = [stores copy];

  objc_sync_exit(selfCopy);
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_18];
}

- (id)debugInfo
{
  v16[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stores = [(MTIDCompositeSecretStore *)selfCopy stores];
  v4 = [stores copy];

  objc_sync_exit(selfCopy);
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __37__MTIDCompositeSecretStore_debugInfo__block_invoke;
  v13 = &unk_2798CE8D0;
  v14 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v10];
  v15 = @"subStores";
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:{1, v10, v11, v12, v13}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __37__MTIDCompositeSecretStore_debugInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = [v6 debugInfo];
    [v4 addObject:v5];
  }
}

- (id)syncForSchemes:(id)schemes options:(id)options
{
  v28 = *MEMORY[0x277D85DE8];
  schemesCopy = schemes;
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  v22 = schemesCopy;
  v9 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v9 objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
        firstObject = [v14 firstObject];
        v16 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        v17 = [v16 syncForSchemes:v14 options:optionsCopy];
        if (v17)
        {
          [array addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    v18 = [MTPromise promiseWithAll:array];
    v19 = [v18 thenWithBlock:&__block_literal_global_27];
  }

  else
  {
    v19 = [MTPromise promiseWithResult:MEMORY[0x277CBEC28]];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end