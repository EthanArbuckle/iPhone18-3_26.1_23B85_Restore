@interface _DKThermalPressureMonitor
- (void)deactivate;
- (void)dealloc;
- (void)getPeakPowerPressureLevelWithToken:(int)token;
- (void)getThermalPressureLevelWithToken:(int)token;
- (void)setCurrentPeakPowerPressureLevel:(unsigned int)level;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKThermalPressureMonitor

- (void)dealloc
{
  [(_DKThermalPressureMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKThermalPressureMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)setCurrentPeakPowerPressureLevel:(unsigned int)level
{
  if (self->_peakPowerPressureLevel != level)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    userContext = [MEMORY[0x277CFE318] userContext];
    v7 = [MEMORY[0x277CFE358] ephemeralKeyPathWithKey:@"/system/peakPowerPressureLevel"];
    [userContext setObject:v5 forKeyedSubscript:v7];

    self->_peakPowerPressureLevel = level != 0;
  }
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = _DKThermalPressureMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsActivation])
  {
    self->_initialized = 0;
    queue = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34___DKThermalPressureMonitor_start__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue, block);

    [(_DKThermalPressureMonitor *)self synchronouslyReflectCurrentValue];
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKThermalPressureMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKThermalPressureMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  thermalPressureToken = self->_thermalPressureToken;
  if (thermalPressureToken)
  {
    notify_cancel(thermalPressureToken);
    self->_thermalPressureToken = 0;
  }

  peakPowerPressureToken = self->_peakPowerPressureToken;
  if (peakPowerPressureToken)
  {
    notify_cancel(peakPowerPressureToken);
    self->_peakPowerPressureToken = 0;
  }

  self->_initialized = 0;
}

- (void)getThermalPressureLevelWithToken:(int)token
{
  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    v4 = 0;
  }

  else
  {
    v4 = state64;
  }

  [(_DKThermalPressureMonitor *)self setCurrentThermalLevel:v4];
}

- (void)getPeakPowerPressureLevelWithToken:(int)token
{
  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    v4 = 0;
  }

  else
  {
    v4 = state64;
  }

  [(_DKThermalPressureMonitor *)self setCurrentPeakPowerPressureLevel:v4];
}

- (void)synchronouslyReflectCurrentValue
{
  [(_DKThermalPressureMonitor *)self getThermalPressureLevelWithToken:self->_thermalPressureToken];
  peakPowerPressureToken = self->_peakPowerPressureToken;

  [(_DKThermalPressureMonitor *)self getPeakPowerPressureLevelWithToken:peakPowerPressureToken];
}

@end