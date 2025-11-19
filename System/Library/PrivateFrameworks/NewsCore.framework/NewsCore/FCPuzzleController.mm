@interface FCPuzzleController
- (FCPuzzleController)init;
- (FCPuzzleController)initWithContentDatabase:(id)a3 assetManager:(id)a4 puzzleTypeController:(id)a5 puzzleRecordSource:(id)a6 configurationManager:(id)a7;
- (id)_cachedPuzzlesForPuzzleIDs:(id)a3 fastCacheOnly:(BOOL)a4;
- (id)_fetchOperationForPuzzleWithIDs:(id)a3;
- (id)createPuzzleForPuzzleType:(id)a3 identifier:(id)a4 title:(id)a5 subtitle:(id)a6 puzzleDescription:(id)a7 dataResourceID:(id)a8 authors:(id)a9 behaviorFlags:(int64_t)a10 publishDate:(id)a11 isPaid:(BOOL)a12 difficulty:(int64_t)a13 difficultyDescription:(id)a14 relatedPuzzleIDs:(id)a15 thumbnailLargeURL:(id)a16 loadDate:(id)a17 teaserClue:(id)a18 teaserAnswer:(id)a19 teaserInfo:(id)a20 teaserDirection:(id)a21 teaserNumber:(id)a22 language:(id)a23 blockedStorefrontIDs:(id)a24 allowedStorefrontIDs:(id)a25 minimumNewsVersion:(id)a26 isDeprecated:(BOOL)a27 isDraft:(BOOL)a28 lastModifiedDate:(id)a29;
- (id)jsonEncodableObject;
- (void)_fetchPuzzleForPuzzleID:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)_fetchPuzzlesForPuzzleIDs:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)_refreshPuzzlesBasedOnAgeForPuzzles:(id)a3;
- (void)_savePuzzlesToCache:(id)a3;
- (void)savePuzzleToCache:(id)a3;
@end

@implementation FCPuzzleController

- (FCPuzzleController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCPuzzleController init]";
    v10 = 2080;
    v11 = "FCPuzzleController.m";
    v12 = 1024;
    v13 = 46;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPuzzleController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPuzzleController)initWithContentDatabase:(id)a3 assetManager:(id)a4 puzzleTypeController:(id)a5 puzzleRecordSource:(id)a6 configurationManager:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager != nil"];
    *buf = 136315906;
    v27 = "[FCPuzzleController initWithContentDatabase:assetManager:puzzleTypeController:puzzleRecordSource:configurationManager:]";
    v28 = 2080;
    v29 = "FCPuzzleController.m";
    v30 = 1024;
    v31 = 55;
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
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleRecordSource != nil"];
    *buf = 136315906;
    v27 = "[FCPuzzleController initWithContentDatabase:assetManager:puzzleTypeController:puzzleRecordSource:configurationManager:]";
    v28 = 2080;
    v29 = "FCPuzzleController.m";
    v30 = 1024;
    v31 = 56;
    v32 = 2114;
    v33 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v25.receiver = self;
  v25.super_class = FCPuzzleController;
  v17 = [(FCPuzzleController *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetManager, a4);
    objc_storeStrong(&v18->_puzzleRecordSource, a6);
    objc_storeStrong(&v18->_puzzleTypeController, a5);
    v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fastCache = v18->_fastCache;
    v18->_fastCache = v19;

    objc_storeStrong(&v18->_configurationManager, a7);
    [(NSCache *)v18->_fastCache setEvictsObjectsWhenApplicationEntersBackground:0];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)createPuzzleForPuzzleType:(id)a3 identifier:(id)a4 title:(id)a5 subtitle:(id)a6 puzzleDescription:(id)a7 dataResourceID:(id)a8 authors:(id)a9 behaviorFlags:(int64_t)a10 publishDate:(id)a11 isPaid:(BOOL)a12 difficulty:(int64_t)a13 difficultyDescription:(id)a14 relatedPuzzleIDs:(id)a15 thumbnailLargeURL:(id)a16 loadDate:(id)a17 teaserClue:(id)a18 teaserAnswer:(id)a19 teaserInfo:(id)a20 teaserDirection:(id)a21 teaserNumber:(id)a22 language:(id)a23 blockedStorefrontIDs:(id)a24 allowedStorefrontIDs:(id)a25 minimumNewsVersion:(id)a26 isDeprecated:(BOOL)a27 isDraft:(BOOL)a28 lastModifiedDate:(id)a29
{
  v56 = a3;
  v35 = a4;
  v55 = a5;
  v73 = a6;
  v72 = a7;
  v71 = a8;
  v70 = a9;
  v36 = self;
  v69 = a11;
  v68 = a14;
  v67 = a15;
  v66 = a16;
  v65 = a17;
  v64 = a18;
  v63 = a19;
  v62 = a20;
  v61 = a21;
  v60 = a22;
  v59 = a23;
  v58 = a24;
  v57 = a25;
  v37 = a26;
  v38 = a29;
  v74 = v35;
  v39 = [(FCPuzzleController *)v36 fastCachedPuzzleForID:v35];
  v40 = v39;
  if (v39 && ([v39 lastModifiedDate], v41 = objc_claimAutoreleasedReturnValue(), v41, v38) && v41 && (objc_msgSend(v40, "lastModifiedDate"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v38, "fc_isLaterThan:withPrecision:", v42, 2), v42, (v43 & 1) == 0))
  {
    v51 = v40;

    v50 = v55;
    v44 = v56;
  }

  else
  {
    v44 = v56;
    v45 = [v56 thumbnailDirectory];
    v46 = resolvedPuzzleTypeDifficultyWithPuzzleType(v56, a13);
    v47 = [v45 smallThumbnailForDate:v69 difficulty:v46];

    v48 = [(FCPuzzleController *)v36 assetManager];
    v49 = [v48 assetHandleForCKAssetURLString:v66 lifetimeHint:0];

    BYTE3(v54) = a28;
    BYTE2(v54) = a27;
    BYTE1(v54) = (a10 & 2) != 0;
    LOBYTE(v54) = a10 & 1;
    LOBYTE(v53) = a12;
    v50 = v55;
    v51 = [[FCPuzzle alloc] initWithIdentifier:v74 title:v55 subtitle:v73 puzzleDescription:v72 puzzleType:v56 dataResourceID:v71 authors:v70 publishDate:v69 isPaid:v53 difficulty:a13 difficultyDescription:v68 relatedPuzzleIDs:v67 thumbnailSmallImageAssetHandle:v47 thumbnailLargeImageAssetHandle:v49 loadDate:v65 teaserClue:v64 teaserAnswer:v63 teaserInfo:v62 teaserDirection:v61 teaserNumber:v60 language:v59 blockedStorefrontIDs:v58 allowedStorefrontIDs:v57 minimumNewsVersion:[FCRestrictions integerRepresentationOfShortVersionString:?]isDeprecated:v54 isDraft:v38 lastModifiedDate:?];
    if (v51)
    {
      [(FCPuzzleController *)v36 savePuzzleToCache:v51];
    }
  }

  return v51;
}

- (void)savePuzzleToCache:(id)a3
{
  v4 = a3;
  v6 = [(FCPuzzleController *)self fastCache];
  v5 = [v4 identifier];
  [v6 setObject:v4 forKey:v5];
}

- (void)_fetchPuzzleForPuzzleID:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 callbackQueue:(id)a6 completionHandler:(id)a7
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
    v22[2] = __107__FCPuzzleController__fetchPuzzleForPuzzleID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke;
    v22[3] = &unk_1E7C379A0;
    v17 = &v23;
    v23 = v15;
    [(FCPuzzleController *)self _fetchPuzzlesForPuzzleIDs:v16 cachePolicy:v13 qualityOfService:a5 callbackQueue:v14 completionHandler:v22];

LABEL_6:
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleID != nil"];
    *buf = 136315906;
    v26 = "[FCPuzzleController _fetchPuzzleForPuzzleID:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
    v27 = 2080;
    v28 = "FCPuzzleController.m";
    v29 = 1024;
    v30 = 206;
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
    block[2] = __107__FCPuzzleController__fetchPuzzleForPuzzleID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
    block[3] = &unk_1E7C379C8;
    v17 = &v21;
    v21 = v15;
    dispatch_async(v14, block);
    goto LABEL_6;
  }

LABEL_7:

  v18 = *MEMORY[0x1E69E9840];
}

void __107__FCPuzzleController__fetchPuzzleForPuzzleID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_fetchPuzzlesForPuzzleIDs:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleIDs != nil"];
    *buf = 136315906;
    v53 = "[FCPuzzleController _fetchPuzzlesForPuzzleIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
    v54 = 2080;
    v55 = "FCPuzzleController.m";
    v56 = 1024;
    v57 = 230;
    v58 = 2114;
    v59 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v14)
    {
LABEL_4:
      if (v15)
      {
        if ([v12 count])
        {
          v36 = v15;
          queue = v14;
          v16 = [MEMORY[0x1E695DF90] dictionary];
          v17 = [MEMORY[0x1E695DF70] array];
          if (v13)
          {
            [MEMORY[0x1E695DF70] arrayWithArray:v12];
            v17 = v18 = v17;
          }

          else
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v35 = v12;
            v18 = v12;
            v19 = [v18 countByEnumeratingWithState:&v44 objects:v51 count:16];
            if (v19)
            {
              v20 = v19;
              v34 = a5;
              v21 = *v45;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v45 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v44 + 1) + 8 * i);
                  v24 = [(FCPuzzleController *)self fastCache];
                  v25 = [v24 objectForKey:v23];

                  if (v25)
                  {
                    [v16 setObject:v25 forKey:v23];
                  }

                  else
                  {
                    [v17 addObject:v23];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v44 objects:v51 count:16];
              }

              while (v20);
              v13 = 0;
              v12 = v35;
              a5 = v34;
            }
          }

          if ([v17 count])
          {
            v26 = [(FCPuzzleController *)self _fetchOperationForPuzzleWithIDs:v17];
            [v26 setQualityOfService:a5];
            v15 = v36;
            v14 = queue;
            if (a5 == 9)
            {
              v27 = -1;
            }

            else
            {
              v27 = a5 == 33 || a5 == 25;
            }

            [v26 setRelativePriority:v27];
            [v26 setCachePolicy:{objc_msgSend(v13, "cachePolicy")}];
            [v13 maximumCachedAge];
            [v26 setMaximumCachedAge:?];
            [v26 setFetchCompletionQueue:queue];
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_4;
            v41[3] = &unk_1E7C37B98;
            v42 = v16;
            v43 = v36;
            v28 = v16;
            [v26 setFetchCompletionBlock:v41];
            v29 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
            [v29 addOperation:v26];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_6;
            block[3] = &unk_1E7C37778;
            v15 = v36;
            v39 = v16;
            v40 = v36;
            v26 = v16;
            v14 = queue;
            dispatch_async(queue, block);

            v28 = v40;
          }
        }

        else
        {
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
          v48[3] = &unk_1E7C37778;
          v50 = v15;
          v49 = v14;
          __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2(v48);
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }
  }

  else if (v14)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
    *buf = 136315906;
    v53 = "[FCPuzzleController _fetchPuzzlesForPuzzleIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
    v54 = 2080;
    v55 = "FCPuzzleController.m";
    v56 = 1024;
    v57 = 231;
    v58 = 2114;
    v59 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v15)
  {
LABEL_34:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
      *buf = 136315906;
      v53 = "[FCPuzzleController _fetchPuzzlesForPuzzleIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
      v54 = 2080;
      v55 = "FCPuzzleController.m";
      v56 = 1024;
      v57 = 232;
      v58 = 2114;
      v59 = v33;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

LABEL_36:

  v31 = *MEMORY[0x1E69E9840];
}

void __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
    block[3] = &unk_1E7C379C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2)
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

  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_26_0];
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

BOOL __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 puzzleType];
  v4 = [FCTagController isTagAllowedForNewsVersion:v3];

  return !v4;
}

- (id)_cachedPuzzlesForPuzzleIDs:(id)a3 fastCacheOnly:(BOOL)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleIDs != nil"];
    *buf = 136315906;
    v37 = "[FCPuzzleController _cachedPuzzlesForPuzzleIDs:fastCacheOnly:]";
    v38 = 2080;
    v39 = "FCPuzzleController.m";
    v40 = 1024;
    v41 = 310;
    v42 = 2114;
    v43 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [(FCPuzzleController *)self fastCache];
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

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  if ([v7 count] && !a4)
  {
    v16 = [(FCPuzzleController *)self configurationManager];
    v17 = [v16 configuration];

    v18 = [v17 puzzlesConfig];
    v19 = [v18 difficultyDescriptions];
    v20 = [(FCPuzzleController *)self puzzleRecordSource];
    v21 = [v20 cachedRecordsWithIDs:v7];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __63__FCPuzzleController__cachedPuzzlesForPuzzleIDs_fastCacheOnly___block_invoke;
    v28[3] = &unk_1E7C3BAC0;
    v28[4] = self;
    v29 = v19;
    v30 = v6;
    v22 = v19;
    [v21 enumerateRecordsAndInterestTokensWithBlock:v28];
  }

  [v6 fc_removeObjectsForKeysPassingTest:&__block_literal_global_32];
  v23 = [v6 allValues];
  [(FCPuzzleController *)self _refreshPuzzlesBasedOnAgeForPuzzles:v23];

  v24 = *MEMORY[0x1E69E9840];

  return v6;
}

void __63__FCPuzzleController__cachedPuzzlesForPuzzleIDs_fastCacheOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  v7 = [v14 puzzleTypeID];
  v8 = [v6 cachedPuzzleTypeForID:v7];

  if (v8)
  {
    v9 = [FCPuzzle alloc];
    v10 = [*(a1 + 32) assetManager];
    v11 = [(FCPuzzle *)v9 initWithPuzzleRecord:v14 puzzleType:v8 assetManager:v10 interestToken:v5 difficultyDescriptions:*(a1 + 40)];

    v12 = *(a1 + 48);
    v13 = [(FCPuzzle *)v11 identifier];
    [v12 setObject:v11 forKey:v13];
  }
}

BOOL __63__FCPuzzleController__cachedPuzzlesForPuzzleIDs_fastCacheOnly___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 puzzleType];
  v4 = [FCTagController isTagAllowedForNewsVersion:v3];

  return !v4;
}

- (void)_refreshPuzzlesBasedOnAgeForPuzzles:(id)a3
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
    v15 = [(FCPuzzleController *)v17 _fetchOperationForPuzzleWithIDs:v4];
    [v15 setQualityOfService:17];
    [v15 setRelativePriority:-1];
    [v15 setCachePolicy:1];
    [v15 start];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_savePuzzlesToCache:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__FCPuzzleController__savePuzzlesToCache___block_invoke;
  v3[3] = &unk_1E7C3BAE8;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (id)jsonEncodableObject
{
  v2 = [(FCPuzzleController *)self puzzleRecordSource];
  v3 = [v2 jsonEncodableObject];

  return v3;
}

- (id)_fetchOperationForPuzzleWithIDs:(id)a3
{
  v4 = a3;
  v5 = [FCPuzzleFetchOperation alloc];
  v6 = [(FCPuzzleController *)self puzzleTypeController];
  v7 = [(FCPuzzleController *)self puzzleRecordSource];
  v8 = [(FCPuzzleController *)self assetManager];
  v9 = [(FCPuzzleController *)self configurationManager];
  v10 = [(FCPuzzleFetchOperation *)v5 initWithPuzzleIDs:v4 puzzleTypeController:v6 puzzleRecordSource:v7 assetManager:v8 configurationManager:v9 delegate:self];

  return v10;
}

@end