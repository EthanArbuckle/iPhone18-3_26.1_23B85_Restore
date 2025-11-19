@interface _DKOrientationMonitor
+ (id)_BMEventWithValue:(int64_t)a3;
+ (id)_eventWithValue:(int64_t)a3;
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

+ (id)_eventWithValue:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [MEMORY[0x277CFE2B0] landscape];
  }

  else
  {
    if (a3)
    {
      [MEMORY[0x277CFE2B0] unknown];
    }

    else
    {
      [MEMORY[0x277CFE2B0] portriat];
    }
    v3 = ;
  }

  v4 = v3;
  v5 = MEMORY[0x277CFE1D8];
  v6 = [MEMORY[0x277CFE298] displayOrientationStream];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [MEMORY[0x277CBEAA8] distantFuture];
  v9 = [v5 eventWithStream:v6 startDate:v7 endDate:v8 value:v4];

  return v9;
}

+ (id)_BMEventWithValue:(int64_t)a3
{
  if (a3)
  {
    v3 = 2 * (a3 == 1);
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
  v4 = [v3 Device];
  v5 = [v4 Display];
  v6 = [v5 InterfaceOrientation];
  v7 = [v6 source];
  source = self->_source;
  self->_source = v7;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30___DKOrientationMonitor_start__block_invoke;
  v13[3] = &unk_27856F650;
  v13[4] = self;
  v9 = MEMORY[0x22AA6AF50](v13);
  v10 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  [v10 setNeedsUserInteractivePriority:0];
  [v10 setTransitionHandler:v9];
  v11 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v10];
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