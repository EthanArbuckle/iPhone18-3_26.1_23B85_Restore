@interface FCBiomeSignalProvider
+ (void)fetchSignalsFromBiomeWithSafariBlockoutDuration:(double)duration maxExternalSignalEventCount:(int64_t)count resultsBlock:(id)block;
@end

@implementation FCBiomeSignalProvider

+ (void)fetchSignalsFromBiomeWithSafariBlockoutDuration:(double)duration maxExternalSignalEventCount:(int64_t)count resultsBlock:(id)block
{
  v54 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v8 = blockCopy;
  if (count <= 0)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke;
    v43[3] = &unk_1E7C46E00;
    countCopy = count;
    v44 = blockCopy;
    __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke(v43);
    v32 = v44;
  }

  else
  {
    if (!blockCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "resultsBlock"];
      *buf = 136315906;
      countCopy2 = "+[FCBiomeSignalProvider fetchSignalsFromBiomeWithSafariBlockoutDuration:maxExternalSignalEventCount:resultsBlock:]";
      v48 = 2080;
      v49 = "FCBiomeSignalProvider.m";
      v50 = 1024;
      v51 = 32;
      v52 = 2114;
      v53 = v34;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v35 = v8;
    v9 = FCBiomeLog;
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      countCopy2 = count;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Querying Biome for Safari and App Signals with maxExternalSignalEventCount %ld", buf, 0xCu);
    }

    v10 = BiomeLibrary();
    v11 = [v10 App];
    inFocus = [v11 InFocus];

    v13 = BiomeLibrary();
    v14 = [v13 App];
    webUsage = [v14 WebUsage];

    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v18 = [objc_alloc(MEMORY[0x1E698F2D0]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:count reversed:0];
    v19 = [inFocus publisherWithUseCase:@"AutoFavorites" options:v18];
    v20 = objc_opt_new();
    v21 = [v19 reduceWithInitial:v20 nextPartialResult:&__block_literal_global_76_0];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_81;
    v40[3] = &unk_1E7C386C8;
    v22 = v16;
    v41 = v22;
    v42 = &__block_literal_global_172;
    v23 = [v21 sinkWithCompletion:&__block_literal_global_80_0 receiveInput:v40];

    v24 = webUsage;
    v25 = [webUsage publisherWithUseCase:@"AutoFavorites" options:v18];
    v26 = objc_opt_new();
    v27 = [v25 reduceWithInitial:v26 nextPartialResult:&__block_literal_global_85];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_88;
    v36[3] = &unk_1E7C46ED0;
    v28 = v17;
    v37 = v28;
    v38 = &__block_literal_global_172;
    durationCopy = duration;
    v29 = [v27 sinkWithCompletion:&__block_literal_global_87_0 receiveInput:v36];

    v8 = v35;
    if (v35)
    {
      v30 = [v22 copy];
      v31 = [v28 copy];
      v35[2](v35, v30, v31);
    }

    v32 = inFocus;
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCBiomeLog;
  if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "See maxExternalSignalEventCount specified as %ld, skipping query for external signals", &v6, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 fc_arrayOfObjectsPassingTest:&__block_literal_global_10_2];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_68_4];

  v7 = FCBiomeLog;
  if (v6)
  {
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v12 = 134217984;
      v13 = [v6 count];
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "Got back %lu results from Biome", &v12, 0xCu);
    }

    v9 = v6;
  }

  else
  {
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v2;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Didn't get an array back from Biome, instead got %{public}@", &v12, 0xCu);
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

BOOL __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if ([v2 conformsToProtocol:&unk_1F2EFF038])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Got back an array from Biome that had an object that didn't conform to FCPersonalizationExternalSignal : %@", v3];
    *buf = 136315906;
    v10 = "+[FCBiomeSignalProvider fetchSignalsFromBiomeWithSafariBlockoutDuration:maxExternalSignalEventCount:resultsBlock:]_block_invoke_2";
    v11 = 2080;
    v12 = "FCBiomeSignalProvider.m";
    v13 = 1024;
    v14 = 56;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

uint64_t __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

id __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 eventBody];
  [v4 addObject:v5];

  return v4;
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2_77(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 error];

  v4 = FCBiomeLog;
  if (v3)
  {
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v2 error];
      v7 = [v6 localizedDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Encountered an error getting appsStream. Error=%{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "AppsStream completed with no error.", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_81(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObjectsFromArray:v2];
}

id __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2_83(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 eventBody];
  [v4 addObject:v5];

  return v4;
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 error];

  v4 = FCBiomeLog;
  if (v3)
  {
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v2 error];
      v7 = [v6 localizedDescription];
      v9 = 138543362;
      v10 = v7;
      _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Encountered an error getting WebUsageStream. Error=%{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "WebUsageStream completed with no error.", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_88(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DEC8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2_89;
  v21[3] = &unk_1E7C46ED0;
  v5 = *(a1 + 32);
  v23 = *(a1 + 40);
  v6 = v3;
  v22 = v6;
  v24 = *(a1 + 48);
  v7 = [v4 fc_array:v21];
  [v5 addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  LODWORD(v7) = [v8 BOOLForKey:@"personalization_disregard_time_for_suggestions"];

  v9 = FCBiomeLog;
  v10 = os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = v9;
      objc_opt_class();
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v6;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = v12;
      v15 = [v14 count];
      v16 = [*(a1 + 32) count];
      *buf = 134218240;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      v17 = "Asked to disregard time for Safari results, Raw results count %lu and final results count %lu";
LABEL_16:
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    }
  }

  else if (v10)
  {
    v11 = v9;
    objc_opt_class();
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v18 = [v14 count];
    v19 = [*(a1 + 32) count];
    *buf = 134218240;
    v26 = v18;
    v27 = 2048;
    v28 = v19;
    v17 = "Raw Safari results pruned from %lu to %lu after applying blackout duration";
    goto LABEL_16;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2_89(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = (*(a1[5] + 16))();
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"personalization_disregard_time_for_suggestions"];

  if (v7)
  {
    [v3 addObjectsFromArray:v5];
  }

  else
  {
    v8 = objc_opt_new();
    v9 = a1[6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_3_92;
    v11[3] = &unk_1E7C46EA8;
    v12 = v8;
    v14 = v9;
    v13 = v3;
    v10 = v8;
    [v5 enumerateObjectsUsingBlock:v11];
  }
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_3_92(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 content];
  v5 = [FCPersonalizationURLMapping domainForURL:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (!v6 || ([v3 date], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", v7), v9 = v8, v10 = *(a1 + 48), v7, v9 >= v10))
    {
      v11 = *(a1 + 32);
      v12 = [v3 date];
      [v11 fc_safelySetObject:v12 forKey:v5];

      [*(a1 + 40) fc_safelyAddObject:v3];
    }
  }

  else
  {
    v13 = FCProgressivePersonalizationLog;
    if (!os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v15 = v13;
    v6 = [v3 content];
    v16 = [v6 description];
    v17 = 138543362;
    v18 = v16;
    _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "Encountered signal resulting in a nil-domain: %{public}@", &v17, 0xCu);
  }

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
}

@end