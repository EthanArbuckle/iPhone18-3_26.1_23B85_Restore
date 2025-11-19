@interface DKCPUUsageMonitor
@end

@implementation DKCPUUsageMonitor

uint64_t __27___DKCPUUsageMonitor_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) getCurrentCPUUsageLevel];
  v3 = *(a1 + 32);

  return [v3 setCurrentCPUUsageLevel:v2];
}

void __27___DKCPUUsageMonitor_start__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 176) = 0;
  *(*(a1 + 32) + 160) = 0;
  [*(a1 + 32) getCPUTicksForUser:*(a1 + 32) + 160 system:*(a1 + 32) + 176 idle:*(a1 + 32) + 168];
  v2 = [*(a1 + 32) queue];
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = v3;

  dispatch_source_set_timer(*(*(a1 + 32) + 152), 0, 0x2540BE400uLL, 0x5F5E100uLL);
  v6 = *(a1 + 32);
  v7 = *(v6 + 152);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __27___DKCPUUsageMonitor_start__block_invoke_2;
  handler[3] = &unk_27856F060;
  handler[4] = v6;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(*(*(a1 + 32) + 152));
  v8 = [*(a1 + 32) getCurrentCPUUsageLevel];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v10 = [MEMORY[0x277CFE318] userContext];
  v11 = [MEMORY[0x277CFE338] keyPathForCPUUsageLevel];
  [v10 setObject:v9 forKeyedSubscript:v11];

  *(*(a1 + 32) + 184) = v8;
}

@end