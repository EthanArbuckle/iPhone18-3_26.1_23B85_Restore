@interface CCSetMetrics
+ (double)_populationStandardDeviation:(shared_ptr<std:(double)deviation :vector<unsigned short>>)a3 mean:;
+ (id)_computeMetricsForSet:(id)set error:(id *)error;
+ (void)computeAndReportMetricsForAllSets:(id)sets shouldDefer:(id)defer;
- (CCSetMetrics)init;
@end

@implementation CCSetMetrics

- (CCSetMetrics)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (void)computeAndReportMetricsForAllSets:(id)sets shouldDefer:(id)defer
{
  v47 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  deferCopy = defer;
  if ([CCSetMetrics shouldReportAnalyticsEventWithName:@"com.apple.CascadeSets.SetDistribution"])
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(setsCopy, "count")}];
      *buf = 138412290;
      v43 = v6;
      _os_log_impl(&dword_1B6DB2000, v5, OS_LOG_TYPE_DEFAULT, "Preparing to enumerate and compute metrics for %@ set(s)", buf, 0xCu);
    }

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = setsCopy;
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v8)
    {
      v28 = *v38;
      *&v9 = 138412546;
      v25 = v9;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if (deferCopy && deferCopy[2]())
        {
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(CCSetMetrics *)&v35 computeAndReportMetricsForAllSets:v36 shouldDefer:v13];
          }

          v14 = 0;
        }

        else
        {
          v34 = 0;
          v15 = [CCSetMetrics _computeMetricsForSet:v11 error:&v34, v25];
          v13 = v34;
          v14 = v15 != 0;
          if (v15)
          {
            v16 = __biome_log_for_category();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v15;
              _os_log_impl(&dword_1B6DB2000, v16, OS_LOG_TYPE_DEFAULT, "Computed set metrics: %@", buf, 0xCu);
            }

            [v27 addObject:v15];
          }

          else
          {
            v17 = __biome_log_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v43 = v11;
              v44 = 2112;
              v45 = v13;
              _os_log_error_impl(&dword_1B6DB2000, v17, OS_LOG_TYPE_ERROR, "Failed to compute metrics for set: %@ error: %@", buf, 0x16u);
            }
          }
        }

        objc_autoreleasePoolPop(v12);
        if (!v14)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:

      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](v27, "count")}];
        *buf = 138412290;
        v43 = v19;
        _os_log_impl(&dword_1B6DB2000, v18, OS_LOG_TYPE_DEFAULT, "Reporting metrics for %@ set(s)", buf, 0xCu);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v27;
      v20 = [v7 countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v20)
      {
        v21 = *v31;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v7);
            }

            [CCSetMetrics reportAnalyticsEvent:*(*(&v30 + 1) + 8 * i) withName:@"com.apple.CascadeSets.SetDistribution", v25];
          }

          v20 = [v7 countByEnumeratingWithState:&v30 objects:v41 count:16];
        }

        while (v20);
      }
    }

    v23 = v27;
  }

  else
  {
    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = @"com.apple.CascadeSets.SetDistribution";
      _os_log_impl(&dword_1B6DB2000, v23, OS_LOG_TYPE_DEFAULT, "Skipping metrics computation as the event: %@ is not used.", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (id)_computeMetricsForSet:(id)set error:(id *)error
{
  setCopy = set;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v6 = [setCopy changePublisherWithUseCase:*MEMORY[0x1E698E940]];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = -[CCSetDistribution initWithSet:sharedItemCount:localInstanceCount:]([CCSetDistribution alloc], "initWithSet:sharedItemCount:localInstanceCount:", setCopy, [v6 sharedItemCount], objc_msgSend(v6, "localItemInstanceCount"));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__CCSetMetrics__computeMetricsForSet_error___block_invoke;
  v11[3] = &unk_1E7C8BB58;
  v11[4] = &v18;
  v11[5] = &v22;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__CCSetMetrics__computeMetricsForSet_error___block_invoke_2;
  v10[3] = &unk_1E7C8BB80;
  v10[4] = &v12;
  v7 = [v6 drivableSinkWithBookmark:0 completion:v11 shouldContinue:v10];
  if (v19[3])
  {
    compute = [v13[5] compute];
  }

  else
  {
    CCSetError(error, v23[5]);
    compute = 0;
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return compute;
}

void __44__CCSetMetrics__computeMetricsForSet_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 state] || (objc_msgSend(v5, "value"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v6 = [v10 error];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

+ (double)_populationStandardDeviation:(shared_ptr<std:(double)deviation :vector<unsigned short>>)a3 mean:
{
  v5 = **a3.__ptr_;
  v4 = *(*a3.__ptr_ + 8);
  if (v4 == v5)
  {
    return 0.0;
  }

  v6 = v4 - v5;
  v7 = 0.0;
  do
  {
    v8 = *v5++;
    v7 = v7 + (v8 - deviation) * (v8 - deviation);
  }

  while (v5 != v4);
  return sqrt(v7 / v6);
}

+ (void)computeAndReportMetricsForAllSets:(os_log_t)log shouldDefer:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "Aborting due to deferral signal", buf, 2u);
}

@end