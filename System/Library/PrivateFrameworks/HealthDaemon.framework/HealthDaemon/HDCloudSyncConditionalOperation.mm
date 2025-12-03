@interface HDCloudSyncConditionalOperation
- (HDCloudSyncConditionalOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncConditionalOperation)initWithConfiguration:(id)configuration cloudState:(id)state operation:(id)operation shouldRunHandler:(id)handler;
- (id)description;
- (void)main;
- (void)skip;
@end

@implementation HDCloudSyncConditionalOperation

- (HDCloudSyncConditionalOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncConditionalOperation)initWithConfiguration:(id)configuration cloudState:(id)state operation:(id)operation shouldRunHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = HDCloudSyncConditionalOperation;
  v12 = [(HDCloudSyncOperation *)&v15 initWithConfiguration:configuration cloudState:state];
  v13 = v12;
  if (v12)
  {
    [(HDCloudSyncConditionalOperation *)v12 setShouldRunHandler:handlerCopy];
    [(HDCloudSyncConditionalOperation *)v13 setOperation:operationCopy];
  }

  return v13;
}

- (void)main
{
  v13 = *MEMORY[0x277D85DE8];
  shouldRunHandler = [(HDCloudSyncConditionalOperation *)self shouldRunHandler];
  [(HDCloudSyncConditionalOperation *)self setShouldRunHandler:0];
  if (shouldRunHandler && ((shouldRunHandler)[2](shouldRunHandler, self) & 1) != 0)
  {
    operation = [(HDCloudSyncConditionalOperation *)self operation];
    if (!operation)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncConditionalOperation.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"operation != nil"}];
    }

    cloudState = [(HDCloudSyncOperation *)self cloudState];
    [operation setCloudState:cloudState];

    [(HDCloudSyncOperation *)self delegateToOperation:operation];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping.", buf, 0xCu);
    }

    operation2 = [(HDCloudSyncConditionalOperation *)self operation];
    [operation2 skip];

    [(HDCloudSyncConditionalOperation *)self finishWithSuccess:1 error:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)skip
{
  v4.receiver = self;
  v4.super_class = HDCloudSyncConditionalOperation;
  [(HDCloudSyncOperation *)&v4 skip];
  operation = [(HDCloudSyncConditionalOperation *)self operation];
  [operation skip];

  [(HDCloudSyncConditionalOperation *)self setShouldRunHandler:0];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  operation = [(HDCloudSyncConditionalOperation *)self operation];
  v4 = [v2 stringWithFormat:@"[? %@]", operation];

  return v4;
}

@end