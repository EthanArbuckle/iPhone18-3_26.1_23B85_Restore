@interface DKThermalPressureMonitor
@end

@implementation DKThermalPressureMonitor

void __34___DKThermalPressureMonitor_start__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277D85E48];
  v3 = *(a1 + 32);
  v4 = [v3 queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34___DKThermalPressureMonitor_start__block_invoke_2;
  handler[3] = &unk_27856F408;
  handler[4] = *(a1 + 32);
  notify_register_dispatch(v2, v3 + 39, v4, handler);

  v5 = *(a1 + 32);
  v6 = [v5 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___DKThermalPressureMonitor_start__block_invoke_3;
  v7[3] = &unk_27856F408;
  v7[4] = *(a1 + 32);
  notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v5 + 41, v6, v7);
}

@end