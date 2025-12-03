@interface HDCloudSyncBlockOperation
- (HDCloudSyncBlockOperation)initWithConfiguration:(id)configuration cloudState:(id)state block:(id)block;
- (HDCloudSyncBlockOperation)initWithConfiguration:(id)configuration cloudState:(id)state synchronousBlock:(id)block;
- (void)main;
- (void)skip;
@end

@implementation HDCloudSyncBlockOperation

- (HDCloudSyncBlockOperation)initWithConfiguration:(id)configuration cloudState:(id)state synchronousBlock:(id)block
{
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__HDCloudSyncBlockOperation_initWithConfiguration_cloudState_synchronousBlock___block_invoke;
  v12[3] = &unk_278625758;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = [(HDCloudSyncBlockOperation *)self initWithConfiguration:configuration cloudState:state block:v12];

  return v10;
}

void __79__HDCloudSyncBlockOperation_initWithConfiguration_cloudState_synchronousBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2, v4, &v7);
  v6 = v7;
  [v4 finishWithSuccess:v5 error:v6];
}

- (HDCloudSyncBlockOperation)initWithConfiguration:(id)configuration cloudState:(id)state block:(id)block
{
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = HDCloudSyncBlockOperation;
  v9 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  if (v9)
  {
    v10 = [blockCopy copy];
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

- (void)main
{
  (*(self->_block + 2))();
  block = self->_block;
  self->_block = 0;
}

- (void)skip
{
  block = self->_block;
  self->_block = 0;

  v4.receiver = self;
  v4.super_class = HDCloudSyncBlockOperation;
  [(HDCloudSyncOperation *)&v4 skip];
}

@end