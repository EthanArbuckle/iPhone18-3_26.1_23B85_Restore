@interface MTIDCompositeSecretStore
- (MTIDCompositeSecretStore)init;
- (id)debugInfo;
- (id)maintainSchemes:(id)a3 options:(id)a4;
- (id)resetSchemes:(id)a3 options:(id)a4;
- (id)schemesGroupedByStore:(id)a3;
- (id)secretForScheme:(id)a3 options:(id)a4;
- (id)secretStoreForScheme:(id)a3;
- (id)storeKeyForScheme:(id)a3;
- (id)syncForSchemes:(id)a3 options:(id)a4;
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

- (id)storeKeyForScheme:(id)a3
{
  v3 = a3;
  v4 = [v3 idType];
  v5 = @"Local";
  if (v4 == 2)
  {
    v5 = @"Cloud";
  }

  v6 = v5;
  v7 = [v3 containerIdentifier];

  v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

- (id)secretStoreForScheme:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTIDCompositeSecretStore *)v5 storeKeyForScheme:v4];
  v7 = [(MTIDCompositeSecretStore *)v5 stores];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [MTIDCloudKitStore alloc];
    v11 = [v4 containerIdentifier];
    v9 = -[MTIDCloudKitStore initWithContainerIdentifer:enableSync:](v10, "initWithContainerIdentifer:enableSync:", v11, [v4 idType] == 2);

    v12 = [(MTIDCompositeSecretStore *)v5 stores];
    [v12 setObject:v9 forKeyedSubscript:v6];
  }

  objc_sync_exit(v5);

  return v9;
}

- (id)schemesGroupedByStore:(id)a3
{
  v4 = a3;
  v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
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

- (id)secretForScheme:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:v7];
  v9 = [v8 secretForScheme:v7 options:v6];

  return v9;
}

- (id)resetSchemes:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v21 = v6;
  v9 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:v6];
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
        v15 = [v14 firstObject];
        v16 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:v15];

        v17 = [v16 resetSchemes:v14 options:v7];
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

- (id)maintainSchemes:(id)a3 options:(id)a4
{
  v6 = a3;
  v21 = a4;
  v7 = +[NSMutableArray array];
  v20 = v6;
  v8 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:v6];
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
        v14 = [v13 firstObject];
        v15 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:v14];

        if (objc_opt_respondsToSelector())
        {
          v16 = [v15 maintainSchemes:v13 options:v21];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTIDCompositeSecretStore *)v2 stores];
  v4 = [v3 copy];

  objc_sync_exit(v2);
  [v4 enumerateKeysAndObjectsUsingBlock:&stru_100020E68];
}

- (id)debugInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTIDCompositeSecretStore *)v2 stores];
  v4 = [v3 copy];

  objc_sync_exit(v2);
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

- (id)syncForSchemes:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v21 = v6;
  v9 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:v6];
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
        v15 = [v14 firstObject];
        v16 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:v15];

        v17 = [v16 syncForSchemes:v14 options:v7];
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