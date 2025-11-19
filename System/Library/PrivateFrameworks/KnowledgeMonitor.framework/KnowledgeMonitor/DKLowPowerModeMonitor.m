@interface DKLowPowerModeMonitor
@end

@implementation DKLowPowerModeMonitor

void __44___DKLowPowerModeMonitor_updateLowPowerMode__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  v4 = [*(a1 + 32) lowPowerModeStatus];
  if (!v4 || (v5 = v4, [*(a1 + 32) lowPowerModeStatus], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v5, v3 != v7))
  {
    v11 = [_DKLowPowerModeMonitor _eventWithLowPowerModeState:v3];
    [*(a1 + 32) setCurrentEvent:v11 inferHistoricalState:1];
    [_DKLowPowerModeMonitor setLowPowerMode:v3];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [*(a1 + 32) setLowPowerModeStatus:v8];

    v9 = *(*(a1 + 32) + 152);
    v10 = [objc_opt_class() _BMEventWithLowPowerModeState:v3];
    [v9 sendEvent:v10];
  }
}

@end