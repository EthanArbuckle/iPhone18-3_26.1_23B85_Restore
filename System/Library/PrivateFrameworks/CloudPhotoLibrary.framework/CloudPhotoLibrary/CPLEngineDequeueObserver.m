@interface CPLEngineDequeueObserver
- (CPLEngineDequeueObserver)initWithClientWillAcknowledgeBatchBlock:(id)a3 clientDidAcknowledgeBatchBlock:(id)a4 changePipeDidRemoveChanges:(id)a5;
- (CPLEngineDequeueObserver)initWithDequeueSignalBlock:(id)a3;
@end

@implementation CPLEngineDequeueObserver

- (CPLEngineDequeueObserver)initWithDequeueSignalBlock:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__CPLEngineDequeueObserver_initWithDequeueSignalBlock___block_invoke;
  v12[3] = &unk_1E861CBD8;
  v13 = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CPLEngineDequeueObserver_initWithDequeueSignalBlock___block_invoke_2;
  v10[3] = &unk_1E861CBD8;
  v11 = v13;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CPLEngineDequeueObserver_initWithDequeueSignalBlock___block_invoke_3;
  v8[3] = &unk_1E861CC00;
  v9 = v11;
  v5 = v11;
  v6 = [(CPLEngineDequeueObserver *)self initWithClientWillAcknowledgeBatchBlock:v12 clientDidAcknowledgeBatchBlock:v10 changePipeDidRemoveChanges:v8];

  return v6;
}

- (CPLEngineDequeueObserver)initWithClientWillAcknowledgeBatchBlock:(id)a3 clientDidAcknowledgeBatchBlock:(id)a4 changePipeDidRemoveChanges:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CPLEngineDequeueObserver;
  v11 = [(CPLEngineDequeueObserver *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    clientWillAcknowledgeBatchBlock = v11->_clientWillAcknowledgeBatchBlock;
    v11->_clientWillAcknowledgeBatchBlock = v12;

    v14 = [v9 copy];
    clientDidAcknowledgeBatchBlock = v11->_clientDidAcknowledgeBatchBlock;
    v11->_clientDidAcknowledgeBatchBlock = v14;

    v16 = [v10 copy];
    changePipeDidRemoveChanges = v11->_changePipeDidRemoveChanges;
    v11->_changePipeDidRemoveChanges = v16;
  }

  return v11;
}

@end