@interface HDCloudSyncParallelOperation
- (HDCloudSyncParallelOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (NSArray)operations;
- (void)addOperation:(id)a3;
- (void)addOperationOfClass:(Class)a3;
- (void)main;
- (void)skip;
@end

@implementation HDCloudSyncParallelOperation

- (HDCloudSyncParallelOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v10.receiver = self;
  v10.super_class = HDCloudSyncParallelOperation;
  v4 = [(HDCloudSyncOperation *)&v10 initWithConfiguration:a3 cloudState:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    operations = v4->_operations;
    v4->_operations = v5;

    v7 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v7;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)main
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_operations count])
  {
    v3 = 10 * [(NSMutableArray *)self->_operations count];
    v4 = [(HDCloudSyncOperation *)self progress];
    [v4 setTotalUnitCount:v3];

    [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_operations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
          v11 = [(HDCloudSyncOperation *)self cloudState];
          [v10 setCloudState:v11];

          v12 = [(HDCloudSyncOperation *)self progress];
          v13 = [v10 progress];
          [v12 addChild:v13 withPendingUnitCount:10];

          [v10 start];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

- (void)skip
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HDCloudSyncParallelOperation;
  [(HDCloudSyncOperation *)&v13 skip];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_operations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) skip];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSArray)operations
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_operations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addOperationOfClass:(Class)a3
{
  v4 = [a3 alloc];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [(HDCloudSyncOperation *)self cloudState];
  v7 = [v4 initWithConfiguration:v5 cloudState:v6];

  [(HDCloudSyncParallelOperation *)self addOperation:v7];
}

- (void)addOperation:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncParallelOperation.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  v6 = [(HDCloudSyncOperation *)self cloudState];
  [v5 setCloudState:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HDCloudSyncParallelOperation_addOperation___block_invoke;
  v9[3] = &unk_278613060;
  v9[4] = self;
  [v5 setOnSuccess:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HDCloudSyncParallelOperation_addOperation___block_invoke_2;
  v8[3] = &unk_278613088;
  v8[4] = self;
  [v5 setOnError:v8];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_operations addObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

@end