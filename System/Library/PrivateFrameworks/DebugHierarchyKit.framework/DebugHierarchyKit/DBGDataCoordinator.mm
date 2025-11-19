@interface DBGDataCoordinator
+ (id)coordinatorWithDataSourceConnection:(id)a3;
- (DBGDataCoordinator)initWithDataSourceConnection:(id)a3;
- (DBGSnapshotManager)snapshotManager;
- (NSArray)snapshotTransformers;
- (void)_performNextRequest;
- (void)addSnapshotTransformer:(id)a3;
- (void)cancelAllRequests;
- (void)cancelRequest:(id)a3;
- (void)didReceiveData:(id)a3 forRequest:(id)a4;
- (void)performRequest:(id)a3;
@end

@implementation DBGDataCoordinator

+ (id)coordinatorWithDataSourceConnection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDataSourceConnection:v4];

  return v5;
}

- (DBGDataCoordinator)initWithDataSourceConnection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = DBGDataCoordinator;
  v6 = [(DBGDataCoordinator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceConnection, a3);
    [(DBGDataSourceConnection *)v7->_dataSourceConnection setDelegate:v7];
    v8 = +[NSMutableArray array];
    enqueuedRequests = v7->_enqueuedRequests;
    v7->_enqueuedRequests = v8;

    v7->_shouldStoreCompletedRequests = 0;
    v10 = +[NSMutableArray array];
    completedRequests = v7->_completedRequests;
    v7->_completedRequests = v10;
  }

  return v7;
}

- (void)performRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (DebugHierarchyPOIOSLog___dvt_lazy_init_predicate != -1)
    {
      [DBGDataCoordinator performRequest:];
    }

    v5 = DebugHierarchyPOIOSLog___dvt_lazy_init_variable;
    v6 = getpid();
    if ((v6 - 1) <= 0xFFFFFFFD)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v8 = [v4 name];
        v24 = 138543362;
        v25 = v8;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, v7, "Equeue Request", "%{public}@", &v24, 0xCu);
      }
    }

    v9 = [(DBGDataCoordinator *)self enqueuedRequests];
    v10 = [v9 containsObject:v4];

    if ((v10 & 1) == 0)
    {
      v11 = [(DBGDataCoordinator *)self enqueuedRequests];
      v12 = [v11 count];

      if (![v4 priority])
      {
        v15 = [(DBGDataCoordinator *)self enqueuedRequests];
        v16 = [v15 count];

        if (v16)
        {
          v17 = [(DBGDataCoordinator *)self enqueuedRequests];
          v18 = [v17 count];

          if (v18)
          {
            v19 = 0;
            do
            {
              v20 = [(DBGDataCoordinator *)self enqueuedRequests];
              v21 = [v20 objectAtIndexedSubscript:v19];

              if ([v21 priority] == &dword_0 + 1)
              {
                v12 = v19;
              }

              ++v19;
              v22 = [(DBGDataCoordinator *)self enqueuedRequests];
              v23 = [v22 count];
            }

            while (v23 > v19);
          }
        }
      }

      [(DBGDataCoordinator *)self willChangeValueForKey:@"enqueuedRequests"];
      v13 = [(DBGDataCoordinator *)self enqueuedRequests];
      [v13 insertObject:v4 atIndex:v12];

      [(DBGDataCoordinator *)self didChangeValueForKey:@"enqueuedRequests"];
    }

    v14 = [(DBGDataCoordinator *)self executingRequest];

    if (!v14)
    {
      [(DBGDataCoordinator *)self _performNextRequest];
    }
  }
}

- (void)_performNextRequest
{
  v3 = [(DBGDataCoordinator *)self enqueuedRequests];
  v6 = [v3 firstObject];

  if (v6)
  {
    [(DBGDataCoordinator *)self willChangeValueForKey:@"enqueuedRequests"];
    v4 = [(DBGDataCoordinator *)self enqueuedRequests];
    [v4 removeObjectAtIndex:0];

    [(DBGDataCoordinator *)self didChangeValueForKey:@"enqueuedRequests"];
    [(DBGDataCoordinator *)self setExecutingRequest:v6];
    v5 = [(DBGDataCoordinator *)self dataSourceConnection];
    [v5 performRequest:v6];
  }
}

- (void)cancelRequest:(id)a3
{
  v8 = a3;
  v4 = [(DBGDataCoordinator *)self executingRequest];
  v5 = [v4 isEqual:v8];

  if (v5)
  {
    v6 = [(DBGDataCoordinator *)self executingRequest];
    [v6 cancel];

    [(DBGDataCoordinator *)self setExecutingRequest:0];
  }

  else
  {
    [(DBGDataCoordinator *)self willChangeValueForKey:@"enqueuedRequests"];
    v7 = [(DBGDataCoordinator *)self enqueuedRequests];
    [v7 removeObject:v8];

    [(DBGDataCoordinator *)self didChangeValueForKey:@"enqueuedRequests"];
    [v8 cancel];
  }
}

- (void)cancelAllRequests
{
  v3 = [(DBGDataCoordinator *)self executingRequest];
  [(DBGDataCoordinator *)self cancelRequest:v3];

  v4 = [(DBGDataCoordinator *)self enqueuedRequests];
  v5 = [v4 copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(DBGDataCoordinator *)self cancelRequest:*(*(&v11 + 1) + 8 * v10), v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addSnapshotTransformer:(id)a3
{
  v4 = a3;
  v5 = [(DBGDataCoordinator *)self snapshotTransformerStore];

  if (!v5)
  {
    v6 = [NSMutableArray arrayWithCapacity:1];
    [(DBGDataCoordinator *)self setSnapshotTransformerStore:v6];
  }

  v7 = [(DBGDataCoordinator *)self snapshotTransformerStore];
  [v7 addObject:v4];
}

- (NSArray)snapshotTransformers
{
  v2 = [(DBGDataCoordinator *)self snapshotTransformerStore];
  v3 = [v2 copy];

  return v3;
}

- (void)didReceiveData:(id)a3 forRequest:(id)a4
{
  v9 = a4;
  v5 = [(DBGDataCoordinator *)self executingRequest];
  v6 = [v9 isEqual:v5];

  if (v6)
  {
    v7 = [(DBGDataCoordinator *)self shouldStoreCompletedRequests];
    if (v9 && v7)
    {
      v8 = [(DBGDataCoordinator *)self completedRequests];
      [v8 addObject:v9];
    }

    [(DBGDataCoordinator *)self setExecutingRequest:0];
    [(DBGDataCoordinator *)self _performNextRequest];
  }
}

- (DBGSnapshotManager)snapshotManager
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotManager);

  return WeakRetained;
}

@end