@interface DKMotionMonitor
@end

@implementation DKMotionMonitor

uint64_t __23___DKMotionMonitor_log__block_invoke()
{
  log_log = os_log_create("com.apple.coreduet.monitors", "_DKMotionMonitor");

  return MEMORY[0x2821F96F8]();
}

void __25___DKMotionMonitor_start__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [WeakRetained addMotionActivity:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [WeakRetained computeDominantMotionState];
  v10 = *MEMORY[0x277D85DE8];
}

void __25___DKMotionMonitor_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 confidence];
    if (v5 < 3)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 0;
    }

    v23 = objc_alloc(MEMORY[0x277CF1380]);
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "stationary")}];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "walking")}];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "running")}];
    v24 = a1;
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "automotive")}];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "cycling")}];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "unknown")}];
    v13 = [v3 startDate];
    LODWORD(v22) = v6;
    v14 = [v23 initWithStationary:v7 walking:v8 running:v9 automotive:v10 cycling:v11 unknown:v12 startDate:v13 confidence:v22];

    v15 = [WeakRetained source];
    [v15 sendEvent:v14];

    v16 = [_DKMotionMonitor _activityTypeToMotionState:v3];
    v17 = *(v24 + 32);
    if (v16 != v17[20])
    {
      v18 = [v17 queue];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __25___DKMotionMonitor_start__block_invoke_3;
      v25[3] = &unk_27856F0B0;
      v25[4] = WeakRetained;
      v26 = v3;
      v19 = v25;
      v20 = os_transaction_create();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __cd_dispatch_async_capture_tx_block_invoke;
      block[3] = &unk_27856F178;
      v28 = v20;
      v29 = v19;
      v21 = v20;
      dispatch_async(v18, block);

      *(*(v24 + 32) + 160) = v16;
    }
  }
}

void __46___DKMotionMonitor_computeDominantMotionState__block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [v21 timestamp];
  v4 = [v3 laterDate:*(*(*(a1 + 40) + 8) + 40)];
  v5 = [v21 timestamp];

  if (v4 != v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v21 state];
    v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];

    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [v21 timestamp];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;

    v13 = [*(a1 + 32) objectForKeyedSubscript:v8];

    if (!v13)
    {
      [*(a1 + 32) setObject:&unk_2838F7880 forKeyedSubscript:v8];
    }

    v14 = MEMORY[0x277CCABB0];
    v15 = [*(a1 + 32) objectForKeyedSubscript:v8];
    [v15 doubleValue];
    v17 = [v14 numberWithDouble:v12 + v16];
    [*(a1 + 32) setObject:v17 forKeyedSubscript:v8];

    v18 = [v21 timestamp];
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

void __46___DKMotionMonitor_computeDominantMotionState__block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  [v5 doubleValue];
  v8 = *(*(a1 + 32) + 8);
  if (v7 > *(v8 + 24))
  {
    *(v8 + 24) = v7;
    *(*(*(a1 + 40) + 8) + 24) = [v9 unsignedIntegerValue];
  }

  objc_autoreleasePoolPop(v6);
}

void __26___DKMotionMonitor_update__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lastUpdate];
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-21600.0];
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(&location, *(a1 + 32));
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __26___DKMotionMonitor_update__block_invoke_2;
  v11 = &unk_27856F150;
  objc_copyWeak(&v14, &location);
  v4 = v3;
  v12 = v4;
  v13 = *(a1 + 40);
  v5 = MEMORY[0x22AA6AF50](&v8);
  if (*(*(a1 + 32) + 152) == 1)
  {
    v6 = [_DKMotionMonitor log:v8];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v2;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22595A000, v6, OS_LOG_TYPE_DEFAULT, "Starting CoreMotion query for date range %@ - %@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 168) queryActivityStartingFromDate:v2 toDate:v4 toQueue:*(*(a1 + 32) + 176) withHandler:v5];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v7 = *MEMORY[0x277D85DE8];
}

void __26___DKMotionMonitor_update__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = +[_DKMotionMonitor log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v43 = [v5 count];
      v44 = 2112;
      v45 = v6;
      _os_log_impl(&dword_22595A000, v9, OS_LOG_TYPE_DEFAULT, "Completed CoreMotion query with %lu results, error %@", buf, 0x16u);
    }

    if (!v6)
    {
      if ([v5 count] >= 2)
      {
        v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
        v41 = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
        v12 = [v5 sortedArrayUsingDescriptors:v11];

        v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        obj = v12;
        v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v14)
        {
          v15 = v14;
          v35 = v13;
          v30 = v8;
          v31 = a1;
          v32 = WeakRetained;
          v33 = v5;
          v16 = 0;
          v17 = *v37;
          do
          {
            v18 = 0;
            v19 = v16;
            do
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v36 + 1) + 8 * v18);
              if (v19)
              {
                v21 = objc_autoreleasePoolPush();
                v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[_DKMotionMonitor _activityTypeToMotionState:](_DKMotionMonitor, "_activityTypeToMotionState:", v19)}];
                v23 = [v19 startDate];
                v24 = [v20 startDate];
                v25 = [_DKMotionMonitor _eventWithState:v22 startDate:v23 endDate:v24];

                [v35 addObject:v25];
                objc_autoreleasePoolPop(v21);
              }

              v16 = v20;

              ++v18;
              v19 = v16;
            }

            while (v15 != v18);
            v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v15);

          v6 = 0;
          v5 = v33;
          a1 = v31;
          WeakRetained = v32;
          v8 = v30;
          v13 = v35;
        }

        v26 = [WeakRetained historicalHandler];

        if (v26)
        {
          v27 = [WeakRetained historicalHandler];
          (v27)[2](v27, v13);
        }
      }

      [WeakRetained setLastUpdate:*(a1 + 32)];
    }

    objc_autoreleasePoolPop(v8);
    v28 = +[_DKMotionMonitor log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v28, OS_LOG_TYPE_DEFAULT, "Periodic update finished", buf, 2u);
    }
  }

  else
  {
    v28 = +[_DKMotionMonitor log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __26___DKMotionMonitor_update__block_invoke_2_cold_1(v28);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end