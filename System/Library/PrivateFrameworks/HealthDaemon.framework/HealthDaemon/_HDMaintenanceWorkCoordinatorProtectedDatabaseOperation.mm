@interface _HDMaintenanceWorkCoordinatorProtectedDatabaseOperation
- (_HDMaintenanceWorkCoordinatorProtectedDatabaseOperation)initWithName:(id)name database:(id)database operationBlock:(id)block canceledBlock:(id)canceledBlock;
- (void)cancel;
- (void)dealloc;
- (void)main;
@end

@implementation _HDMaintenanceWorkCoordinatorProtectedDatabaseOperation

- (_HDMaintenanceWorkCoordinatorProtectedDatabaseOperation)initWithName:(id)name database:(id)database operationBlock:(id)block canceledBlock:(id)canceledBlock
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  databaseCopy = database;
  blockCopy = block;
  canceledBlockCopy = canceledBlock;
  v27.receiver = self;
  v27.super_class = _HDMaintenanceWorkCoordinatorProtectedDatabaseOperation;
  v14 = [(HDMaintenanceOperation *)&v27 initWithName:nameCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_database, database);
    v16 = [blockCopy copy];
    operationBlock = v15->_operationBlock;
    v15->_operationBlock = v16;

    v18 = _Block_copy(canceledBlockCopy);
    canceledBlock = v15->_canceledBlock;
    v15->_canceledBlock = v18;

    v26 = 0;
    v20 = [databaseCopy takeAccessibilityAssertionWithOwnerIdentifier:nameCopy timeout:&v26 error:600.0];
    v21 = v26;
    accessibilityAssertion = v15->_accessibilityAssertion;
    v15->_accessibilityAssertion = v20;

    if (!v15->_accessibilityAssertion)
    {
      _HKInitializeLogging();
      v23 = HKLogInfrastructure();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v29 = v15;
        v30 = 2114;
        v31 = v21;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Error taking accessibility assertion: %{public}@", buf, 0x16u);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  [(HDAssertion *)self->_accessibilityAssertion invalidate];
  accessibilityAssertion = self->_accessibilityAssertion;
  self->_accessibilityAssertion = 0;

  [(HKDaemonTransaction *)self->_transaction invalidate];
  transaction = self->_transaction;
  self->_transaction = 0;

  v5.receiver = self;
  v5.super_class = _HDMaintenanceWorkCoordinatorProtectedDatabaseOperation;
  [(_HDMaintenanceWorkCoordinatorProtectedDatabaseOperation *)&v5 dealloc];
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
    v4[2] = __65___HDMaintenanceWorkCoordinatorProtectedDatabaseOperation_cancel__block_invoke;
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
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self];
  transaction = self->_transaction;
  self->_transaction = v3;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___HDMaintenanceWorkCoordinatorProtectedDatabaseOperation_main__block_invoke;
  aBlock[3] = &unk_278613968;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:self->_accessibilityAssertion];
  database = self->_database;
  v16 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63___HDMaintenanceWorkCoordinatorProtectedDatabaseOperation_main__block_invoke_2;
  v14[3] = &unk_278623B40;
  v14[4] = self;
  v8 = v5;
  v15 = v8;
  v9 = [(HDDatabase *)database performWithTransactionContext:v6 error:&v16 block:v14];
  v10 = v16;
  if (!v9)
  {
    _HKInitializeLogging();
    v11 = HKLogInfrastructure();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v20 = 2114;
      v21 = v10;
      _os_log_fault_impl(&dword_228986000, v11, OS_LOG_TYPE_FAULT, "%{public}@ Error performing initial transaction context: %{public}@", buf, 0x16u);
    }

    (*(self->_operationBlock + 2))(self->_operationBlock, self->_database, 0, v8, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end