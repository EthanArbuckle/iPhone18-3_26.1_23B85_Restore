@interface HMDBackgroundSystemTaskScheduler
- (BOOL)cancelTaskRequestWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)registerForTaskWithIdentifier:(id)a3 usingQueue:(id)a4 launchHandler:(id)a5;
- (BOOL)submitTaskRequest:(id)a3 error:(id *)a4;
- (id)taskRequestForIdentifier:(id)a3;
@end

@implementation HMDBackgroundSystemTaskScheduler

- (BOOL)submitTaskRequest:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CF0810];
  v6 = a3;
  v7 = [v5 sharedScheduler];
  v8 = [v6 taskRequest];

  LOBYTE(a4) = [v7 submitTaskRequest:v8 error:a4];
  return a4;
}

- (BOOL)cancelTaskRequestWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CF0810];
  v6 = a3;
  v7 = [v5 sharedScheduler];
  LOBYTE(a4) = [v7 cancelTaskRequestWithIdentifier:v6 error:a4];

  return a4;
}

- (id)taskRequestForIdentifier:(id)a3
{
  v3 = MEMORY[0x277CF0810];
  v4 = a3;
  v5 = [v3 sharedScheduler];
  v6 = [v5 taskRequestForIdentifier:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [[HMDBackgroundSystemTaskRequest alloc] initWithTaskRequest:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)registerForTaskWithIdentifier:(id)a3 usingQueue:(id)a4 launchHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CF0810];
  v9 = a4;
  v10 = a3;
  v11 = [v8 sharedScheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__HMDBackgroundSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke;
  v14[3] = &unk_278688FB8;
  v15 = v7;
  v12 = v7;
  LOBYTE(v8) = [v11 registerForTaskWithIdentifier:v10 usingQueue:v9 launchHandler:v14];

  return v8;
}

void __91__HMDBackgroundSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDBackgroundSystemTask alloc] initWithUnderlyingTask:v3];

  (*(*(a1 + 32) + 16))();
}

@end