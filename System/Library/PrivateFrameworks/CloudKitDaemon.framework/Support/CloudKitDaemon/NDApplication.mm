@interface NDApplication
+ (BOOL)springBoardApplicationExistsWithIdentifier:(id)identifier;
+ (id)applicationWithIdentifier:(id)identifier;
+ (id)cloudContainerWithIdentifier:(id)identifier;
+ (id)springboardApplicationWithBundleIdentifier:(id)identifier;
+ (void)initialize;
- (NDApplication)initWithOperationID:(id)d;
- (void)addObserver:(id)observer;
- (void)invokeSelectorForAllObservers:(SEL)observers;
- (void)removeObserver:(id)observer;
@end

@implementation NDApplication

+ (void)initialize
{
  if (qword_1000161C8 != -1)
  {
    dispatch_once(&qword_1000161C8, &stru_100010500);
  }
}

+ (id)applicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000161D0 objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithOperationID:identifierCopy];
    [qword_1000161D0 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  v7 = [qword_1000161D0 objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(v4);

  return v7;
}

+ (id)springboardApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000161D0 objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [[NDSpringBoardApplication alloc] initWithOperationID:identifierCopy];
    [qword_1000161D0 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  v7 = [qword_1000161D0 objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(v4);

  return v7;
}

+ (BOOL)springBoardApplicationExistsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NDSpringBoard sharedSpringBoard];
  v5 = [v4 identifierIsForSpringBoardApplication:identifierCopy];

  return v5;
}

+ (id)cloudContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1000161D0 objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [[NDCloudContainer alloc] initWithOperationID:identifierCopy];
    [qword_1000161D0 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  v7 = [qword_1000161D0 objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(v4);

  return v7;
}

- (NDApplication)initWithOperationID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = NDApplication;
  v6 = [(NDApplication *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, d);
    v8 = +[NSMutableArray array];
    observers = v7->_observers;
    v7->_observers = v8;
  }

  return v7;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_observers indexOfObject:observerCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)selfCopy->_observers removeObjectAtIndex:v5];
  }

  objc_sync_exit(selfCopy);
}

- (void)invokeSelectorForAllObservers:(SEL)observers
{
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000019F4;
  v6[3] = &unk_100010528;
  v6[4] = self;
  v6[5] = observers;
  dispatch_async(v5, v6);
}

@end