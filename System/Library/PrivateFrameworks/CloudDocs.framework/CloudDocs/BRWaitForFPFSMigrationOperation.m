@interface BRWaitForFPFSMigrationOperation
- (BRWaitForFPFSMigrationOperation)init;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRWaitForFPFSMigrationOperation

- (BRWaitForFPFSMigrationOperation)init
{
  v3.receiver = self;
  v3.super_class = BRWaitForFPFSMigrationOperation;
  return [(BROperation *)&v3 init];
}

- (void)main
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] wait for FPFS migration to finish%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  fpfsMigrationCompletion = self->_fpfsMigrationCompletion;
  v8 = a3;
  v9 = MEMORY[0x1B26FEA90](fpfsMigrationCompletion);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
    v11 = self->_fpfsMigrationCompletion;
    self->_fpfsMigrationCompletion = 0;
  }

  v12.receiver = self;
  v12.super_class = BRWaitForFPFSMigrationOperation;
  [(BROperation *)&v12 finishWithResult:v8 error:v6];
}

@end