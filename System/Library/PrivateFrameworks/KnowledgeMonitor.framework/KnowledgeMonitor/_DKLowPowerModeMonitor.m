@interface _DKLowPowerModeMonitor
+ (id)_eventWithLowPowerModeState:(BOOL)a3;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)updateLowPowerMode;
@end

@implementation _DKLowPowerModeMonitor

+ (id)_eventWithLowPowerModeState:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x277CFE1A0] on];
  }

  else
  {
    [MEMORY[0x277CFE1A0] off];
  }
  v3 = ;
  v4 = MEMORY[0x277CFE1D8];
  v5 = [MEMORY[0x277CFE298] deviceLowPowerModeStream];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v4 eventWithStream:v5 startDate:v6 endDate:v7 value:v3];

  return v8;
}

- (void)start
{
  v15.receiver = self;
  v15.super_class = _DKLowPowerModeMonitor;
  if ([(_DKMonitor *)&v15 instantMonitorNeedsActivation])
  {
    v3 = BiomeLibrary();
    v4 = [v3 Device];
    v5 = [v4 Power];
    v6 = [v5 LowPowerMode];
    v7 = [v6 source];
    source = self->_source;
    self->_source = v7;

    v9 = [MEMORY[0x277CFE318] userContext];
    v10 = [MEMORY[0x277CFE338] keyPathForLowPowerModeStatus];
    v11 = [v9 objectForKeyedSubscript:v10];
    [(_DKLowPowerModeMonitor *)self setLowPowerModeStatus:v11];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *MEMORY[0x277CCA5E8];
    v14 = [MEMORY[0x277CCAC38] processInfo];
    [v12 addObserver:self selector:sel_lowPowerModeStateChanged_ name:v13 object:v14];

    [(_DKLowPowerModeMonitor *)self updateLowPowerMode];
  }
}

- (void)stop
{
  v6.receiver = self;
  v6.super_class = _DKLowPowerModeMonitor;
  if ([(_DKMonitor *)&v6 instantMonitorNeedsDeactivation])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277CCA5E8];
    v5 = [MEMORY[0x277CCAC38] processInfo];
    [v3 removeObserver:self name:v4 object:v5];
  }
}

- (void)synchronouslyReflectCurrentValue
{
  v3 = [(_DKMonitor *)self currentEvent];

  if (!v3)
  {

    [(_DKLowPowerModeMonitor *)self updateLowPowerMode];
  }
}

- (void)updateLowPowerMode
{
  v3 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___DKLowPowerModeMonitor_updateLowPowerMode__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_async(v3, block);
}

@end