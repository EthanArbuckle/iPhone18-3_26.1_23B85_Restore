@interface HDCloudSyncConditionalOperation
- (HDCloudSyncConditionalOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncConditionalOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 operation:(id)a5 shouldRunHandler:(id)a6;
- (id)description;
- (void)main;
- (void)skip;
@end

@implementation HDCloudSyncConditionalOperation

- (HDCloudSyncConditionalOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncConditionalOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 operation:(id)a5 shouldRunHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = HDCloudSyncConditionalOperation;
  v12 = [(HDCloudSyncOperation *)&v15 initWithConfiguration:a3 cloudState:a4];
  v13 = v12;
  if (v12)
  {
    [(HDCloudSyncConditionalOperation *)v12 setShouldRunHandler:v11];
    [(HDCloudSyncConditionalOperation *)v13 setOperation:v10];
  }

  return v13;
}

- (void)main
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(HDCloudSyncConditionalOperation *)self shouldRunHandler];
  [(HDCloudSyncConditionalOperation *)self setShouldRunHandler:0];
  if (v4 && ((v4)[2](v4, self) & 1) != 0)
  {
    v5 = [(HDCloudSyncConditionalOperation *)self operation];
    if (!v5)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"HDCloudSyncConditionalOperation.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"operation != nil"}];
    }

    v6 = [(HDCloudSyncOperation *)self cloudState];
    [v5 setCloudState:v6];

    [(HDCloudSyncOperation *)self delegateToOperation:v5];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = self;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping.", buf, 0xCu);
    }

    v8 = [(HDCloudSyncConditionalOperation *)self operation];
    [v8 skip];

    [(HDCloudSyncConditionalOperation *)self finishWithSuccess:1 error:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)skip
{
  v4.receiver = self;
  v4.super_class = HDCloudSyncConditionalOperation;
  [(HDCloudSyncOperation *)&v4 skip];
  v3 = [(HDCloudSyncConditionalOperation *)self operation];
  [v3 skip];

  [(HDCloudSyncConditionalOperation *)self setShouldRunHandler:0];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HDCloudSyncConditionalOperation *)self operation];
  v4 = [v2 stringWithFormat:@"[? %@]", v3];

  return v4;
}

@end