@interface FCProxyOperation
+ (id)proxyForOperation:(id)operation;
+ (void)initialize;
- (void)_revisitQualityOfService;
- (void)_revisitRelativePriority;
- (void)operationDidFinishWithError:(id)error;
- (void)performOperation;
- (void)setPurpose:(id)purpose;
- (void)setQualityOfService:(int64_t)service;
- (void)setRelativePriority:(int64_t)priority;
- (void)setUnderlyingOperation:(uint64_t)operation;
@end

@implementation FCProxyOperation

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69B6920]);
    v3 = _MergedGlobals_144;
    _MergedGlobals_144 = v2;

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = qword_1EDB27058;
    qword_1EDB27058 = v4;

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

+ (id)proxyForOperation:(id)operation
{
  operationCopy = operation;
  v4 = objc_alloc_init(FCProxyOperation);
  [(FCProxyOperation *)v4 setUnderlyingOperation:operationCopy];
  v5 = _MergedGlobals_144;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__FCProxyOperation_proxyForOperation___block_invoke;
  v11[3] = &unk_1E7C36C58;
  v12 = operationCopy;
  v6 = v4;
  v13 = v6;
  v7 = operationCopy;
  [v5 performWithLockSync:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)setUnderlyingOperation:(uint64_t)operation
{
  if (operation)
  {
    objc_storeStrong((operation + 368), a2);
  }
}

void __38__FCProxyOperation_proxyForOperation___block_invoke(uint64_t a1)
{
  v2 = qword_1EDB27058;
  v3 = [*(a1 + 32) operationID];
  v7 = [v2 objectForKey:v3];

  v4 = v7;
  if (!v7)
  {
    v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  }

  v8 = v4;
  [v4 addObject:*(a1 + 40)];
  v5 = qword_1EDB27058;
  v6 = [*(a1 + 32) operationID];
  [v5 setObject:v8 forKey:v6];
}

- (void)performOperation
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    underlyingOperation = selfCopy->_underlyingOperation;
  }

  else
  {
    underlyingOperation = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__FCProxyOperation_performOperation__block_invoke;
  v7[3] = &unk_1E7C36EA0;
  v5 = selfCopy;
  v8 = v5;
  [(FCOperation *)underlyingOperation addCompletionHandler:v7];
  if (v3)
  {
    v6 = v5->_underlyingOperation;
  }

  else
  {
    v6 = 0;
  }

  [(FCOperation *)v6 startIfNeeded];
}

- (void)operationDidFinishWithError:(id)error
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__FCProxyOperation_operationDidFinishWithError___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [_MergedGlobals_144 performWithLockSync:v4];
  [(FCProxyOperation *)self setUnderlyingOperation:?];
}

void __48__FCProxyOperation_operationDidFinishWithError___block_invoke(uint64_t a1)
{
  v2 = qword_1EDB27058;
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[46];
  }

  v4 = v3;
  v5 = [v4 operationID];
  v6 = [v2 objectForKey:v5];

  if ([v6 containsObject:*(a1 + 32)])
  {
    [v6 removeObject:*(a1 + 32)];
    [(FCProxyOperation *)*(a1 + 32) _revisitRelativePriority];
    [(FCProxyOperation *)*(a1 + 32) _revisitQualityOfService];
  }
}

- (void)_revisitRelativePriority
{
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = qword_1EDB27058;
    v3 = *(self + 368);
    operationID = [v3 operationID];
    v5 = [v2 objectForKey:operationID];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      v10 = -1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          relativePriority = [*(*(&v14 + 1) + 8 * i) relativePriority];
          if (v10 <= relativePriority)
          {
            v10 = relativePriority;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = -1;
    }

    [*(self + 368) setRelativePriority:v10];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_revisitQualityOfService
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = qword_1EDB27058;
    v3 = *(self + 368);
    operationID = [v3 operationID];
    v5 = [v2 objectForKey:operationID];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      v10 = 9;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          qualityOfService = [*(*(&v17 + 1) + 8 * v11) qualityOfService];
          v10 = qualityOfService;
          if (v12 != -1 || qualityOfService <= 24)
          {
            if (v12 <= qualityOfService)
            {
              v14 = qualityOfService;
            }

            else
            {
              v14 = v12;
            }

            if (v12 < 18 && qualityOfService == -1)
            {
              v10 = -1;
            }

            else
            {
              v10 = v14;
            }
          }

          ++v11;
          v12 = v10;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 9;
    }

    [*(self + 368) setQualityOfService:v10];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setRelativePriority:(int64_t)priority
{
  v5.receiver = self;
  v5.super_class = FCProxyOperation;
  [(FCOperation *)&v5 setRelativePriority:priority];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__FCProxyOperation_setRelativePriority___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [_MergedGlobals_144 performWithLockSync:v4];
}

- (void)setQualityOfService:(int64_t)service
{
  v5.receiver = self;
  v5.super_class = FCProxyOperation;
  [(FCOperation *)&v5 setQualityOfService:service];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__FCProxyOperation_setQualityOfService___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [_MergedGlobals_144 performWithLockSync:v4];
}

- (void)setPurpose:(id)purpose
{
  v6.receiver = self;
  v6.super_class = FCProxyOperation;
  purposeCopy = purpose;
  [(FCOperation *)&v6 setPurpose:purposeCopy];
  if (self)
  {
    underlyingOperation = self->_underlyingOperation;
  }

  else
  {
    underlyingOperation = 0;
  }

  [(FCOperation *)underlyingOperation setPurpose:purposeCopy, v6.receiver, v6.super_class];
}

@end