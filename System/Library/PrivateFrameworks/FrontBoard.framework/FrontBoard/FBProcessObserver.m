@interface FBProcessObserver
- (BOOL)isEqual:(id)a3;
- (FBProcessObserver)initWithObserver:(id)a3;
- (FBProcessObserver)observer;
- (void)applicationProcessDebuggingStateDidChange:(id)a3;
- (void)applicationProcessDidLaunch:(id)a3;
- (void)applicationProcessWillLaunch:(id)a3;
- (void)process:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
- (void)processDidExit:(id)a3;
- (void)processWillExit:(id)a3;
@end

@implementation FBProcessObserver

- (FBProcessObserver)initWithObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(FBProcessObserver *)a2 initWithObserver:?];
  }

  v6 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v4->_observerAddress == self->_observerAddress && v4->_observerClass == self->_observerClass)
    {
      WeakRetained = objc_loadWeakRetained(&v4->_observer);
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

- (void)processWillExit:(id)a3
{
  v6 = a3;
  if ((BSAtomicGetFlag() & 1) == 0 && BSAtomicSetFlag())
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    v5 = WeakRetained;
    if (WeakRetained && self->_supportsWillExit)
    {
      [WeakRetained processWillExit:v6];
    }
  }
}

- (void)processDidExit:(id)a3
{
  v6 = a3;
  if ((BSAtomicGetFlag() & 1) == 0 && BSAtomicSetFlag())
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (WeakRetained)
    {
      if (self->_supportsApplicationDidExit && [v6 isApplicationProcess])
      {
        v5 = [v6 exitContext];
        [WeakRetained applicationProcessDidExit:v6 withContext:v5];
      }

      if (self->_supportsDidExit)
      {
        [WeakRetained processDidExit:v6];
      }
    }
  }
}

- (void)process:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  if (self->_supportsStateDidChange && (BSAtomicGetFlag() & 1) == 0 && WeakRetained)
  {
    [WeakRetained process:v11 stateDidChangeFromState:v8 toState:v9];
  }
}

- (void)applicationProcessWillLaunch:(id)a3
{
  v5 = a3;
  if ((BSAtomicGetFlag() & 1) == 0 && BSAtomicSetFlag())
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (self->_supportsApplicationWillLaunch && (BSAtomicGetFlag() & 1) == 0 && WeakRetained && [v5 isApplicationProcess])
    {
      [WeakRetained applicationProcessWillLaunch:v5];
    }
  }
}

- (void)applicationProcessDidLaunch:(id)a3
{
  v5 = a3;
  if ((BSAtomicGetFlag() & 1) == 0 && BSAtomicSetFlag())
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (WeakRetained)
    {
      [(FBProcessObserver *)self applicationProcessWillLaunch:v5];
      if (self->_supportsApplicationDidLaunch && (BSAtomicGetFlag() & 1) == 0 && [v5 isApplicationProcess])
      {
        [WeakRetained applicationProcessDidLaunch:v5];
      }
    }
  }
}

- (void)applicationProcessDebuggingStateDidChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_supportsApplicationDebugState)
  {
    v8 = v4;
    v6 = [v4 isApplicationProcess];
    v5 = v8;
    if (v6)
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