@interface FCMultiStepFetchOperation
- (FCMultiStepFetchOperation)init;
- (void)_performNextStep;
- (void)addFetchStep:(SEL)a3;
- (void)addNonCriticalFetchStep:(SEL)a3;
@end

@implementation FCMultiStepFetchOperation

- (void)_performNextStep
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(FCMultiStepFetchOperation *)self accessLock];
  [v3 lock];

  if (![(FCOperation *)self isFinished])
  {
    v4 = [(FCMultiStepFetchOperation *)self steps];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(FCMultiStepFetchOperation *)self steps];
      v7 = [v6 firstObject];

      v8 = [(FCMultiStepFetchOperation *)self steps];
      [v8 removeObjectAtIndex:0];

      v9 = -[FCMultiStepFetchOperation methodForSelector:](self, "methodForSelector:", [v7 fetchSelector]);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __45__FCMultiStepFetchOperation__performNextStep__block_invoke_2;
      v22 = &unk_1E7C36CD0;
      v23 = self;
      v10 = v7;
      v24 = v10;
      v11 = _Block_copy(&v19);
      v12 = v9(self, [v10 fetchSelector], v11);
      if (v12)
      {
        [(FCOperation *)self associateChildOperation:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[FCMultiStepFetchOperation customizeChildOperation:forFetchStep:](self, "customizeChildOperation:forFetchStep:", v12, [v10 fetchSelector]);
          [v12 setCanSendFetchCompletionSynchronously:1];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 isExecuting] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"child operation shouldn't be executing yet"];
            *buf = 136315906;
            v26 = "[FCMultiStepFetchOperation _performNextStep]";
            v27 = 2080;
            v28 = "FCMultiStepFetchOperation.m";
            v29 = 1024;
            v30 = 149;
            v31 = 2114;
            v32 = v18;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          [v12 start];
        }
      }
    }

    else
    {
      v10 = [(FCMultiStepFetchOperation *)self completeFetchOperation];
      v13 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:v10 error:0];
      v14 = [(FCMultiStepFetchOperation *)self stepResults];
      v15 = [v14 fc_setByCollectingObjectsWithBlock:&__block_literal_global_65];
      [v13 setMissingObjectDescriptions:v15];

      [(FCFetchOperation *)self finishExecutingWithResult:v13];
    }
  }

  v16 = [(FCMultiStepFetchOperation *)self accessLock];
  [v16 unlock];

  v17 = *MEMORY[0x1E69E9840];
}

- (FCMultiStepFetchOperation)init
{
  v10.receiver = self;
  v10.super_class = FCMultiStepFetchOperation;
  v2 = [(FCFetchOperation *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    steps = v2->_steps;
    v2->_steps = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    stepResults = v2->_stepResults;
    v2->_stepResults = v5;

    v7 = [objc_alloc(MEMORY[0x1E69B68E8]) initWithOptions:1];
    accessLock = v2->_accessLock;
    v2->_accessLock = v7;
  }

  return v2;
}

void __45__FCMultiStepFetchOperation__performNextStep__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [*(a1 + 32) stepResults];
    [v3 addObject:v4];

    if ([*(a1 + 40) isCritical] && objc_msgSend(v4, "status"))
    {
      [*(a1 + 32) finishExecutingWithResult:v4];
    }
  }

  else
  {
    [*(a1 + 40) isCritical];
  }

  [*(a1 + 32) _performNextStep];
}

- (void)addFetchStep:(SEL)a3
{
  v5 = [(FCMultiStepFetchOperation *)self accessLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__FCMultiStepFetchOperation_addFetchStep___block_invoke;
  v6[3] = &unk_1E7C3C970;
  v6[4] = self;
  v6[5] = a3;
  [v5 performWithLockSync:v6];
}

void __42__FCMultiStepFetchOperation_addFetchStep___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(FCMultiStepFetchOperationStep);
  [(FCMultiStepFetchOperationStep *)v3 setFetchSelector:*(a1 + 40)];
  [(FCMultiStepFetchOperationStep *)v3 setIsCritical:1];
  v2 = [*(a1 + 32) steps];
  [v2 addObject:v3];
}

- (void)addNonCriticalFetchStep:(SEL)a3
{
  v5 = [(FCMultiStepFetchOperation *)self accessLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__FCMultiStepFetchOperation_addNonCriticalFetchStep___block_invoke;
  v6[3] = &unk_1E7C3C970;
  v6[4] = self;
  v6[5] = a3;
  [v5 performWithLockSync:v6];
}

void __53__FCMultiStepFetchOperation_addNonCriticalFetchStep___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(FCMultiStepFetchOperationStep);
  [(FCMultiStepFetchOperationStep *)v3 setFetchSelector:*(a1 + 40)];
  [(FCMultiStepFetchOperationStep *)v3 setIsCritical:0];
  v2 = [*(a1 + 32) steps];
  [v2 addObject:v3];
}

@end