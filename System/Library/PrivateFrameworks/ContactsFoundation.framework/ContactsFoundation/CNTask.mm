@interface CNTask
+ (id)taskWithBlock:(id)block;
+ (id)taskWithError:(id)error;
+ (id)taskWithName:(id)name block:(id)block;
+ (id)taskWithName:(id)name error:(id)error;
+ (id)taskWithName:(id)name result:(id)result;
+ (id)taskWithName:(id)name subtasks:(id)subtasks;
+ (id)taskWithResult:(id)result;
- (BOOL)cancel;
- (BOOL)isCancelled;
- (CNTask)initWithName:(id)name;
- (id)flatMap:(id)map;
- (id)map:(id)map;
- (id)profileWithTimeProvider:(id)provider os_log:(id)os_log;
- (id)recover:(id)recover;
- (id)run;
- (id)run:(id *)run;
- (id)runWithRetryDelegate:(id)delegate;
@end

@implementation CNTask

- (id)runWithRetryDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [[CNRetry alloc] initWithDelegate:delegateCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CNTask_Retry__runWithRetryDelegate___block_invoke;
  v8[3] = &unk_1E6ED5ED8;
  v8[4] = self;
  v6 = [(CNRetry *)v5 performAndWait:v8];

  return v6;
}

+ (id)taskWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[_CNBlockTask alloc] initWithBlock:blockCopy];

  return v4;
}

+ (id)taskWithName:(id)name block:(id)block
{
  blockCopy = block;
  nameCopy = name;
  v7 = [[_CNBlockTask alloc] initWithName:nameCopy block:blockCopy];

  return v7;
}

+ (id)taskWithName:(id)name subtasks:(id)subtasks
{
  subtasksCopy = subtasks;
  nameCopy = name;
  v7 = [[_CNAggregateTask alloc] initWithName:nameCopy tasks:subtasksCopy];

  return v7;
}

+ (id)taskWithResult:(id)result
{
  resultCopy = result;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__CNTask_taskWithResult___block_invoke;
  v7[3] = &unk_1E6ED6140;
  v8 = resultCopy;
  v4 = resultCopy;
  v5 = [CNTask taskWithBlock:v7];

  return v5;
}

+ (id)taskWithName:(id)name result:(id)result
{
  resultCopy = result;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__CNTask_taskWithName_result___block_invoke;
  v9[3] = &unk_1E6ED6140;
  v10 = resultCopy;
  v6 = resultCopy;
  v7 = [CNTask taskWithName:name block:v9];

  return v7;
}

+ (id)taskWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __24__CNTask_taskWithError___block_invoke;
  v7[3] = &unk_1E6ED6140;
  v8 = errorCopy;
  v4 = errorCopy;
  v5 = [CNTask taskWithBlock:v7];

  return v5;
}

uint64_t __24__CNTask_taskWithError___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return 0;
}

+ (id)taskWithName:(id)name error:(id)error
{
  errorCopy = error;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__CNTask_taskWithName_error___block_invoke;
  v9[3] = &unk_1E6ED6140;
  v10 = errorCopy;
  v6 = errorCopy;
  v7 = [CNTask taskWithName:name block:v9];

  return v7;
}

uint64_t __29__CNTask_taskWithName_error___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return 0;
}

- (CNTask)initWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_1 != -1)
    {
      [CNTask initWithName:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_1;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_1, OS_LOG_TYPE_FAULT))
    {
      [CNTask initWithName:v5];
    }
  }

  v11.receiver = self;
  v11.super_class = CNTask;
  v6 = [(CNTask *)&v11 init];
  if (v6)
  {
    v7 = [nameCopy copy];
    name = v6->_name;
    v6->_name = v7;

    v9 = v6;
  }

  return v6;
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  objc_sync_exit(selfCopy);

  return cancelled;
}

- (BOOL)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  selfCopy->_cancelled = 1;
  objc_sync_exit(selfCopy);

  return !cancelled;
}

- (id)run:(id *)run
{
  v5 = [(CNTask *)self methodForSelector:&sel_run];
  if (v5 == [CNTask instanceMethodForSelector:&sel_run])
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v6 = [(CNTask *)self run];
    value = [v6 value];

    if (value)
    {
      null = [v6 value];
    }

    else
    {
      error = [v6 error];
      if (run)
      {
        error = error;
        *run = error;
      }

      null = 0;
    }
  }

  return null;
}

- (id)run
{
  v3 = [(CNTask *)self methodForSelector:sel_run_];
  if (v3 == [CNTask instanceMethodForSelector:sel_run_])
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = [CNResult successWithValue:null];
  }

  else
  {
    v9 = 0;
    v4 = [(CNTask *)self run:&v9];
    v5 = v9;
    v6 = [CNResult resultWithValue:v4 orError:v5];
  }

  return v6;
}

- (id)flatMap:(id)map
{
  mapCopy = map;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __18__CNTask_flatMap___block_invoke;
  v8[3] = &unk_1E6ED6168;
  v8[4] = self;
  v9 = mapCopy;
  v5 = mapCopy;
  v6 = [CNTask taskWithBlock:v8];

  return v6;
}

id __18__CNTask_flatMap___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v15 = 0;
  v5 = [v4 run:&v15];
  v6 = v15;
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v7)
  {
    v9 = v5;
  }

  else if (v6)
  {
    if (a2)
    {
      v8 = v6;
      v9 = 0;
      *a2 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = (*(*(a1 + 40) + 16))();
    v14 = 0;
    v11 = [v10 run:&v14];
    v12 = v14;
    v9 = [CNFoundationError ifResultIsNil:v11 setOutputError:a2 toError:v12];
  }

  return v9;
}

- (id)map:(id)map
{
  mapCopy = map;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __14__CNTask_map___block_invoke;
  v8[3] = &unk_1E6ED6190;
  v9 = mapCopy;
  v5 = mapCopy;
  v6 = [(CNTask *)self flatMap:v8];

  return v6;
}

id __14__CNTask_map___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [CNTask taskWithResult:v1];

  return v2;
}

- (id)recover:(id)recover
{
  recoverCopy = recover;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __18__CNTask_recover___block_invoke;
  v8[3] = &unk_1E6ED6168;
  v8[4] = self;
  v9 = recoverCopy;
  v5 = recoverCopy;
  v6 = [CNTask taskWithBlock:v8];

  return v6;
}

id __18__CNTask_recover___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v13 = 0;
  v5 = [v4 run:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = (*(*(a1 + 40) + 16))();
    v12 = 0;
    v8 = [v7 run:&v12];
    v9 = v12;
    v10 = [CNFoundationError ifResultIsNil:v8 setOutputError:a2 toError:v9];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (id)profileWithTimeProvider:(id)provider os_log:(id)os_log
{
  os_logCopy = os_log;
  providerCopy = provider;
  v8 = [[_CNTimeProfilingTask alloc] initWithTask:self timeProvider:providerCopy os_log:os_logCopy];

  return v8;
}

@end