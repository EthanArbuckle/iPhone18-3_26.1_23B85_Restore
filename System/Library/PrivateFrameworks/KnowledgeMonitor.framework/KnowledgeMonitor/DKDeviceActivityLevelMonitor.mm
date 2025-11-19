@interface DKDeviceActivityLevelMonitor
@end

@implementation DKDeviceActivityLevelMonitor

uint64_t __38___DKDeviceActivityLevelMonitor_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38___DKDeviceActivityLevelMonitor_start__block_invoke_2;
  v7[3] = &unk_27856F060;
  v7[4] = *(a1 + 32);
  v3 = v7;
  v4 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_11;
  block[3] = &unk_27856F178;
  v9 = v4;
  v10 = v3;
  v5 = v4;
  dispatch_async(v2, block);

  return 1;
}

uint64_t __38___DKDeviceActivityLevelMonitor_start__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 lastInUseStatus];

  return [v1 updatePerformanceThrottleStatusWithLevel:v2];
}

void __38___DKDeviceActivityLevelMonitor_start__block_invoke_6(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = [*(a1 + 32) debounceTimer];
  dispatch_suspend(v6);

  [*(a1 + 32) setCurrentInUseStatus:a2 & 0xFFFFFFFFFFFFFFFDLL];
  v7 = [*(a1 + 32) debounceTimer];
  if (a3 >= 2)
  {
    v8 = 2000000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = dispatch_walltime(0, v8);
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

  v10 = [*(a1 + 32) debounceTimer];
  dispatch_resume(v10);
}

uint64_t __38___DKDeviceActivityLevelMonitor_start__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentInUseStatus];

  return [v1 updateActivityDateAndInUseState:v2];
}

void __38___DKDeviceActivityLevelMonitor_start__block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setLastActivityDate:v2];
  [*(a1 + 32) setLastSetActiveDate:v2];
}

@end