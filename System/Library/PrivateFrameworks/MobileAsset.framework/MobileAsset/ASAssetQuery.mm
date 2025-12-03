@interface ASAssetQuery
+ (id)queryPredicateForProperties:(id)properties;
- (ASAssetQuery)initWithAssetType:(id)type sessionIdentifier:(id)identifier;
- (NSArray)results;
- (id)runQueryAndReturnError:(id *)error;
- (id)runQueryForInfoReturnError:(id *)error;
- (void)startQuery:(id)query;
@end

@implementation ASAssetQuery

+ (id)queryPredicateForProperties:(id)properties
{
  v3 = MEMORY[0x1E695DF70];
  propertiesCopy = properties;
  array = [v3 array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__ASAssetQuery_queryPredicateForProperties___block_invoke;
  v9[3] = &unk_1E74CA7D8;
  v10 = array;
  v6 = array;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];

  return v7;
}

void __44__ASAssetQuery_queryPredicateForProperties___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", a2, a3];
  [*(a1 + 32) addObject:v4];
}

- (ASAssetQuery)initWithAssetType:(id)type sessionIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = ASAssetQuery;
  v8 = [(ASAssetQuery *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_networkTimeout = 30.0;
    v10 = [typeCopy copy];
    assetType = v9->_assetType;
    v9->_assetType = v10;

    v12 = [identifierCopy copy];
    sessionIdentifier = v9->_sessionIdentifier;
    v9->_sessionIdentifier = v12;

    v14 = [objc_opt_new() initWithType:typeCopy];
    [(ASAssetQuery *)v9 setMaQuery:v14];

    maQuery = [(ASAssetQuery *)v9 maQuery];
    [maQuery setDoNotBlockOnNetworkStatus:1];

    maQuery2 = [(ASAssetQuery *)v9 maQuery];
    [maQuery2 returnTypes:2];
  }

  return v9;
}

- (NSArray)results
{
  v2 = [(NSArray *)self->_results copy];

  return v2;
}

- (id)runQueryForInfoReturnError:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

  maQuery = [(ASAssetQuery *)self maQuery];
  queryMetaDataSync = [maQuery queryMetaDataSync];

  if (MAIsQueryResultFailure(queryMetaDataSync))
  {
    v11 = v43[5];
    v12 = errorStringForMAQueryResult(queryMetaDataSync);
    v17 = MAErrorWithUnderlying(@"com.apple.MobileAssetError.Query", queryMetaDataSync, v11, @"%@", v13, v14, v15, v16, v12);
    v18 = _ASErrorForMAError(v17);
  }

  else
  {
    v18 = 0;
  }

  maQuery2 = [(ASAssetQuery *)self maQuery];
  results = [maQuery2 results];
  v21 = results == 0;

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
    results2 = [(MAAssetQuery *)self->maQuery results];
    v24 = [results2 countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v24)
    {
      v25 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(results2);
          }

          v27 = *(*(&v35 + 1) + 8 * i);
          v28 = objc_autoreleasePoolPush();
          v29 = [objc_opt_new() initWithMAAsset:v27];
          [v22 addObject:v29];

          objc_autoreleasePoolPop(v28);
        }

        v24 = [results2 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v22 forKey:@"Assets"];
  }

  [(ASAssetQuery *)self setResults:v22];
  if (error)
  {
    if (v22)
    {
      v30 = 0;
    }

    else
    {
      v30 = v18;
    }

    *error = v30;
  }

  _Block_object_dispose(&v42, 8);

  v31 = *MEMORY[0x1E69E9840];

  return dictionary;
}

void __43__ASAssetQuery_runQueryForInfoReturnError___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

- (id)runQueryAndReturnError:(id *)error
{
  v3 = [(ASAssetQuery *)self runQueryForInfoReturnError:error];
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

- (void)startQuery:(id)query
{
  queryCopy = query;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__ASAssetQuery_startQuery___block_invoke;
  v7[3] = &unk_1E74C9928;
  v7[4] = self;
  v8 = queryCopy;
  v6 = queryCopy;
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