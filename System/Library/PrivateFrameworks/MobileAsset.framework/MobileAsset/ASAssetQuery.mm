@interface ASAssetQuery
+ (id)queryPredicateForProperties:(id)a3;
- (ASAssetQuery)initWithAssetType:(id)a3 sessionIdentifier:(id)a4;
- (NSArray)results;
- (id)runQueryAndReturnError:(id *)a3;
- (id)runQueryForInfoReturnError:(id *)a3;
- (void)startQuery:(id)a3;
@end

@implementation ASAssetQuery

+ (id)queryPredicateForProperties:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__ASAssetQuery_queryPredicateForProperties___block_invoke;
  v9[3] = &unk_1E74CA7D8;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];

  return v7;
}

void __44__ASAssetQuery_queryPredicateForProperties___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", a2, a3];
  [*(a1 + 32) addObject:v4];
}

- (ASAssetQuery)initWithAssetType:(id)a3 sessionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ASAssetQuery;
  v8 = [(ASAssetQuery *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_networkTimeout = 30.0;
    v10 = [v6 copy];
    assetType = v9->_assetType;
    v9->_assetType = v10;

    v12 = [v7 copy];
    sessionIdentifier = v9->_sessionIdentifier;
    v9->_sessionIdentifier = v12;

    v14 = [objc_opt_new() initWithType:v6];
    [(ASAssetQuery *)v9 setMaQuery:v14];

    v15 = [(ASAssetQuery *)v9 maQuery];
    [v15 setDoNotBlockOnNetworkStatus:1];

    v16 = [(ASAssetQuery *)v9 maQuery];
    [v16 returnTypes:2];
  }

  return v9;
}

- (NSArray)results
{
  v2 = [(NSArray *)self->_results copy];

  return v2;
}

- (id)runQueryForInfoReturnError:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v33 = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  v47 = 0;
  if (!self->_queriesLocalAssetInformationOnly)
  {
    v4 = objc_opt_new();
    [v4 setDiscretionary:0];
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    assetType = self->_assetType;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __43__ASAssetQuery_runQueryForInfoReturnError___block_invoke;
    v39[3] = &unk_1E74CA800;
    v41 = &v42;
    v7 = v5;
    v40 = v7;
    [MAAsset startCatalogDownload:assetType options:v4 completionWithError:v39];
    v8 = dispatch_time(0, (self->_networkTimeout * 1000000000.0));
    dispatch_group_wait(v7, v8);
  }

  v9 = [(ASAssetQuery *)self maQuery];
  v10 = [v9 queryMetaDataSync];

  if (MAIsQueryResultFailure(v10))
  {
    v11 = v43[5];
    v12 = errorStringForMAQueryResult(v10);
    v17 = MAErrorWithUnderlying(@"com.apple.MobileAssetError.Query", v10, v11, @"%@", v13, v14, v15, v16, v12);
    v18 = _ASErrorForMAError(v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = [(ASAssetQuery *)self maQuery];
  v20 = [v19 results];
  v21 = v20 == 0;

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = [(MAAssetQuery *)self->maQuery results];
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v24)
    {
      v25 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v35 + 1) + 8 * i);
          v28 = objc_autoreleasePoolPush();
          v29 = [objc_opt_new() initWithMAAsset:v27];
          [v22 addObject:v29];

          objc_autoreleasePoolPop(v28);
        }

        v24 = [v23 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v24);
    }

    [v33 setObject:v22 forKey:@"Assets"];
  }

  [(ASAssetQuery *)self setResults:v22];
  if (a3)
  {
    if (v22)
    {
      v30 = 0;
    }

    else
    {
      v30 = v18;
    }

    *a3 = v30;
  }

  _Block_object_dispose(&v42, 8);

  v31 = *MEMORY[0x1E69E9840];

  return v33;
}

void __43__ASAssetQuery_runQueryForInfoReturnError___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

- (id)runQueryAndReturnError:(id *)a3
{
  v3 = [(ASAssetQuery *)self runQueryForInfoReturnError:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"Assets"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)startQuery:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__ASAssetQuery_startQuery___block_invoke;
  v7[3] = &unk_1E74C9928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __27__ASAssetQuery_startQuery___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 runQueryAndReturnError:&v6];
  v4 = v6;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

@end