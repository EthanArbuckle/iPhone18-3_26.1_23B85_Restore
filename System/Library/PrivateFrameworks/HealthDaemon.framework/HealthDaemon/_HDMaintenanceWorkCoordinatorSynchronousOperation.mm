@interface _HDMaintenanceWorkCoordinatorSynchronousOperation
- (_HDMaintenanceWorkCoordinatorSynchronousOperation)initWithName:(id)a3 queue:(id)a4 block:(id)a5 canceledBlock:(id)a6;
- (void)cancel;
- (void)main;
@end

@implementation _HDMaintenanceWorkCoordinatorSynchronousOperation

- (_HDMaintenanceWorkCoordinatorSynchronousOperation)initWithName:(id)a3 queue:(id)a4 block:(id)a5 canceledBlock:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = _HDMaintenanceWorkCoordinatorSynchronousOperation;
  v14 = [(HDMaintenanceOperation *)&v21 initWithName:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, a4);
    v16 = _Block_copy(v12);
    block = v15->_block;
    v15->_block = v16;

    v18 = _Block_copy(v13);
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