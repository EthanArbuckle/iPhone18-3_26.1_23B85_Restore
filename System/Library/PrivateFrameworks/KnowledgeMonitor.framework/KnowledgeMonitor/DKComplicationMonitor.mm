@interface DKComplicationMonitor
@end

@implementation DKComplicationMonitor

void __31___DKComplicationMonitor_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained asyncUpdateCurrentActiveComplicationsContext];
}

void __31___DKComplicationMonitor_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[20];
    v4 = WeakRetained;
    v3 = dispatch_walltime(0, 2000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    WeakRetained = v4;
  }
}

uint64_t __51___DKComplicationMonitor_fetchActiveComplications___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51___DKComplicationMonitor_fetchActiveComplications___block_invoke_cold_1(v6, v7);
    }

    v8 = 0;
  }

  else if (v5)
  {
    v9 = [v5 companionAppBundleID];
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v11 = [v5 bundleIdentifier];
    [v10 setObject:v9 forKeyedSubscript:v11];

    v8 = 1;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = *(a1 + 40);
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          if (([v18 isEqual:&stru_2838F0870] & 1) == 0)
          {
            v19 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v18];
            v20 = v19;
            if (v19)
            {
              v21 = v19;
            }

            else
            {
              v21 = &stru_2838F0870;
            }

            v22 = v21;

            [v12 addObject:v22];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v15);
    }

    v23 = [*(a1 + 32) log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&dword_22595A000, v23, OS_LOG_TYPE_DEFAULT, "New list of active complications: %@\n", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    v8 = 0;
    v5 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

void __70___DKComplicationMonitor_asyncUpdateCurrentActiveComplicationsContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CFE318];
  v4 = a2;
  v5 = [v3 userContext];
  v6 = [MEMORY[0x277CFE338] keyPathForActiveComplications];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = *(*(a1 + 32) + 160);

  dispatch_resume(v7);
}

void __51___DKComplicationMonitor_fetchActiveComplications___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "failed to fetch list of installed applications on watch: %@\n", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end