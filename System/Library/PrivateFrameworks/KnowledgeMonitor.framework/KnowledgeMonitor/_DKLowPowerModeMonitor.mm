@interface _DKLowPowerModeMonitor
+ (id)_eventWithLowPowerModeState:(BOOL)state;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)updateLowPowerMode;
@end

@implementation _DKLowPowerModeMonitor

+ (id)_eventWithLowPowerModeState:(BOOL)state
{
  if (state)
  {
    [MEMORY[0x277CFE1A0] on];
  }

  else
  {
    [MEMORY[0x277CFE1A0] off];
  }
  v3 = ;
  v4 = MEMORY[0x277CFE1D8];
  deviceLowPowerModeStream = [MEMORY[0x277CFE298] deviceLowPowerModeStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v4 eventWithStream:deviceLowPowerModeStream startDate:date endDate:distantFuture value:v3];

  return v8;
}

- (void)start
{
  v15.receiver = self;
  v15.super_class = _DKLowPowerModeMonitor;
  if ([(_DKMonitor *)&v15 instantMonitorNeedsActivation])
  {
    v3 = BiomeLibrary();
    device = [v3 Device];
    power = [device Power];
    lowPowerMode = [power LowPowerMode];
    source = [lowPowerMode source];
    source = self->_source;
    self->_source = source;

    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForLowPowerModeStatus = [MEMORY[0x277CFE338] keyPathForLowPowerModeStatus];
    v11 = [userContext objectForKeyedSubscript:keyPathForLowPowerModeStatus];
    [(_DKLowPowerModeMonitor *)self setLowPowerModeStatus:v11];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *MEMORY[0x277CCA5E8];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [defaultCenter addObserver:self selector:sel_lowPowerModeStateChanged_ name:v13 object:processInfo];

    [(_DKLowPowerModeMonitor *)self updateLowPowerMode];
  }
}

- (void)stop
{
  v6.receiver = self;
  v6.super_class = _DKLowPowerModeMonitor;
  if ([(_DKMonitor *)&v6 instantMonitorNeedsDeactivation])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277CCA5E8];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [defaultCenter removeObserver:self name:v4 object:processInfo];
  }
}

- (void)synchronouslyReflectCurrentValue
{
  currentEvent = [(_DKMonitor *)self currentEvent];

  if (!currentEvent)
  {

    [(_DKLowPowerModeMonitor *)self updateLowPowerMode];
  }
}

- (void)updateLowPowerMode
{
  queue = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___DKLowPowerModeMonitor_updateLowPowerMode__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_async(queue, block);
}

@end