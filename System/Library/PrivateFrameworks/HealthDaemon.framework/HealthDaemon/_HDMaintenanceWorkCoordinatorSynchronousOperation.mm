@interface _HDMaintenanceWorkCoordinatorSynchronousOperation
- (_HDMaintenanceWorkCoordinatorSynchronousOperation)initWithName:(id)name queue:(id)queue block:(id)block canceledBlock:(id)canceledBlock;
- (void)cancel;
- (void)main;
@end

@implementation _HDMaintenanceWorkCoordinatorSynchronousOperation

- (_HDMaintenanceWorkCoordinatorSynchronousOperation)initWithName:(id)name queue:(id)queue block:(id)block canceledBlock:(id)canceledBlock
{
  queueCopy = queue;
  blockCopy = block;
  canceledBlockCopy = canceledBlock;
  v21.receiver = self;
  v21.super_class = _HDMaintenanceWorkCoordinatorSynchronousOperation;
  v14 = [(HDMaintenanceOperation *)&v21 initWithName:name];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    v16 = _Block_copy(blockCopy);
    block = v15->_block;
    v15->_block = v16;

    v18 = _Block_copy(canceledBlockCopy);
    canceledBlock = v15->_canceledBlock;
    v15->_canceledBlock = v18;
  }

  return v15;
}

- (void)cancel
{
  if (self)
  {
    self->super._wasCanceled = 1;
  }

  canceledBlock = self->_canceledBlock;
  if (canceledBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      dispatch_sync(queue, canceledBlock);
    }

    else
    {
      (canceledBlock)[2](self->_canceledBlock);
    }
  }

  [(HDMaintenanceOperation *)self finish];
}

- (void)main
{
  queue = self->_queue;
  block = self->_block;
  if (queue)
  {
    dispatch_sync(queue, block);
  }

  else
  {
    (block)[2](self->_block);
  }

  [(HDMaintenanceOperation *)self finish];
}

@end