@interface LCFBiomeManager
- (BOOL)writeData:(id)data;
- (id)init:(id)init;
@end

@implementation LCFBiomeManager

- (id)init:(id)init
{
  initCopy = init;
  v9.receiver = self;
  v9.super_class = LCFBiomeManager;
  v6 = [(LCFBiomeManager *)&v9 init];
  if (v6)
  {
    LCFLoggingUtilsInit();
    objc_storeStrong(&v6->_biomeStream, init);
    biomeSource = v6->_biomeSource;
    v6->_biomeSource = 0;
  }

  return v6;
}

- (BOOL)writeData:(id)data
{
  dataCopy = data;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__LCFBiomeManager_writeData___block_invoke;
  block[3] = &unk_279815F10;
  block[4] = self;
  if (onceTokenBiomeSource != -1)
  {
    dispatch_once(&onceTokenBiomeSource, block);
  }

  v5 = self->_biomeSource;
  objc_sync_enter(v5);
  [(BMSource *)self->_biomeSource sendEvent:dataCopy];
  objc_sync_exit(v5);

  return 1;
}

void __29__LCFBiomeManager_writeData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = LCFLogContextBiomeManager;
    if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_ERROR))
    {
      __29__LCFBiomeManager_writeData___block_invoke_cold_1(v3);
    }

    v2 = *(a1 + 32);
  }

  v4 = [*(v2 + 8) source];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

void __45__LCFBiomeManager_readData_endDate_reversed___block_invoke()
{
  v0 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_255F22000, v0, OS_LOG_TYPE_INFO, "Completed.", v1, 2u);
  }
}

void __45__LCFBiomeManager_readData_endDate_reversed___block_invoke_52(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 eventBody];
  [v2 addObject:v3];
}

void __51__LCFBiomeManager_readTimeStamps_endDate_reversed___block_invoke()
{
  v0 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_255F22000, v0, OS_LOG_TYPE_INFO, "Completed.", v1, 2u);
  }
}

void __51__LCFBiomeManager_readTimeStamps_endDate_reversed___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  [a2 timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  [*(a1 + 32) addObject:v4];
}

void __58__LCFBiomeManager_readDataWithTimestamp_endDate_reversed___block_invoke()
{
  v0 = LCFLogContextBiomeManager;
  if (os_log_type_enabled(LCFLogContextBiomeManager, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_255F22000, v0, OS_LOG_TYPE_INFO, "Completed.", v1, 2u);
  }
}

void __58__LCFBiomeManager_readDataWithTimestamp_endDate_reversed___block_invoke_61(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v4 timestamp];
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v9[0] = v5;
  v6 = [v4 eventBody];

  v9[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v2 addObject:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end