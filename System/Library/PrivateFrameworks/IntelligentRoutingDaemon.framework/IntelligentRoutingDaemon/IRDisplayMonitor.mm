@interface IRDisplayMonitor
- (IRDisplayMonitor)init;
- (id)getAppInFocusWithTimestamp;
- (void)_didUpdateContinuityDisplay:(id)display;
- (void)_didUpdateMainDisplayLayout:(id)layout;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation IRDisplayMonitor

void __24__IRDisplayMonitor_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didUpdateMainDisplayLayout:v4];
}

- (IRDisplayMonitor)init
{
  v20.receiver = self;
  v20.super_class = IRDisplayMonitor;
  v2 = [(IRDisplayMonitor *)&v20 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(IRDisplayMonitor *)v2 setObservers:weakObjectsHashTable];

    [(IRDisplayMonitor *)v2 setLock:0];
    objc_initWeak(&location, v2);
    v4 = MEMORY[0x277D0AD08];
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __24__IRDisplayMonitor_init__block_invoke;
    v17[3] = &unk_2797E0EB8;
    objc_copyWeak(&v18, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v17];
    objc_destroyWeak(&v18);
    v6 = [v4 monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    [(IRDisplayMonitor *)v2 setDefaultMainDisplayMonitor:v6];

    defaultMainDisplayMonitor = [(IRDisplayMonitor *)v2 defaultMainDisplayMonitor];
    currentLayout = [defaultMainDisplayMonitor currentLayout];
    [(IRDisplayMonitor *)v2 _didUpdateMainDisplayLayout:currentLayout];

    v9 = MEMORY[0x277D0AD08];
    configurationForContinuityDisplay = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __24__IRDisplayMonitor_init__block_invoke_2;
    v15[3] = &unk_2797E0EB8;
    objc_copyWeak(&v16, &location);
    [configurationForContinuityDisplay setTransitionHandler:v15];
    objc_destroyWeak(&v16);
    v11 = [v9 monitorWithConfiguration:configurationForContinuityDisplay];
    [(IRDisplayMonitor *)v2 setContinuityDisplayMonitor:v11];

    continuityDisplayMonitor = [(IRDisplayMonitor *)v2 continuityDisplayMonitor];
    currentLayout2 = [continuityDisplayMonitor currentLayout];
    [(IRDisplayMonitor *)v2 _didUpdateContinuityDisplay:currentLayout2];

    objc_destroyWeak(&location);
  }

  return v2;
}

void __24__IRDisplayMonitor_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didUpdateContinuityDisplay:v4];
}

- (void)dealloc
{
  defaultMainDisplayMonitor = [(IRDisplayMonitor *)self defaultMainDisplayMonitor];
  [defaultMainDisplayMonitor invalidate];

  continuityDisplayMonitor = [(IRDisplayMonitor *)self continuityDisplayMonitor];
  [continuityDisplayMonitor invalidate];

  v5.receiver = self;
  v5.super_class = IRDisplayMonitor;
  [(IRDisplayMonitor *)&v5 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = [(IRDisplayMonitor *)self observers];
  v5 = [observers containsObject:observerCopy];

  if ((v5 & 1) == 0)
  {
    observers2 = [(IRDisplayMonitor *)self observers];
    [observers2 addObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = [(IRDisplayMonitor *)self observers];
  v5 = [observers containsObject:observerCopy];

  if (v5)
  {
    observers2 = [(IRDisplayMonitor *)self observers];
    [observers2 removeObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getAppInFocusWithTimestamp
{
  os_unfair_lock_lock(&self->_lock);
  appInFocus = [(IRDisplayMonitor *)self appInFocus];

  if (appInFocus)
  {
    appInFocus2 = [(IRDisplayMonitor *)self appInFocus];
    appInFocusTimestamp = [(IRDisplayMonitor *)self appInFocusTimestamp];
    appInFocus = [IRPair pairWithFirst:appInFocus2 second:appInFocusTimestamp];
  }

  os_unfair_lock_unlock(&self->_lock);

  return appInFocus;
}

- (void)_didUpdateMainDisplayLayout:(id)layout
{
  v50 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  os_unfair_lock_lock(&self->_lock);
  appInFocus = [(IRDisplayMonitor *)self appInFocus];
  elements = [layoutCopy elements];
  v7 = [elements firstWhere:&__block_literal_global_4];
  bundleIdentifier = [v7 bundleIdentifier];
  [(IRDisplayMonitor *)self setAppInFocus:bundleIdentifier];

  LODWORD(elements) = [(IRDisplayMonitor *)self displayOn];
  -[IRDisplayMonitor setDisplayOn:](self, "setDisplayOn:", [layoutCopy displayBacklightLevel] > 0);
  if (elements != [(IRDisplayMonitor *)self displayOn])
  {
    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      displayOn = [(IRDisplayMonitor *)self displayOn];
      v11 = @"off";
      if (displayOn)
      {
        v11 = @"on";
      }

      *buf = 138412290;
      v49 = v11;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEFAULT, "#display-monitor, Display: %@", buf, 0xCu);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    observers = [(IRDisplayMonitor *)self observers];
    v13 = [observers countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v13)
    {
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(observers);
          }

          [*(*(&v42 + 1) + 8 * i) monitor:self didUpdateDisplayOn:{-[IRDisplayMonitor displayOn](self, "displayOn")}];
        }

        v13 = [observers countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v13);
    }
  }

  displayLocked = [(IRDisplayMonitor *)self displayLocked];
  elements2 = [layoutCopy elements];
  v18 = [elements2 firstWhere:&__block_literal_global_31];
  [(IRDisplayMonitor *)self setDisplayLocked:v18 != 0];

  if (displayLocked == [(IRDisplayMonitor *)self displayLocked])
  {
    v22 = 0;
  }

  else
  {
    v19 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      displayLocked2 = [(IRDisplayMonitor *)self displayLocked];
      v21 = @"unlocked";
      if (displayLocked2)
      {
        v21 = @"locked";
      }

      *buf = 138412290;
      v49 = v21;
      _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_DEFAULT, "#display-monitor, Display: %@", buf, 0xCu);
    }

    v22 = [(IRDisplayMonitor *)self displayLocked]^ 1;
  }

  v23 = +[IRPreferences shared];
  bannersFromScreenUnlockToAppInFocusEnable = [v23 bannersFromScreenUnlockToAppInFocusEnable];
  if ([bannersFromScreenUnlockToAppInFocusEnable BOOLValue])
  {
    displayLocked3 = [(IRDisplayMonitor *)self displayLocked];

    if (displayLocked3)
    {
      [(IRDisplayMonitor *)self setAppInFocus:0];
    }
  }

  else
  {
  }

  appInFocus2 = [(IRDisplayMonitor *)self appInFocus];
  v27 = [appInFocus isEqual:appInFocus2];

  if ((v27 & 1) == 0)
  {
    appInFocus3 = [(IRDisplayMonitor *)self appInFocus];

    if (appInFocus3)
    {
      timestamp = [layoutCopy timestamp];
      if (timestamp)
      {
        [layoutCopy timestamp];
      }

      else
      {
        [MEMORY[0x277CBEAA8] date];
      }
      v30 = ;
      [(IRDisplayMonitor *)self setAppInFocusTimestamp:v30];
    }

    else
    {
      [(IRDisplayMonitor *)self setAppInFocusTimestamp:0];
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    observers2 = [(IRDisplayMonitor *)self observers];
    v32 = [observers2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v32)
    {
      v33 = *v39;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(observers2);
          }

          v35 = *(*(&v38 + 1) + 8 * j);
          appInFocus4 = [(IRDisplayMonitor *)self appInFocus];
          [v35 monitor:self didUpdateAppInFocus:appInFocus4 isScreenUnlockEvent:v22];
        }

        v32 = [observers2 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v32);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __48__IRDisplayMonitor__didUpdateMainDisplayLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 bundleIdentifier];
  if (v3 && [v2 layoutRole] == 1)
  {
    v4 = [v2 isUIApplicationElement];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __48__IRDisplayMonitor__didUpdateMainDisplayLayout___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqual:*MEMORY[0x277D0ABA0]];

  return v3;
}

- (void)_didUpdateContinuityDisplay:(id)display
{
  v23 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  os_unfair_lock_lock(&self->_lock);
  isContinuityDisplay = [(IRDisplayMonitor *)self isContinuityDisplay];
  displayConfiguration = [displayCopy displayConfiguration];
  identity = [displayConfiguration identity];
  [(IRDisplayMonitor *)self setIsContinuityDisplay:identity != 0];

  if (isContinuityDisplay != [(IRDisplayMonitor *)self isContinuityDisplay])
  {
    v8 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      isContinuityDisplay2 = [(IRDisplayMonitor *)self isContinuityDisplay];
      v10 = @"off";
      if (isContinuityDisplay2)
      {
        v10 = @"on";
      }

      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_DEFAULT, "#display-monitor, Continuity Display: %@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    observers = [(IRDisplayMonitor *)self observers];
    v12 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(observers);
          }

          [*(*(&v16 + 1) + 8 * v14++) monitor:self didUpdateIsContinuityDisplay:{-[IRDisplayMonitor isContinuityDisplay](self, "isContinuityDisplay")}];
        }

        while (v12 != v14);
        v12 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v15 = *MEMORY[0x277D85DE8];
}

@end