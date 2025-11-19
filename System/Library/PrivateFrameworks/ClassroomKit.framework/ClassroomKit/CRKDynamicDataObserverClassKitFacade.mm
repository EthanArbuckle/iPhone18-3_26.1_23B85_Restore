@interface CRKDynamicDataObserverClassKitFacade
+ (id)dynamicDataObserverFacadeWithClassKitFacade:(id)a3 expectedUserRole:(int64_t)a4;
- (CRKDynamicDataObserverClassKitFacade)initWithClassKitFacade:(id)a3 expectedUserRole:(int64_t)a4;
- (void)addDataObserver:(id)a3;
- (void)dealloc;
- (void)deregisterDataObservers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerDataObservers;
- (void)removeDataObserver:(id)a3;
- (void)startObservingCurrentUser;
- (void)stopObservingCurrentUser;
- (void)updateCurrentUserState;
@end

@implementation CRKDynamicDataObserverClassKitFacade

- (void)dealloc
{
  [(CRKDynamicDataObserverClassKitFacade *)self stopObservingCurrentUser];
  [(CRKDynamicDataObserverClassKitFacade *)self deregisterDataObservers];
  v3.receiver = self;
  v3.super_class = CRKDynamicDataObserverClassKitFacade;
  [(CRKDynamicDataObserverClassKitFacade *)&v3 dealloc];
}

+ (id)dynamicDataObserverFacadeWithClassKitFacade:(id)a3 expectedUserRole:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithClassKitFacade:v5 expectedUserRole:a4];

  [v6 startObservingCurrentUser];

  return v6;
}

- (CRKDynamicDataObserverClassKitFacade)initWithClassKitFacade:(id)a3 expectedUserRole:(int64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CRKDynamicDataObserverClassKitFacade;
  v7 = [(CRKClassKitFacadeDecoratorBase *)&v14 initWithClassKitFacade:v6];
  v8 = v7;
  if (v7)
  {
    v7->_expectedUserRole = a4;
    v9 = objc_opt_new();
    dataObservers = v8->_dataObservers;
    v8->_dataObservers = v9;

    v11 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:v6];
    currentUserProvider = v8->_currentUserProvider;
    v8->_currentUserProvider = v11;
  }

  return v8;
}

- (void)updateCurrentUserState
{
  v3 = [(CRKDynamicDataObserverClassKitFacade *)self currentUserProvider];
  v5 = [v3 currentUser];

  if (-[CRKDynamicDataObserverClassKitFacade expectedUserRole](self, "expectedUserRole") == 1 && ([v5 isStudent] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    if ([(CRKDynamicDataObserverClassKitFacade *)self expectedUserRole]!= 2)
    {
      [v5 hasEDUAccount];
      goto LABEL_10;
    }

    v4 = [v5 isInstructor];
  }

  if ([v5 hasEDUAccount] && v4)
  {
    [(CRKDynamicDataObserverClassKitFacade *)self registerDataObservers];
    goto LABEL_11;
  }

LABEL_10:
  [(CRKDynamicDataObserverClassKitFacade *)self deregisterDataObservers];
LABEL_11:
}

- (void)registerDataObservers
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(CRKDynamicDataObserverClassKitFacade *)self dataObserversAreRegistered])
  {
    [(CRKDynamicDataObserverClassKitFacade *)self setDataObserversAreRegistered:1];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(CRKDynamicDataObserverClassKitFacade *)self dataObservers];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
          [v9 registerDataObserver:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)deregisterDataObservers
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(CRKDynamicDataObserverClassKitFacade *)self dataObserversAreRegistered])
  {
    [(CRKDynamicDataObserverClassKitFacade *)self setDataObserversAreRegistered:0];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(CRKDynamicDataObserverClassKitFacade *)self dataObservers];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
          [v9 deregisterDataObserver:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)addDataObserver:(id)a3
{
  v7 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKDynamicDataObserverClassKitFacade *)a2 addDataObserver:?];
  }

  v5 = [(CRKDynamicDataObserverClassKitFacade *)self dataObservers];
  [v5 addObject:v7];

  if ([(CRKDynamicDataObserverClassKitFacade *)self dataObserversAreRegistered])
  {
    v6 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
    [v6 registerDataObserver:v7];
  }
}

- (void)removeDataObserver:(id)a3
{
  v7 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKDynamicDataObserverClassKitFacade *)a2 removeDataObserver:?];
  }

  v5 = [(CRKDynamicDataObserverClassKitFacade *)self dataObservers];
  [v5 removeObject:v7];

  if ([(CRKDynamicDataObserverClassKitFacade *)self dataObserversAreRegistered])
  {
    v6 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
    [v6 deregisterDataObserver:v7];
  }
}

- (void)startObservingCurrentUser
{
  v3 = [(CRKDynamicDataObserverClassKitFacade *)self currentUserProvider];
  [v3 addObserver:self forKeyPath:@"currentUser" options:4 context:@"ObservationContext"];
}

- (void)stopObservingCurrentUser
{
  v3 = [(CRKDynamicDataObserverClassKitFacade *)self currentUserProvider];
  [v3 removeObserver:self forKeyPath:@"currentUser" context:@"ObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"ObservationContext")
  {

    [(CRKDynamicDataObserverClassKitFacade *)self updateCurrentUserState:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKDynamicDataObserverClassKitFacade;
    [(CRKDynamicDataObserverClassKitFacade *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)addDataObserver:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKDynamicDataObserverClassKitFacade.m" lineNumber:100 description:{@"%@ must be called from the main thread", v4}];
}

- (void)removeDataObserver:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKDynamicDataObserverClassKitFacade.m" lineNumber:110 description:{@"%@ must be called from the main thread", v4}];
}

@end