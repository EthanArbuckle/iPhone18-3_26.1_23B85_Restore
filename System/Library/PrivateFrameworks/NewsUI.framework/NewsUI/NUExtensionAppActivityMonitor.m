@interface NUExtensionAppActivityMonitor
- (NUExtensionAppActivityMonitor)initWithNotificationCenter:(id)a3;
- (void)addObserver:(id)a3;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
- (void)applicationWillEnterForegroundNotification:(id)a3;
- (void)dealloc;
- (void)performOnApplicationDidEnterBackground:(id)a3;
- (void)performOnApplicationWillEnterForeground:(id)a3;
- (void)performOnApplicationWindowDidBecomeBackground:(id)a3;
- (void)performOnApplicationWindowDidBecomeForeground:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation NUExtensionAppActivityMonitor

- (NUExtensionAppActivityMonitor)initWithNotificationCenter:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = NUExtensionAppActivityMonitor;
  v6 = [(NUExtensionAppActivityMonitor *)&v18 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    backgroundObserverBlocks = v6->_backgroundObserverBlocks;
    v6->_backgroundObserverBlocks = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    foregroundObserverBlocks = v6->_foregroundObserverBlocks;
    v6->_foregroundObserverBlocks = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    windowBackgroundObserverBlocks = v6->_windowBackgroundObserverBlocks;
    v6->_windowBackgroundObserverBlocks = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    windowForegroundObserverBlocks = v6->_windowForegroundObserverBlocks;
    v6->_windowForegroundObserverBlocks = v15;

    objc_storeStrong(&v6->_notificationCenter, a3);
    [(NSNotificationCenter *)v6->_notificationCenter addObserver:v6 selector:sel_applicationWillEnterForegroundNotification_ name:*MEMORY[0x277CCA0D0] object:0];
    [(NSNotificationCenter *)v6->_notificationCenter addObserver:v6 selector:sel_applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277CCA0C8] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(NUExtensionAppActivityMonitor *)self notificationCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NUExtensionAppActivityMonitor;
  [(NUExtensionAppActivityMonitor *)&v4 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(NUExtensionAppActivityMonitor *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(NUExtensionAppActivityMonitor *)self observers];
  [v5 removeObject:v4];
}

- (void)performOnApplicationWillEnterForeground:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(NUExtensionAppActivityMonitor *)self foregroundObserverBlocks];
    v5 = [v4 copy];

    [v6 addObject:v5];
  }
}

- (void)performOnApplicationDidEnterBackground:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(NUExtensionAppActivityMonitor *)self backgroundObserverBlocks];
    v5 = [v4 copy];

    [v6 addObject:v5];
  }
}

- (void)performOnApplicationWindowDidBecomeBackground:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(NUExtensionAppActivityMonitor *)self windowBackgroundObserverBlocks];
    v5 = MEMORY[0x25F883F30](v4);

    [v6 addObject:v5];
  }
}

- (void)performOnApplicationWindowDidBecomeForeground:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(NUExtensionAppActivityMonitor *)self windowForegroundObserverBlocks];
    v5 = MEMORY[0x25F883F30](v4);

    [v6 addObject:v5];
  }
}

- (void)applicationWillEnterForegroundNotification:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [(NUExtensionAppActivityMonitor *)self observers];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 activityObservingApplicationDidBecomeActive];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v7);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = [(NUExtensionAppActivityMonitor *)self observers];
  v12 = [v11 copy];

  v13 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v40 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 activityObservingApplicationWillEnterForeground];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v14);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = [(NUExtensionAppActivityMonitor *)self observers];
  v19 = [v18 copy];

  v20 = [v19 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      v23 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v36 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
          [v24 activityObservingApplicationWindowDidBecomeForeground];
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v21);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = [(NUExtensionAppActivityMonitor *)self windowForegroundObserverBlocks];
  v26 = [v25 copy];

  v27 = [v26 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      v30 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        (*(*(*(&v32 + 1) + 8 * v30++) + 16))();
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(NUExtensionAppActivityMonitor *)self observers];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 activityObservingApplicationDidEnterBackground];
        }

        if (objc_opt_respondsToSelector())
        {
          [v10 activityObservingApplicationWindowDidBecomeBackground];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(NUExtensionAppActivityMonitor *)self windowBackgroundObserverBlocks];
  v12 = [v11 copy];

  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v18 + 1) + 8 * v16++) + 16))();
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end