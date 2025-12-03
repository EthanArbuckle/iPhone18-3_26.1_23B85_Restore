@interface _EMContactsCache
- (CNContactStore)store;
- (_EMContactsCache)initWithStore:(id)store;
- (id)_contactsForKey:(id)key cache:(id)cache keysToFetch:(id)fetch predicateBlock:(id)block error:(id *)error;
- (id)allContactEmailAddressesWithError:(id *)error;
- (id)contactsForEmailAddress:(id)address keysToFetch:(id)fetch error:(id *)error;
- (id)contactsForName:(id)name keysToFetch:(id)fetch error:(id *)error;
- (void)_contactsChanged:(id)changed;
@end

@implementation _EMContactsCache

- (CNContactStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

- (_EMContactsCache)initWithStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = _EMContactsCache;
  v5 = [(_EMContactsCache *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_store, storeCopy);
    v7 = objc_alloc_init(MEMORY[0x1E699B7E0]);
    addressesCache = v6->_addressesCache;
    v6->_addressesCache = v7;

    v9 = objc_alloc_init(MEMORY[0x1E699B7E0]);
    namesCache = v6->_namesCache;
    v6->_namesCache = v9;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__contactsChanged_ name:*MEMORY[0x1E695C3D8] object:0];
  }

  return v6;
}

- (id)contactsForEmailAddress:(id)address keysToFetch:(id)fetch error:(id *)error
{
  addressCopy = address;
  fetchCopy = fetch;
  addressesCache = [(_EMContactsCache *)self addressesCache];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62___EMContactsCache_contactsForEmailAddress_keysToFetch_error___block_invoke;
  v14[3] = &unk_1E826C7E8;
  v11 = addressCopy;
  v15 = v11;
  v12 = [(_EMContactsCache *)self _contactsForKey:v11 cache:addressesCache keysToFetch:fetchCopy predicateBlock:v14 error:error];

  return v12;
}

- (id)contactsForName:(id)name keysToFetch:(id)fetch error:(id *)error
{
  nameCopy = name;
  fetchCopy = fetch;
  namesCache = [(_EMContactsCache *)self namesCache];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___EMContactsCache_contactsForName_keysToFetch_error___block_invoke;
  v14[3] = &unk_1E826C7E8;
  v11 = nameCopy;
  v15 = v11;
  v12 = [(_EMContactsCache *)self _contactsForKey:v11 cache:namesCache keysToFetch:fetchCopy predicateBlock:v14 error:error];

  return v12;
}

- (id)_contactsForKey:(id)key cache:(id)cache keysToFetch:(id)fetch predicateBlock:(id)block error:(id *)error
{
  fetchCopy = fetch;
  blockCopy = block;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __75___EMContactsCache__contactsForKey_cache_keysToFetch_predicateBlock_error___block_invoke;
  v26[3] = &unk_1E826C810;
  v14 = blockCopy;
  v28 = v14;
  v29 = &v31;
  v26[4] = self;
  v15 = fetchCopy;
  v27 = v15;
  v30 = &v37;
  v16 = [cache objectForKey:key generator:v26];
  v17 = v16;
  if (v16 && ![v16 count])
  {
    v18 = v32[5];
    v32[5] = MEMORY[0x1E695E0F0];
  }

  v19 = v32;
  v20 = v32[5];
  if (v20)
  {
    if (error)
    {
      *error = 0;
      v20 = v19[5];
    }

    v21 = v20;
  }

  else
  {
    v23 = v38[5];
    if (v23)
    {
      v21 = 0;
      if (error)
      {
        *error = v23;
      }
    }

    else
    {
      v24 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:v17];
      store = [(_EMContactsCache *)self store];
      v21 = [store unifiedContactsMatchingPredicate:v24 keysToFetch:v15 error:error];
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v21;
}

- (id)allContactEmailAddressesWithError:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  obja = [(_EMContactsCache *)self store];
  v4 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v38[0] = *MEMORY[0x1E695C208];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v6 = [obja unifiedContactsMatchingPredicate:v4 keysToFetch:v5 error:error];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v25)
  {
    v24 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        emailAddresses = [v8 emailAddresses];
        v10 = [emailAddresses countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v11 = *v29;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(emailAddresses);
              }

              value = [*(*(&v28 + 1) + 8 * j) value];
              v14 = [v7 objectForKeyedSubscript:value];
              if (v14)
              {
                identifier = [v8 identifier];
                [v14 addObject:identifier];
              }

              else
              {
                v16 = objc_alloc(MEMORY[0x1E695DF70]);
                identifier2 = [v8 identifier];
                v14 = [v16 initWithObjects:{identifier2, 0}];

                [v7 setObject:v14 forKeyedSubscript:value];
              }
            }

            v10 = [emailAddresses countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v10);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v25);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __54___EMContactsCache_allContactEmailAddressesWithError___block_invoke;
  v27[3] = &unk_1E826C860;
  v27[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v27];
  allKeys = [v7 allKeys];

  v19 = *MEMORY[0x1E69E9840];

  return allKeys;
}

- (void)_contactsChanged:(id)changed
{
  [(EFLazyCache *)self->_addressesCache removeAllObjects];
  namesCache = self->_namesCache;

  [(EFLazyCache *)namesCache removeAllObjects];
}

@end