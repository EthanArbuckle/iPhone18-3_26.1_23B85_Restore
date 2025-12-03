@interface BMDistributedContextUtilities
+ (BOOL)isSupportEnabledForBMDSL:(id)l useCase:(id)case withError:(id *)error;
+ (id)currentBootSessionUUID;
+ (void)updateDescriptionForError:(id *)error withErrorCode:(int64_t)code;
@end

@implementation BMDistributedContextUtilities

+ (void)updateDescriptionForError:(id *)error withErrorCode:(int64_t)code
{
  if (error)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (code > 5)
    {
      code = 0;
      v7 = @"Unknown Error";
    }

    else
    {
      v7 = off_278E07DE0[code];
    }

    v8 = dictionary;
    [dictionary setValue:v7 forKey:*MEMORY[0x277CCA450]];
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ContextSyncErrorDomain" code:code userInfo:v8];
  }
}

+ (BOOL)isSupportEnabledForBMDSL:(id)l useCase:(id)case withError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  if (l)
  {
    streamPublishers = [l streamPublishers];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = streamPublishers;
      _os_log_impl(&dword_244177000, v9, OS_LOG_TYPE_INFO, "isSupportEnabledForBMDSL: streamPublishers: %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CBEB58] set];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = streamPublishers;
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

          identifier = [*(*(&v24 + 1) + 8 * i) identifier];
          [v10 addObject:identifier];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v17 = MEMORY[0x277CF0E00];
    current = [MEMORY[0x277CF0E20] current];
    v19 = [v17 policyForProcess:current connectionFlags:0 useCase:caseCopy];

    v20 = [v19 allowsAccessToContextSyncStreams:v10];
    if ((v20 & 1) == 0)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [BMDistributedContextUtilities isSupportEnabledForBMDSL:v10 useCase:v21 withError:?];
      }

      [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:4];
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
  bm_bootSessionUUID = [MEMORY[0x277CCAD78] bm_bootSessionUUID];
  uUIDString = [bm_bootSessionUUID UUIDString];

  return uUIDString;
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