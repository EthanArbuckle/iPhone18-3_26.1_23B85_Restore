@interface NSError(HealthDaemon)
- (double)hd_cloudKitRetryDelay;
- (id)hd_cloudKitErrorRequiringUserAction;
- (id)hd_errorForAnalytics;
- (id)hd_errorStrippingCloudKitPartialFailuresWithShouldIgnoreBlock:()HealthDaemon;
- (id)hd_errorSurfacingFatalCloudKitPartialFailure;
- (id)hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics;
- (uint64_t)hd_containsCKDuplicateRecordError;
- (uint64_t)hd_containsCKMissingZoneError;
- (uint64_t)hd_isCloudKitErrorQuotaExceeded;
- (uint64_t)hd_isCorruptionError;
- (uint64_t)hd_isManateeIdentityLossError;
- (uint64_t)hd_shouldPreventCloudKitCacheUpdate;
- (void)hd_enumerateCloudKitPartialErrorsByKeyWithHandler:()HealthDaemon;
- (void)hd_enumerateCloudKitPartialErrorsWithHandler:()HealthDaemon;
@end

@implementation NSError(HealthDaemon)

- (uint64_t)hd_isCloudKitErrorQuotaExceeded
{
  v18 = *MEMORY[0x277D85DE8];
  if ([a1 hk_isHealthKitError] && objc_msgSend(a1, "code") == 711)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = [a1 userInfo];
    v3 = [v2 objectForKeyedSubscript:0x283C1FA68];

    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 |= [*(*(&v13 + 1) + 8 * i) code] == 25;
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = [a1 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v10)
  {
    v6 = [a1 code] == 25;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (id)hd_cloudKitErrorRequiringUserAction
{
  v42 = *MEMORY[0x277D85DE8];
  if (![a1 hk_isHealthKitError])
  {
    goto LABEL_16;
  }

  if ([a1 hk_isHealthKitErrorWithCode:703])
  {
    v2 = a1;
    goto LABEL_34;
  }

  if ([a1 code] != 711)
  {
    v10 = [a1 userInfo];
    v11 = *MEMORY[0x277CCA7E8];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v12)
    {
      v13 = [a1 userInfo];
      v4 = [v13 objectForKeyedSubscript:v11];

      v9 = [v4 hd_cloudKitErrorRequiringUserAction];
      goto LABEL_19;
    }

LABEL_16:
    v14 = [a1 domain];
    v15 = [v14 isEqualToString:*MEMORY[0x277CBBF50]];

    if (v15)
    {
      v16 = [(NSError *)a1 _hd_cloudKitErrorRequiringUserActionFromCKErrorDomain];
      v4 = v16;
      if (v16)
      {
        v9 = v16;
        goto LABEL_19;
      }

      if ([a1 code] == 2)
      {
        v17 = [a1 userInfo];
        v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v38 = a1;
          v39 = 2114;
          v40 = v18;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ partial error: %{public}@", buf, 0x16u);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v20 = [v18 allValues];
        v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v29;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v29 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v28 + 1) + 8 * i);
              if ([v25 code] != 22)
              {
                v2 = [(NSError *)v25 _hd_cloudKitErrorRequiringUserActionFromCKErrorDomain];

                goto LABEL_20;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }
      }
    }

LABEL_33:
    v2 = 0;
    goto LABEL_34;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a1 userInfo];
  v4 = [v3 objectForKeyedSubscript:0x283C1FA68];

  v5 = [v4 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (!v5)
  {
LABEL_13:

    goto LABEL_33;
  }

  v6 = v5;
  v7 = *v33;
LABEL_7:
  v8 = 0;
  while (1)
  {
    if (*v33 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = [*(*(&v32 + 1) + 8 * v8) hd_cloudKitErrorRequiringUserAction];
    if (v9)
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

LABEL_19:
  v2 = v9;
LABEL_20:

LABEL_34:
  v26 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)hd_isManateeIdentityLossError
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v3)
  {
    goto LABEL_14;
  }

  if ([a1 code] == 112)
  {
    v4 = 1;
    goto LABEL_15;
  }

  if ([a1 code] != 2)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v5 = [a1 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = [v7 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        v11 = [v10 hd_isManateeIdentityLossError];

        if (v11)
        {
          v4 = 1;
          goto LABEL_17;
        }
      }

      v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)hd_shouldPreventCloudKitCacheUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v3)
  {
    goto LABEL_14;
  }

  if ([a1 code] == 111)
  {
    v4 = 1;
    goto LABEL_15;
  }

  if ([a1 code] != 2)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v5 = [a1 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = [v7 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        v11 = [v10 hd_shouldPreventCloudKitCacheUpdate];

        if (v11)
        {
          v4 = 1;
          goto LABEL_17;
        }
      }

      v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)hd_errorStrippingCloudKitPartialFailuresWithShouldIgnoreBlock:()HealthDaemon
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CBBF50]];

  if ((v6 & 1) == 0)
  {
LABEL_20:
    v22 = a1;
    goto LABEL_25;
  }

  if ([a1 code] != 2)
  {
    if (v4[2](v4, a1))
    {
      v22 = 0;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [a1 userInfo];
  v8 = *MEMORY[0x277CBBFB0];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134217984;
    v38 = [v9 count];
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%ld partial errors", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [v9 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v13)
  {
    v22 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v14 = v13;
  v28 = v8;
  v29 = a1;
  v15 = 0;
  v16 = *v34;
  v30 = 1;
  obj = v12;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v34 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v33 + 1) + 8 * i);
      ++v15;
      v19 = v9;
      v20 = [v9 objectForKeyedSubscript:{v18, v28}];
      _HKInitializeLogging();
      v21 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v38 = v15;
        v39 = 2114;
        v40 = v20;
        v41 = 2114;
        v42 = v18;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "     %2ld: Partial error: %{public}@, ID: %{public}@", buf, 0x20u);
      }

      if ((v4[2](v4, v20) & 1) == 0)
      {
        [v31 setObject:v20 forKeyedSubscript:v18];
        v30 = 0;
      }

      v9 = v19;
    }

    v14 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  }

  while (v14);

  if ((v30 & 1) == 0)
  {
    v23 = [v29 userInfo];
    v12 = [v23 mutableCopy];

    [v12 setObject:v31 forKeyedSubscript:v28];
    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = [v29 domain];
    v22 = [v24 initWithDomain:v25 code:objc_msgSend(v29 userInfo:{"code"), v12}];

    goto LABEL_23;
  }

  v22 = 0;
LABEL_24:

LABEL_25:
  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (uint64_t)hd_isCorruptionError
{
  v1 = a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *MEMORY[0x277CCA7E8];
  while (([v2 hk_isHealthKitErrorWithCode:106] & 1) == 0 && (objc_msgSend(v2, "hd_isDatabaseCorruptionError") & 1) == 0 && (objc_msgSend(v2, "hd_isNotADatabaseError") & 1) == 0)
  {
    v4 = [v2 userInfo];
    v5 = [v4 objectForKeyedSubscript:v3];

    v2 = v5;
    if (!v5)
    {
      v6 = 0;
      goto LABEL_9;
    }
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (id)hd_errorSurfacingFatalCloudKitPartialFailure
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBBF50];
  if ([a1 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:2])
  {
    v3 = [a1 userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 allValues];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 code] != 11 && objc_msgSend(v9, "code") != 22)
          {
            v6 = v9;
            goto LABEL_17;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else if ([a1 hk_isInternalFailureError] && (objc_msgSend(a1, "hk_underlyingErrorWithDomain:", v2), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v6 = [v10 hd_errorSurfacingFatalCloudKitPartialFailure];
  }

  else
  {
    v6 = a1;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBBF50];
  if ([a1 hk_isErrorInDomain:*MEMORY[0x277CBBF50] code:2])
  {
    v3 = [a1 userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 allValues];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 code] != 22)
          {
            v6 = v9;
            goto LABEL_16;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else if ([a1 hk_isInternalFailureError] && (objc_msgSend(a1, "hk_underlyingErrorWithDomain:", v2), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v6 = [v10 hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics];
  }

  else
  {
    v6 = a1;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hd_errorForAnalytics
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCBDA8]];

  v4 = [a1 userInfo];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 hk_filter:&__block_literal_global_311];

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = [a1 domain];
    v9 = [v7 initWithDomain:v8 code:objc_msgSend(a1 userInfo:{"code"), v6}];
    v10 = [v9 hd_errorForAnalytics];

    v11 = MEMORY[0x277CCACA8];
    v12 = [v10 localizedDescription];
    v13 = [v11 stringWithFormat:@"%@: %@", v3, v12];

    v35 = *MEMORY[0x277CCA450];
    v36[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v15 = [v10 hk_errorByAddingEntriesToUserInfo:v14];

    goto LABEL_25;
  }

  v16 = *MEMORY[0x277CCA7E8];
  v17 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v17)
  {
    v15 = a1;
    goto LABEL_25;
  }

  if ([a1 hk_isInternalFailureError])
  {
    v18 = v17;
  }

  else
  {
    v18 = a1;
  }

  v19 = v18;
  v20 = [v19 userInfo];
  v21 = [v20 objectForKeyedSubscript:v16];

  if (!v21)
  {
    v23 = v19;
LABEL_23:
    v15 = v23;
    goto LABEL_24;
  }

  v22 = [v19 domain];
  if ([v22 isEqualToString:*MEMORY[0x277CCA050]])
  {
    if ([v19 code] == 256)
    {

LABEL_20:
      v23 = v21;
      goto LABEL_23;
    }

    v32 = [v19 code];

    if (v32 == 512)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v24 = [v19 domain];
  v25 = [v24 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v25)
  {
    v23 = [v19 hd_errorSurfacingFatalCloudKitPartialFailure];
    goto LABEL_23;
  }

  v26 = [a1 domain];
  if (![v26 isEqualToString:*MEMORY[0x277D10A78]])
  {

    goto LABEL_22;
  }

  v27 = [a1 code];

  if (v27 != 2)
  {
LABEL_22:
    v23 = a1;
    goto LABEL_23;
  }

  v28 = [a1 hd_sqliteExtendedErrorCode];
  v29 = MEMORY[0x277CCA9B8];
  v30 = [v21 domain];
  v31 = [v21 userInfo];
  v15 = [v29 errorWithDomain:v30 code:v28 userInfo:v31];

LABEL_24:
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)hd_enumerateCloudKitPartialErrorsWithHandler:()HealthDaemon
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v6)
  {
    if ([a1 code] == 2)
    {
      v7 = [a1 userInfo];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [v8 allValues];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          v20 = 0;
          v4[2](v4, v14, &v20);
          if (v20)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    else
    {
      v20 = 0;
      v4[2](v4, a1, &v20);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)hd_enumerateCloudKitPartialErrorsByKeyWithHandler:()HealthDaemon
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v6)
  {
    if ([a1 code] == 2)
    {
      v7 = [a1 userInfo];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [v8 allKeys];
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          v21 = 0;
          v15 = [v8 objectForKeyedSubscript:v14];
          v4[2](v4, v14, v15, &v21);

          if (v21)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    else
    {
      v21 = 0;
      v4[2](v4, 0, a1, &v21);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (double)hd_cloudKitRetryDelay
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [a1 domain];
  v3 = *MEMORY[0x277CBBF50];
  v4 = [v2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v4 && ([a1 userInfo], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x277CBBF68]), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v9 = [a1 hk_isErrorInDomain:v3 code:2];
    v10 = [a1 userInfo];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = [v12 allValues];
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        v8 = 0.0;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v23 + 1) + 8 * i);
            if ([v18 code] != 11 && objc_msgSend(v18, "code") != 22)
            {
              [v18 hd_cloudKitRetryDelay];
              if (v8 < v19)
              {
                v8 = v19;
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v15);
      }

      else
      {
        v8 = 0.0;
      }
    }

    else
    {
      v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      if (v12)
      {
        [v12 hd_cloudKitRetryDelay];
        v8 = v20;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (uint64_t)hd_containsCKDuplicateRecordError
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v3)
  {
    goto LABEL_19;
  }

  if ([a1 code] == 2)
  {
    v4 = [a1 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 allValues];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v17 + 1) + 8 * i) hd_containsCKDuplicateRecordError])
          {

            goto LABEL_22;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([a1 code] != 14)
  {
    goto LABEL_19;
  }

  v11 = [a1 userInfo];
  v5 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [v5 domain];
  if (![v6 isEqualToString:*MEMORY[0x277CBC120]] || objc_msgSend(v5, "code") != 2004)
  {
    goto LABEL_18;
  }

  v12 = [v5 userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBBF70]];
  v14 = [v13 isEqualToString:@"record to insert already exists"];

  if (v14)
  {
LABEL_22:
    result = 1;
    goto LABEL_20;
  }

LABEL_19:
  result = 0;
LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)hd_containsCKMissingZoneError
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v3)
  {
    goto LABEL_20;
  }

  if ([a1 code] == 2)
  {
    v4 = [a1 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 allValues];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v15 + 1) + 8 * i) hd_containsCKMissingZoneError])
          {

            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

LABEL_20:
    result = 0;
    goto LABEL_21;
  }

  if ([a1 code] != 26)
  {
    goto LABEL_20;
  }

  v11 = [a1 userInfo];
  v5 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [v5 domain];
  if (([v6 isEqualToString:*MEMORY[0x277CBC120]] & 1) == 0)
  {
    goto LABEL_19;
  }

  v12 = [v5 code];

  if (v12 != 2036)
  {
    goto LABEL_20;
  }

LABEL_18:
  result = 1;
LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

@end