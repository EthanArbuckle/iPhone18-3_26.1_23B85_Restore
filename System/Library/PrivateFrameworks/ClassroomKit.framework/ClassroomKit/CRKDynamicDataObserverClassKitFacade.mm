@interface CRKDynamicDataObserverClassKitFacade
+ (id)dynamicDataObserverFacadeWithClassKitFacade:(id)facade expectedUserRole:(int64_t)role;
- (CRKDynamicDataObserverClassKitFacade)initWithClassKitFacade:(id)facade expectedUserRole:(int64_t)role;
- (void)addDataObserver:(id)observer;
- (void)dealloc;
- (void)deregisterDataObservers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerDataObservers;
- (void)removeDataObserver:(id)observer;
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

+ (id)dynamicDataObserverFacadeWithClassKitFacade:(id)facade expectedUserRole:(int64_t)role
{
  facadeCopy = facade;
  v6 = [objc_alloc(objc_opt_class()) initWithClassKitFacade:facadeCopy expectedUserRole:role];

  [v6 startObservingCurrentUser];

  return v6;
}

- (CRKDynamicDataObserverClassKitFacade)initWithClassKitFacade:(id)facade expectedUserRole:(int64_t)role
{
  facadeCopy = facade;
  v14.receiver = self;
  v14.super_class = CRKDynamicDataObserverClassKitFacade;
  v7 = [(CRKClassKitFacadeDecoratorBase *)&v14 initWithClassKitFacade:facadeCopy];
  v8 = v7;
  if (v7)
  {
    v7->_expectedUserRole = role;
    v9 = objc_opt_new();
    dataObservers = v8->_dataObservers;
    v8->_dataObservers = v9;

    v11 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:facadeCopy];
    currentUserProvider = v8->_currentUserProvider;
    v8->_currentUserProvider = v11;
  }

  return v8;
}

- (void)updateCurrentUserState
{
  currentUserProvider = [(CRKDynamicDataObserverClassKitFacade *)self currentUserProvider];
  currentUser = [currentUserProvider currentUser];

  if (-[CRKDynamicDataObserverClassKitFacade expectedUserRole](self, "expectedUserRole") == 1 && ([currentUser isStudent] & 1) != 0)
  {
    isInstructor = 1;
  }

  else
  {
    if ([(CRKDynamicDataObserverClassKitFacade *)self expectedUserRole]!= 2)
    {
      [currentUser hasEDUAccount];
      goto LABEL_10;
    }

    isInstructor = [currentUser isInstructor];
  }

  if ([currentUser hasEDUAccount] && isInstructor)
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
    dataObservers = [(CRKDynamicDataObserverClassKitFacade *)self dataObservers];
    v4 = [dataObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(dataObservers);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
          [underlyingClassKitFacade registerDataObserver:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [dataObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    dataObservers = [(CRKDynamicDataObserverClassKitFacade *)self dataObservers];
    v4 = [dataObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(dataObservers);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
          [underlyingClassKitFacade deregisterDataObserver:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [dataObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)addDataObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKDynamicDataObserverClassKitFacade *)a2 addDataObserver:?];
  }

  dataObservers = [(CRKDynamicDataObserverClassKitFacade *)self dataObservers];
  [dataObservers addObject:observerCopy];

  if ([(CRKDynamicDataObserverClassKitFacade *)self dataObserversAreRegistered])
  {
    underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
    [underlyingClassKitFacade registerDataObserver:observerCopy];
  }
}

- (void)removeDataObserver:(id)observer
{
  observerCopy = observer;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKDynamicDataObserverClassKitFacade *)a2 removeDataObserver:?];
  }

  dataObservers = [(CRKDynamicDataObserverClassKitFacade *)self dataObservers];
  [dataObservers removeObject:observerCopy];

  if ([(CRKDynamicDataObserverClassKitFacade *)self dataObserversAreRegistered])
  {
    underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
    [underlyingClassKitFacade deregisterDataObserver:observerCopy];
  }
}

- (void)startObservingCurrentUser
{
  currentUserProvider = [(CRKDynamicDataObserverClassKitFacade *)self currentUserProvider];
  [currentUserProvider addObserver:self forKeyPath:@"currentUser" options:4 context:@"ObservationContext"];
}

- (void)stopObservingCurrentUser
{
  currentUserProvider = [(CRKDynamicDataObserverClassKitFacade *)self currentUserProvider];
  [currentUserProvider removeObserver:self forKeyPath:@"currentUser" context:@"ObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"ObservationContext")
  {

    [(CRKDynamicDataObserverClassKitFacade *)self updateCurrentUserState:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKDynamicDataObserverClassKitFacade;
    [(CRKDynamicDataObserverClassKitFacade *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
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