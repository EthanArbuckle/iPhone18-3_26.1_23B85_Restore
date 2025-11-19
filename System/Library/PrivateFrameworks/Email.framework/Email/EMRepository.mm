@interface EMRepository
- (EMRepository)initWithRemoteConnection:(id)a3;
- (id)performQuery:(id)a3 withObserver:(id)a4;
- (id)trampoliningObserverForObserver:(id)a3;
- (void)prepareRepositoryObjects:(id)a3;
- (void)refreshQueryWithObserver:(id)a3;
@end

@implementation EMRepository

- (EMRepository)initWithRemoteConnection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = EMRepository;
  v6 = [(EMRepository *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = MEMORY[0x1E699B978];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.observer", objc_opt_class()];
    v10 = [v8 serialDispatchQueueSchedulerWithName:v9];
    observerScheduler = v7->_observerScheduler;
    v7->_observerScheduler = v10;
  }

  return v7;
}

- (id)performQuery:(id)a3 withObserver:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EMRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMRepository performQuery:withObserver:]", "EMRepository.m", 45, "0");
}

- (void)refreshQueryWithObserver:(id)a3
{
  v5 = a3;
  [(EMRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMRepository refreshQueryWithObserver:]", "EMRepository.m", 49, "0");
}

- (void)prepareRepositoryObjects:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 repository];
        v10 = v9 == 0;

        if (v10)
        {
          [v8 setRepository:self];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)trampoliningObserverForObserver:(id)a3
{
  v4 = a3;
  if (+[EMForceBlankCellsController shouldBlockXPCQueue])
  {
    [EMForceBlankCellsController blockForRandomDurationWithMessage:@"Block trampolining"];
  }

  v5 = [(EMRepository *)self observerScheduler];
  v6 = [v5 performWithObject:v4];

  return v6;
}

@end