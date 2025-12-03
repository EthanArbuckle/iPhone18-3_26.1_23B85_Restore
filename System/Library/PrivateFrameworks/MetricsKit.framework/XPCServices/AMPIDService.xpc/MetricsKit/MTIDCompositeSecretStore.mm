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
    v3 = [NSMutableDictionary dictionaryWithCapacity:4];
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

  v6 = v5;
  containerIdentifier = [schemeCopy containerIdentifier];

  v8 = [NSString stringWithFormat:@"%@-%@", v6, containerIdentifier];

  return v8;
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
  storeCopy = store;
  v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = storeCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(MTIDCompositeSecretStore *)self storeKeyForScheme:v11, v18];
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
        }

        v16 = v15;

        [v16 addObject:v11];
        [v5 setObject:v16 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

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
  schemesCopy = schemes;
  optionsCopy = options;
  v8 = +[NSMutableArray array];
  v21 = schemesCopy;
  v9 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v9 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        firstObject = [v14 firstObject];
        v16 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        v17 = [v16 resetSchemes:v14 options:optionsCopy];
        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v18 = [MTPromise promiseWithAll:v8];
    v19 = [v18 thenWithBlock:&stru_100020E08];
  }

  else
  {
    v19 = [MTPromise promiseWithResult:&__kCFBooleanTrue];
  }

  return v19;
}

- (id)maintainSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  optionsCopy = options;
  v7 = +[NSMutableArray array];
  v20 = schemesCopy;
  v8 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v8 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        firstObject = [v13 firstObject];
        v15 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        if (objc_opt_respondsToSelector())
        {
          v16 = [v15 maintainSchemes:v13 options:optionsCopy];
          [v7 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v17 = [MTPromise promiseWithAll:v7];
    v18 = [v17 thenWithBlock:&stru_100020E28];
  }

  else
  {
    v18 = [MTPromise promiseWithResult:&__kCFBooleanTrue];
  }

  return v18;
}

- (void)clearLocalData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stores = [(MTIDCompositeSecretStore *)selfCopy stores];
  v4 = [stores copy];

  objc_sync_exit(selfCopy);
  [v4 enumerateKeysAndObjectsUsingBlock:&stru_100020E68];
}

- (id)debugInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stores = [(MTIDCompositeSecretStore *)selfCopy stores];
  v4 = [stores copy];

  objc_sync_exit(selfCopy);
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000129A0;
  v12 = v11 = &unk_100020E90;
  v5 = v12;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];
  v13 = @"subStores";
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1, v8, v9, v10, v11];

  return v6;
}

- (id)syncForSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  optionsCopy = options;
  v8 = +[NSMutableArray array];
  v21 = schemesCopy;
  v9 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v9 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        firstObject = [v14 firstObject];
        v16 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        v17 = [v16 syncForSchemes:v14 options:optionsCopy];
        if (v17)
        {
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v18 = [MTPromise promiseWithAll:v8];
    v19 = [v18 thenWithBlock:&stru_100020EB0];
  }

  else
  {
    v19 = [MTPromise promiseWithResult:&__kCFBooleanFalse];
  }

  return v19;
}

@end