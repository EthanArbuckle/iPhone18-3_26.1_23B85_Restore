@interface EMRepository
- (EMRepository)initWithRemoteConnection:(id)connection;
- (id)performQuery:(id)query withObserver:(id)observer;
- (id)trampoliningObserverForObserver:(id)observer;
- (void)prepareRepositoryObjects:(id)objects;
- (void)refreshQueryWithObserver:(id)observer;
@end

@implementation EMRepository

- (EMRepository)initWithRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = EMRepository;
  v6 = [(EMRepository *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = MEMORY[0x1E699B978];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.observer", objc_opt_class()];
    v10 = [v8 serialDispatchQueueSchedulerWithName:v9];
    observerScheduler = v7->_observerScheduler;
    v7->_observerScheduler = v10;
  }

  return v7;
}

- (id)performQuery:(id)query withObserver:(id)observer
{
  queryCopy = query;
  observerCopy = observer;
  [(EMRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMRepository performQuery:withObserver:]", "EMRepository.m", 45, "0");
}

- (void)refreshQueryWithObserver:(id)observer
{
  observerCopy = observer;
  [(EMRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMRepository refreshQueryWithObserver:]", "EMRepository.m", 49, "0");
}

- (void)prepareRepositoryObjects:(id)objects
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectsCopy = objects;
  v5 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        repository = [v8 repository];
        v10 = repository == 0;

        if (v10)
        {
          [v8 setRepository:self];
        }
      }

      v5 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)trampoliningObserverForObserver:(id)observer
{
  observerCopy = observer;
  if (+[EMForceBlankCellsController shouldBlockXPCQueue])
  {
    [EMForceBlankCellsController blockForRandomDurationWithMessage:@"Block trampolining"];
  }

  observerScheduler = [(EMRepository *)self observerScheduler];
  v6 = [observerScheduler performWithObject:observerCopy];

  return v6;
}

@end