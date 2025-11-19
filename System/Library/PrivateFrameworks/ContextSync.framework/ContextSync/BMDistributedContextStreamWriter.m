@interface BMDistributedContextStreamWriter
+ (id)sharedEventQueue;
+ (id)sourceForStreamWithIdentifier:(id)a3;
+ (void)postEvent:(id)a3;
@end

@implementation BMDistributedContextStreamWriter

+ (id)sharedEventQueue
{
  if (sharedEventQueue_onceToken != -1)
  {
    +[BMDistributedContextStreamWriter sharedEventQueue];
  }

  v3 = sharedEventQueue_sharedEventQueue;

  return v3;
}

uint64_t __52__BMDistributedContextStreamWriter_sharedEventQueue__block_invoke()
{
  sharedEventQueue_sharedEventQueue = dispatch_queue_create("com.apple.contextsync.main", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)sourceForStreamWithIdentifier:(id)a3
{
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v4 = getBiomeLibrarySymbolLoc_ptr;
  v23 = getBiomeLibrarySymbolLoc_ptr;
  if (!getBiomeLibrarySymbolLoc_ptr)
  {
    v18[1] = MEMORY[0x277D85DD0];
    v18[2] = 3221225472;
    v18[3] = __getBiomeLibrarySymbolLoc_block_invoke;
    v18[4] = &unk_278E07AD8;
    v19 = &v20;
    v5 = BiomeLibraryLibrary();
    v21[3] = dlsym(v5, "BiomeLibrary");
    getBiomeLibrarySymbolLoc_ptr = *(v19[1] + 24);
    v4 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v4)
  {
    +[BMDistributedContextStreamWriter sourceForStreamWithIdentifier:];
  }

  v6 = v4();
  v18[0] = 0;
  v7 = [v6 streamWithIdentifier:v3 error:v18];
  v8 = v18[0];
  if (v8)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(BMDistributedContextStreamWriter *)v3 sourceForStreamWithIdentifier:v9, v10, v11, v12, v13, v14, v15];
    }

    v16 = 0;
  }

  else
  {
    v16 = [v7 source];
  }

  return v16;
}

+ (void)postEvent:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() sharedEventQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__BMDistributedContextStreamWriter_postEvent___block_invoke;
  v7[3] = &unk_278E07AB0;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __46__BMDistributedContextStreamWriter_postEvent___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) streamIdentifier];
  v3 = [*(a1 + 32) eventData];
  v4 = [*(a1 + 32) eventDataVersion];
  v5 = [v4 unsignedIntValue];

  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v8 = getBMContextSyncLOIIdentifier();
    v9 = [v2 isEqualToString:v8];

    if (v9)
    {
      BMContextSyncLOIClass = getBMContextSyncLOIClass();
    }

    else
    {
      v11 = getBMContextSyncDeviceActivityLevelIdentifier();
      v12 = [v2 isEqualToString:v11];

      if (v12)
      {
        BMContextSyncLOIClass = getBMContextSyncDeviceActivityLevelClass();
      }

      else
      {
        v13 = getBMContextSyncCellularAvailabilityStatusIdentifier();
        v14 = [v2 isEqualToString:v13];

        if (v14)
        {
          BMContextSyncLOIClass = getBMContextSyncCellularAvailabilityStatusClass();
        }

        else
        {
          v15 = getBMContextSyncWalletTransactionIdentifier();
          v16 = [v2 isEqualToString:v15];

          if (v16)
          {
            BMContextSyncLOIClass = getBMContextSyncWalletTransactionClass();
          }

          else
          {
            v17 = getBMContextSyncAppInFocusIdentifier();
            v18 = [v2 isEqualToString:v17];

            if (!v18)
            {
              v22 = __biome_log_for_category();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                __46__BMDistributedContextStreamWriter_postEvent___block_invoke_cold_2(v2, v22, v23, v24, v25, v26, v27, v28);
              }

LABEL_25:
              v7 = __biome_log_for_category();
              if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
              {
                __46__BMDistributedContextStreamWriter_postEvent___block_invoke_cold_3(v2, v7, v29, v30, v31, v32, v33, v34);
              }

              goto LABEL_27;
            }

            BMContextSyncLOIClass = getBMContextSyncAppInFocusClass();
          }
        }
      }
    }

    v19 = [BMContextSyncLOIClass eventWithData:v3 dataVersion:v5];
    if (v19)
    {
      v7 = v19;
      v20 = [*(a1 + 40) sourceForStreamWithIdentifier:v2];
      [v20 sendEvent:v7];
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138412546;
        v37 = v2;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&dword_244177000, v21, OS_LOG_TYPE_DEFAULT, "Posted event for identifier: %@, %@", &v36, 0x16u);
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __46__BMDistributedContextStreamWriter_postEvent___block_invoke_cold_1(v7);
  }

LABEL_27:

  v35 = *MEMORY[0x277D85DE8];
}

+ (void)sourceForStreamWithIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_244177000, a2, a3, "failed to get stream with identifier %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)sourceForStreamWithIdentifier:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<BMRootLibrary> __softlink__BiomeLibrary(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMDistributedContextEventTranslation.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void __46__BMDistributedContextStreamWriter_postEvent___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_244177000, a2, a3, "Could not post event with non-whitelisted identifier: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __46__BMDistributedContextStreamWriter_postEvent___block_invoke_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_244177000, a2, a3, "Failed to deserialize event with identifier: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end