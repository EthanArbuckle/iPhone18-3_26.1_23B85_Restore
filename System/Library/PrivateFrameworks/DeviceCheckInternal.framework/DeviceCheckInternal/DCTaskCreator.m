@interface DCTaskCreator
+ (id)create;
@end

@implementation DCTaskCreator

+ (id)create
{
  v2 = [[DCBGSTask alloc] initWithTaskIdentifier:@"com.apple.devicecheck.notify" observerIdentifier:@"activityInterval"];
  [(DCBGSTask *)v2 setTaskHandler:&__block_literal_global];

  return v2;
}

void __23__DCTaskCreator_create__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[DCAssetFetcher sharedFetcher];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __23__DCTaskCreator_create__block_invoke_2;
    v4[3] = &unk_278F59B70;
    v5 = v2;
    [v3 initiateMetadataFetchIgnoringCachesWithCompletion:v4];
  }
}

void __23__DCTaskCreator_create__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    if (DCInternalLogSystem_onceToken != -1)
    {
      __23__DCTaskCreator_create__block_invoke_2_cold_1();
    }

    v13 = DCInternalLogSystem_log;
    if (!os_log_type_enabled(DCInternalLogSystem_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v14 = *(a1 + 32);
    v9 = v13;
    v10 = [v14 identifier];
    *v19 = 136315650;
    *&v19[4] = "DCTaskCreator.m";
    *&v19[12] = 1024;
    *&v19[14] = 35;
    *&v19[18] = 2080;
    *&v19[20] = [v10 UTF8String];
    v15 = "%25s:%-5d Failed to initiate metadata fetch. { taskID=%s }";
LABEL_15:
    _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_DEBUG, v15, v19, 0x1Cu);
    goto LABEL_16;
  }

  if (!v5)
  {
    if (DCInternalLogSystem_onceToken != -1)
    {
      __23__DCTaskCreator_create__block_invoke_2_cold_1();
    }

    v16 = DCInternalLogSystem_log;
    if (!os_log_type_enabled(DCInternalLogSystem_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v17 = *(a1 + 32);
    v9 = v16;
    v10 = [v17 identifier];
    *v19 = 136315650;
    *&v19[4] = "DCTaskCreator.m";
    *&v19[12] = 1024;
    *&v19[14] = 46;
    *&v19[18] = 2080;
    *&v19[20] = [v10 UTF8String];
    v15 = "%25s:%-5d Initiated MobileAsset fetch. { taskID=%s }";
    goto LABEL_15;
  }

  if (DCInternalLogSystem_onceToken != -1)
  {
    __23__DCTaskCreator_create__block_invoke_2_cold_1();
  }

  v7 = DCInternalLogSystem_log;
  if (os_log_type_enabled(DCInternalLogSystem_log, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 identifier];
    v11 = [v10 UTF8String];
    v12 = [v6 localizedDescription];
    *v19 = 136315906;
    *&v19[4] = "DCTaskCreator.m";
    *&v19[12] = 1024;
    *&v19[14] = 41;
    *&v19[18] = 2080;
    *&v19[20] = v11;
    *&v19[28] = 2112;
    *&v19[30] = v12;
    _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to to initiate metadata fetch. { taskID=%s, error=%@ }", v19, 0x26u);

LABEL_16:
  }

LABEL_17:
  [*(a1 + 32) setTaskCompleted];

  v18 = *MEMORY[0x277D85DE8];
}

@end