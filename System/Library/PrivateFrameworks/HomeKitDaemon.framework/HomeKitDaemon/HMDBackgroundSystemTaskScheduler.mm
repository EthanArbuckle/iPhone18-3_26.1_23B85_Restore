@interface HMDBackgroundSystemTaskScheduler
- (BOOL)cancelTaskRequestWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)registerForTaskWithIdentifier:(id)identifier usingQueue:(id)queue launchHandler:(id)handler;
- (BOOL)submitTaskRequest:(id)request error:(id *)error;
- (id)taskRequestForIdentifier:(id)identifier;
@end

@implementation HMDBackgroundSystemTaskScheduler

- (BOOL)submitTaskRequest:(id)request error:(id *)error
{
  v5 = MEMORY[0x277CF0810];
  requestCopy = request;
  sharedScheduler = [v5 sharedScheduler];
  taskRequest = [requestCopy taskRequest];

  LOBYTE(error) = [sharedScheduler submitTaskRequest:taskRequest error:error];
  return error;
}

- (BOOL)cancelTaskRequestWithIdentifier:(id)identifier error:(id *)error
{
  v5 = MEMORY[0x277CF0810];
  identifierCopy = identifier;
  sharedScheduler = [v5 sharedScheduler];
  LOBYTE(error) = [sharedScheduler cancelTaskRequestWithIdentifier:identifierCopy error:error];

  return error;
}

- (id)taskRequestForIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CF0810];
  identifierCopy = identifier;
  sharedScheduler = [v3 sharedScheduler];
  v6 = [sharedScheduler taskRequestForIdentifier:identifierCopy];

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

- (BOOL)registerForTaskWithIdentifier:(id)identifier usingQueue:(id)queue launchHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277CF0810];
  queueCopy = queue;
  identifierCopy = identifier;
  sharedScheduler = [v8 sharedScheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__HMDBackgroundSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke;
  v14[3] = &unk_278688FB8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  LOBYTE(v8) = [sharedScheduler registerForTaskWithIdentifier:identifierCopy usingQueue:queueCopy launchHandler:v14];

  return v8;
}

void __91__HMDBackgroundSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDBackgroundSystemTask alloc] initWithUnderlyingTask:v3];

  (*(*(a1 + 32) + 16))();
}

@end