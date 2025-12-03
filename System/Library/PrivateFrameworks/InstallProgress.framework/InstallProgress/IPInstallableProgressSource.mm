@interface IPInstallableProgressSource
- (IPInstallableProgressSource)initWithStateSource:(id)source;
- (IPProgressObserver)observer;
- (id)currentProgressWithError:(id *)error;
- (void)dealloc;
- (void)finishWithReason:(unint64_t)reason;
- (void)notifyOfUpdate:(id)update;
- (void)resume;
@end

@implementation IPInstallableProgressSource

- (IPInstallableProgressSource)initWithStateSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = IPInstallableProgressSource;
  v6 = [(IPInstallableProgressSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_installableStateSource, source);
    v7->_resumed = 0;
  }

  return v7;
}

- (void)dealloc
{
  objc_storeWeak(&self->_observer, 0);
  associatedRegistry = [(IPInstallableStateSource *)self->_installableStateSource associatedRegistry];
  [associatedRegistry unregisterProgressSource:self];

  v4.receiver = self;
  v4.super_class = IPInstallableProgressSource;
  [(IPInstallableProgressSource *)&v4 dealloc];
}

- (id)currentProgressWithError:(id *)error
{
  v4 = [(IPInstallableStateSource *)self->_installableStateSource currentProgressForSource:self error:error];
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
    associatedRegistry = [(IPInstallableStateSource *)self->_installableStateSource associatedRegistry];
    [associatedRegistry registerProgressSource:self];

    v3 = _IPClientLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "Progress source resumed: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyOfUpdate:(id)update
{
  updateCopy = update;
  v6 = [[IPInstallableProgress alloc] initWithSource:self progressSnapshot:updateCopy];

  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained progressSource:self progressDidChange:v6];
}

- (void)finishWithReason:(unint64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained progressSource:self didEndForReason:reason];
}

- (IPProgressObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end