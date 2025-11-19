@interface DKWiFiConnectionMonitor
@end

@implementation DKWiFiConnectionMonitor

void __33___DKWiFiConnectionMonitor_start__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  if (+[_DKWiFiConnectionMonitor writeToBiome])
  {
    v2 = BiomeLibrary();
    v3 = [v2 Device];
    v4 = [v3 Wireless];
    v5 = [v4 WiFi];
    v6 = [v5 source];
    v7 = *(a1 + 32);
    v8 = *(v7 + 152);
    *(v7 + 152) = v6;
  }

  v9 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:3];
  v10 = *(a1 + 32);
  v11 = *(v10 + 160);
  *(v10 + 160) = v9;

  v12 = *(*(a1 + 32) + 160);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __33___DKWiFiConnectionMonitor_start__block_invoke_2;
  v25[3] = &unk_27856F430;
  objc_copyWeak(&v26, &location);
  [v12 setEventHandler:v25];
  [*(*(a1 + 32) + 160) activate];
  v13 = *(*(a1 + 32) + 160);
  v24 = 0;
  v14 = [v13 startMonitoringEventType:2 error:&v24];
  v15 = v24;
  if ((v14 & 1) == 0)
  {
    v16 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __33___DKWiFiConnectionMonitor_start__block_invoke_cold_1(v15, v16);
    }
  }

  v17 = *(*(a1 + 32) + 160);
  v23 = v15;
  v18 = [v17 startMonitoringEventType:30 error:&v23];
  v19 = v23;

  if ((v18 & 1) == 0)
  {
    v20 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      __33___DKWiFiConnectionMonitor_start__block_invoke_cold_2(v19, v20);
    }
  }

  v21 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_22595A000, v21, OS_LOG_TYPE_DEFAULT, "WiFi Connection Monitor started", v22, 2u);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __33___DKWiFiConnectionMonitor_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33___DKWiFiConnectionMonitor_start__block_invoke_3;
    v7[3] = &unk_27856F0B0;
    v7[4] = v5;
    v8 = v3;
    dispatch_sync(v6, v7);
  }
}

uint64_t __67___DKWiFiConnectionMonitor__handleKnownNetworkProfileChangedEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(a1 + 32);
  v5 = [v3 SSID];
  v6 = [v4 isEqual:v5];

  return v6;
}

void __32___DKWiFiConnectionMonitor_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 160) invalidate];
  v1 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22595A000, v1, OS_LOG_TYPE_DEFAULT, "WiFi Connection Monitor stopped", v2, 2u);
  }
}

void __33___DKWiFiConnectionMonitor_start__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_22595A000, a2, OS_LOG_TYPE_FAULT, "Failed to register for SSID changes with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __33___DKWiFiConnectionMonitor_start__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_22595A000, a2, OS_LOG_TYPE_FAULT, "Failed to register for known network changes with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end