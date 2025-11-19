@interface CPLActiveDownloadQueue
- (CPLActiveDownloadQueue)initWithName:(id)a3 type:(unint64_t)a4 FIFOQueue:(BOOL)a5 maximumBatchSize:(unint64_t)a6 maximumConcurrentTransportTasks:(unint64_t)a7 coalescingInterval:(int64_t)a8 groupConstructor:(id)a9;
- (id)dequeueBatchOfTransferTasksDequeuedSize:(unint64_t *)a3;
- (id)dequeueLastTransportTask;
- (id)status;
- (unint64_t)countOfTransferTasksInTransportTasks;
- (void)addTransferTask:(id)a3;
@end

@implementation CPLActiveDownloadQueue

- (id)status
{
  v3 = [(NSMutableArray *)self->_transferTasks count];
  v4 = [(NSMutableArray *)self->_transportTasks count];
  v5 = [(CPLActiveDownloadQueue *)self countOfTransferTasksInTransportTasks];
  if (v4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ queued: %lu - transport: %lu for %lu resources", self->_name, v3, v4, v5];
    v6 = LABEL_5:;
    goto LABEL_6;
  }

  if (v3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ queued: %lu", self->_name, v3, v8, v9];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)dequeueLastTransportTask
{
  v3 = [(NSMutableArray *)self->_transportTasks lastObject];
  if (v3)
  {
    [(NSMutableArray *)self->_transportTasks removeLastObject];
  }

  return v3;
}

- (unint64_t)countOfTransferTasksInTransportTasks
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_transportTasks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) downloadTasks];
        v5 += [v8 count];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)dequeueBatchOfTransferTasksDequeuedSize:(unint64_t *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = self;
  transferTasks = self->_transferTasks;
  if (self->_FIFOQueue)
  {
    [(NSMutableArray *)transferTasks objectEnumerator];
  }

  else
  {
    [(NSMutableArray *)transferTasks reverseObjectEnumerator];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v7 = v31 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v27 = a3;
    v10 = 0;
    v11 = 0;
    v12 = *v31;
    while (2)
    {
      v13 = v7;
      v14 = 0;
      v28 = v11 + v9;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v13);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = [v15 cloudResource];
        v17 = [v16 estimatedResourceSize];

        maximumBatchSize = v29->_maximumBatchSize;
        v19 = maximumBatchSize > v10;
        v20 = maximumBatchSize - v10;
        v21 = v19 && v20 >= v17;
        if (!v21 && [v5 count])
        {
          v7 = v13;
          goto LABEL_18;
        }

        [v5 addObject:v15];
        v10 += v17;
        ++v11;
        ++v14;
      }

      while (v9 != v14);
      v7 = v13;
      v9 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v11 = v28;
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_18:

    if (v11)
    {
      if (v27)
      {
        *v27 = v10;
      }

      v22 = v29->_transferTasks;
      if (v29->_FIFOQueue)
      {
        v23 = v29->_transferTasks;
        v24 = 0;
      }

      else
      {
        v24 = [(NSMutableArray *)v29->_transferTasks count]- v11;
        v23 = v22;
      }

      [(NSMutableArray *)v23 removeObjectsInRange:v24, v11];
    }
  }

  else
  {
  }

  v25 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)addTransferTask:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_FIFOQueue && [v4 willGenerateReport])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_transferTasks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) noteTaskHasBeenPreempted];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  [(NSMutableArray *)self->_transferTasks addObject:v5, v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (CPLActiveDownloadQueue)initWithName:(id)a3 type:(unint64_t)a4 FIFOQueue:(BOOL)a5 maximumBatchSize:(unint64_t)a6 maximumConcurrentTransportTasks:(unint64_t)a7 coalescingInterval:(int64_t)a8 groupConstructor:(id)a9
{
  v15 = a3;
  v16 = a9;
  v27.receiver = self;
  v27.super_class = CPLActiveDownloadQueue;
  v17 = [(CPLActiveDownloadQueue *)&v27 init];
  if (v17)
  {
    v18 = [v15 copy];
    name = v17->_name;
    v17->_name = v18;

    v17->_FIFOQueue = a5;
    v17->_type = a4;
    v17->_maximumBatchSize = a6;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transferTasks = v17->_transferTasks;
    v17->_transferTasks = v20;

    v17->_maximumConcurrentTransportTasks = a7;
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transportTasks = v17->_transportTasks;
    v17->_transportTasks = v22;

    v17->_coalescingInterval = a8;
    v24 = MEMORY[0x1E128EBA0](v16);
    groupConstructor = v17->_groupConstructor;
    v17->_groupConstructor = v24;
  }

  return v17;
}

@end