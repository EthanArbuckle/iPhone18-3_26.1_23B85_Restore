@interface HMAccessoryCollectionSetting
@end

@implementation HMAccessoryCollectionSetting

void __79__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_enqueueOperation___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(*(a1 + 32), sel_co_enqueueOperation_);
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_setAssociatedObject(*(a1 + 32), sel_co_enqueueOperation_, v2, 1);
    objc_initWeak(&location, *(a1 + 32));
    v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v4 = dispatch_time(0, 90000000);
    v5 = dispatch_get_global_queue(25, 0);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __79__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_enqueueOperation___block_invoke_2;
    v19 = &unk_278E16108;
    objc_copyWeak(v21, &location);
    v20 = *(a1 + 32);
    v21[1] = v3;
    dispatch_after(v4, v5, &v16);

    v6 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 134217984;
      v24 = v7;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "Preparing coalesced writes for %p", buf, 0xCu);
    }

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  [v2 addObject:{*(a1 + 40), v16, v17, v18, v19}];
  v8 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v9 = (a1 + 40);
    v11 = *(v9 - 1);
    v12 = [v10 type];
    v13 = [*v9 alarm];
    v14 = [v13 alarmID];
    *buf = 134218498;
    v24 = v11;
    v25 = 2048;
    v26 = v12;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p enqueued %ld for %@", buf, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __79__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_enqueueOperation___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = [a1[4] co_cachedWrite];

    if (v3)
    {
      v4 = dispatch_time(0, 90000000);
      v5 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_enqueueOperation___block_invoke_3;
      block[3] = &unk_278E16108;
      objc_copyWeak(v7, a1 + 5);
      v7[1] = a1[6];
      block[4] = WeakRetained;
      dispatch_after(v4, v5, block);

      objc_destroyWeak(v7);
    }

    else
    {
      [WeakRetained co_flushQueue];
    }
  }
}

void __79__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_enqueueOperation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 48);
    AnalyticsSendEventLazy();
    [*(a1 + 32) co_flushQueue];
  }
}

id __79__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_enqueueOperation___block_invoke_4(uint64_t a1)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"duration";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32) / 1000000000.0];
  v5[1] = @"items";
  v5[2] = @"replacements";
  v6[0] = v1;
  v6[1] = &unk_2857C8838;
  v6[2] = &unk_2857C8838;
  v6[3] = @"delayed";
  v5[3] = @"domain";
  v5[4] = @"code";
  v6[4] = &unk_2857C8850;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __72__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_flushQueue__block_invoke(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), sel_co_enqueueOperation_);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  objc_setAssociatedObject(v5, sel_co_enqueueOperation_, 0, 1);
}

void __72__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_flushQueue__block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134217984;
    v19 = v5;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p completed coalesced writes", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) completion];
        (v11)[2](v11, v3);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_cachedWrite__block_invoke(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), sel_co_cachedWrite);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  objc_setAssociatedObject(*(a1 + 32), sel_co_cachedWrite, *(a1 + 40), 3);
  v2 = objc_getAssociatedObject(*v1, "co_observer");
  v3 = v2;
  if (*(v1 + 8))
  {
    v4 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke_cold_1(v1, v4, v5, v6, v7, v8, v9, v10);
    }

    if (!v3)
    {
      v11 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke_cold_2(v1, v11, v12, v13, v14, v15, v16, v17);
      }

      objc_initWeak(&location, *v1);
      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = *v1;
      v20 = [MEMORY[0x277CCABD8] currentQueue];
      v21 = *MEMORY[0x277CCEDB0];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke_54;
      v30[3] = &unk_278E16180;
      objc_copyWeak(&v31, &location);
      v3 = [v18 addObserverForName:v21 object:v19 queue:v20 usingBlock:v30];

      objc_setAssociatedObject(*v1, "co_observer", v3, 1);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    if (v2)
    {
      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      [v22 removeObserver:v3];
    }

    objc_setAssociatedObject(*v1, "co_observer", 0, 1);
    v23 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke_cold_3(v1, v23, v24, v25, v26, v27, v28, v29);
    }
  }
}

void __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained co_setCachedWrite:0];
    WeakRetained = v2;
  }
}

void __96__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setMappedAlarms_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 64);
  if (v3)
  {
    v12 = v4;
    v5 = &v9;
    v9 = *(a1 + 32);
    v6 = &v10;
    v10 = *(a1 + 40);
    v11 = v3;
    AnalyticsSendEventLazy();
    v7 = v11;
  }

  else
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __96__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setMappedAlarms_completionHandler___block_invoke_2;
    v16 = &unk_278E161A8;
    v18[1] = v4;
    v5 = &v17;
    v17 = *(a1 + 32);
    v6 = v18;
    v18[0] = *(a1 + 40);
    AnalyticsSendEventLazy();
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained co_setCachedWrite:*(a1 + 40)];
    }
  }

  (*(*(a1 + 48) + 16))();
}

id __96__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setMappedAlarms_completionHandler___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48) / 1000000000.0];
  v9[0] = v2;
  v8[1] = @"items";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v9[1] = v3;
  v8[2] = @"replacements";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __96__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setMappedAlarms_completionHandler___block_invoke_3(uint64_t a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56) / 1000000000.0];
  v11[0] = v2;
  v10[1] = @"items";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v11[1] = v3;
  v10[2] = @"replacements";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v11[2] = v4;
  v10[3] = @"domain";
  v5 = [*(a1 + 48) domain];
  v11[3] = v5;
  v10[4] = @"code";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "code")}];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_2(&dword_244378000, a2, a3, "write cached for %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_2(&dword_244378000, a2, a3, "starting observation for %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __77__HMAccessoryCollectionSetting_COMeshAlarmAddOn_Internal__co_setCachedWrite___block_invoke_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_2(&dword_244378000, a2, a3, "invalidated write cache for %p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end