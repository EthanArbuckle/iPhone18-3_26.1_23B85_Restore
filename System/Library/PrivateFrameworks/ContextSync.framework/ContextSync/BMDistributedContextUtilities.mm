@interface BMDistributedContextUtilities
+ (BOOL)isSupportEnabledForBMDSL:(id)a3 useCase:(id)a4 withError:(id *)a5;
+ (id)currentBootSessionUUID;
+ (void)updateDescriptionForError:(id *)a3 withErrorCode:(int64_t)a4;
@end

@implementation BMDistributedContextUtilities

+ (void)updateDescriptionForError:(id *)a3 withErrorCode:(int64_t)a4
{
  if (a3)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    if (a4 > 5)
    {
      a4 = 0;
      v7 = @"Unknown Error";
    }

    else
    {
      v7 = off_278E07DE0[a4];
    }

    v8 = v6;
    [v6 setValue:v7 forKey:*MEMORY[0x277CCA450]];
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ContextSyncErrorDomain" code:a4 userInfo:v8];
  }
}

+ (BOOL)isSupportEnabledForBMDSL:(id)a3 useCase:(id)a4 withError:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3)
  {
    v8 = [a3 streamPublishers];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_244177000, v9, OS_LOG_TYPE_INFO, "isSupportEnabledForBMDSL: streamPublishers: %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CBEB58] set];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v24 + 1) + 8 * i) identifier];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v17 = MEMORY[0x277CF0E00];
    v18 = [MEMORY[0x277CF0E20] current];
    v19 = [v17 policyForProcess:v18 connectionFlags:0 useCase:v7];

    v20 = [v19 allowsAccessToContextSyncStreams:v10];
    if ((v20 & 1) == 0)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [BMDistributedContextUtilities isSupportEnabledForBMDSL:v10 useCase:v21 withError:?];
      }

      [BMDistributedContextUtilities updateDescriptionForError:a5 withErrorCode:4];
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)currentBootSessionUUID
{
  v2 = [MEMORY[0x277CCAD78] bm_bootSessionUUID];
  v3 = [v2 UUIDString];

  return v3;
}

+ (void)isSupportEnabledForBMDSL:(uint64_t)a1 useCase:(NSObject *)a2 withError:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_244177000, a2, OS_LOG_TYPE_ERROR, "Process does not have entitlements for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end