@interface _CRRecentsLibraryCloudStoresBuilder
- (_CRRecentsLibraryCloudStoresBuilder)init;
- (id)buildStores;
- (void)addStoreForDomain:(id)domain storeIdentifier:(id)identifier;
@end

@implementation _CRRecentsLibraryCloudStoresBuilder

- (_CRRecentsLibraryCloudStoresBuilder)init
{
  v7.receiver = self;
  v7.super_class = _CRRecentsLibraryCloudStoresBuilder;
  v2 = [(_CRRecentsLibraryCloudStoresBuilder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    storeDescriptions = v2->_storeDescriptions;
    v2->_storeDescriptions = v3;

    v5 = v2;
  }

  return v2;
}

- (void)addStoreForDomain:(id)domain storeIdentifier:(id)identifier
{
  storeDescriptions = self->_storeDescriptions;
  v5 = [CNPair pairWithFirst:domain second:identifier];
  [(NSMutableArray *)storeDescriptions addObject:v5];
}

- (id)buildStores
{
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_storeDescriptions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138543618;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        first = [v10 first];
        second = [v10 second];
        v13 = +[CRLogging log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v23 = first;
          v24 = 2114;
          v25 = second;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Initializing KVS store (%{public}@: %{public}@)", buf, 0x16u);
        }

        v14 = [[NSUbiquitousKeyValueStore alloc] _initWithStoreIdentifier:second usingEndToEndEncryption:1];
        [v3 setObject:v14 forKeyedSubscript:first];
      }

      v7 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v15 = [v3 copy];

  return v15;
}

@end