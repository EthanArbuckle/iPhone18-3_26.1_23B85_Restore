@interface _DKSync2State
- (void)addCompletionBlock:(uint64_t)a1;
- (void)finishWithError:(uint64_t)a1;
- (void)initWithType:(void *)a3 completion:;
@end

@implementation _DKSync2State

- (void)addCompletionBlock:(uint64_t)a1
{
  if (a1 && a2)
  {
    v2 = *(a1 + 32);
    v3 = MEMORY[0x193B00C50](a2);
    [v2 addObject:v3];
  }
}

- (void)initWithType:(void *)a3 completion:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = _DKSync2State;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 2, a2);
      v9 = MEMORY[0x1E695DF70];
      v10 = MEMORY[0x193B00C50](v7);
      v11 = [v9 arrayWithObjects:{v10, 0}];
      v12 = a1[4];
      a1[4] = v11;
    }
  }

  return a1;
}

- (void)finishWithError:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 = MEMORY[0x193B00C50](*(*(&v13 + 1) + 8 * v9));

          (v7)[2](v7, v3);
          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    [*(a1 + 32) removeAllObjects];
    v11 = *(a1 + 32);
    *(a1 + 32) = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end