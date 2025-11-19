@interface DKNowPlayingMonitor
@end

@implementation DKNowPlayingMonitor

uint64_t __28___DKNowPlayingMonitor_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 primaryValue];
  v7 = [v5 primaryValue];
  if ([v6 isEqual:v7])
  {
    v8 = [v4 metadata];
    v9 = [v5 metadata];
    v10 = [v8 isEqualToDictionary:v9];

    v11 = (v10 & 1) - 1;
  }

  else
  {

    v11 = -1;
  }

  return v11;
}

uint64_t __41___DKNowPlayingMonitor__eventFilterBlock__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  v4 = [v3 isEqualToString:@"unknown"];
  if (v4)
  {
    v5 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __41___DKNowPlayingMonitor__eventFilterBlock__block_invoke_25_cold_1(v5);
    }
  }

  return v4;
}

void __47___DKNowPlayingMonitor_outputDevicesDidChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) outputContext];
  v3 = [v2 outputDevices];

  v4 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_INFO, "Output devices in now playing monitor changed, %@ output devices", buf, 0xCu);
  }

  v6 = [*(a1 + 32) queue];
  v9 = *(a1 + 32);
  v7 = v3;
  MRMediaRemoteGetActiveOrigin();

  v8 = *MEMORY[0x277D85DE8];
}

void __47___DKNowPlayingMonitor_outputDevicesDidChange___block_invoke_39(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [v5 _nowPlayingInfoDidChange:a3 outputDevices:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __47___DKNowPlayingMonitor_outputDevicesDidChange___block_invoke_39_cold_1(v6);
    }
  }
}

void __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 _metadataFromInfo:v5 outputDevices:v4];
  v7 = *(a1[8] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27B78]];
  v10 = *(a1[9] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27B68]];
  v13 = *(a1[10] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27BE8]];

  *(*(a1[11] + 8) + 24) = [v15 BOOLValue];
  v16 = a1[6];

  dispatch_group_leave(v16);
}

void __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2_cold_1();
    }
  }

  else
  {
    v5 = MRNowPlayingClientGetBundleIdentifier();
    v6 = a1 + 48;
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    v4 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
    v9 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2_cold_2(a1 + 48, v4, v9);
    }

    if ((([*(*(*v6 + 8) + 40) isEqualToString:@"com.apple.tvairplayd"] & 1) != 0 || objc_msgSend(*(*(*v6 + 8) + 40), "isEqualToString:", @"com.apple.TVAirPlay")) && -[NSObject count](v4, "count") >= 2)
    {
      v10 = [v4 objectAtIndexedSubscript:1];
      v11 = *(*v6 + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2_68(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(*(a1 + 56) + 8) + 40);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    *buf = 138412546;
    v30 = v3;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_22595A000, v2, OS_LOG_TYPE_INFO, "Updated now playing info for %@ with %@ output devices", buf, 0x16u);
  }

  v5 = *(*(a1 + 56) + 8);
  if (!*(v5 + 40))
  {
    *(v5 + 40) = &stru_2838F0870;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if ([&unk_2838F7718 containsObject:*(*(*(a1 + 56) + 8) + 40)])
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      [*(a1 + 40) _stripMetadata:*(*(*(a1 + 64) + 8) + 40)];
    }

    v6 = *(*(*(a1 + 64) + 8) + 40);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(a1 + 80) + 8) + 24)];
    v8 = [MEMORY[0x277CFE248] playing];
    [v6 setObject:v7 forKey:v8];

    v9 = *(a1 + 40);
    v28 = [objc_opt_class() _eventWithBundleIdentifier:*(*(*(a1 + 56) + 8) + 40) metadata:*(*(*(a1 + 64) + 8) + 40)];
    [*(a1 + 40) setCurrentEvent:v28 inferHistoricalState:1];
    v26 = *(*(*(a1 + 80) + 8) + 24);
    v25 = *(*(*(a1 + 56) + 8) + 40);
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v27 = [MEMORY[0x277CFE248] title];
    v11 = [v10 objectForKeyedSubscript:v27];
    v12 = *(*(*(a1 + 64) + 8) + 40);
    v13 = [MEMORY[0x277CFE248] outputDeviceIDs];
    v14 = [v12 objectForKeyedSubscript:v13];
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v16 = [MEMORY[0x277CFE248] mediaType];
    v17 = [v15 objectForKeyedSubscript:v16];
    v18 = *(*(*(a1 + 64) + 8) + 40);
    v19 = [MEMORY[0x277CFE248] iTunesStoreIdentifier];
    v20 = [v18 objectForKeyedSubscript:v19];
    v21 = *(*(*(a1 + 64) + 8) + 40);
    v22 = [MEMORY[0x277CFE248] iTunesSubscriptionIdentifier];
    v23 = [v21 objectForKeyedSubscript:v22];
    [_DKNowPlayingMonitor setPlaybackState:v26 bundleId:v25 track:v11 outputDeviceIDs:v14 mediaType:v17 iTunesStoreIdentifier:v20 iTunesSubscriptionIdentifier:v23];

    *(*(a1 + 40) + 184) = *(*(*(a1 + 80) + 8) + 24);
    [*(a1 + 40) saveBMEventWithCurrent:v28 outputDevices:*(a1 + 32) artistStoreIdentifier:*(*(*(a1 + 88) + 8) + 40) albumStoreIdentifier:*(*(*(a1 + 96) + 8) + 40) excludeFromSuggestions:*(*(*(a1 + 72) + 8) + 24)];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_22595A000, v0, OS_LOG_TYPE_ERROR, "Could not retrieve now playing client. Failed with error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*(*a1 + 8) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_22595A000, log, OS_LOG_TYPE_DEBUG, "Retrived now playing bundle identifier: %@; hierarchy: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end