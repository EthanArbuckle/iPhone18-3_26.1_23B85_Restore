@interface IRDisplayMonitor
- (IRDisplayMonitor)init;
- (id)getAppInFocusWithTimestamp;
- (void)_didUpdateContinuityDisplay:(id)a3;
- (void)_didUpdateMainDisplayLayout:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
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
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(IRDisplayMonitor *)v2 setObservers:v3];

    [(IRDisplayMonitor *)v2 setLock:0];
    objc_initWeak(&location, v2);
    v4 = MEMORY[0x277D0AD08];
    v5 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __24__IRDisplayMonitor_init__block_invoke;
    v17[3] = &unk_2797E0EB8;
    objc_copyWeak(&v18, &location);
    [v5 setTransitionHandler:v17];
    objc_destroyWeak(&v18);
    v6 = [v4 monitorWithConfiguration:v5];
    [(IRDisplayMonitor *)v2 setDefaultMainDisplayMonitor:v6];

    v7 = [(IRDisplayMonitor *)v2 defaultMainDisplayMonitor];
    v8 = [v7 currentLayout];
    [(IRDisplayMonitor *)v2 _didUpdateMainDisplayLayout:v8];

    v9 = MEMORY[0x277D0AD08];
    v10 = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __24__IRDisplayMonitor_init__block_invoke_2;
    v15[3] = &unk_2797E0EB8;
    objc_copyWeak(&v16, &location);
    [v10 setTransitionHandler:v15];
    objc_destroyWeak(&v16);
    v11 = [v9 monitorWithConfiguration:v10];
    [(IRDisplayMonitor *)v2 setContinuityDisplayMonitor:v11];

    v12 = [(IRDisplayMonitor *)v2 continuityDisplayMonitor];
    v13 = [v12 currentLayout];
    [(IRDisplayMonitor *)v2 _didUpdateContinuityDisplay:v13];

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
  v3 = [(IRDisplayMonitor *)self defaultMainDisplayMonitor];
  [v3 invalidate];

  v4 = [(IRDisplayMonitor *)self continuityDisplayMonitor];
  [v4 invalidate];

  v5.receiver = self;
  v5.super_class = IRDisplayMonitor;
  [(IRDisplayMonitor *)&v5 dealloc];
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(IRDisplayMonitor *)self observers];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(IRDisplayMonitor *)self observers];
    [v6 addObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(IRDisplayMonitor *)self observers];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    v6 = [(IRDisplayMonitor *)self observers];
    [v6 removeObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getAppInFocusWithTimestamp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(IRDisplayMonitor *)self appInFocus];

  if (v3)
  {
    v4 = [(IRDisplayMonitor *)self appInFocus];
    v5 = [(IRDisplayMonitor *)self appInFocusTimestamp];
    v3 = [IRPair pairWithFirst:v4 second:v5];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_didUpdateMainDisplayLayout:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IRDisplayMonitor *)self appInFocus];
  v6 = [v4 elements];
  v7 = [v6 firstWhere:&__block_literal_global_4];
  v8 = [v7 bundleIdentifier];
  [(IRDisplayMonitor *)self setAppInFocus:v8];

  LODWORD(v6) = [(IRDisplayMonitor *)self displayOn];
  -[IRDisplayMonitor setDisplayOn:](self, "setDisplayOn:", [v4 displayBacklightLevel] > 0);
  if (v6 != [(IRDisplayMonitor *)self displayOn])
  {
    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IRDisplayMonitor *)self displayOn];
      v11 = @"off";
      if (v10)
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
    v12 = [(IRDisplayMonitor *)self observers];
    v13 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v13)
    {
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v42 + 1) + 8 * i) monitor:self didUpdateDisplayOn:{-[IRDisplayMonitor displayOn](self, "displayOn")}];
        }

        v13 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v13);
    }
  }

  v16 = [(IRDisplayMonitor *)self displayLocked];
  v17 = [v4 elements];
  v18 = [v17 firstWhere:&__block_literal_global_31];
  [(IRDisplayMonitor *)self setDisplayLocked:v18 != 0];

  if (v16 == [(IRDisplayMonitor *)self displayLocked])
  {
    v22 = 0;
  }

  else
  {
    v19 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(IRDisplayMonitor *)self displayLocked];
      v21 = @"unlocked";
      if (v20)
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
  v24 = [v23 bannersFromScreenUnlockToAppInFocusEnable];
  if ([v24 BOOLValue])
  {
    v25 = [(IRDisplayMonitor *)self displayLocked];

    if (v25)
    {
      [(IRDisplayMonitor *)self setAppInFocus:0];
    }
  }

  else
  {
  }

  v26 = [(IRDisplayMonitor *)self appInFocus];
  v27 = [v5 isEqual:v26];

  if ((v27 & 1) == 0)
  {
    v28 = [(IRDisplayMonitor *)self appInFocus];

    if (v28)
    {
      v29 = [v4 timestamp];
      if (v29)
      {
        [v4 timestamp];
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
    v31 = [(IRDisplayMonitor *)self observers];
    v32 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v32)
    {
      v33 = *v39;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v38 + 1) + 8 * j);
          v36 = [(IRDisplayMonitor *)self appInFocus];
          [v35 monitor:self didUpdateAppInFocus:v36 isScreenUnlockEvent:v22];
        }

        v32 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
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

- (void)_didUpdateContinuityDisplay:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IRDisplayMonitor *)self isContinuityDisplay];
  v6 = [v4 displayConfiguration];
  v7 = [v6 identity];
  [(IRDisplayMonitor *)self setIsContinuityDisplay:v7 != 0];

  if (v5 != [(IRDisplayMonitor *)self isContinuityDisplay])
  {
    v8 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(IRDisplayMonitor *)self isContinuityDisplay];
      v10 = @"off";
      if (v9)
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
    v11 = [(IRDisplayMonitor *)self observers];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v14++) monitor:self didUpdateIsContinuityDisplay:{-[IRDisplayMonitor isContinuityDisplay](self, "isContinuityDisplay")}];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v15 = *MEMORY[0x277D85DE8];
}

@end