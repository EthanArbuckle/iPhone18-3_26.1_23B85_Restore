@interface HDCloudSyncIgnoredErrorsOperation
- (HDCloudSyncIgnoredErrorsOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncIgnoredErrorsOperation)initWithConfiguration:(id)configuration cloudState:(id)state operation:(id)operation;
- (id)description;
- (void)main;
- (void)skip;
@end

@implementation HDCloudSyncIgnoredErrorsOperation

- (HDCloudSyncIgnoredErrorsOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncIgnoredErrorsOperation)initWithConfiguration:(id)configuration cloudState:(id)state operation:(id)operation
{
  operationCopy = operation;
  v12.receiver = self;
  v12.super_class = HDCloudSyncIgnoredErrorsOperation;
  v9 = [(HDCloudSyncOperation *)&v12 initWithConfiguration:configuration cloudState:state];
  v10 = v9;
  if (v9)
  {
    [(HDCloudSyncIgnoredErrorsOperation *)v9 setOperation:operationCopy];
  }

  return v10;
}

- (void)main
{
  operation = [(HDCloudSyncIgnoredErrorsOperation *)self operation];
  if (!operation)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncIgnoredErrorsOperation.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"operation != nil"}];
  }

  cloudState = [(HDCloudSyncOperation *)self cloudState];
  [operation setCloudState:cloudState];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__HDCloudSyncIgnoredErrorsOperation_main__block_invoke;
  v15[3] = &unk_278613060;
  v15[4] = self;
  [operation setOnSuccess:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__HDCloudSyncIgnoredErrorsOperation_main__block_invoke_2;
  v14[3] = &unk_278613088;
  v14[4] = self;
  [operation setOnError:v14];
  progress = [operation progress];
  totalUnitCount = [progress totalUnitCount];
  progress2 = [(HDCloudSyncOperation *)self progress];
  [progress2 setTotalUnitCount:totalUnitCount];

  progress3 = [(HDCloudSyncOperation *)self progress];
  [progress3 setCompletedUnitCount:0];

  progress4 = [(HDCloudSyncOperation *)self progress];
  progress5 = [operation progress];
  progress6 = [operation progress];
  [progress4 addChild:progress5 withPendingUnitCount:{objc_msgSend(progress6, "totalUnitCount")}];

  [operation start];
}

uint64_t __41__HDCloudSyncIgnoredErrorsOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cloudState];
  [*(a1 + 32) setCloudState:v3];

  v4 = *(a1 + 32);

  return [v4 finishWithSuccess:1 error:0];
}

void __41__HDCloudSyncIgnoredErrorsOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 cloudState];
  [*(a1 + 32) setCloudState:v6];

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Underlying operation failed with an ignored error: %{public}@", &v10, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:1 error:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)skip
{
  v4.receiver = self;
  v4.super_class = HDCloudSyncIgnoredErrorsOperation;
  [(HDCloudSyncOperation *)&v4 skip];
  operation = [(HDCloudSyncIgnoredErrorsOperation *)self operation];
  [operation skip];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  operation = [(HDCloudSyncIgnoredErrorsOperation *)self operation];
  v4 = [v2 stringWithFormat:@"[! %@]", operation];

  return v4;
}

@end