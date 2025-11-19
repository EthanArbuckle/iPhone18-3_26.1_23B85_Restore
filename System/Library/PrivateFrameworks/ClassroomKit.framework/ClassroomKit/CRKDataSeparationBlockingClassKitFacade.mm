@interface CRKDataSeparationBlockingClassKitFacade
- (CRKDataSeparationBlockingClassKitFacade)initWithClassKitFacade:(id)a3;
- (int64_t)nextAccountState;
- (void)dealloc;
- (void)nextAccountState;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (CRKDataSeparationBlockingClassKitFacade)initWithClassKitFacade:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKDataSeparationBlockingClassKitFacade;
  v5 = [(CRKClassKitFacadeDecoratorBase *)&v9 initWithClassKitFacade:v4];
  if (v5)
  {
    v6 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:v4];
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
  v3 = [objc_opt_class() observedKeyPathsOnCurrentUserProvider];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(CRKDataSeparationBlockingClassKitFacade *)self currentUserProvider];
        [v9 addObserver:self forKeyPath:v8 options:0 context:@"CRKDataSeparationBlockingClassKitFacadeObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v10 addObserver:self forKeyPath:@"accountState" options:0 context:@"CRKDataSeparationBlockingClassKitFacadeObservationContext"];
}

- (void)stopObserving
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [objc_opt_class() observedKeyPathsOnCurrentUserProvider];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(CRKDataSeparationBlockingClassKitFacade *)self currentUserProvider];
        [v9 removeObserver:self forKeyPath:v8 context:@"CRKDataSeparationBlockingClassKitFacadeObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v10 removeObserver:self forKeyPath:@"accountState" context:@"CRKDataSeparationBlockingClassKitFacadeObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"CRKDataSeparationBlockingClassKitFacadeObservationContext")
  {

    [(CRKDataSeparationBlockingClassKitFacade *)self updateAccountState:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKDataSeparationBlockingClassKitFacade;
    [(CRKDataSeparationBlockingClassKitFacade *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)updateAccountState
{
  v3 = [(CRKDataSeparationBlockingClassKitFacade *)self nextAccountState];
  if ([(CRKDataSeparationBlockingClassKitFacade *)self modifiedAccountState]!= v3)
  {

    [(CRKDataSeparationBlockingClassKitFacade *)self setModifiedAccountState:v3];
  }
}

- (int64_t)nextAccountState
{
  v3 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v4 = [v3 accountState];

  if (v4 == 2)
  {
    v5 = [(CRKDataSeparationBlockingClassKitFacade *)self currentUserProvider];
    v6 = [v5 currentUser];
    v7 = [v6 hasDataSeparatedAccount];

    if (v7)
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

  return v4;
}

- (void)nextAccountState
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = 138543362;
  v3 = objc_opt_class();
  _os_log_error_impl(&dword_243550000, v1, OS_LOG_TYPE_ERROR, "%{public}@: overriding account state to ineligible because the current user is data separated", &v2, 0xCu);
}

@end