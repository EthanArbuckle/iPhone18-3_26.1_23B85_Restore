@interface IPInstallableStateSource
- (IPInstallableStateSource)initWithRegistry:(id)a3;
- (IPStateObserver)observer;
- (id)associatedRegistry;
- (id)collationKey;
- (id)currentProgressForSource:(id)a3 error:(id *)a4;
- (id)currentStateWithError:(id *)a3;
- (id)progressSourceWithError:(id *)a3;
- (unint64_t)installableType;
- (void)dealloc;
- (void)noteInstallStarted;
- (void)notifyOfUpdate:(id)a3;
- (void)resume;
@end

@implementation IPInstallableStateSource

- (id)associatedRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedRegistry);

  return WeakRetained;
}

- (IPInstallableStateSource)initWithRegistry:(id)a3
{
  v4 = a3;
  v5 = [(IPInstallableStateSource *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_associatedRegistry, v4);
    v6->_resumed = 0;
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_observer, 0);
  WeakRetained = objc_loadWeakRetained(&self->_associatedRegistry);
  [WeakRetained unregisterStateSource:self];

  v4.receiver = self;
  v4.super_class = IPInstallableStateSource;
  [(IPInstallableStateSource *)&v4 dealloc];
}

- (void)resume
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_254C69000, a2, OS_LOG_TYPE_FAULT, "Attempted to resume %@, which was already resumed!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (IPStateObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (id)collationKey
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)installableType
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)currentStateWithError:(id *)a3
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)progressSourceWithError:(id *)a3
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)currentProgressForSource:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)noteInstallStarted
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

- (void)notifyOfUpdate:(id)a3
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

@end