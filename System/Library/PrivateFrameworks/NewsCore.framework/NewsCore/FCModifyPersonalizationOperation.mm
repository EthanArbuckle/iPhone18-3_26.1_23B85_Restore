@interface FCModifyPersonalizationOperation
+ (id)personalizationProfileFromRecord:(id)record;
+ (void)applyAggregates:(id)aggregates toProfile:(id)profile maxRatio:(double)ratio;
+ (void)applyChangeGroups:(id)groups toProfile:(id)profile treatment:(id)treatment prune:(BOOL)prune;
+ (void)applyDeltas:(id)deltas toProfile:(id)profile treatment:(id)treatment prune:(BOOL)prune;
+ (void)pruneAggregates:(id)aggregates;
- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after;
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)resetForRetry;
@end

@implementation FCModifyPersonalizationOperation

- (BOOL)validateOperation
{
  v23 = *MEMORY[0x1E69E9840];
  database = [(FCModifyPersonalizationOperation *)self database];

  if (!database && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a database to modify the personalization profile"];
    v15 = 136315906;
    v16 = "[FCModifyPersonalizationOperation validateOperation]";
    v17 = 2080;
    v18 = "FCModifyPersonalizationOperation.m";
    v19 = 1024;
    v20 = 61;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
  }

  aggregates = [(FCModifyPersonalizationOperation *)self aggregates];

  if (!aggregates && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have aggregates to modify the personalization profile"];
    v15 = 136315906;
    v16 = "[FCModifyPersonalizationOperation validateOperation]";
    v17 = 2080;
    v18 = "FCModifyPersonalizationOperation.m";
    v19 = 1024;
    v20 = 62;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
  }

  treatment = [(FCModifyPersonalizationOperation *)self treatment];

  if (!treatment && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a personalization treatment to modify the personalization profile"];
    v15 = 136315906;
    v16 = "[FCModifyPersonalizationOperation validateOperation]";
    v17 = 2080;
    v18 = "FCModifyPersonalizationOperation.m";
    v19 = 1024;
    v20 = 63;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
  }

  database2 = [(FCModifyPersonalizationOperation *)self database];
  if (database2)
  {
    aggregates2 = [(FCModifyPersonalizationOperation *)self aggregates];
    if (aggregates2)
    {
      treatment2 = [(FCModifyPersonalizationOperation *)self treatment];
      v9 = treatment2 != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performOperation
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"SharedPersonalizationProfile"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__FCModifyPersonalizationOperation_performOperation__block_invoke;
  aBlock[3] = &unk_1E7C36C58;
  aBlock[4] = self;
  v4 = v3;
  v16 = v4;
  v5 = _Block_copy(aBlock);
  remoteRecord = [(FCModifyPersonalizationOperation *)self remoteRecord];

  if (remoteRecord)
  {
    v5[2](v5);
  }

  else
  {
    v7 = objc_alloc_init(FCCKPrivateFetchRecordsOperation);
    v18[0] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(FCCKPrivateFetchRecordsOperation *)v7 setRecordIDs:v8];

    v17[0] = @"data";
    v17[1] = @"version";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [(FCCKPrivateFetchRecordsOperation *)v7 setDesiredKeys:v9];

    [(FCOperation *)v7 setQualityOfService:9];
    [(FCOperation *)v7 setRelativePriority:-1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__FCModifyPersonalizationOperation_performOperation__block_invoke_2;
    v12[3] = &unk_1E7C378E8;
    v12[4] = self;
    v13 = v4;
    v14 = v5;
    [(FCCKPrivateFetchRecordsOperation *)v7 setFetchRecordsCompletionBlock:v12];
    database = [(FCModifyPersonalizationOperation *)self database];
    [(FCCKPrivateDatabase *)database addOperation:v7];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __52__FCModifyPersonalizationOperation_performOperation__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) remoteRecord];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"PersonalizationProfile" recordID:*(a1 + 40)];
    [v3 setObject:&unk_1F2E6FCA8 forKeyedSubscript:@"version"];
  }

  v4 = [v3 objectForKeyedSubscript:@"version"];
  v5 = [v4 unsignedIntegerValue];

  v6 = *(a1 + 32);
  if (v5 < 2)
  {
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() personalizationProfileFromRecord:v3];
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = [*(a1 + 32) aggregates];
    v13 = [*(a1 + 32) treatment];
    [v13 clicksToImpressionsRatioMaximum];
    [v11 applyAggregates:v12 toProfile:v9 maxRatio:?];

    v14 = [v9 data];
    [v3 setObject:v14 forKeyedSubscript:@"data"];
    [v3 setObject:&unk_1F2E6FCA8 forKeyedSubscript:@"version"];
    v15 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v9 aggregates];
      *buf = 134218240;
      v27 = [v17 count];
      v28 = 2048;
      v29 = [v14 length];
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "uploading personalization profile with %lu aggregates for %lu bytes", buf, 0x16u);
    }

    v18 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
    v25 = v3;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [(FCCKPrivateSaveRecordsOperation *)v18 setRecordsToSave:v19];

    [(FCOperation *)v18 setQualityOfService:9];
    [(FCOperation *)v18 setRelativePriority:-1];
    [(FCCKPrivateSaveRecordsOperation *)v18 setSavePolicy:0];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__FCModifyPersonalizationOperation_performOperation__block_invoke_15;
    v23[3] = &unk_1E7C378C0;
    v23[4] = *(a1 + 32);
    v24 = v9;
    v20 = v9;
    [(FCCKPrivateSaveRecordsOperation *)v18 setSaveRecordsCompletionBlock:v23];
    v21 = [*(a1 + 32) database];
    [(FCCKPrivateDatabase *)v21 addOperation:v18];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] fc_belowMinimumVersionError];
    [v6 finishedPerformingOperationWithError:v7];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __52__FCModifyPersonalizationOperation_performOperation__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) setResultError:a3];
  }

  else
  {
    [*(a1 + 32) setSavedProfile:*(a1 + 40)];
    v5 = [v6 firstObject];
    [*(a1 + 32) setSavedRecord:v5];
  }

  [*(a1 + 32) finishedPerformingOperationWithError:a3];
}

void __52__FCModifyPersonalizationOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ![v5 fc_isCKUnknownItemError])
  {
    [*(a1 + 32) setResultError:v6];
    [*(a1 + 32) finishedPerformingOperationWithError:v6];
  }

  else
  {
    v7 = [v8 objectForKeyedSubscript:*(a1 + 40)];
    [*(a1 + 32) setRemoteRecord:v7];

    (*(*(a1 + 48) + 16))();
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  saveCompletionHandler = [(FCModifyPersonalizationOperation *)self saveCompletionHandler];

  if (saveCompletionHandler)
  {
    saveCompletionHandler2 = [(FCModifyPersonalizationOperation *)self saveCompletionHandler];
    savedProfile = [(FCModifyPersonalizationOperation *)self savedProfile];
    savedRecord = [(FCModifyPersonalizationOperation *)self savedRecord];
    resultError = [(FCModifyPersonalizationOperation *)self resultError];
    if (resultError)
    {
      v9 = resultError;
    }

    else
    {
      v9 = errorCopy;
    }

    (saveCompletionHandler2)[2](saveCompletionHandler2, savedProfile, savedRecord, v9);
  }
}

- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after
{
  v5 = [error fc_isCKErrorWithCode:14];
  if (v5)
  {
    *after = objc_opt_new();
  }

  return v5;
}

- (void)resetForRetry
{
  [(FCModifyPersonalizationOperation *)self setRemoteRecord:0];

  [(FCModifyPersonalizationOperation *)self setResultError:0];
}

+ (id)personalizationProfileFromRecord:(id)record
{
  v27 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v4 = recordCopy;
  if (recordCopy)
  {
    recordType = [recordCopy recordType];
    v6 = [recordType isEqualToString:@"PersonalizationProfile"];

    if ((v6 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid record type for personalization"];
      v19 = 136315906;
      v20 = "+[FCModifyPersonalizationOperation(FCMergeUtility) personalizationProfileFromRecord:]";
      v21 = 2080;
      v22 = "FCModifyPersonalizationOperation.m";
      v23 = 1024;
      v24 = 194;
      v25 = 2114;
      v26 = v18;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v19, 0x26u);
    }
  }

  v7 = [v4 objectForKeyedSubscript:@"data"];
  v8 = [v4 objectForKeyedSubscript:@"version"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (v7)
  {
    v10 = unsignedIntegerValue == 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v14 = [objc_alloc(MEMORY[0x1E69B6F10]) initWithData:v7];
  }

  else
  {
    if (unsignedIntegerValue != 1)
    {
      v11 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v4 objectForKeyedSubscript:@"version"];
        v19 = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = &unk_1F2E6FCA8;
        _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "ignoring personalization profile from version %@ because we're on version %@", &v19, 0x16u);
      }
    }

    v14 = objc_alloc_init(MEMORY[0x1E69B6F10]);
  }

  v15 = v14;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)applyChangeGroups:(id)groups toProfile:(id)profile treatment:(id)treatment prune:(BOOL)prune
{
  pruneCopy = prune;
  v72 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  profileCopy = profile;
  treatmentCopy = treatment;
  aggregatesByFeatureKey = [profileCopy aggregatesByFeatureKey];
  v12 = [aggregatesByFeatureKey mutableCopy];

  v46 = profileCopy;
  historiesByInstanceIdentifier = [profileCopy historiesByInstanceIdentifier];
  v14 = [historiesByInstanceIdentifier mutableCopy];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = groupsCopy;
  v15 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v59;
    v47 = *v59;
    v48 = v14;
    do
    {
      v18 = 0;
      v49 = v16;
      do
      {
        if (*v59 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v58 + 1) + 8 * v18);
        instanceIdentifier = [v19 instanceIdentifier];

        if (instanceIdentifier)
        {
          instanceIdentifier2 = [v19 instanceIdentifier];
          v22 = [v14 objectForKey:instanceIdentifier2];

          if (!v22)
          {
            v22 = objc_alloc_init(MEMORY[0x1E69B6EF8]);
            instanceIdentifier3 = [v19 instanceIdentifier];
            [v22 setInstanceIdentifier:instanceIdentifier3];

            instanceIdentifier4 = [v22 instanceIdentifier];
            [v14 setObject:v22 forKey:instanceIdentifier4];
          }

          changeNumber = [v19 changeNumber];
          if (changeNumber > [v22 lastChangeNumber])
          {
            v51 = v22;
            v52 = v19;
            v53 = v18;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            deltas = [v19 deltas];
            v27 = [deltas countByEnumeratingWithState:&v54 objects:v70 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v55;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v55 != v29)
                  {
                    objc_enumerationMutation(deltas);
                  }

                  v31 = *(*(&v54 + 1) + 8 * i);
                  featureKey = [v31 featureKey];

                  if (featureKey)
                  {
                    featureKey2 = [v31 featureKey];
                    v34 = [v12 objectForKey:featureKey2];

                    if (!v34)
                    {
                      v34 = objc_alloc_init(MEMORY[0x1E69B6EE8]);
                      featureKey3 = [v31 featureKey];
                      [v34 setFeatureKey:featureKey3];

                      featureKey4 = [v34 featureKey];
                      [v12 setObject:v34 forKey:featureKey4];
                    }

                    [v31 applyToAggregate:v34 withTreatment:treatmentCopy];
                  }
                }

                v28 = [deltas countByEnumeratingWithState:&v54 objects:v70 count:16];
              }

              while (v28);
            }

            changeNumber2 = [v52 changeNumber];
            v22 = v51;
            if (changeNumber2 != [v51 lastChangeNumber] + 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"looks like we're replaying events out of order"];
              *buf = 136315906;
              v63 = "+[FCModifyPersonalizationOperation(FCMergeUtility) applyChangeGroups:toProfile:treatment:prune:]";
              v64 = 2080;
              v65 = "FCModifyPersonalizationOperation.m";
              v66 = 1024;
              v67 = 263;
              v68 = 2114;
              v69 = v38;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            [v51 setLastChangeNumber:{objc_msgSend(v52, "changeNumber")}];
            v17 = v47;
            v14 = v48;
            v16 = v49;
            v18 = v53;
          }
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v16);
  }

  if (pruneCopy)
  {
    [self pruneAggregates:v12];
  }

  allValues = [v12 allValues];
  v40 = [allValues mutableCopy];
  [v46 setAggregates:v40];

  allValues2 = [v14 allValues];
  v42 = [allValues2 mutableCopy];
  [v46 setHistories:v42];

  v43 = *MEMORY[0x1E69E9840];
}

+ (void)applyDeltas:(id)deltas toProfile:(id)profile treatment:(id)treatment prune:(BOOL)prune
{
  pruneCopy = prune;
  v35 = *MEMORY[0x1E69E9840];
  deltasCopy = deltas;
  profileCopy = profile;
  treatmentCopy = treatment;
  v29 = profileCopy;
  aggregatesByFeatureKey = [profileCopy aggregatesByFeatureKey];
  v12 = [aggregatesByFeatureKey mutableCopy];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = deltasCopy;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        featureKey = [v18 featureKey];

        if (featureKey)
        {
          featureKey2 = [v18 featureKey];
          v21 = [v12 objectForKey:featureKey2];

          if (!v21)
          {
            v21 = objc_alloc_init(MEMORY[0x1E69B6EE8]);
            featureKey3 = [v18 featureKey];
            [v21 setFeatureKey:featureKey3];

            featureKey4 = [v21 featureKey];
            [v12 setObject:v21 forKey:featureKey4];
          }

          [v18 applyToAggregate:v21 withTreatment:treatmentCopy];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  if (pruneCopy)
  {
    [self pruneAggregates:v12];
  }

  allValues = [v12 allValues];
  v25 = [allValues mutableCopy];
  [v29 setAggregates:v25];

  v26 = *MEMORY[0x1E69E9840];
}

+ (void)pruneAggregates:(id)aggregates
{
  v24 = *MEMORY[0x1E69E9840];
  aggregatesCopy = aggregates;
  v4 = FCPersonalizationDataMaxAggregates();
  if ([aggregatesCopy count] > v4)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v7 = (v6 + v6);

    allValues = [aggregatesCopy allValues];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__FCModifyPersonalizationOperation_FCMergeUtility__pruneAggregates___block_invoke;
    v15[3] = &__block_descriptor_40_e71_q24__0__NTPBPersonalizationAggregate_8__NTPBPersonalizationAggregate_16l;
    v15[4] = v7;
    v9 = [allValues sortedArrayUsingComparator:v15];

    v10 = [v9 fc_subarrayWithMaxCount:{objc_msgSend(aggregatesCopy, "count") - v4}];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"kFCPersonalizationDataDidPruneNotification" object:v10];

    v12 = [v10 fc_arrayByTransformingWithBlock:&__block_literal_global_7];
    [aggregatesCopy removeObjectsForKeys:v12];
    if ([aggregatesCopy count] > v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to prune personalization aggregates"];
      *buf = 136315906;
      v17 = "+[FCModifyPersonalizationOperation(FCMergeUtility) pruneAggregates:]";
      v18 = 2080;
      v19 = "FCModifyPersonalizationOperation.m";
      v20 = 1024;
      v21 = 343;
      v22 = 2114;
      v23 = v14;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __68__FCModifyPersonalizationOperation_FCMergeUtility__pruneAggregates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 timestamp];
  v8 = *(a1 + 32);
  v9 = [v6 timestamp];

  if (v7 >= v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1000 * v9;
  }

  v11 = [v5 timestamp];
  v12 = *(a1 + 32);
  v13 = [v5 timestamp];
  v14 = 1000 * v13;
  if (v11 >= v12)
  {
    v14 = v13;
  }

  v15 = v10 >= v14;
  v16 = v10 > v14;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = -1;
  }

  return v17;
}

+ (void)applyAggregates:(id)aggregates toProfile:(id)profile maxRatio:(double)ratio
{
  v27 = *MEMORY[0x1E69E9840];
  aggregatesCopy = aggregates;
  profileCopy = profile;
  aggregatesByFeatureKey = [profileCopy aggregatesByFeatureKey];
  v11 = [aggregatesByFeatureKey mutableCopy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __87__FCModifyPersonalizationOperation_FCMergeUtility__applyAggregates_toProfile_maxRatio___block_invoke;
  v23[3] = &unk_1E7C37950;
  v12 = v11;
  v24 = v12;
  [aggregatesCopy enumerateKeysAndObjectsUsingBlock:v23];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__FCModifyPersonalizationOperation_FCMergeUtility__applyAggregates_toProfile_maxRatio___block_invoke_3;
  v18[3] = &unk_1E7C37978;
  *&v18[5] = ratio;
  v18[4] = &v19;
  [v12 enumerateKeysAndObjectsUsingBlock:v18];
  v13 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v20[3];
    *buf = 134217984;
    v26 = v14;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Adjusted a total of %lu aggregates", buf, 0xCu);
  }

  [self pruneAggregates:v12];
  allValues = [v12 allValues];
  v16 = [allValues mutableCopy];
  [profileCopy setAggregates:v16];

  _Block_object_dispose(&v19, 8);
  v17 = *MEMORY[0x1E69E9840];
}

void __87__FCModifyPersonalizationOperation_FCMergeUtility__applyAggregates_toProfile_maxRatio___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 timestamp];
    if (v9 < [v6 timestamp])
    {
      v10 = [v6 eventCount];
      if (v10 > [v8 eventCount])
      {
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
      }
    }
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    [v11 setObject:v13 forKeyedSubscript:v12];
  }
}

void __87__FCModifyPersonalizationOperation_FCMergeUtility__applyAggregates_toProfile_maxRatio___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40) > 0.0)
  {
    [v6 clicks];
    v9 = v8;
    [v7 impressions];
    if (v9 / v10 > *(a1 + 40))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
      [v7 clicks];
      v11 = *(a1 + 40);
      v12 = FCPersonalizationLog;
      v14 = v13 / v11;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
      {
        v16 = v12;
        [v7 clicks];
        v18 = v17;
        [v7 impressions];
        v20 = 138544130;
        v21 = v5;
        v22 = 2048;
        v23 = v18;
        v24 = 2048;
        v25 = v19;
        v26 = 2048;
        v27 = v14;
        _os_log_debug_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEBUG, "Adjusted aggregate %{public}@ with C: %f I: %f to I: %f", &v20, 0x2Au);
      }

      [v7 setImpressions:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end