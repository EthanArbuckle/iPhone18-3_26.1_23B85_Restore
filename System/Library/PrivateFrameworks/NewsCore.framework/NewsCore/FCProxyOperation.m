@interface FCProxyOperation
+ (id)proxyForOperation:(id)a3;
+ (void)initialize;
- (void)_revisitQualityOfService;
- (void)_revisitRelativePriority;
- (void)operationDidFinishWithError:(id)a3;
- (void)performOperation;
- (void)setPurpose:(id)a3;
- (void)setQualityOfService:(int64_t)a3;
- (void)setRelativePriority:(int64_t)a3;
- (void)setUnderlyingOperation:(uint64_t)a1;
@end

@implementation FCProxyOperation

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (id)proxyForOperation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FCProxyOperation);
  [(FCProxyOperation *)v4 setUnderlyingOperation:v3];
  v5 = _MergedGlobals_144;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__FCProxyOperation_proxyForOperation___block_invoke;
  v11[3] = &unk_1E7C36C58;
  v12 = v3;
  v6 = v4;
  v13 = v6;
  v7 = v3;
  [v5 performWithLockSync:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)setUnderlyingOperation:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 368), a2);
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
  v2 = self;
  v3 = v2;
  if (v2)
  {
    underlyingOperation = v2->_underlyingOperation;
  }

  else
  {
    underlyingOperation = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__FCProxyOperation_performOperation__block_invoke;
  v7[3] = &unk_1E7C36EA0;
  v5 = v2;
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

- (void)operationDidFinishWithError:(id)a3
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
  if (a1)
  {
    v2 = qword_1EDB27058;
    v3 = *(a1 + 368);
    v4 = [v3 operationID];
    v5 = [v2 objectForKey:v4];

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

          v12 = [*(*(&v14 + 1) + 8 * i) relativePriority];
          if (v10 <= v12)
          {
            v10 = v12;
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

    [*(a1 + 368) setRelativePriority:v10];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_revisitQualityOfService
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = qword_1EDB27058;
    v3 = *(a1 + 368);
    v4 = [v3 operationID];
    v5 = [v2 objectForKey:v4];

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

          v13 = [*(*(&v17 + 1) + 8 * v11) qualityOfService];
          v10 = v13;
          if (v12 != -1 || v13 <= 24)
          {
            if (v12 <= v13)
            {
              v14 = v13;
            }

            else
            {
              v14 = v12;
            }

            if (v12 < 18 && v13 == -1)
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

    [*(a1 + 368) setQualityOfService:v10];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setRelativePriority:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = FCProxyOperation;
  [(FCOperation *)&v5 setRelativePriority:a3];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__FCProxyOperation_setRelativePriority___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [_MergedGlobals_144 performWithLockSync:v4];
}

- (void)setQualityOfService:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = FCProxyOperation;
  [(FCOperation *)&v5 setQualityOfService:a3];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__FCProxyOperation_setQualityOfService___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [_MergedGlobals_144 performWithLockSync:v4];
}

- (void)setPurpose:(id)a3
{
  v6.receiver = self;
  v6.super_class = FCProxyOperation;
  v4 = a3;
  [(FCOperation *)&v6 setPurpose:v4];
  if (self)
  {
    underlyingOperation = self->_underlyingOperation;
  }

  else
  {
    underlyingOperation = 0;
  }

  [(FCOperation *)underlyingOperation setPurpose:v4, v6.receiver, v6.super_class];
}

@end