@interface FCPuzzleTypeController
- (FCPuzzleTypeController)init;
- (FCPuzzleTypeController)initWithContentDatabase:(id)a3 context:(id)a4 assetManager:(id)a5 puzzleTypeRecordSource:(id)a6 configurationManager:(id)a7;
- (id)_cachedPuzzleTypesForPuzzleTypeIDs:(id)a3 fastCacheOnly:(BOOL)a4;
- (id)_fetchOperationForPuzzleTypeWithIDs:(id)a3;
- (id)jsonEncodableObject;
- (id)thumbnailSmallURLWithJSON:(id)a3 publishDate:(id)a4 difficulty:(int64_t)a5;
- (void)_fetchPuzzleTypeForPuzzleTypeID:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)_fetchPuzzleTypesForPuzzleTypeIDs:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)_refreshPuzzleTypesBasedOnAgeForPuzzleTypes:(id)a3;
- (void)_savePuzzleTypesToCache:(id)a3;
- (void)fetchThumbnailJSONForPuzzleType:(id)a3 completionHandler:(id)a4;
- (void)fetchThumbnailUrlForPuzzle:(id)a3 completionHandler:(id)a4;
@end

@implementation FCPuzzleTypeController

- (FCPuzzleTypeController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCPuzzleTypeController init]";
    v10 = 2080;
    v11 = "FCPuzzleTypeController.m";
    v12 = 1024;
    v13 = 45;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPuzzleTypeController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPuzzleTypeController)initWithContentDatabase:(id)a3 context:(id)a4 assetManager:(id)a5 puzzleTypeRecordSource:(id)a6 configurationManager:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager != nil"];
    *buf = 136315906;
    v27 = "[FCPuzzleTypeController initWithContentDatabase:context:assetManager:puzzleTypeRecordSource:configurationManager:]";
    v28 = 2080;
    v29 = "FCPuzzleTypeController.m";
    v30 = 1024;
    v31 = 54;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeRecordSource != nil"];
    *buf = 136315906;
    v27 = "[FCPuzzleTypeController initWithContentDatabase:context:assetManager:puzzleTypeRecordSource:configurationManager:]";
    v28 = 2080;
    v29 = "FCPuzzleTypeController.m";
    v30 = 1024;
    v31 = 55;
    v32 = 2114;
    v33 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v25.receiver = self;
  v25.super_class = FCPuzzleTypeController;
  v17 = [(FCPuzzleTypeController *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetManager, a5);
    objc_storeStrong(&v18->_context, a4);
    objc_storeStrong(&v18->_puzzleTypeRecordSource, a6);
    objc_storeStrong(&v18->_configurationManager, a7);
    v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fastCache = v18->_fastCache;
    v18->_fastCache = v19;

    [(NSCache *)v18->_fastCache setEvictsObjectsWhenApplicationEntersBackground:0];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_fetchPuzzleTypeForPuzzleTypeID:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    v24 = v12;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __119__FCPuzzleTypeController__fetchPuzzleTypeForPuzzleTypeID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke;
    v22[3] = &unk_1E7C379A0;
    v17 = &v23;
    v23 = v15;
    [(FCPuzzleTypeController *)self _fetchPuzzleTypesForPuzzleTypeIDs:v16 cachePolicy:v13 qualityOfService:a5 callbackQueue:v14 completionHandler:v22];

LABEL_6:
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeID != nil"];
    *buf = 136315906;
    v26 = "[FCPuzzleTypeController _fetchPuzzleTypeForPuzzleTypeID:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
    v27 = 2080;
    v28 = "FCPuzzleTypeController.m";
    v29 = 1024;
    v30 = 111;
    v31 = 2114;
    v32 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v15)
  {
LABEL_5:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__FCPuzzleTypeController__fetchPuzzleTypeForPuzzleTypeID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
    block[3] = &unk_1E7C379C8;
    v17 = &v21;
    v21 = v15;
    dispatch_async(v14, block);
    goto LABEL_6;
  }

LABEL_7:

  v18 = *MEMORY[0x1E69E9840];
}

void __119__FCPuzzleTypeController__fetchPuzzleTypeForPuzzleTypeID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v7 = [a2 allValues];
    v6 = [v7 firstObject];
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (void)_fetchPuzzleTypesForPuzzleTypeIDs:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v72 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_26:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
      *buf = 136315906;
      v65 = "[FCPuzzleTypeController _fetchPuzzleTypesForPuzzleTypeIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
      v66 = 2080;
      v67 = "FCPuzzleTypeController.m";
      v68 = 1024;
      v69 = 136;
      v70 = 2114;
      v71 = v31;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (v15)
      {
        goto LABEL_28;
      }
    }

    else if (v15)
    {
LABEL_28:
      v58 = MEMORY[0x1E69E9820];
      v59 = 3221225472;
      v60 = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
      v61 = &unk_1E7C379C8;
      v62 = v15;
      (*(v62 + 2))(v62, 0, 0);
      v16 = v62;
      goto LABEL_29;
    }

LABEL_31:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
      *buf = 136315906;
      v65 = "[FCPuzzleTypeController _fetchPuzzleTypesForPuzzleTypeIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
      v66 = 2080;
      v67 = "FCPuzzleTypeController.m";
      v68 = 1024;
      v69 = 137;
      v70 = 2114;
      v71 = v32;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_37;
  }

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeIDs != nil"];
  *buf = 136315906;
  v65 = "[FCPuzzleTypeController _fetchPuzzleTypesForPuzzleTypeIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
  v66 = 2080;
  v67 = "FCPuzzleTypeController.m";
  v68 = 1024;
  v69 = 135;
  v70 = 2114;
  v71 = v30;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_4:
  if (!v15)
  {
    goto LABEL_31;
  }

  if (![v12 count])
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
    v55[3] = &unk_1E7C37778;
    v57 = v15;
    v56 = v14;
    __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_3(v55);

    v16 = v57;
    goto LABEL_29;
  }

  if (v13)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_5;
    v49[3] = &unk_1E7C448D8;
    v49[4] = self;
    v50 = v12;
    v54 = a5;
    v51 = v13;
    v52 = v14;
    v53 = v15;
    __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_5(v49);

    v16 = v50;
LABEL_29:

    goto LABEL_37;
  }

  v35 = a5;
  v36 = v15;
  queue = v14;
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = v12;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v45 objects:v63 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v46;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v45 + 1) + 8 * i);
        v25 = [(FCPuzzleTypeController *)self fastCache];
        v26 = [v25 objectForKey:v24];

        if (v26)
        {
          [v17 setObject:v26 forKey:v24];
        }

        else
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v45 objects:v63 count:16];
    }

    while (v21);
  }

  if ([v18 count])
  {
    v27 = [(FCPuzzleTypeController *)self _fetchOperationForPuzzleTypeWithIDs:v18];
    [v27 setQualityOfService:v35];
    v15 = v36;
    v14 = queue;
    if (v35 == 9)
    {
      v28 = -1;
    }

    else
    {
      v28 = v35 == 33 || v35 == 25;
    }

    v13 = 0;
    v12 = v38;
    [v27 setRelativePriority:v28];
    [v27 setFetchCompletionQueue:queue];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_8;
    v42[3] = &unk_1E7C37B98;
    v43 = v17;
    v44 = v36;
    v29 = v17;
    [v27 setFetchCompletionBlock:v42];
    v33 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v33 addOperation:v27];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_10;
    block[3] = &unk_1E7C37BC0;
    v40 = v17;
    v15 = v36;
    v41 = v36;
    v27 = v17;
    v14 = queue;
    dispatch_async(queue, block);

    v29 = v40;
    v13 = 0;
    v12 = v38;
  }

LABEL_37:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_4;
    block[3] = &unk_1E7C379C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchOperationForPuzzleTypeWithIDs:*(a1 + 40)];
  [v2 setQualityOfService:*(a1 + 72)];
  v3 = *(a1 + 72);
  v4 = v3 == 33 || v3 == 25;
  if (v3 == 9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  [v2 setRelativePriority:v5];
  [v2 setCachePolicy:{objc_msgSend(*(a1 + 48), "cachePolicy")}];
  [*(a1 + 48) maximumCachedAge];
  [v2 setMaximumCachedAge:?];
  [v2 setFetchCompletionQueue:*(a1 + 56)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_6;
  v7[3] = &unk_1E7C37A38;
  v8 = *(a1 + 64);
  [v2 setFetchCompletionBlock:v7];
  v6 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v6 addOperation:v2];
}

void __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [v4 fetchedObject];
  v8 = [v3 dictionaryWithDictionary:v5];

  [v8 fc_removeObjectsForKeysPassingTest:&__block_literal_global_22_0];
  v6 = *(a1 + 32);
  v7 = [v4 error];

  (*(v6 + 16))(v6, v8, v7);
}

void __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v8 = a2;
  if (![v8 status])
  {
    v3 = [v8 fetchedObject];
    if (v3)
    {
      [*(a1 + 32) addEntriesFromDictionary:v3];
    }
  }

  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_28_1];
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  if ([v4 count])
  {
    (*(v5 + 16))(v5, v4, 0);
  }

  else
  {
    v7 = [v8 error];
    (*(v5 + 16))(v5, v4, v7);
  }
}

uint64_t __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_30_3];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)fetchThumbnailUrlForPuzzle:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v6 puzzleType];
  v10 = [v9 identifier];
  v11 = [v8 stringWithFormat:@"thumbnail-images-mapping-json-%@", v10];

  v12 = [(FCPuzzleTypeController *)self fastCache];
  v13 = [v12 objectForKey:v11];

  if (v13)
  {
    v14 = [v6 publishDate];
    v15 = -[FCPuzzleTypeController thumbnailSmallURLWithJSON:publishDate:difficulty:](self, "thumbnailSmallURLWithJSON:publishDate:difficulty:", v13, v14, [v6 difficulty]);

    if (v7)
    {
      v7[2](v7, v15, 0);
    }
  }

  else
  {
    v16 = [v6 puzzleType];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__FCPuzzleTypeController_fetchThumbnailUrlForPuzzle_completionHandler___block_invoke;
    v17[3] = &unk_1E7C378E8;
    v17[4] = self;
    v18 = v6;
    v19 = v7;
    [(FCPuzzleTypeController *)self fetchThumbnailJSONForPuzzleType:v16 completionHandler:v17];
  }
}

void __71__FCPuzzleTypeController_fetchThumbnailUrlForPuzzle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 publishDate];
  v8 = [v3 thumbnailSmallURLWithJSON:v5 publishDate:v6 difficulty:{objc_msgSend(*(a1 + 40), "difficulty")}];

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, 0);
  }
}

- (void)fetchThumbnailJSONForPuzzleType:(id)a3 completionHandler:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 imageResourceID];
  if (v8)
  {
    v9 = [(FCPuzzleTypeController *)self configurationManager];
    v10 = [v9 configuration];

    v11 = [v10 puzzlesConfig];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v6 identifier];
    v14 = [v12 stringWithFormat:@"thumbnail-images-mapping-json-%@", v13];

    v15 = [(FCPuzzleTypeController *)self fastCache];
    v16 = [v15 objectForKey:v14];

    if (v16)
    {
      if (v7)
      {
        v7[2](v7, v16, 0);
      }
    }

    else
    {
      v17 = [FCResourcesFetchOperation alloc];
      v18 = [(FCPuzzleTypeController *)self context];
      v33[0] = v8;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v19 = v6;
      v20 = v7;
      v21 = v8;
      v22 = v10;
      v23 = v14;
      v25 = v24 = v11;
      v26 = [(FCResourcesFetchOperation *)v17 initWithContext:v18 resourceIDs:v25 downloadAssets:1];

      v11 = v24;
      v14 = v23;
      v10 = v22;
      v8 = v21;
      v7 = v20;
      v6 = v19;
      v16 = 0;

      [(FCFetchOperation *)v26 setCachePolicy:4];
      [v11 puzzleTypeThumbnailsCacheLifetime];
      [(FCFetchOperation *)v26 setMaximumCachedAge:?];
      [(FCOperation *)v26 setQualityOfService:25];
      [(FCOperation *)v26 setRelativePriority:0];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_2;
      v28[3] = &unk_1E7C44900;
      v30 = v7;
      v28[4] = self;
      v29 = v14;
      [(FCFetchOperation *)v26 setFetchCompletionBlock:v28];
      [(FCOperation *)v26 start];
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke;
    v31[3] = &unk_1E7C379C8;
    v32 = v7;
    __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke(v31);
    v10 = v32;
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Image resourceID not available for the puzzle type.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_3;
    v28[3] = &unk_1E7C37778;
    v30 = *(a1 + 48);
    v29 = v3;
    __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_3(v28);

    v5 = v30;
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    v6 = [v3 fetchedObject];
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 firstObject];
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v5 = v10;

    if (v5)
    {
      v11 = [v5 fileURL];
      if (v11)
      {
        v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
        if (v12)
        {
          v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:0];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 objectForKeyedSubscript:@"smallImages"];
            if (v15)
            {
              v16 = [*(a1 + 32) fastCache];
              [v16 setObject:v15 forKey:*(a1 + 40)];

              v17 = *(a1 + 48);
              if (v17)
              {
                (*(v17 + 16))(v17, v15, 0);
              }
            }

            else
            {
              v18[0] = MEMORY[0x1E69E9820];
              v18[1] = 3221225472;
              v18[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_8;
              v18[3] = &unk_1E7C379C8;
              v19 = *(a1 + 48);
              __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_8(v18);
            }
          }

          else
          {
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_7;
            v20[3] = &unk_1E7C379C8;
            v21 = *(a1 + 48);
            __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_7(v20);
            v15 = v21;
          }
        }

        else
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_6;
          v22[3] = &unk_1E7C379C8;
          v23 = *(a1 + 48);
          __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_6(v22);
          v14 = v23;
        }
      }

      else
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_5;
        v24[3] = &unk_1E7C379C8;
        v25 = *(a1 + 48);
        __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_5(v24);
        v12 = v25;
      }
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_4;
      v26[3] = &unk_1E7C379C8;
      v27 = *(a1 + 48);
      __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_4(v26);
      v11 = v27;
    }
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_4(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Resource object not found in fetched object.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_5(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"File URL not available in fetched resource.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_6(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Data not be created with contents of fetched resource's file path.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_7(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Images mapping json dictionary not available from contents of fetched resource's file path.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_8(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Small Images mapping json dictionary not available from the contents of fetched resource's file path.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)thumbnailSmallURLWithJSON:(id)a3 publishDate:(id)a4 difficulty:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x1E695DEE8]);
  v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v11 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"EST"];
  [v10 setTimeZone:v11];

  v12 = [v10 component:512 fromDate:v8];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"s%ld", v12];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a5];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__68;
  v27 = __Block_byref_object_dispose__68;
  v28 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__FCPuzzleTypeController_thumbnailSmallURLWithJSON_publishDate_difficulty___block_invoke;
  v19[3] = &unk_1E7C3F7C0;
  v15 = v13;
  v20 = v15;
  v22 = &v23;
  v16 = v14;
  v21 = v16;
  [v7 enumerateKeysAndObjectsUsingBlock:v19];
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v17;
}

uint64_t __75__FCPuzzleTypeController_thumbnailSmallURLWithJSON_publishDate_difficulty___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v7 = [a2 isEqualToString:a1[4]];
  v8 = v12;
  if (v7)
  {
    v9 = [v12 objectForKeyedSubscript:a1[5]];
    v10 = v9;
    if (!v9)
    {
      v10 = [v12 objectForKeyedSubscript:@"defaultUrl"];
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v10);
    if (!v9)
    {
    }

    *a4 = 1;
    v8 = v12;
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

- (id)_cachedPuzzleTypesForPuzzleTypeIDs:(id)a3 fastCacheOnly:(BOOL)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeIDs != nil"];
    *buf = 136315906;
    v31 = "[FCPuzzleTypeController _cachedPuzzleTypesForPuzzleTypeIDs:fastCacheOnly:]";
    v32 = 2080;
    v33 = "FCPuzzleTypeController.m";
    v34 = 1024;
    v35 = 398;
    v36 = 2114;
    v37 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [(FCPuzzleTypeController *)self fastCache];
        v15 = [v14 objectForKey:v13];

        if (v15)
        {
          [v6 setObject:v15 forKey:v13];
        }

        else
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  if ([v7 count] && !a4)
  {
    v16 = [(FCPuzzleTypeController *)self puzzleTypeRecordSource];
    v17 = [v16 cachedRecordsWithIDs:v7];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__FCPuzzleTypeController__cachedPuzzleTypesForPuzzleTypeIDs_fastCacheOnly___block_invoke;
    v23[3] = &unk_1E7C44928;
    v23[4] = self;
    v24 = v6;
    [v17 enumerateRecordsAndInterestTokensWithBlock:v23];
  }

  v18 = [v6 allValues];
  [(FCPuzzleTypeController *)self _refreshPuzzleTypesBasedOnAgeForPuzzleTypes:v18];

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

void __75__FCPuzzleTypeController__cachedPuzzleTypesForPuzzleTypeIDs_fastCacheOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [FCPuzzleType alloc];
  v8 = [*(a1 + 32) assetManager];
  v9 = [*(a1 + 32) context];
  v12 = [(FCPuzzleType *)v7 initWithPuzzleTypeRecord:v6 assetManager:v8 context:v9 interestToken:v5];

  v10 = *(a1 + 40);
  v11 = [(FCPuzzleType *)v12 identifier];
  [v10 setObject:v12 forKey:v11];
}

- (void)_refreshPuzzleTypesBasedOnAgeForPuzzleTypes:(id)a3
{
  v17 = self;
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 loadDate];
        v11 = [v10 dateByAddingTimeInterval:3600.0];
        v12 = [MEMORY[0x1E695DF00] date];
        v13 = [v11 fc_isEarlierThan:v12];

        if (v13)
        {
          v14 = [v9 identifier];
          [v4 addObject:v14];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v15 = [(FCPuzzleTypeController *)v17 _fetchOperationForPuzzleTypeWithIDs:v4];
    [v15 setQualityOfService:17];
    [v15 setRelativePriority:-1];
    [v15 setCachePolicy:1];
    [v15 start];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_savePuzzleTypesToCache:(id)a3
{
  v4 = a3;
  v5 = [(FCPuzzleTypeController *)self fastCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__FCPuzzleTypeController__savePuzzleTypesToCache___block_invoke;
  v7[3] = &unk_1E7C44950;
  v8 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v7];
}

void __50__FCPuzzleTypeController__savePuzzleTypesToCache___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKey:v4];
}

- (id)jsonEncodableObject
{
  v2 = [(FCPuzzleTypeController *)self puzzleTypeRecordSource];
  v3 = [v2 jsonEncodableObject];

  return v3;
}

- (id)_fetchOperationForPuzzleTypeWithIDs:(id)a3
{
  v4 = a3;
  v5 = [FCPuzzleTypeFetchOperation alloc];
  v6 = [(FCPuzzleTypeController *)self puzzleTypeRecordSource];
  v7 = [(FCPuzzleTypeController *)self assetManager];
  v8 = [(FCPuzzleTypeController *)self context];
  v9 = [(FCPuzzleTypeFetchOperation *)v5 initWithPuzzleTypeIDs:v4 puzzleTypeRecordSource:v6 assetManager:v7 context:v8 delegate:self];

  return v9;
}

@end