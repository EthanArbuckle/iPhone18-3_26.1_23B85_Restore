@interface MADFetchRequest
+ (id)fetchRequestWithManagedObjectContext:(id)a3;
- (BOOL)keyExistsInKeyValueStore:(id)a3;
- (MADFetchRequest)initWithManagedObjectContext:(id)a3;
- (id)_fetchPredicateForTaskID:(id)a3 matchingProcessingStatus:(id)a4 includingProcessingStatuses:(id)a5 excludingProcessingStatuses:(id)a6 matchingAttempts:(id)a7 fromNextAttemptDate:(id)a8 toNextAttemptDate:(id)a9 localIdentifiers:(id)a10 additionalPredicates:(id)a11;
- (id)fetchAnalysesWithLocalIdentifiers:(id)a3 predicate:(id)a4;
- (id)fetchAnalysesWithLocalIdentifiers:(id)a3 predicate:(id)a4 resultTypes:(id)a5;
- (id)fetchAnalysisWithLocalIdentifier:(id)a3 predicate:(id)a4;
- (id)fetchAnalysisWithLocalIdentifier:(id)a3 predicate:(id)a4 resultTypes:(id)a5;
- (id)fetchDataStoreValueIfKeyExists:(id)a3;
- (id)fetchFailedProcessingStatusFromAssets:(id)a3 taskID:(unint64_t)a4;
- (int)_fetchLocalIdentifiers:(id *)a3 eligibleToRetry:(id)a4 matchingProcessingStatus:(id)a5 includingProcessingStatuses:(id)a6 excludingProcessingStatuses:(id)a7 taskID:(id)a8 matchingAttempts:(id)a9 fetchLimit:(id)a10 additionalPredicates:(id)a11;
- (int)_fetchManagedAssetCount:(unint64_t *)a3 predicate:(id)a4;
- (int)_fetchManagedProcessingStatusCount:(unint64_t *)a3 predicate:(id)a4;
- (int)fetchAllDataStoreKeyValuePairs:(id *)a3;
- (int)fetchAllMomentsScheduledAssets:(id *)a3;
- (int)fetchAllMomentsScheduledAssetsForLookup:(id *)a3 totalCount:(unint64_t *)a4;
- (int)fetchAssetCountForTaskID:(unint64_t)a3;
- (int)fetchAssetCountForTaskID:(unint64_t)a3 minimumAttempts:(unint64_t)a4;
- (int)fetchAssetCountForTaskID:(unint64_t)a3 status:(unint64_t)a4;
- (int)fetchAssetCountForTaskID:(unint64_t)a3 status:(unint64_t)a4 attempts:(int)a5;
- (int)fetchAssetCountForTaskID:(unint64_t)a3 totalAssets:(unint64_t *)a4 processedAssets:(unint64_t *)a5;
- (int)fetchAssetCountFromLocalIdentifiers:(id)a3 taskID:(unint64_t)a4 excludingStatuses:(id)a5;
- (int)fetchAssetCountWithPredicate:(id)a3;
- (int)fetchChangeToken:(id *)a3 taskID:(unint64_t)a4 changeTokenType:(unint64_t)a5;
- (int)fetchEligibleToRetryLocalIdentifiers:(id *)a3 processingStatus:(unint64_t)a4 taskID:(unint64_t)a5 fetchLimit:(unint64_t)a6;
- (int)fetchEligibleToRetryLocalIdentifiers:(id *)a3 processingStatus:(unint64_t)a4 taskID:(unint64_t)a5 fetchLimit:(unint64_t)a6 additionalPredicates:(id)a7;
- (int)fetchLocalIdentifiers:(id *)a3 processingStatus:(unint64_t)a4 taskID:(unint64_t)a5 attempts:(int)a6 fetchLimit:(unint64_t)a7;
- (int)fetchLocalIdentifiers:(id *)a3 processingStatus:(unint64_t)a4 taskID:(unint64_t)a5 attempts:(int)a6 fetchLimit:(unint64_t)a7 additionalPredicates:(id)a8;
- (int)fetchLocalIdentifiers:(id *)a3 taskID:(unint64_t)a4 processingStatus:(unint64_t)a5;
- (int)fetchLocalIdentifiers:(id *)a3 taskID:(unint64_t)a4 processingStatus:(unint64_t)a5 additionalPredicates:(id)a6;
- (int)fetchLocalIdentifiersEligibleForRetry:(id *)a3 taskID:(unint64_t)a4 excludingStatuses:(id)a5 fetchLimit:(unint64_t)a6 additionalPredicates:(id)a7;
- (int)fetchLocalIdentifiersEligibleForRetry:(id *)a3 taskID:(unint64_t)a4 fetchLimit:(unint64_t)a5;
- (int)fetchLocalIdentifiersEligibleForRetry:(id *)a3 taskID:(unint64_t)a4 includingStatuses:(id)a5 fetchLimit:(unint64_t)a6 additionalPredicates:(id)a7;
- (int)fetchModifiedAssetCountSinceDate:(id)a3;
- (int)fetchMomentsScheduledAssetEntries:(id *)a3 forTaskID:(unint64_t)a4;
- (int)fetchProcessingErrorCode:(unint64_t *)a3 errorLine:(unint64_t *)a4 taskID:(unint64_t)a5 localIdentifier:(id)a6;
- (int)fetchProcessingErrorCodeCounts:(id *)a3 taskID:(unint64_t)a4 sinceDate:(id)a5 additionalPredicates:(id)a6;
- (int)fetchProcessingStatus:(unint64_t *)a3 attempts:(int *)a4 lastAttemptDate:(id *)a5 nextAttemptDate:(id *)a6 localIdentifier:(id)a7 taskID:(unint64_t)a8;
- (int)fetchProgressHistoryRecords:(id *)a3 sinceDate:(id)a4;
- (int)loadAllChangeToken:(id *)a3 totalCount:(unint64_t *)a4;
- (int)loadAllProcessingStatus:(id *)a3 totalCount:(unint64_t *)a4;
- (int)loadAllProgressHistoryRecords:(id *)a3 totalCount:(unint64_t *)a4;
- (int64_t)dataStoreValueForKey:(id)a3;
- (unint64_t)fetchEligibleToRetryAssetCountWithProcessingStatus:(unint64_t)a3 taskID:(unint64_t)a4;
- (unint64_t)fetchEligibleToRetryAssetCountWithTaskID:(unint64_t)a3;
@end

@implementation MADFetchRequest

- (id)fetchAnalysisWithLocalIdentifier:(id)a3 predicate:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = [(MADFetchRequest *)self fetchAnalysesWithLocalIdentifiers:v8 predicate:v7 resultTypes:0];
  v10 = [v9 objectForKeyedSubscript:v6];

  return v10;
}

- (id)fetchAnalysisWithLocalIdentifier:(id)a3 predicate:(id)a4 resultTypes:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [(MADFetchRequest *)self fetchAnalysesWithLocalIdentifiers:v11 predicate:v9 resultTypes:v10];
  v13 = [v12 objectForKeyedSubscript:v8];

  return v13;
}

- (id)fetchAnalysesWithLocalIdentifiers:(id)a3 predicate:(id)a4
{
  v4 = [(MADFetchRequest *)self fetchAnalysesWithLocalIdentifiers:a3 predicate:a4 resultTypes:0];

  return v4;
}

- (id)fetchAnalysesWithLocalIdentifiers:(id)a3 predicate:(id)a4 resultTypes:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v39 = a5;
  if (v8 && [v8 count])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d localIdentifiers", objc_msgSend(v8, "count")];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"all localIdentifiers"];
  }

  v11 = v10;
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    v46 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MADManagedPhotosAsset_Fetch", "%@", buf, 0xCu);
  }

  v16 = +[MADManagedPhotosAsset fetchRequest];
  if ([v8 count])
  {
    v17 = MEMORY[0x1E696AE18];
    v18 = +[MADManagedPhotosAsset localIdentifierColumnName];
    v19 = [v17 predicateWithFormat:@"%K IN %@", v18, v8];
    [v16 setPredicate:v19];

    if (v9)
    {
      v20 = MEMORY[0x1E696AB28];
      v21 = [v16 predicate];
      v44[0] = v21;
      v44[1] = v9;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
      v23 = [v20 andPredicateWithSubpredicates:v22];
      [v16 setPredicate:v23];
    }

    [v16 setFetchLimit:{objc_msgSend(v8, "count")}];
  }

  else if (v9)
  {
    [v16 setPredicate:v9];
  }

  v24 = [v16 predicate];
  v25 = v24 == 0;

  if (!v25 && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v26 = [v16 predicate];
    v27 = [v26 description];
    *buf = 138412290;
    v46 = v27;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|Asset] Fetching with predicate %@", buf, 0xCu);
  }

  v28 = [MEMORY[0x1E695DF90] dictionary];
  moc = self->_moc;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __82__MADFetchRequest_Asset__fetchAnalysesWithLocalIdentifiers_predicate_resultTypes___block_invoke;
  v40[3] = &unk_1E834D048;
  v40[4] = self;
  v30 = v16;
  v41 = v30;
  v31 = v28;
  v42 = v31;
  v32 = v39;
  v43 = v32;
  [(NSManagedObjectContext *)moc performBlockAndWait:v40];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v33 = [v31 count];
    *buf = 67109120;
    LODWORD(v46) = v33;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MACD|Asset] Returning %d fetched records", buf, 8u);
  }

  v34 = VCPSignPostLog();
  v35 = v34;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 138412290;
    v46 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v13, "MADManagedPhotosAsset_Fetch", "%@", buf, 0xCu);
  }

  v36 = v43;
  v37 = v31;

  return v31;
}

void __82__MADFetchRequest_Asset__fetchAnalysesWithLocalIdentifiers_predicate_resultTypes___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v63 = 0;
  v44 = [v2 executeFetchRequest:v1 error:&v63];
  v43 = v63;
  if ([v44 count])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v3 = [v44 count];
      *buf = 67109120;
      LODWORD(v69) = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MACD|Asset] Fetched %d records", buf, 8u);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v44;
    v4 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v4)
    {
      v49 = *v60;
      do
      {
        v52 = v4;
        for (i = 0; i != v52; ++i)
        {
          if (*v60 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v59 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v6 = MediaAnalysisLogLevel();
          v7 = MEMORY[0x1E69E9C10];
          if (v6 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v69 = v5;
            _os_log_impl(&dword_1C9B70000, v7, OS_LOG_TYPE_DEBUG, "[MACD|Asset] Fetched %@", buf, 0xCu);
          }

          v8 = [v5 localIdentifier];
          v9 = v8 == 0;

          if (v9)
          {
            v13 = MediaAnalysisLogLevel();
            v14 = MEMORY[0x1E69E9C10];
            if (v13 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9B70000, v14, OS_LOG_TYPE_ERROR, "[MACD|Asset] Invalid localIdentifier; skipping", buf, 2u);
            }
          }

          else
          {
            v65[0] = @"version";
            v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "version")}];
            v66[0] = v10;
            v65[1] = @"dateModified";
            v11 = [v5 dateModified];
            if (v11)
            {
              v12 = [v5 dateModified];
              v50 = v12;
            }

            else
            {
              v12 = [MEMORY[0x1E695DF00] distantPast];
              v47 = v12;
            }

            v66[1] = v12;
            v65[2] = @"dateAnalyzed";
            v15 = [v5 dateAnalyzed];
            if (v15)
            {
              v16 = [v5 dateAnalyzed];
              v51 = v16;
            }

            else
            {
              v16 = [MEMORY[0x1E695DF00] distantPast];
              v48 = v16;
            }

            v66[2] = v16;
            v65[3] = @"performedAnalysisTypes";
            v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "analysisTypes")}];
            v66[3] = v17;
            v65[4] = @"flags";
            v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "flags")}];
            v66[4] = v18;
            v65[5] = @"statsFlags";
            v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "statsFlags")}];
            v66[5] = v19;
            v65[6] = @"quality";
            v20 = MEMORY[0x1E696AD98];
            [v5 quality];
            v21 = [v20 numberWithFloat:?];
            v66[6] = v21;
            v65[7] = @"metadataRanges";
            v22 = [MEMORY[0x1E695DF90] dictionary];
            v66[7] = v22;
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:8];
            v23 = v11;
            v24 = v11 == 0;

            v25 = v51;
            if (!v15)
            {
              v25 = v48;
            }

            v26 = v50;
            if (v24)
            {
              v26 = v47;
            }

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v27 = [v54 vcp_analysisDescriptionWithResultDetails:1];
              *buf = 138412290;
              v69 = v27;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|Asset] Generated analysis %@", buf, 0xCu);
            }

            v28 = *(a1 + 48);
            v29 = [v5 localIdentifier];
            [v28 setObject:v54 forKeyedSubscript:v29];
          }

          objc_autoreleasePoolPop(context);
        }

        v4 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v4);
    }

    v30 = +[MADManagedPhotosResult fetchRequest];
    v31 = MEMORY[0x1E696AE18];
    v32 = +[MADManagedPhotosResult assetColumnName];
    v33 = [v31 predicateWithFormat:@"(%K IN %@)", v32, obj];

    if (*(a1 + 56))
    {
      v34 = MEMORY[0x1E696AB28];
      v64[0] = v33;
      v35 = MEMORY[0x1E696AE18];
      v36 = +[MADManagedPhotosResult resultsTypeColumnName];
      v37 = [v35 predicateWithFormat:@"(%K IN %@)", v36, *(a1 + 56)];
      v64[1] = v37;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
      v39 = [v34 andPredicateWithSubpredicates:v38];

      v33 = v39;
    }

    [v30 setPredicate:v33];
    v40 = *(a1 + 32);
    v41 = *(v40 + 8);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __82__MADFetchRequest_Asset__fetchAnalysesWithLocalIdentifiers_predicate_resultTypes___block_invoke_208;
    v56[3] = &unk_1E834D020;
    v56[4] = v40;
    v42 = v30;
    v57 = v42;
    v58 = *(a1 + 48);
    [v41 performBlockAndWait:v56];
  }

  else if (v43 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v69 = v43;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|Asset] Failed to fetch - %@", buf, 0xCu);
  }
}

void __82__MADFetchRequest_Asset__fetchAnalysesWithLocalIdentifiers_predicate_resultTypes___block_invoke_208(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v41 = 0;
  v3 = [v2 executeFetchRequest:v1 error:&v41];
  v32 = v41;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v4)
  {
    v35 = *v38;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = MediaAnalysisResultsTypeToKey([v6 resultsType]);
        v9 = MEMORY[0x1E69E9C10];
        if (v8)
        {
          v10 = MEMORY[0x1E696AE40];
          v11 = [v6 results];
          v36 = 0;
          v12 = [v10 propertyListWithData:v11 options:0 format:0 error:&v36];
          v13 = v36;

          v14 = MEMORY[0x1E69E9C10];
          if (v12)
          {
            v15 = [v6 asset];
            v16 = [v15 localIdentifier];
            v17 = v16 == 0;

            if (!v17)
            {
              v18 = a1[6];
              v19 = [v6 asset];
              v20 = [v19 localIdentifier];
              v21 = [v18 objectForKeyedSubscript:v20];

              if (v21)
              {
                v22 = [v21 objectForKeyedSubscript:@"metadataRanges"];
                v23 = v22;
                v24 = v22 != 0;
                if (v22)
                {
                  [v22 setObject:v12 forKeyedSubscript:v8];
                }

                else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|Asset] Fetched result's analysisDictionary is missing MediaAnalysisResultsKey; skipping", buf, 2u);
                }
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 3)
                {
                  v31 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1C9B70000, v31, OS_LOG_TYPE_ERROR, "[MACD|Asset] Fetched result's asset is missing dictionary; skipping", buf, 2u);
                  }
                }

                v24 = 0;
              }

              goto LABEL_33;
            }

            v29 = MediaAnalysisLogLevel();
            v30 = MEMORY[0x1E69E9C10];
            if (v29 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v26 = v30;
              v27 = "[MACD|Asset] Fetched result's asset is missing local identifier; skipping";
              v28 = 2;
LABEL_22:
              _os_log_impl(&dword_1C9B70000, v26, OS_LOG_TYPE_ERROR, v27, buf, v28);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v13;
            v26 = v14;
            v27 = "[MACD|Asset] Failed to extrace resultData %@; skipping";
            v28 = 12;
            goto LABEL_22;
          }

          v24 = 0;
LABEL_33:

          goto LABEL_34;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v25 = [v6 resultsType];
          *buf = 134217984;
          v43 = v25;
          _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_ERROR, "[MACD|Asset] Invalid resultsType %lld; skipping", buf, 0xCu);
        }

        v24 = 0;
LABEL_34:

        objc_autoreleasePoolPop(v7);
        if (!v24)
        {
          goto LABEL_37;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v4);
  }

LABEL_37:
}

- (int)_fetchManagedAssetCount:(unint64_t *)a3 predicate:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v7 = +[MADManagedPhotosAsset fetchRequest];
    [v7 setPredicate:v6];
    *v26 = 0;
    v27 = v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__9;
    v30 = __Block_byref_object_dispose__9;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    moc = self->_moc;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __60__MADFetchRequest_Asset___fetchManagedAssetCount_predicate___block_invoke;
    v17 = &unk_1E834D070;
    v20 = &v22;
    v18 = self;
    v9 = v7;
    v19 = v9;
    v21 = v26;
    [(NSManagedObjectContext *)moc performBlockAndWait:&v14];
    if (*(v27 + 5))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 description];
        v11 = *(v27 + 5);
        *buf = 138412546;
        v33 = v10;
        v34 = 2112;
        v35 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|Asset] Failed to count for fetch request: '%@': %@", buf, 0x16u);
      }

      v12 = -18;
    }

    else
    {
      v12 = 0;
      *a3 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v26, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|Asset] Nil return object for count", v26, 2u);
    }

    v12 = -50;
  }

  return v12;
}

void __60__MADFetchRequest_Asset___fetchManagedAssetCount_predicate___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 countForFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (int)fetchModifiedAssetCountSinceDate:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = MEMORY[0x1E696AE18];
  v6 = +[MADManagedPhotosAsset dateModifiedColumnName];
  v7 = +[MADManagedPhotosAsset dateModifiedColumnName];
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v5 predicateWithFormat:@"%K >= %@ && %K <= %@", v6, v4, v7, v8];

  [(MADFetchRequest *)self _fetchManagedAssetCount:&v11 predicate:v9];
  LODWORD(v6) = v11;

  return v6;
}

- (int)fetchAllMomentsScheduledAssets:(id *)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = +[MADManagedMomentsScheduledAsset fetchRequest];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  moc = self->_moc;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__MADFetchRequest_MomentsScheduledAsset__fetchAllMomentsScheduledAssets___block_invoke;
  v13[3] = &unk_1E834D2D8;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  v16 = &v17;
  v9 = v5;
  v15 = v9;
  [(NSManagedObjectContext *)moc performBlockAndWait:v13];
  if (*(v18 + 6))
  {

    v9 = 0;
  }

  v10 = v9;
  *a3 = v9;
  v11 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __73__MADFetchRequest_MomentsScheduledAsset__fetchAllMomentsScheduledAssets___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v20 = 0;
  v15 = [v3 executeFetchRequest:v2 error:&v20];
  v14 = v20;
  if (v15)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v15;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v5)
    {
      v6 = *v17;
      v7 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 localIdentifier];
          if (v10)
          {
            v11 = [v9 taskID];
            v12 = [*(a1 + 48) objectForKeyedSubscript:v10];
            v13 = v12;
            if (v12)
            {
              [v12 addIndex:v11];
            }

            else
            {
              v13 = [MEMORY[0x1E696AD50] indexSetWithIndex:v11];
              [*(a1 + 48) setObject:? forKeyedSubscript:?];
            }
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, v7, OS_LOG_TYPE_DEFAULT, "Detected bad localIdentifier in MomentsScheduledAsset", buf, 2u);
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v5);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = -19;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to fetch all moments scheduled assets with error %@", buf, 0xCu);
    }
  }
}

- (int)fetchAllMomentsScheduledAssetsForLookup:(id *)a3 totalCount:(unint64_t *)a4
{
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = +[MADManagedMomentsScheduledAsset fetchRequest];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  moc = self->_moc;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MADFetchRequest_MomentsScheduledAsset__fetchAllMomentsScheduledAssetsForLookup_totalCount___block_invoke;
  v15[3] = &unk_1E834D328;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  v18 = &v20;
  v19 = &v24;
  v11 = v7;
  v17 = v11;
  [(NSManagedObjectContext *)moc performBlockAndWait:v15];
  if (*(v21 + 6))
  {

    v11 = 0;
    v25[3] = 0;
  }

  v12 = v11;
  *a3 = v11;
  *a4 = v25[3];
  v13 = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

void __93__MADFetchRequest_MomentsScheduledAsset__fetchAllMomentsScheduledAssetsForLookup_totalCount___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v9 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v9];
  v5 = v9;
  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = -18;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedMomentsScheduledAsset] Failed to fetch moments scheduled assets: %@", buf, 0xCu);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __93__MADFetchRequest_MomentsScheduledAsset__fetchAllMomentsScheduledAssetsForLookup_totalCount___block_invoke_190;
    v6[3] = &unk_1E834D300;
    v8 = *(a1 + 64);
    v7 = *(a1 + 48);
    [v4 enumerateObjectsUsingBlock:v6];
  }
}

void __93__MADFetchRequest_MomentsScheduledAsset__fetchAllMomentsScheduledAssetsForLookup_totalCount___block_invoke_190(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 localIdentifier];
  v4 = [v16 requestDate];
  v5 = +[MADMomentsScheduledAssetsEntry entryWithLocalIdentifier:requestDate:taskID:](MADMomentsScheduledAssetsEntry, "entryWithLocalIdentifier:requestDate:taskID:", v3, v4, [v16 taskID]);

  ++*(*(*(a1 + 40) + 8) + 24);
  v6 = *(a1 + 32);
  v7 = [v16 localIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = *(a1 + 32);
    v11 = [v16 localIdentifier];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  v12 = *(a1 + 32);
  v13 = [v16 localIdentifier];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "taskID")}];
  [v14 setObject:v5 forKeyedSubscript:v15];
}

- (int)fetchMomentsScheduledAssetEntries:(id *)a3 forTaskID:(unint64_t)a4
{
  v7 = +[MADManagedMomentsScheduledAsset fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = +[MADManagedMomentsScheduledAsset taskIDColumnName];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11 = [v8 predicateWithFormat:@"%K == %@", v9, v10];
  [v7 setPredicate:v11];

  v12 = [MEMORY[0x1E695DF70] array];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  moc = self->_moc;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__MADFetchRequest_MomentsScheduledAsset__fetchMomentsScheduledAssetEntries_forTaskID___block_invoke;
  v19[3] = &unk_1E834D350;
  v19[4] = self;
  v14 = v7;
  v20 = v14;
  v22 = &v24;
  v23 = a4;
  v15 = v12;
  v21 = v15;
  [(NSManagedObjectContext *)moc performBlockAndWait:v19];
  if (*(v25 + 6))
  {

    v15 = 0;
  }

  v16 = v15;
  *a3 = v15;
  v17 = *(v25 + 6);

  _Block_object_dispose(&v24, 8);
  return v17;
}

void __86__MADFetchRequest_MomentsScheduledAsset__fetchMomentsScheduledAssetEntries_forTaskID___block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v20 = 0;
  v15 = [v3 executeFetchRequest:v2 error:&v20];
  v14 = v20;
  if (v15)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v15;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = a1[6];
          v10 = [v8 localIdentifier];
          v11 = [v8 requestDate];
          v12 = [MADDeferredProcessingEntry entryWithLocalIdentifier:v10 requestDate:v11];
          [v9 addObject:v12];
        }

        v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v5);
    }
  }

  else
  {
    *(*(a1[7] + 8) + 24) = -19;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = a1[8];
      *buf = 67109378;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to fetch all moments scheduled asset entries for taskID %d with error %@", buf, 0x12u);
    }
  }
}

- (int)fetchAssetCountForTaskID:(unint64_t)a3 totalAssets:(unint64_t *)a4 processedAssets:(unint64_t *)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  result = -50;
  if (a4)
  {
    if (a5)
    {
      v10 = +[MADManagedBackgroundAnalysisProgressHistory fetchRequest];
      v11 = MEMORY[0x1E696AE18];
      v23 = v10;
      v12 = +[MADManagedBackgroundAnalysisProgressHistory activityIDColumnName];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v14 = +[MADManagedBackgroundAnalysisProgressHistory analysisSubtypeColumnName];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      v16 = [v11 predicateWithFormat:@"%K == %@ && %K == %@", v12, v13, v14, v15];
      [v23 setPredicate:v16];

      v17 = MEMORY[0x1E696AEB0];
      v18 = +[MADManagedBackgroundAnalysisProgressHistory storeDateColumnName];
      v19 = [v17 sortDescriptorWithKey:v18 ascending:0];
      v29[0] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [v23 setSortDescriptors:v20];

      [v23 setFetchLimit:1];
      moc = self->_moc;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __107__MADFetchRequest_BackgroundAnalysisProgressHistory__fetchAssetCountForTaskID_totalAssets_processedAssets___block_invoke;
      v24[3] = &unk_1E834D3F8;
      v24[4] = self;
      v22 = v23;
      v25 = v22;
      v26 = a3;
      v27 = a4;
      v28 = a5;
      [(NSManagedObjectContext *)moc performBlockAndWait:v24];

      return 0;
    }
  }

  return result;
}

void __107__MADFetchRequest_BackgroundAnalysisProgressHistory__fetchAssetCountForTaskID_totalAssets_processedAssets___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6 = [v4 firstObject];

  if (v6)
  {
    **(a1 + 56) = [v6 totalAssetCount];
    **(a1 + 64) = [v6 processedAssetCount];
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 67109378;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to find progress history for activityID %d - %@", buf, 0x12u);
  }
}

- (int)fetchProgressHistoryRecords:(id *)a3 sinceDate:(id)a4
{
  v37[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v27 = +[MADManagedBackgroundAnalysisProgressHistory fetchRequest];
    v7 = MEMORY[0x1E696AE18];
    v8 = +[MADManagedBackgroundAnalysisProgressHistory storeDateColumnName];
    v9 = [v7 predicateWithFormat:@"%K >= %@", v8, v6];
    [v27 setPredicate:v9];

    v10 = MEMORY[0x1E696AEB0];
    v11 = +[MADManagedBackgroundAnalysisProgressHistory activityIDColumnName];
    v12 = [v10 sortDescriptorWithKey:v11 ascending:1];
    v37[0] = v12;
    v13 = MEMORY[0x1E696AEB0];
    v14 = +[MADManagedBackgroundAnalysisProgressHistory analysisSubtypeColumnName];
    v15 = [v13 sortDescriptorWithKey:v14 ascending:1];
    v37[1] = v15;
    v16 = MEMORY[0x1E696AEB0];
    v17 = +[MADManagedBackgroundAnalysisProgressHistory storeDateColumnName];
    v18 = [v16 sortDescriptorWithKey:v17 ascending:0];
    v37[2] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
    [v27 setSortDescriptors:v19];

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v20 = [MEMORY[0x1E695DF70] array];
    moc = self->_moc;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92__MADFetchRequest_BackgroundAnalysisProgressHistory__fetchProgressHistoryRecords_sinceDate___block_invoke;
    v28[3] = &unk_1E834D420;
    v28[4] = self;
    v22 = v27;
    v29 = v22;
    v30 = v6;
    v32 = &v33;
    v23 = v20;
    v31 = v23;
    [(NSManagedObjectContext *)moc performBlockAndWait:v28];
    if (*(v34 + 6))
    {

      v23 = 0;
    }

    v24 = v23;
    *a3 = v23;
    v25 = *(v34 + 6);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v25 = -50;
  }

  return v25;
}

void __92__MADFetchRequest_BackgroundAnalysisProgressHistory__fetchProgressHistoryRecords_sinceDate___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v18 = 0;
  v13 = [v3 executeFetchRequest:v2 error:&v18];
  v4 = v18;
  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 48);
      *buf = 138412546;
      v21 = v5;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACDFetch|ProgressHistory] Failed to fetch progress history since %@ - %@", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = -18;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v13;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = objc_alloc_init(MADBackgroundAnalysisProgressRecord);
          -[MADBackgroundAnalysisProgressRecord setActivityID:](v11, "setActivityID:", [v10 activityID]);
          -[MADBackgroundAnalysisProgressRecord setAnalysisSubtype:](v11, "setAnalysisSubtype:", [v10 analysisSubtype]);
          v12 = [v10 storeDate];
          [(MADBackgroundAnalysisProgressRecord *)v11 setStoreDate:v12];

          -[MADBackgroundAnalysisProgressRecord setVersion:](v11, "setVersion:", [v10 version]);
          -[MADBackgroundAnalysisProgressRecord setProcessedAssetCount:](v11, "setProcessedAssetCount:", [v10 processedAssetCount]);
          -[MADBackgroundAnalysisProgressRecord setTotalAssetCount:](v11, "setTotalAssetCount:", [v10 totalAssetCount]);
          [*(a1 + 56) addObject:v11];
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

- (int)loadAllProgressHistoryRecords:(id *)a3 totalCount:(unint64_t *)a4
{
  v7 = +[MADManagedBackgroundAnalysisProgressHistory fetchRequest];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__13;
  v30 = __Block_byref_object_dispose__13;
  v31 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  moc = self->_moc;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__MADFetchRequest_BackgroundAnalysisProgressHistory__loadAllProgressHistoryRecords_totalCount___block_invoke;
  v13[3] = &unk_1E834D470;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v15 = &v18;
  v16 = &v22;
  v17 = &v26;
  [(NSManagedObjectContext *)moc performBlockAndWait:v13];
  if (*(v19 + 6))
  {
    v10 = v27[5];
    v27[5] = 0;

    v23[3] = 0;
  }

  *a3 = v27[5];
  *a4 = v23[3];
  v11 = *(v19 + 6);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

void __95__MADFetchRequest_BackgroundAnalysisProgressHistory__loadAllProgressHistoryRecords_totalCount___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = -18;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedBackgroundAnalysisProgressHistory] Failed to fetch background analysis progress history: %@", buf, 0xCu);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __95__MADFetchRequest_BackgroundAnalysisProgressHistory__loadAllProgressHistoryRecords_totalCount___block_invoke_201;
    v6[3] = &unk_1E834D448;
    v7 = *(a1 + 56);
    [v4 enumerateObjectsUsingBlock:v6];
  }
}

void __95__MADFetchRequest_BackgroundAnalysisProgressHistory__loadAllProgressHistoryRecords_totalCount___block_invoke_201(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_alloc_init(MADBackgroundAnalysisProgressRecord);
  -[MADBackgroundAnalysisProgressRecord setActivityID:](v3, "setActivityID:", [v7 activityID]);
  -[MADBackgroundAnalysisProgressRecord setAnalysisSubtype:](v3, "setAnalysisSubtype:", [v7 analysisSubtype]);
  v4 = [v7 storeDate];
  [(MADBackgroundAnalysisProgressRecord *)v3 setStoreDate:v4];

  -[MADBackgroundAnalysisProgressRecord setVersion:](v3, "setVersion:", [v7 version]);
  -[MADBackgroundAnalysisProgressRecord setProcessedAssetCount:](v3, "setProcessedAssetCount:", [v7 processedAssetCount]);
  -[MADBackgroundAnalysisProgressRecord setTotalAssetCount:](v3, "setTotalAssetCount:", [v7 totalAssetCount]);
  ++*(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [v7 storeDate];
  [v5 setObject:v3 forKeyedSubscript:v6];
}

- (BOOL)keyExistsInKeyValueStore:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26;
  moc = self->_moc;
  v16 = __Block_byref_object_dispose__26;
  v17 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__MADFetchRequest_KeyValueStore__keyExistsInKeyValueStore___block_invoke;
  v8[3] = &unk_1E834D210;
  v10 = self;
  v11 = &v12;
  v9 = v4;
  v6 = v4;
  [(NSManagedObjectContext *)moc performBlockAndWait:v8];
  LOBYTE(moc) = v13[5] != 0;

  _Block_object_dispose(&v12, 8);
  return moc;
}

void __59__MADFetchRequest_KeyValueStore__keyExistsInKeyValueStore___block_invoke(void *a1)
{
  v2 = [MADManagedKeyValueStore fetchKeyValueStoreByKey:a1[4] managedObjectContext:*(a1[5] + 8)];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)dataStoreValueForKey:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  moc = self->_moc;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MADFetchRequest_KeyValueStore__dataStoreValueForKey___block_invoke;
  v9[3] = &unk_1E834CE28;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  [(NSManagedObjectContext *)moc performBlockAndWait:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __55__MADFetchRequest_KeyValueStore__dataStoreValueForKey___block_invoke(void *a1)
{
  v2 = [MADManagedKeyValueStore fetchKeyValueStoreByKey:a1[4] managedObjectContext:*(a1[5] + 8)];
  *(*(a1[6] + 8) + 24) = [v2 value];
}

- (id)fetchDataStoreValueIfKeyExists:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__26;
  moc = self->_moc;
  v17 = __Block_byref_object_dispose__26;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__MADFetchRequest_KeyValueStore__fetchDataStoreValueIfKeyExists___block_invoke;
  v9[3] = &unk_1E834CE28;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  [(NSManagedObjectContext *)moc performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __65__MADFetchRequest_KeyValueStore__fetchDataStoreValueIfKeyExists___block_invoke(void *a1)
{
  v2 = [MADManagedKeyValueStore fetchKeyValueStoreByKey:a1[4] managedObjectContext:*(a1[5] + 8)];
  if (v2)
  {
    v6 = v2;
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "value")}];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (int)fetchAllDataStoreKeyValuePairs:(id *)a3
{
  v5 = +[MADManagedKeyValueStore fetchRequest];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  moc = self->_moc;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__MADFetchRequest_KeyValueStore__fetchAllDataStoreKeyValuePairs___block_invoke;
  v13[3] = &unk_1E834D2D8;
  v13[4] = self;
  v8 = v5;
  v14 = v8;
  v16 = &v17;
  v9 = v6;
  v15 = v9;
  [(NSManagedObjectContext *)moc performBlockAndWait:v13];
  v10 = *(v18 + 6);
  if (!v10)
  {
    v11 = v9;
    *a3 = v9;
    v10 = *(v18 + 6);
  }

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __65__MADFetchRequest_KeyValueStore__fetchAllDataStoreKeyValuePairs___block_invoke(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v22 = 0;
  v17 = [v3 executeFetchRequest:v2 error:&v22];
  v16 = v22;
  if (v16)
  {
    *(*(a1[7] + 8) + 24) = -18;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedKeyValueStore] Failed to fetch key value store: %@", buf, 0xCu);
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v17;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = [v8 key];
          v10 = v9 == 0;

          if (v10)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v14 = [v8 key];
              v15 = [v8 value];
              *buf = 138412546;
              v24 = v14;
              v25 = 2048;
              v26 = v15;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedKeyValueStore] Invalid record: {key=%@, value=%lld}", buf, 0x16u);
            }
          }

          else
          {
            v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "value")}];
            v12 = a1[6];
            v13 = [v8 key];
            [v12 setObject:v11 forKeyedSubscript:v13];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v5);
    }
  }
}

- (int)_fetchManagedProcessingStatusCount:(unint64_t *)a3 predicate:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v7 = +[MADManagedProcessingStatus fetchRequest];
    [v7 setPredicate:v6];
    *v26 = 0;
    v27 = v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__36;
    v30 = __Block_byref_object_dispose__36;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    moc = self->_moc;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __82__MADFetchRequest_ProcessingStatus___fetchManagedProcessingStatusCount_predicate___block_invoke;
    v17 = &unk_1E834D070;
    v20 = &v22;
    v18 = self;
    v9 = v7;
    v19 = v9;
    v21 = v26;
    [(NSManagedObjectContext *)moc performBlockAndWait:&v14];
    if (*(v27 + 5))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 description];
        v11 = *(v27 + 5);
        *buf = 138412546;
        v33 = v10;
        v34 = 2112;
        v35 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProcessingStatus] Failed to count for fetch request: '%@': %@", buf, 0x16u);
      }

      v12 = -18;
    }

    else
    {
      v12 = 0;
      *a3 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v26, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProcessingStatus] Nil return object for count", v26, 2u);
    }

    v12 = -50;
  }

  return v12;
}

void __82__MADFetchRequest_ProcessingStatus___fetchManagedProcessingStatusCount_predicate___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 countForFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (id)_fetchPredicateForTaskID:(id)a3 matchingProcessingStatus:(id)a4 includingProcessingStatuses:(id)a5 excludingProcessingStatuses:(id)a6 matchingAttempts:(id)a7 fromNextAttemptDate:(id)a8 toNextAttemptDate:(id)a9 localIdentifiers:(id)a10 additionalPredicates:(id)a11
{
  v16 = a3;
  v47 = a4;
  *(&v48 + 1) = a5;
  *&v48 = a6;
  v49 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = [MEMORY[0x1E695DF70] array];
  if (v16)
  {
    v22 = MEMORY[0x1E696AE18];
    v23 = +[MADManagedProcessingStatus taskIDColumnName];
    v24 = [v22 predicateWithFormat:@"%K == %@", v23, v16];

    [v21 addObject:v24];
  }

  if (v47)
  {
    if (v48 != 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
    }

    v25 = MEMORY[0x1E696AE18];
    v26 = +[MADManagedProcessingStatus statusColumnName];
    v27 = [v25 predicateWithFormat:@"%K == %@", v26, v47];

    [v21 addObject:v27];
  }

  else if (*(&v48 + 1))
  {
    if (v48 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
    }

    v28 = MEMORY[0x1E696AE18];
    v29 = +[MADManagedProcessingStatus statusColumnName];
    v27 = [v28 predicateWithFormat:@"%K IN %@", v29, *(&v48 + 1)];

    [v21 addObject:v27];
  }

  else
  {
    if (!v48)
    {
      goto LABEL_18;
    }

    v30 = MEMORY[0x1E696AE18];
    v31 = +[MADManagedProcessingStatus statusColumnName];
    v27 = [v30 predicateWithFormat:@"NOT (%K IN %@)", v31, v48];

    [v21 addObject:v27];
  }

LABEL_18:
  if (v49)
  {
    v32 = MEMORY[0x1E696AE18];
    v33 = +[MADManagedProcessingStatus attemptCountColumnName];
    v34 = [v32 predicateWithFormat:@"%K == %@", v33, v49];

    [v21 addObject:v34];
  }

  if (v17)
  {
    v35 = MEMORY[0x1E696AE18];
    v36 = +[MADManagedProcessingStatus nextAttemptDateColumnName];
    v37 = [v35 predicateWithFormat:@"%K >= %@", v36, v17];

    [v21 addObject:v37];
  }

  if (v18)
  {
    v38 = MEMORY[0x1E696AE18];
    v39 = +[MADManagedProcessingStatus nextAttemptDateColumnName];
    v40 = [v38 predicateWithFormat:@"%K < %@", v39, v18];

    [v21 addObject:v40];
  }

  if (v19)
  {
    v41 = MEMORY[0x1E696AE18];
    v42 = +[MADManagedProcessingStatus localIdentifierColumnName];
    v43 = [v41 predicateWithFormat:@"%K IN %@", v42, v19];

    [v21 addObject:v43];
  }

  if (v20)
  {
    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:v20];
    [v21 addObject:v44];
  }

  v45 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v21];

  return v45;
}

- (int)_fetchLocalIdentifiers:(id *)a3 eligibleToRetry:(id)a4 matchingProcessingStatus:(id)a5 includingProcessingStatuses:(id)a6 excludingProcessingStatuses:(id)a7 taskID:(id)a8 matchingAttempts:(id)a9 fetchLimit:(id)a10 additionalPredicates:(id)a11
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v39 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  if (a3)
  {
    v37 = v18;
    v38 = v17;
    v35 = v20;
    v36 = v19;
    v24 = [MEMORY[0x1E695DF00] now];
    v34 = [(MADFetchRequest *)self _fetchPredicateForTaskID:v39 matchingProcessingStatus:v18 includingProcessingStatuses:v19 excludingProcessingStatuses:v20 matchingAttempts:v21 fromNextAttemptDate:0 toNextAttemptDate:v24 localIdentifiers:0 additionalPredicates:v23];

    v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
    v26 = [MEMORY[0x1E695DF70] array];
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    *buf = 0;
    v49 = buf;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__36;
    v52 = __Block_byref_object_dispose__36;
    v53 = 0;
    moc = self->_moc;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __213__MADFetchRequest_ProcessingStatus___fetchLocalIdentifiers_eligibleToRetry_matchingProcessingStatus_includingProcessingStatuses_excludingProcessingStatuses_taskID_matchingAttempts_fetchLimit_additionalPredicates___block_invoke;
    v40[3] = &unk_1E834FCB0;
    v46 = &v54;
    v47 = buf;
    v28 = v34;
    v41 = v28;
    v42 = v22;
    v29 = v25;
    v43 = v29;
    v44 = self;
    v30 = v26;
    v45 = v30;
    [(NSManagedObjectContext *)moc performBlockAndWait:v40];
    v18 = v37;
    v17 = v38;
    if (*(v55 + 6))
    {

      v30 = 0;
    }

    v31 = v30;
    *a3 = v30;
    v32 = *(v55 + 6);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v54, 8);

    v20 = v35;
    v19 = v36;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProcessingStatus] Nil return object for localIdentifiers", buf, 2u);
    }

    v32 = -50;
  }

  return v32;
}

void __213__MADFetchRequest_ProcessingStatus___fetchLocalIdentifiers_eligibleToRetry_matchingProcessingStatus_includingProcessingStatuses_excludingProcessingStatuses_taskID_matchingAttempts_fetchLimit_additionalPredicates___block_invoke(void *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1[10] + 8);
  obj = *(v2 + 40);
  v3 = a1[4];
  v4 = a1[5];
  v19[0] = a1[6];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v6 = [MADManagedProcessingStatus fetchManagedProcessingStatusBatch:&obj predicate:v3 fetchLimit:v4 sortDescriptors:v5 managedObjectContext:*(a1[7] + 8)];
  objc_storeStrong((v2 + 40), obj);
  *(*(a1[9] + 8) + 24) = v6;

  if (!*(*(a1[9] + 8) + 24))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = *(*(a1[10] + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = a1[8];
          v12 = [*(*(&v13 + 1) + 8 * v10) localIdentifier];
          [v11 addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (int)fetchAssetCountWithPredicate:(id)a3
{
  v4 = 0;
  [(MADFetchRequest *)self _fetchManagedProcessingStatusCount:&v4 predicate:a3];
  return v4;
}

- (int)fetchAssetCountForTaskID:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AE18];
  v6 = +[MADManagedProcessingStatus taskIDColumnName];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v5 predicateWithFormat:@"%K == %@", v6, v7];
  LODWORD(self) = [(MADFetchRequest *)self fetchAssetCountWithPredicate:v8];

  return self;
}

- (int)fetchAssetCountForTaskID:(unint64_t)a3 minimumAttempts:(unint64_t)a4
{
  v7 = MEMORY[0x1E696AE18];
  v8 = +[MADManagedProcessingStatus taskIDColumnName];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = +[MADManagedProcessingStatus attemptCountColumnName];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v12 = [v7 predicateWithFormat:@"%K == %@ && %K >= %@", v8, v9, v10, v11];

  LODWORD(v8) = [(MADFetchRequest *)self fetchAssetCountWithPredicate:v12];
  return v8;
}

- (int)fetchAssetCountForTaskID:(unint64_t)a3 status:(unint64_t)a4
{
  v7 = MEMORY[0x1E696AE18];
  v8 = +[MADManagedProcessingStatus taskIDColumnName];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = +[MADManagedProcessingStatus statusColumnName];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v12 = [v7 predicateWithFormat:@"%K == %@ && %K == %@", v8, v9, v10, v11];

  LODWORD(v8) = [(MADFetchRequest *)self fetchAssetCountWithPredicate:v12];
  return v8;
}

- (int)fetchAssetCountFromLocalIdentifiers:(id)a3 taskID:(unint64_t)a4 excludingStatuses:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11 = [(MADFetchRequest *)self _fetchPredicateForTaskID:v10 matchingProcessingStatus:0 includingProcessingStatuses:0 excludingProcessingStatuses:v9 matchingAttempts:0 fromNextAttemptDate:0 toNextAttemptDate:0 localIdentifiers:v8 additionalPredicates:0];
  LODWORD(self) = [(MADFetchRequest *)self fetchAssetCountWithPredicate:v11];

  return self;
}

- (int)fetchAssetCountForTaskID:(unint64_t)a3 status:(unint64_t)a4 attempts:(int)a5
{
  v5 = *&a5;
  v9 = MEMORY[0x1E696AE18];
  v10 = +[MADManagedProcessingStatus taskIDColumnName];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v12 = +[MADManagedProcessingStatus statusColumnName];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v14 = +[MADManagedProcessingStatus attemptCountColumnName];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v16 = [v9 predicateWithFormat:@"%K == %@ && %K == %@ && %K == %@", v10, v11, v12, v13, v14, v15];

  LODWORD(v10) = [(MADFetchRequest *)self fetchAssetCountWithPredicate:v16];
  return v10;
}

- (int)fetchProcessingStatus:(unint64_t *)a3 attempts:(int *)a4 lastAttemptDate:(id *)a5 nextAttemptDate:(id *)a6 localIdentifier:(id)a7 taskID:(unint64_t)a8
{
  v13 = a7;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__36;
  v38 = __Block_byref_object_dispose__36;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__36;
  v32 = __Block_byref_object_dispose__36;
  v33 = 0;
  moc = self->_moc;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __123__MADFetchRequest_ProcessingStatus__fetchProcessingStatus_attempts_lastAttemptDate_nextAttemptDate_localIdentifier_taskID___block_invoke;
  v19[3] = &unk_1E834FCD8;
  v22 = &v48;
  v27 = a8;
  v15 = v13;
  v20 = v15;
  v21 = self;
  v23 = &v44;
  v24 = &v40;
  v25 = &v34;
  v26 = &v28;
  [(NSManagedObjectContext *)moc performBlockAndWait:v19];
  if (!*(v49 + 6))
  {
    if (a3)
    {
      *a3 = v45[3];
    }

    if (a4)
    {
      *a4 = *(v41 + 6);
    }

    if (a5)
    {
      *a5 = v35[5];
    }

    if (a6)
    {
      *a6 = v29[5];
    }
  }

  v16 = *(v49 + 6);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v16;
}

void __123__MADFetchRequest_ProcessingStatus__fetchProcessingStatus_attempts_lastAttemptDate_nextAttemptDate_localIdentifier_taskID___block_invoke(void *a1)
{
  v11 = 0;
  v2 = [MADManagedProcessingStatus fetchManagedProcessingStatus:&v11 taskID:a1[11] localIdentifier:a1[4] managedObjectContext:*(a1[5] + 8)];
  v3 = v11;
  v4 = v3;
  *(*(a1[6] + 8) + 24) = v2;
  if (!*(*(a1[6] + 8) + 24))
  {
    *(*(a1[7] + 8) + 24) = [v3 status];
    *(*(a1[8] + 8) + 24) = [v4 attemptCount];
    v5 = [v4 lastAttemptDate];
    v6 = *(a1[9] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 nextAttemptDate];
    v9 = *(a1[10] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (unint64_t)fetchEligibleToRetryAssetCountWithTaskID:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AE18];
  v6 = +[MADManagedProcessingStatus taskIDColumnName];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = +[MADManagedProcessingStatus nextAttemptDateColumnName];
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = [v5 predicateWithFormat:@"%K == %@ && %K < %@", v6, v7, v8, v9];

  v11 = [(MADFetchRequest *)self fetchAssetCountWithPredicate:v10];
  return v11;
}

- (unint64_t)fetchEligibleToRetryAssetCountWithProcessingStatus:(unint64_t)a3 taskID:(unint64_t)a4
{
  v7 = MEMORY[0x1E696AE18];
  v8 = +[MADManagedProcessingStatus taskIDColumnName];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v10 = +[MADManagedProcessingStatus statusColumnName];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v12 = +[MADManagedProcessingStatus nextAttemptDateColumnName];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [v7 predicateWithFormat:@"%K == %@ && %K == %@ && %K < %@", v8, v9, v10, v11, v12, v13];

  v15 = [(MADFetchRequest *)self fetchAssetCountWithPredicate:v14];
  return v15;
}

- (id)fetchFailedProcessingStatusFromAssets:(id)a3 taskID:(unint64_t)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v30 + 1) + 8 * i) localIdentifier];
          [v7 addObject:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    if ([v7 count])
    {
      v13 = MEMORY[0x1E696AE18];
      v14 = +[MADManagedProcessingStatus localIdentifierColumnName];
      v15 = +[MADManagedProcessingStatus statusColumnName];
      v16 = +[MADManagedProcessingStatus taskIDColumnName];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      v18 = [v13 predicateWithFormat:@"%K IN %@ && NOT (%K IN %@) && %K == %@", v14, v7, v15, &unk_1F49BEC68, v16, v17];

      v19 = [MEMORY[0x1E695DF90] dictionary];
      moc = self->_moc;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __82__MADFetchRequest_ProcessingStatus__fetchFailedProcessingStatusFromAssets_taskID___block_invoke;
      v26[3] = &unk_1E834D020;
      v21 = v18;
      v27 = v21;
      v28 = self;
      v22 = v19;
      v29 = v22;
      [(NSManagedObjectContext *)moc performBlockAndWait:v26];
      v23 = v29;
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __82__MADFetchRequest_ProcessingStatus__fetchFailedProcessingStatusFromAssets_taskID___block_invoke(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  [MADManagedProcessingStatus fetchManagedProcessingStatusBatch:&v21 predicate:a1[4] fetchLimit:0 sortDescriptors:0 managedObjectContext:*(a1[5] + 8)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21;
  v1 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v1)
  {
    v14 = *v18;
    do
    {
      v16 = v1;
      for (i = 0; i != v16; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v17 + 1) + 8 * i);
        v4 = [v3 localIdentifier];
        v5 = [v3 taskID];
        v6 = [v3 status];
        v7 = [v3 attemptCount];
        v8 = [v3 lastAttemptDate];
        v9 = [v3 nextAttemptDate];
        v10 = +[VCPProcessingStatusEntry entryWithLocalIdentifier:taskID:status:attempts:lastAttemptDate:andNextAttemptDate:errorCode:errorLine:](VCPProcessingStatusEntry, "entryWithLocalIdentifier:taskID:status:attempts:lastAttemptDate:andNextAttemptDate:errorCode:errorLine:", v4, v5, v6, v7, v8, v9, [v3 errorCode], objc_msgSend(v3, "errorLine"));
        v11 = a1[6];
        v12 = [v3 localIdentifier];
        [v11 setObject:v10 forKeyedSubscript:v12];
      }

      v1 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v1);
  }
}

- (int)loadAllProcessingStatus:(id *)a3 totalCount:(unint64_t *)a4
{
  v7 = +[MADManagedProcessingStatus fetchRequest];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__36;
  v30 = __Block_byref_object_dispose__36;
  v31 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  moc = self->_moc;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__MADFetchRequest_ProcessingStatus__loadAllProcessingStatus_totalCount___block_invoke;
  v13[3] = &unk_1E834D470;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v15 = &v18;
  v16 = &v22;
  v17 = &v26;
  [(NSManagedObjectContext *)moc performBlockAndWait:v13];
  if (*(v19 + 6))
  {
    v10 = v27[5];
    v27[5] = 0;

    v23[3] = 0;
  }

  *a3 = v27[5];
  *a4 = v23[3];
  v11 = *(v19 + 6);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

void __72__MADFetchRequest_ProcessingStatus__loadAllProcessingStatus_totalCount___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = -18;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedProcessingStatus] Failed to fetch processing status: %@", buf, 0xCu);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__MADFetchRequest_ProcessingStatus__loadAllProcessingStatus_totalCount___block_invoke_236;
    v6[3] = &unk_1E834FD00;
    v7 = *(a1 + 56);
    [v4 enumerateObjectsUsingBlock:v6];
  }
}

void __72__MADFetchRequest_ProcessingStatus__loadAllProcessingStatus_totalCount___block_invoke_236(uint64_t a1, void *a2)
{
  v20 = a2;
  v19 = [v20 localIdentifier];
  v3 = [v20 taskID];
  v4 = [v20 status];
  v5 = [v20 attemptCount];
  v6 = [v20 lastAttemptDate];
  v7 = [v20 nextAttemptDate];
  v8 = +[VCPProcessingStatusEntry entryWithLocalIdentifier:taskID:status:attempts:lastAttemptDate:andNextAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](VCPProcessingStatusEntry, "entryWithLocalIdentifier:taskID:status:attempts:lastAttemptDate:andNextAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", v19, v3, v4, v5, v6, v7, [v20 mediaType], objc_msgSend(v20, "mediaSubtypes"), objc_msgSend(v20, "errorCode"), objc_msgSend(v20, "errorLine"));

  ++*(*(*(a1 + 32) + 8) + 24);
  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [v20 localIdentifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = [v20 localIdentifier];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = *(*(*(a1 + 40) + 8) + 40);
  v16 = [v20 localIdentifier];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v20, "taskID")}];
  [v17 setObject:v8 forKeyedSubscript:v18];
}

- (int)fetchEligibleToRetryLocalIdentifiers:(id *)a3 processingStatus:(unint64_t)a4 taskID:(unint64_t)a5 fetchLimit:(unint64_t)a6 additionalPredicates:(id)a7
{
  v12 = a7;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:MEMORY[0x1E695E118] matchingProcessingStatus:v13 includingProcessingStatuses:0 excludingProcessingStatuses:0 taskID:v14 matchingAttempts:0 fetchLimit:v15 additionalPredicates:v12];

  return a3;
}

- (int)fetchEligibleToRetryLocalIdentifiers:(id *)a3 processingStatus:(unint64_t)a4 taskID:(unint64_t)a5 fetchLimit:(unint64_t)a6
{
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:MEMORY[0x1E695E118] matchingProcessingStatus:v10 includingProcessingStatuses:0 excludingProcessingStatuses:0 taskID:v11 matchingAttempts:0 fetchLimit:v12 additionalPredicates:0];

  return a3;
}

- (int)fetchLocalIdentifiersEligibleForRetry:(id *)a3 taskID:(unint64_t)a4 fetchLimit:(unint64_t)a5
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:MEMORY[0x1E695E118] matchingProcessingStatus:0 includingProcessingStatuses:0 excludingProcessingStatuses:0 taskID:v8 matchingAttempts:0 fetchLimit:v9 additionalPredicates:0];

  return a3;
}

- (int)fetchLocalIdentifiersEligibleForRetry:(id *)a3 taskID:(unint64_t)a4 includingStatuses:(id)a5 fetchLimit:(unint64_t)a6 additionalPredicates:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:MEMORY[0x1E695E118] matchingProcessingStatus:0 includingProcessingStatuses:v12 excludingProcessingStatuses:0 taskID:v14 matchingAttempts:0 fetchLimit:v15 additionalPredicates:v13];

  return a3;
}

- (int)fetchLocalIdentifiersEligibleForRetry:(id *)a3 taskID:(unint64_t)a4 excludingStatuses:(id)a5 fetchLimit:(unint64_t)a6 additionalPredicates:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:MEMORY[0x1E695E118] matchingProcessingStatus:0 includingProcessingStatuses:0 excludingProcessingStatuses:v12 taskID:v14 matchingAttempts:0 fetchLimit:v15 additionalPredicates:v13];

  return a3;
}

- (int)fetchLocalIdentifiers:(id *)a3 processingStatus:(unint64_t)a4 taskID:(unint64_t)a5 attempts:(int)a6 fetchLimit:(unint64_t)a7 additionalPredicates:(id)a8
{
  v9 = *&a6;
  v14 = a8;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:0 matchingProcessingStatus:v15 includingProcessingStatuses:0 excludingProcessingStatuses:0 taskID:v16 matchingAttempts:v17 fetchLimit:v18 additionalPredicates:v14];

  return a3;
}

- (int)fetchLocalIdentifiers:(id *)a3 processingStatus:(unint64_t)a4 taskID:(unint64_t)a5 attempts:(int)a6 fetchLimit:(unint64_t)a7
{
  v8 = *&a6;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:0 matchingProcessingStatus:v12 includingProcessingStatuses:0 excludingProcessingStatuses:0 taskID:v13 matchingAttempts:v14 fetchLimit:v15 additionalPredicates:0];

  return a3;
}

- (int)fetchLocalIdentifiers:(id *)a3 taskID:(unint64_t)a4 processingStatus:(unint64_t)a5 additionalPredicates:(id)a6
{
  v10 = a6;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:0 matchingProcessingStatus:v11 includingProcessingStatuses:0 excludingProcessingStatuses:0 taskID:v12 matchingAttempts:0 fetchLimit:0 additionalPredicates:v10];

  return a3;
}

- (int)fetchLocalIdentifiers:(id *)a3 taskID:(unint64_t)a4 processingStatus:(unint64_t)a5
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  LODWORD(a3) = [(MADFetchRequest *)self _fetchLocalIdentifiers:a3 eligibleToRetry:0 matchingProcessingStatus:v8 includingProcessingStatuses:0 excludingProcessingStatuses:0 taskID:v9 matchingAttempts:0 fetchLimit:0 additionalPredicates:0];

  return a3;
}

- (int)fetchProcessingErrorCode:(unint64_t *)a3 errorLine:(unint64_t *)a4 taskID:(unint64_t)a5 localIdentifier:(id)a6
{
  v10 = a6;
  v11 = v10;
  if (a3 | a4)
  {
    *buf = 0;
    v31 = buf;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    moc = self->_moc;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__MADFetchRequest_ProcessingStatus__fetchProcessingErrorCode_errorLine_taskID_localIdentifier___block_invoke;
    v15[3] = &unk_1E834FD28;
    v18 = buf;
    v21 = a5;
    v16 = v10;
    v17 = self;
    v19 = &v26;
    v20 = &v22;
    [(NSManagedObjectContext *)moc performBlockAndWait:v15];
    v13 = *(v31 + 6);
    if (!v13)
    {
      if (a3)
      {
        *a3 = v27[3];
      }

      if (a4)
      {
        *a4 = v23[3];
      }
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProcessingStatus] Nil return object for errorCode and errorLine", buf, 2u);
    }

    v13 = -50;
  }

  return v13;
}

void __95__MADFetchRequest_ProcessingStatus__fetchProcessingErrorCode_errorLine_taskID_localIdentifier___block_invoke(void *a1)
{
  v5 = 0;
  v2 = [MADManagedProcessingStatus fetchManagedProcessingStatus:&v5 taskID:a1[9] localIdentifier:a1[4] managedObjectContext:*(a1[5] + 8)];
  v3 = v5;
  v4 = v3;
  *(*(a1[6] + 8) + 24) = v2;
  if (!*(*(a1[6] + 8) + 24))
  {
    *(*(a1[7] + 8) + 24) = [v3 errorCode];
    *(*(a1[8] + 8) + 24) = [v4 errorLine];
  }
}

- (int)fetchProcessingErrorCodeCounts:(id *)a3 taskID:(unint64_t)a4 sinceDate:(id)a5 additionalPredicates:(id)a6
{
  v42[1] = *MEMORY[0x1E69E9840];
  v30 = a5;
  v31 = a6;
  if (a3)
  {
    v10 = +[MADManagedProcessingStatus fetchRequest];
    v11 = MEMORY[0x1E696ABC8];
    v12 = +[MADManagedProcessingStatus errorCodeColumnName];
    v13 = [v11 expressionForKeyPath:v12];
    v42[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v15 = [v11 expressionForFunction:@"count:" arguments:v14];

    v16 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v16 setName:@"count"];
    [v16 setExpression:v15];
    [v16 setExpressionResultType:200];
    [v10 setResultType:2];
    v17 = +[MADManagedProcessingStatus errorCodeColumnName];
    v41 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v10 setPropertiesToGroupBy:v18];

    v19 = +[MADManagedProcessingStatus errorCodeColumnName];
    v40[0] = v19;
    v40[1] = v16;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    [v10 setPropertiesToFetch:v20];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v22 = [(MADFetchRequest *)self _fetchPredicateForTaskID:v21 matchingProcessingStatus:0 includingProcessingStatuses:0 excludingProcessingStatuses:0 matchingAttempts:0 fromNextAttemptDate:v30 toNextAttemptDate:0 localIdentifiers:0 additionalPredicates:v31];
    [v10 setPredicate:v22];

    v23 = [MEMORY[0x1E695DF90] dictionary];
    *buf = 0;
    v37 = buf;
    v38 = 0x2020000000;
    v39 = 0;
    moc = self->_moc;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __106__MADFetchRequest_ProcessingStatus__fetchProcessingErrorCodeCounts_taskID_sinceDate_additionalPredicates___block_invoke;
    v32[3] = &unk_1E834D2D8;
    v32[4] = self;
    v25 = v10;
    v33 = v25;
    v35 = buf;
    v26 = v23;
    v34 = v26;
    [(NSManagedObjectContext *)moc performBlockAndWait:v32];
    v27 = *(v37 + 6);
    if (!v27)
    {
      v28 = v26;
      *a3 = v26;
      v27 = *(v37 + 6);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProcessingStatus] Nil return object for errorCodeCounts", buf, 2u);
    }

    v27 = -50;
  }

  return v27;
}

void __106__MADFetchRequest_ProcessingStatus__fetchProcessingErrorCodeCounts_taskID_sinceDate_additionalPredicates___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v21 = 0;
  v15 = [v2 executeFetchRequest:v1 error:&v21];
  v14 = v21;
  if (v14)
  {
    *(*(*(a1 + 56) + 8) + 24) = -18;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 40) debugDescription];
      *buf = 138412546;
      v24 = v3;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD|ProcessingStatus] Failed to fetch and group by error code (%@): %@", buf, 0x16u);
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v15;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = +[MADManagedProcessingStatus errorCodeColumnName];
          v10 = [v8 objectForKeyedSubscript:v9];

          v11 = [v8 objectForKeyedSubscript:@"count"];
          v12 = v11;
          if (v10)
          {
            v13 = v11 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            if ([v10 longLongValue] < 0xA0)
            {
              [*(a1 + 48) setObject:v12 forKeyedSubscript:v10];
            }

            else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v24 = v10;
              v25 = 2112;
              v26 = v12;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MACD|ProcessingStatus] Detected bad errorCode %@ in ProcessingStatus with count %@", buf, 0x16u);
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

- (int)fetchChangeToken:(id *)a3 taskID:(unint64_t)a4 changeTokenType:(unint64_t)a5
{
  if (a3)
  {
    *a3 = 0;
    v9 = +[MADManagedChangeToken fetchRequest];
    v10 = MEMORY[0x1E696AE18];
    v11 = +[MADManagedChangeToken tokenIDColumnName];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v13 = +[MADManagedChangeToken tokenTypeColumnName];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v15 = [v10 predicateWithFormat:@"(%K == %@) AND (%K == %@)", v11, v12, v13, v14];
    [v9 setPredicate:v15];

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__48;
    v30 = __Block_byref_object_dispose__48;
    v31 = 0;
    moc = self->_moc;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__MADFetchRequest_ChangeToken__fetchChangeToken_taskID_changeTokenType___block_invoke;
    v20[3] = &unk_1E8350450;
    v20[4] = self;
    v17 = v9;
    v24 = a4;
    v25 = a5;
    v21 = v17;
    v22 = &v32;
    v23 = buf;
    [(NSManagedObjectContext *)moc performBlockAndWait:v20];
    *a3 = *(v27 + 5);
    v18 = *(v33 + 6);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Nil return object for changeToken", buf, 2u);
    }

    return -50;
  }

  return v18;
}

void __72__MADFetchRequest_ChangeToken__fetchChangeToken_taskID_changeTokenType___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v28 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v28];
  v5 = v28;
  v6 = [v4 firstObject];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [v6 date];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;
    [objc_opt_class() _ageOutIntervalForChangeTokenType:*(a1 + 72)];
    v12 = v10 > v11;

    if (v12)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "Age-out interval reached; discarding change token data...";
LABEL_19:
        _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      }
    }

    else
    {
      v17 = [v6 version];
      if (v17 == VCPVersionForTask(*(a1 + 64)))
      {
        v18 = objc_opt_class();
        v19 = MEMORY[0x1E696ACD0];
        v20 = [v6 tokenData];
        v27 = 0;
        v21 = [v19 unarchivedObjectOfClass:v18 fromData:v20 error:&v27];
        v22 = v27;
        v23 = *(*(a1 + 56) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v21;

        if (!*(*(*(a1 + 56) + 8) + 40) && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v25 = VCPTaskIDDescription(*(a1 + 64));
          v26 = *(a1 + 72);
          *buf = 138412802;
          v30 = v25;
          v31 = 1024;
          v32 = v26;
          v33 = 2112;
          v34 = v22;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "TaskID:%@ (%d) queryChangeToken error - %@", buf, 0x1Cu);
        }
      }

      else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "Analysis version updated; discarding change token data...";
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = VCPTaskIDDescription(*(a1 + 64));
      v16 = *(a1 + 72);
      *buf = 138412802;
      v30 = v15;
      v31 = 1024;
      v32 = v16;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to query changeToken for taskID %@ and changeTokenType %d with error %@", buf, 0x1Cu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (int)loadAllChangeToken:(id *)a3 totalCount:(unint64_t *)a4
{
  v7 = +[MADManagedChangeToken fetchRequest];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__48;
  v30 = __Block_byref_object_dispose__48;
  v31 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  moc = self->_moc;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__MADFetchRequest_ChangeToken__loadAllChangeToken_totalCount___block_invoke;
  v13[3] = &unk_1E834D470;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v15 = &v18;
  v16 = &v22;
  v17 = &v26;
  [(NSManagedObjectContext *)moc performBlockAndWait:v13];
  if (*(v19 + 6))
  {
    v10 = v27[5];
    v27[5] = 0;

    v23[3] = 0;
  }

  *a3 = v27[5];
  *a4 = v23[3];
  v11 = *(v19 + 6);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

void __62__MADFetchRequest_ChangeToken__loadAllChangeToken_totalCount___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = -18;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADManagedChangeToken] Failed to fetch change tokens: %@", buf, 0xCu);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__MADFetchRequest_ChangeToken__loadAllChangeToken_totalCount___block_invoke_348;
    v6[3] = &unk_1E8350478;
    v7 = *(a1 + 56);
    [v4 enumerateObjectsUsingBlock:v6];
  }
}

void __62__MADFetchRequest_ChangeToken__loadAllChangeToken_totalCount___block_invoke_348(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 tokenID];
  v4 = [v18 tokenType];
  v5 = [v18 tokenData];
  v6 = [v18 date];
  v7 = +[MADChangeTokenEntry entryWithTokenID:tokenType:tokenData:date:version:](MADChangeTokenEntry, "entryWithTokenID:tokenType:tokenData:date:version:", v3, v4, v5, v6, [v18 version]);

  ++*(*(*(a1 + 32) + 8) + 24);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v18, "tokenID")}];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v18, "tokenID")}];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }

  v14 = *(*(*(a1 + 40) + 8) + 40);
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v18, "tokenID")}];
  v16 = [v14 objectForKeyedSubscript:v15];
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v18, "tokenType")}];
  [v16 setObject:v7 forKeyedSubscript:v17];
}

- (MADFetchRequest)initWithManagedObjectContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADFetchRequest;
  v6 = [(MADFetchRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_moc, a3);
  }

  return v7;
}

+ (id)fetchRequestWithManagedObjectContext:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithManagedObjectContext:v3];

  return v4;
}

@end