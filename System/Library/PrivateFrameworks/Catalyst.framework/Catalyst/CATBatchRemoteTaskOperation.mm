@interface CATBatchRemoteTaskOperation
- (CATBatchRemoteTaskOperation)initWithRemoteTaskOperations:(id)a3;
- (CATBatchRemoteTaskOperation)initWithTaskClient:(id)a3 requests:(id)a4;
- (NSArray)remoteTaskOperations;
- (void)cancel;
- (void)main;
- (void)remoteTaskDidFinish:(id)a3;
@end

@implementation CATBatchRemoteTaskOperation

- (CATBatchRemoteTaskOperation)initWithTaskClient:(id)a3 requests:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [CATBatchRemoteTaskOperation initWithTaskClient:a2 requests:self];
  }

  v9 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v7 prepareTaskOperationForRequest:{*(*(&v19 + 1) + 8 * v14), v19}];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [(CATBatchRemoteTaskOperation *)self initWithRemoteTaskOperations:v9];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (CATBatchRemoteTaskOperation)initWithRemoteTaskOperations:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CATBatchRemoteTaskOperation;
  v5 = [(CATOperation *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_new();
    mQueue = v5->mQueue;
    v5->mQueue = v6;

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p.main", objc_opt_class(), v5];
    [(NSOperationQueue *)v5->mQueue setName:v8];

    v9 = [v4 copy];
    mRemoteTasks = v5->mRemoteTasks;
    v5->mRemoteTasks = v9;
  }

  return v5;
}

- (NSArray)remoteTaskOperations
{
  v2 = [(NSArray *)self->mRemoteTasks copy];

  return v2;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = CATBatchRemoteTaskOperation;
  [(CATBatchRemoteTaskOperation *)&v3 cancel];
  [(CATBatchRemoteTaskOperation *)self performSelectorOnMainThread:sel_cancelSubOperations withObject:0 waitUntilDone:0];
}

- (void)main
{
  v16 = *MEMORY[0x277D85DE8];
  [(CATOperation *)self setTotalUnitCount:[(NSArray *)self->mRemoteTasks count]];
  [(CATOperation *)self setCompletedUnitCount:0];
  if ([(NSArray *)self->mRemoteTasks count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->mRemoteTasks;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          [v8 addTarget:self selector:sel_remoteTaskDidFinish_ forOperationEvents:{6, v11}];
          [(NSOperationQueue *)self->mQueue addOperation:v8];
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    [(CATOperation *)self endOperationWithResultObject:0];
  }
}

- (void)remoteTaskDidFinish:(id)a3
{
  [(CATOperation *)self setCompletedUnitCount:[(CATOperation *)self completedUnitCount]+ 1];
  v4 = [(CATOperation *)self completedUnitCount];
  if (v4 >= [(NSArray *)self->mRemoteTasks count])
  {
    v5 = [objc_alloc(MEMORY[0x277CCAA80]) initWithTarget:self selector:sel_endOperationWithResultObject_ object:0];
    [(NSOperationQueue *)self->mQueue addOperation:v5];
  }
}

- (void)initWithTaskClient:(uint64_t)a1 requests:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATBatchRemoteTaskOperation.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"client"}];
}

@end