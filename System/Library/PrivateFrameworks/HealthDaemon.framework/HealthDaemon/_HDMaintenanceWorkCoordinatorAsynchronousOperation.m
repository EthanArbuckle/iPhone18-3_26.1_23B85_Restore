@interface _HDMaintenanceWorkCoordinatorAsynchronousOperation
- (_HDMaintenanceWorkCoordinatorAsynchronousOperation)initWithName:(id)a3 operationBlock:(id)a4 canceledBlock:(id)a5;
- (void)cancel;
- (void)main;
@end

@implementation _HDMaintenanceWorkCoordinatorAsynchronousOperation

- (_HDMaintenanceWorkCoordinatorAsynchronousOperation)initWithName:(id)a3 operationBlock:(id)a4 canceledBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = _HDMaintenanceWorkCoordinatorAsynchronousOperation;
  v10 = [(HDMaintenanceOperation *)&v16 initWithName:a3];
  if (v10)
  {
    v11 = [v8 copy];
    operationBlock = v10->_operationBlock;
    v10->_operationBlock = v11;

    v13 = _Block_copy(v9);
    canceledBlock = v10->_canceledBlock;
    v10->_canceledBlock = v13;
  }

  return v10;
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
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __60___HDMaintenanceWorkCoordinatorAsynchronousOperation_cancel__block_invoke;
    v4[3] = &unk_278613968;
    v4[4] = self;
    canceledBlock[2](canceledBlock, v4);
  }

  else
  {

    [(HDMaintenanceOperation *)self finish];
  }
}

- (void)main
{
  operationBlock = self->_operationBlock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58___HDMaintenanceWorkCoordinatorAsynchronousOperation_main__block_invoke;
  v3[3] = &unk_278613968;
  v3[4] = self;
  operationBlock[2](operationBlock, v3);
}

@end