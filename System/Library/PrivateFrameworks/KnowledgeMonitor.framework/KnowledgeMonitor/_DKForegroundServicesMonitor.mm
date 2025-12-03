@interface _DKForegroundServicesMonitor
- (id)processUpdateHandler;
- (void)addServicesForeground:(id)foreground andRemoveServices:(id)services;
- (void)processMonitor:(id)monitor didUpdateState:(id)state forProcess:(id)process;
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

- (void)addServicesForeground:(id)foreground andRemoveServices:(id)services
{
  v21 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  servicesCopy = services;
  v8 = objc_autoreleasePoolPush();
  userContext = [MEMORY[0x277CFE318] userContext];
  v10 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    keyPathForServicesAppearingForeground = [MEMORY[0x277CFE338] keyPathForServicesAppearingForeground];
    v12 = [userContext objectForKeyedSubscript:keyPathForServicesAppearingForeground];
    v15 = 138412802;
    v16 = foregroundCopy;
    v17 = 2112;
    v18 = servicesCopy;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_22595A000, v10, OS_LOG_TYPE_DEFAULT, "Adding objects: %@, Removing objects: %@, previously %@", &v15, 0x20u);
  }

  keyPathForServicesAppearingForeground2 = [MEMORY[0x277CFE338] keyPathForServicesAppearingForeground];
  [userContext addObjects:foregroundCopy andRemoveObjects:servicesCopy fromArrayAtKeyPath:keyPathForServicesAppearingForeground2];

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)processMonitor:(id)monitor didUpdateState:(id)state forProcess:(id)process
{
  v18[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  bundle = [process bundle];
  identifier = [bundle identifier];

  servicesOfInterestForWatchCommunication = [(_DKForegroundServicesMonitor *)self servicesOfInterestForWatchCommunication];
  v11 = [servicesOfInterestForWatchCommunication containsObject:identifier];

  if (v11)
  {
    state = [stateCopy state];
    taskState = [state taskState];

    if (taskState == 4)
    {
      if (([(NSMutableSet *)self->_previouslyForegroundServices containsObject:identifier]& 1) == 0)
      {
        v18[0] = identifier;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        [(_DKForegroundServicesMonitor *)self addServicesForeground:v14 andRemoveServices:MEMORY[0x277CBEBF8]];

        [(NSMutableSet *)self->_previouslyForegroundServices addObject:identifier];
      }
    }

    else
    {
      v17 = identifier;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      [(_DKForegroundServicesMonitor *)self addServicesForeground:MEMORY[0x277CBEBF8] andRemoveServices:v15];

      [(NSMutableSet *)self->_previouslyForegroundServices removeObject:identifier];
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