@interface IPInstallableProgressSource
- (IPInstallableProgressSource)initWithStateSource:(id)a3;
- (IPProgressObserver)observer;
- (id)currentProgressWithError:(id *)a3;
- (void)dealloc;
- (void)finishWithReason:(unint64_t)a3;
- (void)notifyOfUpdate:(id)a3;
- (void)resume;
@end

@implementation IPInstallableProgressSource

- (IPInstallableProgressSource)initWithStateSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IPInstallableProgressSource;
  v6 = [(IPInstallableProgressSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_installableStateSource, a3);
    v7->_resumed = 0;
  }

  return v7;
}

- (void)dealloc
{
  objc_storeWeak(&self->_observer, 0);
  v3 = [(IPInstallableStateSource *)self->_installableStateSource associatedRegistry];
  [v3 unregisterProgressSource:self];

  v4.receiver = self;
  v4.super_class = IPInstallableProgressSource;
  [(IPInstallableProgressSource *)&v4 dealloc];
}

- (id)currentProgressWithError:(id *)a3
{
  v4 = [(IPInstallableStateSource *)self->_installableStateSource currentProgressForSource:self error:a3];
  if (v4)
  {
    v5 = [[IPInstallableProgress alloc] initWithSource:self progressSnapshot:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)resume
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_resumed)
  {
    v3 = _IPDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(IPInstallableStateSource *)self resume];
    }
  }

  else
  {
    self->_resumed = 1;
    v4 = [(IPInstallableStateSource *)self->_installableStateSource associatedRegistry];
    [v4 registerProgressSource:self];

    v3 = _IPClientLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "Progress source resumed: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyOfUpdate:(id)a3
{
  v4 = a3;
  v6 = [[IPInstallableProgress alloc] initWithSource:self progressSnapshot:v4];

  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained progressSource:self progressDidChange:v6];
}

- (void)finishWithReason:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained progressSource:self didEndForReason:a3];
}

- (IPProgressObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end