@interface CPLActiveDownloadQueue
- (CPLActiveDownloadQueue)initWithName:(id)name type:(unint64_t)type FIFOQueue:(BOOL)queue maximumBatchSize:(unint64_t)size maximumConcurrentTransportTasks:(unint64_t)tasks coalescingInterval:(int64_t)interval groupConstructor:(id)constructor;
- (id)dequeueBatchOfTransferTasksDequeuedSize:(unint64_t *)size;
- (id)dequeueLastTransportTask;
- (id)status;
- (unint64_t)countOfTransferTasksInTransportTasks;
- (void)addTransferTask:(id)task;
@end

@implementation CPLActiveDownloadQueue

- (id)status
{
  v3 = [(NSMutableArray *)self->_transferTasks count];
  v4 = [(NSMutableArray *)self->_transportTasks count];
  countOfTransferTasksInTransportTasks = [(CPLActiveDownloadQueue *)self countOfTransferTasksInTransportTasks];
  if (v4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ queued: %lu - transport: %lu for %lu resources", self->_name, v3, v4, countOfTransferTasksInTransportTasks];
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
  lastObject = [(NSMutableArray *)self->_transportTasks lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self->_transportTasks removeLastObject];
  }

  return lastObject;
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

        downloadTasks = [*(*(&v11 + 1) + 8 * i) downloadTasks];
        v5 += [downloadTasks count];
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

- (id)dequeueBatchOfTransferTasksDequeuedSize:(unint64_t *)size
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
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
    sizeCopy = size;
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
        cloudResource = [v15 cloudResource];
        estimatedResourceSize = [cloudResource estimatedResourceSize];

        maximumBatchSize = selfCopy->_maximumBatchSize;
        v19 = maximumBatchSize > v10;
        v20 = maximumBatchSize - v10;
        v21 = v19 && v20 >= estimatedResourceSize;
        if (!v21 && [v5 count])
        {
          v7 = v13;
          goto LABEL_18;
        }

        [v5 addObject:v15];
        v10 += estimatedResourceSize;
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
      if (sizeCopy)
      {
        *sizeCopy = v10;
      }

      v22 = selfCopy->_transferTasks;
      if (selfCopy->_FIFOQueue)
      {
        v23 = selfCopy->_transferTasks;
        v24 = 0;
      }

      else
      {
        v24 = [(NSMutableArray *)selfCopy->_transferTasks count]- v11;
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

- (void)addTransferTask:(id)task
{
  v17 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v5 = taskCopy;
  if (!self->_FIFOQueue && [taskCopy willGenerateReport])
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

- (CPLActiveDownloadQueue)initWithName:(id)name type:(unint64_t)type FIFOQueue:(BOOL)queue maximumBatchSize:(unint64_t)size maximumConcurrentTransportTasks:(unint64_t)tasks coalescingInterval:(int64_t)interval groupConstructor:(id)constructor
{
  nameCopy = name;
  constructorCopy = constructor;
  v27.receiver = self;
  v27.super_class = CPLActiveDownloadQueue;
  v17 = [(CPLActiveDownloadQueue *)&v27 init];
  if (v17)
  {
    v18 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v18;

    v17->_FIFOQueue = queue;
    v17->_type = type;
    v17->_maximumBatchSize = size;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transferTasks = v17->_transferTasks;
    v17->_transferTasks = v20;

    v17->_maximumConcurrentTransportTasks = tasks;
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transportTasks = v17->_transportTasks;
    v17->_transportTasks = v22;

    v17->_coalescingInterval = interval;
    v24 = MEMORY[0x1E128EBA0](constructorCopy);
    groupConstructor = v17->_groupConstructor;
    v17->_groupConstructor = v24;
  }

  return v17;
}

@end