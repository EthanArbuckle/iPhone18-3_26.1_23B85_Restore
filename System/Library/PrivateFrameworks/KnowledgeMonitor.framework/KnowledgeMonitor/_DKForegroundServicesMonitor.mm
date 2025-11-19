@interface _DKForegroundServicesMonitor
- (id)processUpdateHandler;
- (void)addServicesForeground:(id)a3 andRemoveServices:(id)a4;
- (void)processMonitor:(id)a3 didUpdateState:(id)a4 forProcess:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation _DKForegroundServicesMonitor

- (void)start
{
  if ([(_DKMonitor *)self instantMonitorNeedsActivation])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    previouslyForegroundServices = self->_previouslyForegroundServices;
    self->_previouslyForegroundServices = v3;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37___DKForegroundServicesMonitor_start__block_invoke;
    v7[3] = &unk_27856F6A0;
    v7[4] = self;
    v5 = [MEMORY[0x277D46F80] monitorWithConfiguration:v7];
    processMonitor = self->_processMonitor;
    self->_processMonitor = v5;
  }
}

- (void)stop
{
  if ([(_DKMonitor *)self instantMonitorNeedsDeactivation])
  {
    [(RBSProcessMonitor *)self->_processMonitor invalidate];
    processMonitor = self->_processMonitor;
    self->_processMonitor = 0;

    previouslyForegroundServices = self->_previouslyForegroundServices;
    self->_previouslyForegroundServices = 0;
  }
}

- (void)addServicesForeground:(id)a3 andRemoveServices:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CFE318] userContext];
  v10 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CFE338] keyPathForServicesAppearingForeground];
    v12 = [v9 objectForKeyedSubscript:v11];
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_22595A000, v10, OS_LOG_TYPE_DEFAULT, "Adding objects: %@, Removing objects: %@, previously %@", &v15, 0x20u);
  }

  v13 = [MEMORY[0x277CFE338] keyPathForServicesAppearingForeground];
  [v9 addObjects:v6 andRemoveObjects:v7 fromArrayAtKeyPath:v13];

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)processMonitor:(id)a3 didUpdateState:(id)a4 forProcess:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [a5 bundle];
  v9 = [v8 identifier];

  v10 = [(_DKForegroundServicesMonitor *)self servicesOfInterestForWatchCommunication];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v12 = [v7 state];
    v13 = [v12 taskState];

    if (v13 == 4)
    {
      if (([(NSMutableSet *)self->_previouslyForegroundServices containsObject:v9]& 1) == 0)
      {
        v18[0] = v9;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [(_DKForegroundServicesMonitor *)self addServicesForeground:v14 andRemoveServices:MEMORY[0x277CBEBF8]];

        [(NSMutableSet *)self->_previouslyForegroundServices addObject:v9];
      }
    }

    else
    {
      v17 = v9;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      [(_DKForegroundServicesMonitor *)self addServicesForeground:MEMORY[0x277CBEBF8] andRemoveServices:v15];

      [(NSMutableSet *)self->_previouslyForegroundServices removeObject:v9];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)processUpdateHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52___DKForegroundServicesMonitor_processUpdateHandler__block_invoke;
  v4[3] = &unk_27856F6F0;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x22AA6AF50](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

@end