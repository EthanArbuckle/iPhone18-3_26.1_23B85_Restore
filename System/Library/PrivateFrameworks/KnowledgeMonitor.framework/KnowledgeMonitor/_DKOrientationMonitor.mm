@interface _DKOrientationMonitor
+ (id)_BMEventWithValue:(int64_t)value;
+ (id)_eventWithValue:(int64_t)value;
- (void)deactivate;
- (void)dealloc;
- (void)start;
@end

@implementation _DKOrientationMonitor

- (void)dealloc
{
  [(_DKOrientationMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKOrientationMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)_eventWithValue:(int64_t)value
{
  if (value == 1)
  {
    landscape = [MEMORY[0x277CFE2B0] landscape];
  }

  else
  {
    if (value)
    {
      [MEMORY[0x277CFE2B0] unknown];
    }

    else
    {
      [MEMORY[0x277CFE2B0] portriat];
    }
    landscape = ;
  }

  v4 = landscape;
  v5 = MEMORY[0x277CFE1D8];
  displayOrientationStream = [MEMORY[0x277CFE298] displayOrientationStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v9 = [v5 eventWithStream:displayOrientationStream startDate:date endDate:distantFuture value:v4];

  return v9;
}

+ (id)_BMEventWithValue:(int64_t)value
{
  if (value)
  {
    v3 = 2 * (value == 1);
  }

  else
  {
    v3 = 1;
  }

  v4 = [objc_alloc(MEMORY[0x277CF10E0]) initWithCategory:v3];

  return v4;
}

- (void)start
{
  v3 = BiomeLibrary();
  device = [v3 Device];
  display = [device Display];
  interfaceOrientation = [display InterfaceOrientation];
  source = [interfaceOrientation source];
  source = self->_source;
  self->_source = source;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30___DKOrientationMonitor_start__block_invoke;
  v13[3] = &unk_27856F650;
  v13[4] = self;
  v9 = MEMORY[0x22AA6AF50](v13);
  configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  [configurationForDefaultMainDisplayMonitor setNeedsUserInteractivePriority:0];
  [configurationForDefaultMainDisplayMonitor setTransitionHandler:v9];
  v11 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
  monitor = self->_monitor;
  self->_monitor = v11;
}

- (void)deactivate
{
  [(FBSDisplayLayoutMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;
}

@end