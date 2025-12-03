@interface FBProcessObserver
- (BOOL)isEqual:(id)equal;
- (FBProcessObserver)initWithObserver:(id)observer;
- (FBProcessObserver)observer;
- (void)applicationProcessDebuggingStateDidChange:(id)change;
- (void)applicationProcessDidLaunch:(id)launch;
- (void)applicationProcessWillLaunch:(id)launch;
- (void)process:(id)process stateDidChangeFromState:(id)state toState:(id)toState;
- (void)processDidExit:(id)exit;
- (void)processWillExit:(id)exit;
@end

@implementation FBProcessObserver

- (FBProcessObserver)initWithObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [(FBProcessObserver *)a2 initWithObserver:?];
  }

  v6 = observerCopy;
  v10.receiver = self;
  v10.super_class = FBProcessObserver;
  v7 = [(FBProcessObserver *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_observer, v6);
    v8->_observerAddress = v6;
    v8->_observerClass = objc_opt_class();
    v8->_supportsWillExit = objc_opt_respondsToSelector() & 1;
    v8->_supportsDidExit = objc_opt_respondsToSelector() & 1;
    v8->_supportsStateDidChange = objc_opt_respondsToSelector() & 1;
    v8->_supportsApplicationDidExit = objc_opt_respondsToSelector() & 1;
    v8->_supportsApplicationWillLaunch = objc_opt_respondsToSelector() & 1;
    v8->_supportsApplicationDidLaunch = objc_opt_respondsToSelector() & 1;
    v8->_supportsApplicationDebugState = objc_opt_respondsToSelector() & 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_observerAddress == self->_observerAddress && equalCopy->_observerClass == self->_observerClass)
    {
      WeakRetained = objc_loadWeakRetained(&equalCopy->_observer);
      v8 = objc_loadWeakRetained(&self->_observer);
      v5 = WeakRetained == v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)processWillExit:(id)exit
{
  exitCopy = exit;
  if ((BSAtomicGetFlag() & 1) == 0 && BSAtomicSetFlag())
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    v5 = WeakRetained;
    if (WeakRetained && self->_supportsWillExit)
    {
      [WeakRetained processWillExit:exitCopy];
    }
  }
}

- (void)processDidExit:(id)exit
{
  exitCopy = exit;
  if ((BSAtomicGetFlag() & 1) == 0 && BSAtomicSetFlag())
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (WeakRetained)
    {
      if (self->_supportsApplicationDidExit && [exitCopy isApplicationProcess])
      {
        exitContext = [exitCopy exitContext];
        [WeakRetained applicationProcessDidExit:exitCopy withContext:exitContext];
      }

      if (self->_supportsDidExit)
      {
        [WeakRetained processDidExit:exitCopy];
      }
    }
  }
}

- (void)process:(id)process stateDidChangeFromState:(id)state toState:(id)toState
{
  processCopy = process;
  stateCopy = state;
  toStateCopy = toState;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  if (self->_supportsStateDidChange && (BSAtomicGetFlag() & 1) == 0 && WeakRetained)
  {
    [WeakRetained process:processCopy stateDidChangeFromState:stateCopy toState:toStateCopy];
  }
}

- (void)applicationProcessWillLaunch:(id)launch
{
  launchCopy = launch;
  if ((BSAtomicGetFlag() & 1) == 0 && BSAtomicSetFlag())
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (self->_supportsApplicationWillLaunch && (BSAtomicGetFlag() & 1) == 0 && WeakRetained && [launchCopy isApplicationProcess])
    {
      [WeakRetained applicationProcessWillLaunch:launchCopy];
    }
  }
}

- (void)applicationProcessDidLaunch:(id)launch
{
  launchCopy = launch;
  if ((BSAtomicGetFlag() & 1) == 0 && BSAtomicSetFlag())
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (WeakRetained)
    {
      [(FBProcessObserver *)self applicationProcessWillLaunch:launchCopy];
      if (self->_supportsApplicationDidLaunch && (BSAtomicGetFlag() & 1) == 0 && [launchCopy isApplicationProcess])
      {
        [WeakRetained applicationProcessDidLaunch:launchCopy];
      }
    }
  }
}

- (void)applicationProcessDebuggingStateDidChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (self->_supportsApplicationDebugState)
  {
    v8 = changeCopy;
    isApplicationProcess = [changeCopy isApplicationProcess];
    v5 = v8;
    if (isApplicationProcess)
    {
      WeakRetained = objc_loadWeakRetained(&self->_observer);
      [WeakRetained applicationProcessDebuggingStateDidChange:v8];

      v5 = v8;
    }
  }
}

- (FBProcessObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)initWithObserver:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBProcessObserver.m";
    v16 = 1024;
    v17 = 34;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end