@interface DKBatteryMonitor
@end

@implementation DKBatteryMonitor

void __54___DKBatteryMonitor__registerIOPSNotifyAttachListener__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (IOPSGetSupportedPowerSources())
  {
    v4 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54___DKBatteryMonitor__registerIOPSNotifyAttachListener__block_invoke_cold_1();
    }
  }

  else
  {
    notify_cancel(a2);
    [WeakRetained setHasInternalBattery:0];
    [WeakRetained completeStart];
  }
}

@end