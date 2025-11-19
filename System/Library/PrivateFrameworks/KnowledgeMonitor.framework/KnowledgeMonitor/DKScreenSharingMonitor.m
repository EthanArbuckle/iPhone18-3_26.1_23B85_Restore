@interface DKScreenSharingMonitor
@end

@implementation DKScreenSharingMonitor

void __46___DKScreenSharingMonitor_mirroringDidChange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) outputContext];
  v3 = [v2 outputDevices];
  v4 = [v3 count];

  v5 = [*(a1 + 32) currentMirroringDeviceCount];
  v6 = [MEMORY[0x277CFE0C8] contextChannel];
  v7 = v6;
  if (v4 == v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __46___DKScreenSharingMonitor_mirroringDidChange___block_invoke_cold_1(v4, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "currentMirroringDeviceCount")}];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_22595A000, v7, OS_LOG_TYPE_INFO, "Change in Mirroring devices count: %@ to %@", &v13, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x277CF1AB8]) initWithIsStart:v4 != 0];
    v10 = [*(a1 + 32) screenSharingStream];
    v11 = [v10 source];
    [v11 sendEvent:v7];

    [*(a1 + 32) setCurrentMirroringDeviceCount:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __46___DKScreenSharingMonitor_mirroringDidChange___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "No change in mirroring devices count: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end