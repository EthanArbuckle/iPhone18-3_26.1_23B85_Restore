@interface GTReplayerOperationBatch
- (GTReplayerOperationBatch)initWithRequestID:(unint64_t)d;
- (void)finish:(id)finish;
- (void)flush:(id)flush;
@end

@implementation GTReplayerOperationBatch

- (void)finish:(id)finish
{
  v19 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  if ([(NSMutableArray *)self->_operations count])
  {
    lastObject = [(NSMutableArray *)self->_operations lastObject];
    uuid = self->_uuid;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __35__GTReplayerOperationBatch_finish___block_invoke;
    v17[3] = &__block_descriptor_40_e5_v8__0l;
    v17[4] = uuid;
    [lastObject setCompletionBlock:v17];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_operations;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [finishCopy addOperation:{*(*(&v13 + 1) + 8 * v11++), v13}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_operations removeAllObjects];
  }

  else
  {
    GTCoreOperationControl_removeOperation(self->_uuid);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)flush:(id)flush
{
  v16 = *MEMORY[0x277D85DE8];
  flushCopy = flush;
  if ([(NSMutableArray *)self->_operations count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_operations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [flushCopy addOperation:{*(*(&v11 + 1) + 8 * v9++), v11}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_operations removeAllObjects];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (GTReplayerOperationBatch)initWithRequestID:(unint64_t)d
{
  v9.receiver = self;
  v9.super_class = GTReplayerOperationBatch;
  v4 = [(GTReplayerOperationBatch *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_uuid = d;
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    operations = v5->_operations;
    v5->_operations = v6;

    GTCoreOperationControl_addOperation(d);
  }

  return v5;
}

@end