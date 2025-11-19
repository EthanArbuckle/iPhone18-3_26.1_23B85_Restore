@interface SpeedTestConfig
- (SpeedTestConfig)init;
- (void)dealloc;
- (void)startDownloadTest:(id)a3;
@end

@implementation SpeedTestConfig

- (SpeedTestConfig)init
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SpeedTestConfig;
  v2 = [(SpeedTestConfig *)&v20 init];
  v2->inProgress = 0;
  v3 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24335C000, v3, OS_LOG_TYPE_INFO, "CellularThroughput: CellularTest init", buf, 2u);
  }

  NSLog(&cfstr_Cellularthroug.isa);
  v4 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24335C000, v4, OS_LOG_TYPE_INFO, "CellularThroughput: Creating Configuration", buf, 2u);
  }

  v5 = [MEMORY[0x277D2B8C0] defaultConfigurationCellular];
  v6 = v5;
  if (!v5)
  {
    v16 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24335C000, v16, OS_LOG_TYPE_INFO, "CellularThroughput: performanceTestWithConfig is nil", buf, 2u);
    }

    NSLog(&cfstr_Cellularthroug_0.isa);
    goto LABEL_20;
  }

  [v5 setDownloadSize:50];
  v7 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 downloadSize];
    *buf = 134217984;
    v22 = v8;
    _os_log_impl(&dword_24335C000, v7, OS_LOG_TYPE_INFO, "CellularThroughput: performanceTestWithConfig.downloadSize: %lu", buf, 0xCu);
  }

  [v6 setStopAtFileSize:1];
  [v6 setTestDuration:30];
  v9 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 testDuration];
    *buf = 134217984;
    v22 = v10;
    _os_log_impl(&dword_24335C000, v9, OS_LOG_TYPE_INFO, "CellularThroughput: performanceTestWithConfig.testDuration: %lu", buf, 0xCu);
  }

  [v6 setCollectWRMMetrics:1];
  [v6 setInterfaceType:0];
  v11 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v6 interfaceType];
    *buf = 67109120;
    LODWORD(v22) = v12;
    _os_log_impl(&dword_24335C000, v11, OS_LOG_TYPE_INFO, "CellularThroughput: performanceTestWithConfig.interfaceType: %d", buf, 8u);
  }

  [v6 setClientName:@"CellularDataDiagnosticsSuite"];
  [v6 setLegacyMode:0];
  v13 = [MEMORY[0x277D2B8B0] performanceTestWithConfiguration:v6];
  performanceTest = v2->performanceTest;
  v2->performanceTest = v13;

  if (!v2->performanceTest)
  {
    v17 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24335C000, v17, OS_LOG_TYPE_INFO, "CellularThroughput: performanceTest is nil", buf, 2u);
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v15 = v2;
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)startDownloadTest:(id)a3
{
  v4 = a3;
  if (!self->performanceTest)
  {
    v5 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24335C000, v5, OS_LOG_TYPE_INFO, "CellularThroughput: NPTPerformanceTest instance nil, bailing out", buf, 2u);
    }

    if (v4)
    {
      v4[2](v4, @"NO");
    }
  }

  if (self->inProgress)
  {
    v6 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24335C000, v6, OS_LOG_TYPE_INFO, "CellularThroughput: Download task already started", buf, 2u);
    }

    if (v4)
    {
      v4[2](v4, @"NO");
    }
  }

  self->inProgress = 1;
  v7 = objc_autoreleasePoolPush();
  v8 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24335C000, v8, OS_LOG_TYPE_INFO, "CellularThroughput: Call RPM Test", buf, 2u);
  }

  v9 = dispatch_semaphore_create(0);
  v10 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24335C000, v10, OS_LOG_TYPE_INFO, "CellularThroughput: Metadata collection starting", buf, 2u);
  }

  performanceTest = self->performanceTest;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__SpeedTestConfig_startDownloadTest___block_invoke;
  v20[3] = &unk_278DAE598;
  v12 = v9;
  v21 = v12;
  [(NPTPerformanceTest *)performanceTest startMetadataCollectionWithCompletion:v20];
  v13 = self->performanceTest;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__SpeedTestConfig_startDownloadTest___block_invoke_12;
  v16[3] = &unk_278DAE610;
  v17 = v12;
  v18 = self;
  v14 = v4;
  v19 = v14;
  v15 = v12;
  [(NPTPerformanceTest *)v13 startDownloadWithCompletion:v16];

  objc_autoreleasePoolPop(v7);
}

void __37__SpeedTestConfig_startDownloadTest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v5 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v11 = [v4 count];
    _os_log_impl(&dword_24335C000, v5, OS_LOG_TYPE_INFO, "CellularThroughput: Error count in startMetadataCollectionWithCompletion: %{public}lu", buf, 0xCu);
  }

  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = DiagnosticsKitLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v4 objectAtIndexedSubscript:v6];
        *buf = 138543362;
        v11 = v8;
        _os_log_impl(&dword_24335C000, v7, OS_LOG_TYPE_INFO, "CellularThroughput: Error in startMetadataCollectionWithCompletion: %{public}@", buf, 0xCu);
      }

      ++v6;
    }

    while ([v4 count] > v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __37__SpeedTestConfig_startDownloadTest___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24335C000, v7, OS_LOG_TYPE_INFO, "CellularThroughput: Download task starting", buf, 2u);
  }

  v8 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24335C000, v8, OS_LOG_TYPE_INFO, "CellularThroughput: Metadata collection arrived at semaphore", buf, 2u);
  }

  v9 = *(a1 + 32);
  v10 = dispatch_walltime(0, 10000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24335C000, v11, OS_LOG_TYPE_INFO, "CellularThroughput: Metadata collection after semaphore wait", buf, 2u);
  }

  [*(*(a1 + 40) + 16) stopMetadataCollection];
  [*(*(a1 + 40) + 16) saveToAWD];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __37__SpeedTestConfig_startDownloadTest___block_invoke_16;
  v25 = &unk_278DAE5C0;
  v26 = *(a1 + 40);
  AnalyticsSendEventLazy();
  v12 = dispatch_queue_create("com.apple.wirelessdataanalytics.CellularDataDiagnosticsSuite", 0);
  v13 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SpeedTestConfig_startDownloadTest___block_invoke_2;
  block[3] = &unk_278DAE5E8;
  v18 = v6;
  v19 = v5;
  v14 = *(a1 + 48);
  v20 = *(a1 + 40);
  v21 = v14;
  v15 = v5;
  v16 = v6;
  dispatch_after(v13, v12, block);
}

uint64_t __37__SpeedTestConfig_startDownloadTest___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticsKitLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_24335C000, v2, OS_LOG_TYPE_INFO, "CellularThroughput: save results to AWD", &v11, 2u);
  }

  v3 = *(a1 + 32);
  v4 = DiagnosticsKitLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) localizedDescription];
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_24335C000, v4, OS_LOG_TYPE_INFO, "CellularThroughput: Download task errored out: %{public}@", &v11, 0xCu);
    }

    result = *(a1 + 56);
    if (result)
    {
      v8 = *(result + 16);
LABEL_12:
      result = v8();
    }
  }

  else
  {
    if (v5)
    {
      [*(a1 + 40) speed];
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&dword_24335C000, v4, OS_LOG_TYPE_INFO, "CellularThroughput: Download task completed, throughput %f Mbps", &v11, 0xCu);
    }

    result = *(a1 + 56);
    if (result)
    {
      v8 = *(result + 16);
      goto LABEL_12;
    }
  }

  *(*(a1 + 48) + 8) = 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  performanceTest = self->performanceTest;
  self->performanceTest = 0;

  v4.receiver = self;
  v4.super_class = SpeedTestConfig;
  [(SpeedTestConfig *)&v4 dealloc];
}

@end