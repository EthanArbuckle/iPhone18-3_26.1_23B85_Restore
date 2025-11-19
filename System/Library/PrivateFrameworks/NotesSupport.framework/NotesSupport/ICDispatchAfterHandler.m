@interface ICDispatchAfterHandler
+ (id)appLifeCycleHandler;
- (ICDispatchAfterHandler)init;
- (id)identifierForStringIdentifier:(id)a3;
- (void)cancelAll;
- (void)cancelBlocksWithStringIdentifier:(id)a3;
- (void)dispatchAfter:(double)a3 stringIdentifier:(id)a4 withBlock:(id)a5;
@end

@implementation ICDispatchAfterHandler

+ (id)appLifeCycleHandler
{
  if (appLifeCycleHandler_predicate != -1)
  {
    +[ICDispatchAfterHandler appLifeCycleHandler];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "[NSThread isMainThread]", "+[ICDispatchAfterHandler appLifeCycleHandler]", 1, 0, @"The app handler should only be used on the main thread");
  }

  v2 = appLifeCycleHandler_sDispatchAfterHandler;

  return v2;
}

uint64_t __45__ICDispatchAfterHandler_appLifeCycleHandler__block_invoke()
{
  appLifeCycleHandler_sDispatchAfterHandler = objc_alloc_init(ICDispatchAfterHandler);

  return MEMORY[0x1EEE66BB8]();
}

- (ICDispatchAfterHandler)init
{
  v5.receiver = self;
  v5.super_class = ICDispatchAfterHandler;
  v2 = [(ICDispatchAfterHandler *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(ICDispatchAfterHandler *)v2 setIdentifierBlockMap:v3];
  }

  return v2;
}

- (id)identifierForStringIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = v5;

  return v6;
}

- (void)dispatchAfter:(double)a3 stringIdentifier:(id)a4 withBlock:(id)a5
{
  v14 = a5;
  v8 = [(ICDispatchAfterHandler *)self identifierForStringIdentifier:a4];
  v9 = objc_opt_class();
  v10 = [(ICDispatchAfterHandler *)self identifierBlockMap];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = ICCheckedDynamicCast(v9, v11);

  if (!v12)
  {
    v12 = [[ICDispatchAfterBlocks alloc] initWithIdentifier:v8];
    v13 = [(ICDispatchAfterHandler *)self identifierBlockMap];
    [v13 setObject:v12 forKeyedSubscript:v8];
  }

  [(ICDispatchAfterBlocks *)v12 dispatchAfter:v14 withBlock:a3];
}

- (void)cancelBlocksWithStringIdentifier:(id)a3
{
  v8 = [(ICDispatchAfterHandler *)self identifierForStringIdentifier:a3];
  v4 = objc_opt_class();
  v5 = [(ICDispatchAfterHandler *)self identifierBlockMap];
  v6 = [v5 objectForKeyedSubscript:v8];
  v7 = ICCheckedDynamicCast(v4, v6);

  [v7 cancelAll];
}

- (void)cancelAll
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(ICDispatchAfterHandler *)self identifierBlockMap];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = [v2 objectForKeyedSubscript:v7];
        v10 = ICCheckedDynamicCast(v8, v9);

        [v10 cancelAll];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

@end