@interface GDSServerConnection
@end

@implementation GDSServerConnection

void __38___GDSServerConnection_sharedInstance__block_invoke()
{
  if (!sharedInstance_instance)
  {
    sharedInstance_instance = objc_alloc_init(_GDSServerConnection);

    MEMORY[0x2821F96F8]();
  }
}

void __37___GDSServerConnection_dateFormatter__block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter_dateFormatter;
  dateFormatter_dateFormatter = v0;

  [dateFormatter_dateFormatter setLocale:v3];
  v2 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [dateFormatter_dateFormatter setTimeZone:v2];

  [dateFormatter_dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
}

void __45___GDSServerConnection_fetchConfigWithError___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2507E1000, v2, OS_LOG_TYPE_DEFAULT, "Using test config URL %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __45___GDSServerConnection_fetchConfigWithError___block_invoke_144(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_2507E1000, v10, OS_LOG_TYPE_DEFAULT, "Response: %@, Error:%@, Data %@", buf, 0x20u);
  }

  if (v9)
  {
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_2507E1000, v11, OS_LOG_TYPE_DEFAULT, "Error generated %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  if (v7)
  {
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:4 error:0];
    v13 = *(a1 + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_2507E1000, v13, OS_LOG_TYPE_DEFAULT, "Config Response is %@", buf, 0xCu);
    }

    v14 = [v12 objectForKeyedSubscript:@"error"];
    v15 = [v9 code];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 700;
    }

    if (v14 && *(a1 + 64))
    {
      v17 = MEMORY[0x277CCA9B8];
      v20 = @"Error reason";
      v21 = v14;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      **(a1 + 64) = [v17 errorWithDomain:@"com.apple.griddataservices" code:v16 userInfo:v18];

      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        __45___GDSServerConnection_fetchConfigWithError___block_invoke_144_cold_1((a1 + 64));
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
      dispatch_semaphore_signal(*(a1 + 40));
    }
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __60___GDSServerConnection_fetchBalancingAuthorityFromLocation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = *&v8;
    _os_log_impl(&dword_2507E1000, v10, OS_LOG_TYPE_DEFAULT, "Response: %@", buf, 0xCu);
  }

  v11 = [*(a1 + 32) log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = *&v9;
    _os_log_impl(&dword_2507E1000, v11, OS_LOG_TYPE_DEFAULT, "Error:%@", buf, 0xCu);
  }

  v12 = [*(a1 + 32) log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = *&v7;
    _os_log_impl(&dword_2507E1000, v12, OS_LOG_TYPE_DEFAULT, "Data %@", buf, 0xCu);
  }

  if (v7)
  {
    v40 = v9;
    v41 = v8;
    v42 = v7;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:4 error:0];
    v14 = [*(a1 + 32) log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = *&v13;
      _os_log_impl(&dword_2507E1000, v14, OS_LOG_TYPE_DEFAULT, "Response is %@", buf, 0xCu);
    }

    v39 = v13;
    v15 = [v13 objectForKeyedSubscript:@"balancingAuthorities"];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:@"longitude"];
          [v21 doubleValue];
          v23 = v22;

          v24 = [v20 objectForKeyedSubscript:@"latitude"];
          [v24 doubleValue];
          v26 = v25;

          [*(a1 + 48) coordinate];
          if (v23 == v27 && ([*(a1 + 48) coordinate], v26 == v28))
          {
            v30 = v15;
            v29 = [MEMORY[0x277CBEAA8] date];
            v31 = [v20 objectForKeyedSubscript:@"name"];
            v32 = [v20 objectForKeyedSubscript:@"id"];
            if (v32)
            {
              v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v32];
            }

            else
            {
              v33 = 0;
            }

            v34 = [*(a1 + 32) log];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v48 = *&v31;
              v49 = 2112;
              v50 = *&v33;
              v51 = 2112;
              v52 = v29;
              _os_log_impl(&dword_2507E1000, v34, OS_LOG_TYPE_DEFAULT, "Name %@, UUID %@, Date %@", buf, 0x20u);
            }

            v35 = [[_GDSBalancingAuthorityOutput alloc] initWithID:v33 name:v31 updateDate:v29];
            v36 = *(*(a1 + 56) + 8);
            v37 = *(v36 + 40);
            *(v36 + 40) = v35;

            dispatch_semaphore_signal(*(a1 + 40));
            v15 = v30;
          }

          else
          {
            v29 = [*(a1 + 32) log];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134283777;
              v48 = v23;
              v49 = 2049;
              v50 = v26;
              _os_log_impl(&dword_2507E1000, v29, OS_LOG_TYPE_DEFAULT, "Non-matching co-ordinates %{private}f, %{private}f", buf, 0x16u);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v17);
    }

    v8 = v41;
    v7 = v42;
    v9 = v40;
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __55___GDSServerConnection_fetchBalancingAuthorityPolygons__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [*(a1 + 32) log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_2507E1000, v11, OS_LOG_TYPE_DEFAULT, "Response: %@, Error:%@, Data %@", &v19, 0x20u);
  }

  if (v7)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:4 error:0];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    objc_autoreleasePoolPop(v12);
    v16 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"error"];
    v17 = [*(a1 + 32) log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_2507E1000, v17, OS_LOG_TYPE_DEFAULT, "Error is %@", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 40));
    AnalyticsSendEventLazy();
    objc_autoreleasePoolPop(v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __57___GDSServerConnection_fetchMarginalEmissionForecastFor___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v8;
    _os_log_impl(&dword_2507E1000, v10, OS_LOG_TYPE_DEFAULT, "Response: %@", buf, 0xCu);
  }

  v11 = [*(a1 + 32) log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v9;
    _os_log_impl(&dword_2507E1000, v11, OS_LOG_TYPE_DEFAULT, "Error:%@", buf, 0xCu);
  }

  v12 = [*(a1 + 32) log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v7;
    _os_log_impl(&dword_2507E1000, v12, OS_LOG_TYPE_DEFAULT, "Data %@", buf, 0xCu);
  }

  if (v7)
  {
    v47 = v9;
    v48 = v8;
    v49 = v7;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:4 error:0];
    v14 = [*(a1 + 32) log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __57___GDSServerConnection_fetchMarginalEmissionForecastFor___block_invoke_cold_1(v13, v14);
    }

    v50 = v13;
    [v13 objectForKeyedSubscript:@"forecasts"];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v61 = 0u;
    v15 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v59;
      v51 = *v59;
      do
      {
        v18 = 0;
        v52 = v16;
        do
        {
          if (*v59 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v58 + 1) + 8 * v18);
          v20 = [v19 objectForKeyedSubscript:@"balancingAuthorityId"];
          v21 = [*(a1 + 48) identifier];
          v22 = [v20 isEqualToString:v21];

          if (v22)
          {
            v23 = [v19 objectForKeyedSubscript:@"baseTime"];
            v24 = [_GDSServerConnection dateFromString:v23];
            v25 = *(*(a1 + 56) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;

            v27 = [v19 objectForKeyedSubscript:@"dataPoints"];
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v28 = [v27 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = 0;
              v31 = *v55;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v55 != v31)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v33 = *(*(&v54 + 1) + 8 * i);
                  v34 = [*(*(*(a1 + 56) + 8) + 40) dateByAddingTimeInterval:v30 * 900.0];
                  [*(*(*(a1 + 64) + 8) + 40) setObject:v33 forKeyedSubscript:v34];
                  ++v30;
                }

                v29 = [v27 countByEnumeratingWithState:&v54 objects:v62 count:16];
              }

              while (v29);
            }

            v17 = v51;
            v16 = v52;
          }

          ++v18;
        }

        while (v18 != v16);
        v16 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v16);
    }

    v35 = [v50 objectForKeyedSubscript:@"refetchPeriod"];
    [v35 doubleValue];
    v37 = v36;

    if (v37 <= 14400.0)
    {
      v37 = 14400.0;
    }

    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v38 = [_GDSEmissionForecast alloc];
      v39 = *(*(*(a1 + 64) + 8) + 40);
      v40 = *(*(*(a1 + 56) + 8) + 40);
      v41 = [MEMORY[0x277CBEAA8] date];
      v42 = [(_GDSEmissionForecast *)v38 initWithForecast:v39 generatedAt:v40 fetchedAt:v41 refetchInterval:v37];
      v43 = *(*(a1 + 72) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      v45 = [*(a1 + 32) log];
      v9 = v47;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        __57___GDSServerConnection_fetchMarginalEmissionForecastFor___block_invoke_cold_2(v45, v37);
      }
    }

    else
    {
      v45 = [*(a1 + 32) log];
      v9 = v47;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        __57___GDSServerConnection_fetchMarginalEmissionForecastFor___block_invoke_cold_3();
      }
    }

    v8 = v48;
    v7 = v49;

    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    AnalyticsSendEventLazy();
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __65___GDSServerConnection_fetchCarbonIntensityHistoryForBA_from_to___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v8;
    _os_log_impl(&dword_2507E1000, v10, OS_LOG_TYPE_DEFAULT, "Response: %@", buf, 0xCu);
  }

  v11 = [*(a1 + 32) log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v9;
    _os_log_impl(&dword_2507E1000, v11, OS_LOG_TYPE_DEFAULT, "Error:%@", buf, 0xCu);
  }

  v12 = [*(a1 + 32) log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v7;
    _os_log_impl(&dword_2507E1000, v12, OS_LOG_TYPE_DEFAULT, "Data %@", buf, 0xCu);
  }

  if (v7)
  {
    v35 = v9;
    v36 = v8;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:4 error:0];
    v14 = [*(a1 + 32) log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v13;
      _os_log_impl(&dword_2507E1000, v14, OS_LOG_TYPE_DEFAULT, "Historical data Response is %@", buf, 0xCu);
    }

    v37 = v7;

    v34 = v13;
    [v13 objectForKeyedSubscript:@"dataPoints"];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v42 = 0u;
    v15 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          v20 = [v19 objectForKeyedSubscript:@"pointTime"];
          v21 = [_GDSServerConnection dateFromString:v20];

          v22 = [v19 objectForKeyedSubscript:@"systemwideValue"];
          v23 = [v19 objectForKeyedSubscript:@"marginalValue"];
          v24 = [*(a1 + 32) log];
          v25 = v24;
          if (v21)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v46 = v21;
              v47 = 2112;
              v48 = v22;
              v49 = 2112;
              v50 = v23;
              _os_log_debug_impl(&dword_2507E1000, v25, OS_LOG_TYPE_DEBUG, "Date %@, Avg Value %@, Marginal Value %@", buf, 0x20u);
            }

            v43[0] = @"average";
            v43[1] = @"marginal";
            v44[0] = v22;
            v44[1] = v23;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
            [*(*(*(a1 + 48) + 8) + 40) setObject:v25 forKeyedSubscript:v21];
          }

          else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v19 objectForKeyedSubscript:@"pointTime"];
            *buf = 138412290;
            v46 = v26;
            _os_log_impl(&dword_2507E1000, v25, OS_LOG_TYPE_DEFAULT, "Error parsing date %@", buf, 0xCu);
          }
        }

        v16 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v16);
    }

    v27 = [_GDSEmissionHistory alloc];
    v28 = *(*(*(a1 + 48) + 8) + 40);
    v29 = [MEMORY[0x277CBEAA8] date];
    v30 = [(_GDSEmissionHistory *)v27 initWithHistoricalData:v28 fetchedAt:v29];
    v31 = *(*(a1 + 56) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    dispatch_semaphore_signal(*(a1 + 40));
    v8 = v36;
    v7 = v37;
    v9 = v35;
  }

  else
  {
    AnalyticsSendEventLazy();
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __45___GDSServerConnection_fetchConfigWithError___block_invoke_144_cold_1(uint64_t **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = **a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __57___GDSServerConnection_fetchMarginalEmissionForecastFor___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2507E1000, a2, OS_LOG_TYPE_DEBUG, "Forecast result %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __57___GDSServerConnection_fetchMarginalEmissionForecastFor___block_invoke_cold_2(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_2507E1000, log, OS_LOG_TYPE_DEBUG, "Forecast refetch interval %lf", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end