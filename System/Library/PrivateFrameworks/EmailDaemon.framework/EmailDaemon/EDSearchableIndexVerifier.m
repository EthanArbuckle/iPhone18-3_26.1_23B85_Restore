@interface EDSearchableIndexVerifier
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (EDSearchableIndexVerifier)initWithDataSource:(id)a3;
- (EDSearchableIndexVerifierDataSource)dataSource;
- (id)_missingTransactionIDsFromTransactionIDs:(id)a3;
- (id)_verifyDataSamples:(id)a3;
- (id)_verifyDataSamples:(id)a3 usingTester:(id)a4;
- (id)_verifySamples:(id)a3;
- (unint64_t)_findMissingTransactionIDs:(id)a3 dataSource:(id)a4;
- (unint64_t)signpostID;
- (void)_addFailingSamples:(id)a3 toResultDictionary:(id)a4;
- (void)verifyDataSamplesWithCompletionHandler:(id)a3 scheduler:(id)a4;
@end

@implementation EDSearchableIndexVerifier

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__EDSearchableIndexVerifier_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_93 != -1)
  {
    dispatch_once(&log_onceToken_93, block);
  }

  v2 = log_log_93;

  return v2;
}

void __32__EDSearchableIndexVerifier_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_93;
  log_log_93 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EDSearchableIndexVerifier_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_10 != -1)
  {
    dispatch_once(&signpostLog_onceToken_10, block);
  }

  v2 = signpostLog_log_10;

  return v2;
}

void __40__EDSearchableIndexVerifier_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_10;
  signpostLog_log_10 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (EDSearchableIndexVerifier)initWithDataSource:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EDSearchableIndexVerifier;
  v5 = [(EDSearchableIndexVerifier *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    v7 = _os_activity_create(&dword_1C61EF000, "verifying searchable index", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
    indexVerificationActivity = v6->_indexVerificationActivity;
    v6->_indexVerificationActivity = v7;
  }

  return v6;
}

- (id)_verifyDataSamples:(id)a3 usingTester:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke;
  v40[3] = &unk_1E8257368;
  v8 = v28;
  v41 = v8;
  v9 = v7;
  v42 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v40];
  v10 = [MEMORY[0x1E699B868] promise];
  v11 = [v8 expressionFromDataSamples:v9];
  if ([v11 isValid])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v44) = 0;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    v13 = [v9 allKeys];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_2;
    v37[3] = &unk_1E8257390;
    v14 = v12;
    v38 = v14;
    v15 = v11;
    v39 = v15;
    [v13 enumerateObjectsUsingBlock:v37];

    v16 = [MEMORY[0x1E695E000] standardUserDefaults];
    LOBYTE(v13) = [v16 BOOLForKey:@"EDSearchableIndexPostFakeCorruptSearchableIndexErrors"];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_3;
    aBlock[3] = &unk_1E82573E0;
    aBlock[4] = self;
    v30 = v8;
    v35 = buf;
    v31 = v10;
    v17 = v14;
    v32 = v17;
    v33 = v9;
    v36 = v13;
    v18 = v15;
    v34 = v18;
    v19 = _Block_copy(aBlock);
    v20 = [MEMORY[0x1E699AE78] queryWithExpression:v18 builder:v19];
    [v20 start];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = +[EDSearchableIndexVerifier log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = [v6 count];
      v24 = [v9 count];
      *buf = 138544130;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      v44 = v23;
      v45 = 2048;
      v46 = v24;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> did not return a spotlight query. dataSamples.count=%lu transformedDataSamples.count=%lu", buf, 0x2Au);
    }

    [v10 finishWithResult:MEMORY[0x1E695E0F8]];
  }

  v25 = [v10 future];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) transformDataForVerification:a3];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 40) queryString];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 bundleIDForSearchableIndexVerifier:*(a1 + 32)];
  [v3 setBundleID:v5];

  v6 = [*(a1 + 40) fetchAttributes];
  [v3 setFetchAttributes:v6];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_4;
  v15[3] = &unk_1E8251C08;
  v18 = *(a1 + 80);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  [v3 setCompletionBlock:v15];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_5;
  v8[3] = &unk_1E82573B8;
  v13 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = *(a1 + 40);
  v14 = *(a1 + 88);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  [v3 setResultsBlock:v8];
  v7 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
  [v3 setFailureBlock:v7];
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 finishWithResult:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kEDSearchableIndexVerifierErrorDomain" code:1 userInfo:0];
    [*(a1 + 32) finishWithResult:0 error:?];
  }
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_5(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        *(*(*(a1 + 64) + 8) + 24) = 1;
        v8 = [v7 uniqueIdentifier];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 integerValue];
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
          if ([*(a1 + 40) verifySearchableItem:v7 matchesDataSample:v12])
          {
            if (*(a1 + 72) == 1)
            {
              v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FAKED: %@", *(a1 + 56)];
              [*(a1 + 48) setObject:v13 forKeyedSubscript:v11];
            }

            else
            {
              [*(a1 + 48) removeObjectForKey:v11];
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_addFailingSamples:(id)a3 toResultDictionary:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__EDSearchableIndexVerifier__addFailingSamples_toResultDictionary___block_invoke;
  v7[3] = &unk_1E8257408;
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __67__EDSearchableIndexVerifier__addFailingSamples_toResultDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  [v6 addObject:v5];
}

- (id)_verifySamples:(id)a3
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v22 = objc_alloc_init(EDSearchableIndexSubjectTester);
  v35[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v23;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(EDSearchableIndexVerifier *)self _verifyDataSamples:v4 usingTester:*(*(&v29 + 1) + 8 * i)];
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  [MEMORY[0x1E699B7C8] join:v6];
  v21 = v28 = 0;
  v12 = [v21 result:&v28];
  v13 = v28;
  if (v13)
  {
    v14 = v5;
    v5 = 0;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v15)
    {
      v20 = v12;
      v16 = *v25;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(EDSearchableIndexVerifier *)self _addFailingSamples:*(*(&v24 + 1) + 8 * j) toResultDictionary:v5, v20];
        }

        v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v15);
      v12 = v20;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)verifyDataSamplesWithCompletionHandler:(id)a3 scheduler:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (EFProtectedDataAvailable())
  {
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(self->_indexVerificationActivity, &state);
    v8 = [(EDSearchableIndexVerifier *)self dataSource];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = [(EDSearchableIndexVerifier *)self _findMissingTransactionIDs:v9 dataSource:v8];
    if (v10 - 1 <= 1)
    {
      os_activity_scope_leave(&state);
      if (!v6)
      {
LABEL_35:

        goto LABEL_36;
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_2;
      v44[3] = &unk_1E8257430;
      v46 = v6;
      v47 = v10;
      v9 = v9;
      v45 = v9;
      [v7 performSyncBlock:v44];

      v11 = v46;
LABEL_34:

      goto LABEL_35;
    }

    v32 = [v8 searchableIndexForSearchableIndexVerifier:self];
    [MEMORY[0x1E695E000] standardUserDefaults];
    *buf = 0;
    v41 = buf;
    v31 = v42 = 0x2020000000;
    v13 = [v31 valueForKey:@"kDefaultsKeyLastVerifiedMessageID"];
    v14 = [v13 longLongValue];

    v43 = v14;
    v15 = [v8 dataSamplesForSearchableIndexVerifier:self searchableIndex:v32 count:64 lastVerifiedMessageID:*(v41 + 3)];
    v30 = [v15 count];
    if (![v15 count])
    {
      v26 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 0;
        _os_log_impl(&dword_1C61EF000, v26, OS_LOG_TYPE_DEFAULT, "No data samples fetched from database. Resetting kDefaultsKeyLastVerifiedMessageID to 0", v51, 2u);
      }

      [v31 setInteger:0 forKey:@"kDefaultsKeyLastVerifiedMessageID"];
      os_activity_scope_leave(&state);
      if (!v6)
      {
        goto LABEL_33;
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_31;
      v38[3] = &unk_1E8257458;
      v39[0] = v6;
      v39[1] = v10;
      [v7 performSyncBlock:v38];
      v27 = v39;
      goto LABEL_31;
    }

    v16 = [(EDSearchableIndexVerifier *)self _verifyDataSamples:v15];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_2_32;
    v37[3] = &unk_1E8257480;
    v37[4] = buf;
    [v15 enumerateKeysAndObjectsUsingBlock:v37];
    v17 = [v16 count];
    v18 = v17 / [v15 count];
    if ([v16 count] && v18 < 0.5)
    {
      v19 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [EDSearchableIndexVerifier verifyDataSamplesWithCompletionHandler:v19 scheduler:v18];
      }

      v20 = [v8 dataSamplesForSearchableIndexVerifier:self searchableIndex:v32 count:512 lastVerifiedMessageID:*(v41 + 3)];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_33;
      v36[3] = &unk_1E8257480;
      v36[4] = buf;
      [v20 enumerateKeysAndObjectsUsingBlock:v36];
      v21 = [v20 count];
      v22 = [(EDSearchableIndexVerifier *)self _verifyDataSamples:v20];
      [v16 unionSet:v22];
      v23 = [v16 count];

      v18 = v23 / (v21 + v30);
    }

    if (v16)
    {
      if (![v16 count])
      {
        v25 = 2;
        goto LABEL_29;
      }

      v24 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 134218240;
        v52 = v18;
        v53 = 2048;
        v54 = 0x3FE0000000000000;
        _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Verification failed at ratio: %f. threshold: %f", v51, 0x16u);
      }

      v25 = 1;
    }

    else
    {
      v24 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 0;
        _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Verification query results empty", v51, 2u);
      }

      v25 = 0;
    }

LABEL_29:
    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v41 + 3)];
    [v31 setValue:v28 forKey:@"kDefaultsKeyLastVerifiedMessageID"];

    os_activity_scope_leave(&state);
    if (!v6)
    {
      v9 = v16;
      goto LABEL_33;
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_34;
    v33[3] = &unk_1E8257430;
    v35[0] = v6;
    v35[1] = v25;
    v9 = v16;
    v34 = v9;
    [v7 performSyncBlock:v33];

    v27 = v35;
LABEL_31:

LABEL_33:
    _Block_object_dispose(buf, 8);

    v11 = v32;
    goto LABEL_34;
  }

  v12 = +[EDSearchableIndexVerifier log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Skipping verifyDataSamplesWithCompletionHandler. Protected data unavailable.", buf, 2u);
  }

  if (v6)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke;
    v49[3] = &unk_1E8251B48;
    v50 = v6;
    [v7 performSyncBlock:v49];
  }

LABEL_36:

  v29 = *MEMORY[0x1E69E9840];
}

void __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] set];
  (*(v1 + 16))(v1, 2, 0);
}

void __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v1, 0);
}

void __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_2_32(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 longLongValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v3 > v5)
  {
    v5 = [v6 longLongValue];
    v4 = *(*(a1 + 32) + 8);
  }

  *(v4 + 24) = v5;
}

void __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_33(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 longLongValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v3 > v5)
  {
    v5 = [v6 longLongValue];
    v4 = *(*(a1 + 32) + 8);
  }

  *(v4 + 24) = v5;
}

- (id)_verifyDataSamples:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EDSearchableIndexVerifier signpostLog];
  v6 = os_signpost_id_generate(v5);

  v7 = +[EDSearchableIndexVerifier signpostLog];
  v8 = v7;
  spid = v6;
  v9 = v6 - 1;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "EDSearchableIndexVerifier", "", buf, 2u);
  }

  v10 = [(EDSearchableIndexVerifier *)self _verifySamples:v4];
  v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([v10 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __48__EDSearchableIndexVerifier__verifyDataSamples___block_invoke;
      aBlock[3] = &unk_1E82506B0;
      v31 = v4;
      v28 = v12;
      v32 = v28;
      v13 = v11;
      v33 = v13;
      v14 = _Block_copy(aBlock);
      [v10 enumerateKeysAndObjectsUsingBlock:v14];
      v15 = [v13 length];
      v16 = MEMORY[0x1E696AEC0];
      if (v15)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Searchable Index Verification failed\n%@", v13, v28];
      }

      else
      {
        v19 = [v10 allKeys];
        v17 = [v16 stringWithFormat:@"Searchable Index verification found missing rowids: %@", v19, v28];

        v20 = +[EDSearchableIndexVerifier log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          [(EDSearchableIndexVerifier *)v17 _verifyDataSamples:v20];
        }
      }
    }

    v18 = [v10 count];
  }

  else
  {
    v12 = 0;
    v18 = -1;
  }

  v21 = [v10 count];
  v22 = [v4 count];
  v23 = +[EDSearchableIndexVerifier signpostLog];
  v24 = v23;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = [v4 count];
    *buf = 134349568;
    v35 = v25;
    v36 = 2050;
    v37 = v18;
    v38 = 2050;
    v39 = v21 / v22;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v24, OS_SIGNPOST_INTERVAL_END, spid, "EDSearchableIndexVerifier", "SpotlightVerificationSamples=%{public,signpost.telemetry:number1}lu SpotlightVerificationResultFailures=%{public,signpost.telemetry:number2}ld SpotlightVerificationFailingRatio=%{public,signpost.description:attribute}f enableTelemetry=YES ", buf, 0x20u);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v12;
}

void __48__EDSearchableIndexVerifier__verifyDataSamples___block_invoke(id *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  v5 = [v4 transactionID];
  [a1[5] addObject:v5];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"row:%@ cid:%@\n", v3, v5];
  [a1[6] appendString:v6];
  v7 = +[EDSearchableIndexVerifier log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __48__EDSearchableIndexVerifier__verifyDataSamples___block_invoke_cold_1(v3, buf, [v5 longLongValue], v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_findMissingTransactionIDs:(id)a3 dataSource:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 knownTransactionIDsForSearchableIndexVerifier:self];
  if ([v8 count])
  {
    v9 = [(EDSearchableIndexVerifier *)self _missingTransactionIDsFromTransactionIDs:v8];
    v18 = 0;
    v10 = [v9 result:&v18];
    v11 = v18;
    if ([v10 count])
    {
      v12 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 count];
        *buf = 134217984;
        v20 = v13;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Found %lu missing transaction(s)", buf, 0xCu);
      }

      [v6 unionSet:v10];
      v14 = 1;
    }

    else
    {
      if (v11)
      {
        v15 = +[EDSearchableIndexVerifier log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [EDSearchableIndexVerifier _findMissingTransactionIDs:v15 dataSource:?];
        }
      }

      else
      {
        v15 = +[EDSearchableIndexVerifier log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Found all expected transaction identifiers", buf, 2u);
        }
      }

      v14 = 0;
    }
  }

  else
  {
    v9 = +[EDSearchableIndexVerifier log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = 2;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "No transactionIDs were fetched from the database, which implies nothing has been indexed yet. Skipping further verification.", buf, 2u);
    }

    else
    {
      v14 = 2;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_missingTransactionIDsFromTransactionIDs:(id)a3
{
  v4 = a3;
  if (EFProtectedDataAvailable())
  {
    v5 = [v4 mutableCopy];
    v6 = [MEMORY[0x1E699B868] promise];
    aBlock = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke;
    v20 = &unk_1E82574D0;
    v21 = self;
    v7 = v6;
    v22 = v7;
    v8 = v5;
    v23 = v8;
    v9 = _Block_copy(&aBlock);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=*", @"com_apple_mail_transaction", aBlock, v18, v19, v20, v21];
    v11 = [MEMORY[0x1E699AE80] expressionWithQueryString:v10];
    v12 = [MEMORY[0x1E699AE78] queryWithExpression:v11 builder:v9];
    [v12 start];
    v13 = [v7 future];
  }

  else
  {
    v14 = +[EDSearchableIndexVerifier log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Skipping transaction ID verification. Protected data unavailable", buf, 2u);
    }

    v15 = MEMORY[0x1E699B7C8];
    v8 = [MEMORY[0x1E696ABC0] ef_temporarilyUnavailableError];
    v13 = [v15 futureWithError:v8];
  }

  return v13;
}

void __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke(id *a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] dataSource];
  v5 = [v4 bundleIDForSearchableIndexVerifier:a1[4]];
  [v3 setBundleID:v5];

  v15[0] = @"com_apple_mail_transaction";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v3 setFetchAttributes:v6];

  [v3 setAttribute:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke_2;
  v12[3] = &unk_1E8250128;
  v13 = a1[5];
  v14 = a1[6];
  [v3 setCompletionBlock:v12];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke_3;
  aBlock[3] = &unk_1E82574A8;
  v11 = a1[6];
  v7 = _Block_copy(aBlock);
  [v3 setFoundAttributeResultsBlock:v7];
  [v3 setChangedAttributeResultsBlock:v7];
  v8 = [a1[5] errorOnlyCompletionHandlerAdapter];
  [v3 setFailureBlock:v8];

  v9 = *MEMORY[0x1E69E9840];
}

void __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 finishWithResult:?];
}

void __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([a2 isEqualToString:@"com_apple_mail_transaction"])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(a1 + 32) removeObject:{v10, v12}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (EDSearchableIndexVerifierDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)verifyDataSamplesWithCompletionHandler:(os_log_t)log scheduler:(double)a2 .cold.1(os_log_t log, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = 512;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Verification failed at ratio %f. Performing verification with a larger sample of size %lu", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_verifyDataSamples:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_FAULT, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __48__EDSearchableIndexVerifier__verifyDataSamples___block_invoke_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed verification for row:%@ citd:%lld", buf, 0x16u);
}

@end