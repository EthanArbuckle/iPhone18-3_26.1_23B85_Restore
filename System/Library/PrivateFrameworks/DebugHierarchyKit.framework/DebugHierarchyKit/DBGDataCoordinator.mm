@interface DBGDataCoordinator
+ (id)coordinatorWithDataSourceConnection:(id)connection;
- (DBGDataCoordinator)initWithDataSourceConnection:(id)connection;
- (DBGSnapshotManager)snapshotManager;
- (NSArray)snapshotTransformers;
- (void)_performNextRequest;
- (void)addSnapshotTransformer:(id)transformer;
- (void)cancelAllRequests;
- (void)cancelRequest:(id)request;
- (void)didReceiveData:(id)data forRequest:(id)request;
- (void)performRequest:(id)request;
@end

@implementation DBGDataCoordinator

+ (id)coordinatorWithDataSourceConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[self alloc] initWithDataSourceConnection:connectionCopy];

  return v5;
}

- (DBGDataCoordinator)initWithDataSourceConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = DBGDataCoordinator;
  v6 = [(DBGDataCoordinator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceConnection, connection);
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

- (void)performRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
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
        name = [requestCopy name];
        v24 = 138543362;
        v25 = name;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, v7, "Equeue Request", "%{public}@", &v24, 0xCu);
      }
    }

    enqueuedRequests = [(DBGDataCoordinator *)self enqueuedRequests];
    v10 = [enqueuedRequests containsObject:requestCopy];

    if ((v10 & 1) == 0)
    {
      enqueuedRequests2 = [(DBGDataCoordinator *)self enqueuedRequests];
      v12 = [enqueuedRequests2 count];

      if (![requestCopy priority])
      {
        enqueuedRequests3 = [(DBGDataCoordinator *)self enqueuedRequests];
        v16 = [enqueuedRequests3 count];

        if (v16)
        {
          enqueuedRequests4 = [(DBGDataCoordinator *)self enqueuedRequests];
          v18 = [enqueuedRequests4 count];

          if (v18)
          {
            v19 = 0;
            do
            {
              enqueuedRequests5 = [(DBGDataCoordinator *)self enqueuedRequests];
              v21 = [enqueuedRequests5 objectAtIndexedSubscript:v19];

              if ([v21 priority] == &dword_0 + 1)
              {
                v12 = v19;
              }

              ++v19;
              enqueuedRequests6 = [(DBGDataCoordinator *)self enqueuedRequests];
              v23 = [enqueuedRequests6 count];
            }

            while (v23 > v19);
          }
        }
      }

      [(DBGDataCoordinator *)self willChangeValueForKey:@"enqueuedRequests"];
      enqueuedRequests7 = [(DBGDataCoordinator *)self enqueuedRequests];
      [enqueuedRequests7 insertObject:requestCopy atIndex:v12];

      [(DBGDataCoordinator *)self didChangeValueForKey:@"enqueuedRequests"];
    }

    executingRequest = [(DBGDataCoordinator *)self executingRequest];

    if (!executingRequest)
    {
      [(DBGDataCoordinator *)self _performNextRequest];
    }
  }
}

- (void)_performNextRequest
{
  enqueuedRequests = [(DBGDataCoordinator *)self enqueuedRequests];
  firstObject = [enqueuedRequests firstObject];

  if (firstObject)
  {
    [(DBGDataCoordinator *)self willChangeValueForKey:@"enqueuedRequests"];
    enqueuedRequests2 = [(DBGDataCoordinator *)self enqueuedRequests];
    [enqueuedRequests2 removeObjectAtIndex:0];

    [(DBGDataCoordinator *)self didChangeValueForKey:@"enqueuedRequests"];
    [(DBGDataCoordinator *)self setExecutingRequest:firstObject];
    dataSourceConnection = [(DBGDataCoordinator *)self dataSourceConnection];
    [dataSourceConnection performRequest:firstObject];
  }
}

- (void)cancelRequest:(id)request
{
  requestCopy = request;
  executingRequest = [(DBGDataCoordinator *)self executingRequest];
  v5 = [executingRequest isEqual:requestCopy];

  if (v5)
  {
    executingRequest2 = [(DBGDataCoordinator *)self executingRequest];
    [executingRequest2 cancel];

    [(DBGDataCoordinator *)self setExecutingRequest:0];
  }

  else
  {
    [(DBGDataCoordinator *)self willChangeValueForKey:@"enqueuedRequests"];
    enqueuedRequests = [(DBGDataCoordinator *)self enqueuedRequests];
    [enqueuedRequests removeObject:requestCopy];

    [(DBGDataCoordinator *)self didChangeValueForKey:@"enqueuedRequests"];
    [requestCopy cancel];
  }
}

- (void)cancelAllRequests
{
  executingRequest = [(DBGDataCoordinator *)self executingRequest];
  [(DBGDataCoordinator *)self cancelRequest:executingRequest];

  enqueuedRequests = [(DBGDataCoordinator *)self enqueuedRequests];
  v5 = [enqueuedRequests copy];

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

- (void)addSnapshotTransformer:(id)transformer
{
  transformerCopy = transformer;
  snapshotTransformerStore = [(DBGDataCoordinator *)self snapshotTransformerStore];

  if (!snapshotTransformerStore)
  {
    v6 = [NSMutableArray arrayWithCapacity:1];
    [(DBGDataCoordinator *)self setSnapshotTransformerStore:v6];
  }

  snapshotTransformerStore2 = [(DBGDataCoordinator *)self snapshotTransformerStore];
  [snapshotTransformerStore2 addObject:transformerCopy];
}

- (NSArray)snapshotTransformers
{
  snapshotTransformerStore = [(DBGDataCoordinator *)self snapshotTransformerStore];
  v3 = [snapshotTransformerStore copy];

  return v3;
}

- (void)didReceiveData:(id)data forRequest:(id)request
{
  requestCopy = request;
  executingRequest = [(DBGDataCoordinator *)self executingRequest];
  v6 = [requestCopy isEqual:executingRequest];

  if (v6)
  {
    shouldStoreCompletedRequests = [(DBGDataCoordinator *)self shouldStoreCompletedRequests];
    if (requestCopy && shouldStoreCompletedRequests)
    {
      completedRequests = [(DBGDataCoordinator *)self completedRequests];
      [completedRequests addObject:requestCopy];
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