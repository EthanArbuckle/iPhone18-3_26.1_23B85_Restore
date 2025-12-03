@interface CRKDataSeparationBlockingClassKitFacade
- (CRKDataSeparationBlockingClassKitFacade)initWithClassKitFacade:(id)facade;
- (int64_t)nextAccountState;
- (void)dealloc;
- (void)nextAccountState;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObserving;
- (void)stopObserving;
- (void)updateAccountState;
@end

@implementation CRKDataSeparationBlockingClassKitFacade

- (void)dealloc
{
  [(CRKDataSeparationBlockingClassKitFacade *)self stopObserving];
  v3.receiver = self;
  v3.super_class = CRKDataSeparationBlockingClassKitFacade;
  [(CRKDataSeparationBlockingClassKitFacade *)&v3 dealloc];
}

- (CRKDataSeparationBlockingClassKitFacade)initWithClassKitFacade:(id)facade
{
  facadeCopy = facade;
  v9.receiver = self;
  v9.super_class = CRKDataSeparationBlockingClassKitFacade;
  v5 = [(CRKClassKitFacadeDecoratorBase *)&v9 initWithClassKitFacade:facadeCopy];
  if (v5)
  {
    v6 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:facadeCopy];
    currentUserProvider = v5->_currentUserProvider;
    v5->_currentUserProvider = v6;

    [(CRKDataSeparationBlockingClassKitFacade *)v5 startObserving];
    [(CRKDataSeparationBlockingClassKitFacade *)v5 updateAccountState];
  }

  return v5;
}

- (void)startObserving
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observedKeyPathsOnCurrentUserProvider = [objc_opt_class() observedKeyPathsOnCurrentUserProvider];
  v4 = [observedKeyPathsOnCurrentUserProvider countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observedKeyPathsOnCurrentUserProvider);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        currentUserProvider = [(CRKDataSeparationBlockingClassKitFacade *)self currentUserProvider];
        [currentUserProvider addObserver:self forKeyPath:v8 options:0 context:@"CRKDataSeparationBlockingClassKitFacadeObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [observedKeyPathsOnCurrentUserProvider countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade addObserver:self forKeyPath:@"accountState" options:0 context:@"CRKDataSeparationBlockingClassKitFacadeObservationContext"];
}

- (void)stopObserving
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observedKeyPathsOnCurrentUserProvider = [objc_opt_class() observedKeyPathsOnCurrentUserProvider];
  v4 = [observedKeyPathsOnCurrentUserProvider countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observedKeyPathsOnCurrentUserProvider);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        currentUserProvider = [(CRKDataSeparationBlockingClassKitFacade *)self currentUserProvider];
        [currentUserProvider removeObserver:self forKeyPath:v8 context:@"CRKDataSeparationBlockingClassKitFacadeObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [observedKeyPathsOnCurrentUserProvider countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade removeObserver:self forKeyPath:@"accountState" context:@"CRKDataSeparationBlockingClassKitFacadeObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"CRKDataSeparationBlockingClassKitFacadeObservationContext")
  {

    [(CRKDataSeparationBlockingClassKitFacade *)self updateAccountState:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKDataSeparationBlockingClassKitFacade;
    [(CRKDataSeparationBlockingClassKitFacade *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)updateAccountState
{
  nextAccountState = [(CRKDataSeparationBlockingClassKitFacade *)self nextAccountState];
  if ([(CRKDataSeparationBlockingClassKitFacade *)self modifiedAccountState]!= nextAccountState)
  {

    [(CRKDataSeparationBlockingClassKitFacade *)self setModifiedAccountState:nextAccountState];
  }
}

- (int64_t)nextAccountState
{
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  accountState = [underlyingClassKitFacade accountState];

  if (accountState == 2)
  {
    currentUserProvider = [(CRKDataSeparationBlockingClassKitFacade *)self currentUserProvider];
    currentUser = [currentUserProvider currentUser];
    hasDataSeparatedAccount = [currentUser hasDataSeparatedAccount];

    if (hasDataSeparatedAccount)
    {
      if (_CRKLogASM_onceToken_12 != -1)
      {
        [CRKDataSeparationBlockingClassKitFacade nextAccountState];
      }

      v8 = _CRKLogASM_logObj_12;
      if (os_log_type_enabled(_CRKLogASM_logObj_12, OS_LOG_TYPE_ERROR))
      {
        [(CRKDataSeparationBlockingClassKitFacade *)v8 nextAccountState];
      }

      return 0;
    }

    else
    {
      return 2;
    }
  }

  return accountState;
}

- (void)nextAccountState
{
  v4 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = 138543362;
  v3 = objc_opt_class();
  _os_log_error_impl(&dword_243550000, selfCopy, OS_LOG_TYPE_ERROR, "%{public}@: overriding account state to ineligible because the current user is data separated", &v2, 0xCu);
}

@end