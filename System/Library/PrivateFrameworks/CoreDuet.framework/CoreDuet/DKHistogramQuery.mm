@interface DKHistogramQuery
@end

@implementation DKHistogramQuery

void __58___DKHistogramQuery__fetchRemoteResultsWithStorage_error___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = MEMORY[0x1E695D5B8];
  v4 = +[_DKHistogram entityName];
  v5 = [v3 entityForName:v4 inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v5];

  [v2 setPredicate:*(a1 + 40)];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:0];
  v28[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v2 setSortDescriptors:v7];

  [v2 setFetchLimit:{objc_msgSend(*(a1 + 48), "remoteHistogramLimit")}];
  v8 = [_CDMutablePerfMetric perfMetricForFetchRequest:v2 type:@"Histogram Queries"];
  v19[0] = 0;
  v19[1] = 0;
  v9 = *(a1 + 32);
  v18 = 0;
  v10 = [v9 executeFetchRequest:v2 error:&v18];
  v11 = v18;
  if ((_DKEventQueryPerformanceTesting & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = [v2 fetchLimit];
    [*(a1 + 56) timeIntervalSinceNow];
    v14 = v13;
    v15 = [v10 count];
    v16 = [v2 predicate];
    *buf = 134218754;
    v21 = v12;
    v22 = 2048;
    v23 = -v14;
    v24 = 2048;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_DKHistogramQuery _fetchRemoteResultsWithStorage finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %@ ", buf, 0x2Au);
  }

  if (v11)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
    CDPerfMetricEndTimingAndIncrementErrorCount(v8, v19);
  }

  else
  {
    CDPerfMetricEndTimingAndSetResultCount(v8, v19, [v10 count]);
    if ([v10 count])
    {
      __58___DKHistogramQuery__fetchRemoteResultsWithStorage_error___block_invoke_cold_2((a1 + 48), v10, a1);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __58___DKHistogramQuery__fetchRemoteResultsWithStorage_error___block_invoke_cold_1(void *a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = objc_begin_catch(a1);
  *a3 = v4;
  v5 = v4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_fault_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Execute fetch request caught:%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __58___DKHistogramQuery__fetchRemoteResultsWithStorage_error___block_invoke_cold_2(_DKHistogram **a1, void *a2, uint64_t a3)
{
  v4 = [(_DKHistogramQuery *)*a1 _histogramFromManagedObjects:a2];
  v5 = *(*(a3 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end