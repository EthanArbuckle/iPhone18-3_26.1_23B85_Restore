@interface _DKCPUUsageMonitor
- (BOOL)updateCPUUsagePercentage:(unint64_t *)a3;
- (unint64_t)getCPUUsageLevelFromPercentage:(unint64_t)a3;
- (unint64_t)getCurrentCPUUsageLevel;
- (void)getCPUTicksForUser:(unint64_t *)a3 system:(unint64_t *)a4 idle:(unint64_t *)a5;
- (void)setCurrentCPUUsageLevel:(unint64_t)a3;
- (void)start;
- (void)stop;
@end

@implementation _DKCPUUsageMonitor

- (unint64_t)getCurrentCPUUsageLevel
{
  v5 = 0;
  lastCPUUsageLevel = self->_lastCPUUsageLevel;
  if ([(_DKCPUUsageMonitor *)self updateCPUUsagePercentage:&v5])
  {
    return [(_DKCPUUsageMonitor *)self getCPUUsageLevelFromPercentage:v5];
  }

  return lastCPUUsageLevel;
}

- (void)setCurrentCPUUsageLevel:(unint64_t)a3
{
  if (self->_lastCPUUsageLevel != a3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v6 = [MEMORY[0x277CFE318] userContext];
    v7 = [MEMORY[0x277CFE338] keyPathForCPUUsageLevel];
    [v6 setObject:v5 forKeyedSubscript:v7];

    self->_lastCPUUsageLevel = a3;
  }
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = _DKCPUUsageMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsActivation])
  {
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27___DKCPUUsageMonitor_start__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);
  }
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = _DKCPUUsageMonitor;
  if ([(_DKMonitor *)&v4 instantMonitorNeedsDeactivation])
  {
    timer = self->_timer;
    if (timer)
    {
      dispatch_suspend(timer);
    }
  }
}

- (void)getCPUTicksForUser:(unint64_t *)a3 system:(unint64_t *)a4 idle:(unint64_t *)a5
{
  *host_info_out = 0;
  v13 = 0;
  host_info_outCnt = 4;
  v8 = MEMORY[0x22AA6AC70](self, a2);
  if (!host_statistics(v8, 3, host_info_out, &host_info_outCnt))
  {
    v9 = host_info_out[1];
    v10 = v13;
    *a3 = (HIDWORD(v13) + host_info_out[0]);
    *a4 = v9;
    *a5 = v10;
  }
}

- (BOOL)updateCPUUsagePercentage:(unint64_t *)a3
{
  lastUserTick = self->_lastUserTick;
  lastSysTick = self->_lastSysTick;
  v16 = lastUserTick;
  lastIdleTick = self->_lastIdleTick;
  [(_DKCPUUsageMonitor *)self getCPUTicksForUser:&v16 system:&lastSysTick idle:&lastIdleTick];
  v6 = self->_lastSysTick;
  v7 = self->_lastIdleTick;
  v8 = v16 - self->_lastUserTick;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = lastSysTick == v6;
  }

  v10 = v9 && lastIdleTick == v7;
  result = !v10;
  if (!v10)
  {
    v12 = lastIdleTick - v7;
    v13 = lastSysTick - v6;
    *a3 = ((v13 + v8) / (v12 + v13 + v8) * 100.0);
    self->_lastUserTick += v8;
    self->_lastSysTick += v13;
    self->_lastIdleTick += v12;
  }

  return result;
}

- (unint64_t)getCPUUsageLevelFromPercentage:(unint64_t)a3
{
  v3 = 90;
  v4 = 75;
  v5 = 50;
  if (a3 <= 0x32)
  {
    v5 = 0;
  }

  if (a3 <= 0x4B)
  {
    v4 = v5;
  }

  if (a3 <= 0x5A)
  {
    v3 = v4;
  }

  if (a3 <= 0x5F)
  {
    return v3;
  }

  else
  {
    return 95;
  }
}

@end