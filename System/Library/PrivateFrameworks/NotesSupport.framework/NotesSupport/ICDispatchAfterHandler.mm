@interface ICDispatchAfterHandler
+ (id)appLifeCycleHandler;
- (ICDispatchAfterHandler)init;
- (id)identifierForStringIdentifier:(id)identifier;
- (void)cancelAll;
- (void)cancelBlocksWithStringIdentifier:(id)identifier;
- (void)dispatchAfter:(double)after stringIdentifier:(id)identifier withBlock:(id)block;
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

- (id)identifierForStringIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    null = identifierCopy;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v6 = null;

  return v6;
}

- (void)dispatchAfter:(double)after stringIdentifier:(id)identifier withBlock:(id)block
{
  blockCopy = block;
  v8 = [(ICDispatchAfterHandler *)self identifierForStringIdentifier:identifier];
  v9 = objc_opt_class();
  identifierBlockMap = [(ICDispatchAfterHandler *)self identifierBlockMap];
  v11 = [identifierBlockMap objectForKeyedSubscript:v8];
  v12 = ICCheckedDynamicCast(v9, v11);

  if (!v12)
  {
    v12 = [[ICDispatchAfterBlocks alloc] initWithIdentifier:v8];
    identifierBlockMap2 = [(ICDispatchAfterHandler *)self identifierBlockMap];
    [identifierBlockMap2 setObject:v12 forKeyedSubscript:v8];
  }

  [(ICDispatchAfterBlocks *)v12 dispatchAfter:blockCopy withBlock:after];
}

- (void)cancelBlocksWithStringIdentifier:(id)identifier
{
  v8 = [(ICDispatchAfterHandler *)self identifierForStringIdentifier:identifier];
  v4 = objc_opt_class();
  identifierBlockMap = [(ICDispatchAfterHandler *)self identifierBlockMap];
  v6 = [identifierBlockMap objectForKeyedSubscript:v8];
  v7 = ICCheckedDynamicCast(v4, v6);

  [v7 cancelAll];
}

- (void)cancelAll
{
  v16 = *MEMORY[0x1E69E9840];
  identifierBlockMap = [(ICDispatchAfterHandler *)self identifierBlockMap];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [identifierBlockMap countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(identifierBlockMap);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = [identifierBlockMap objectForKeyedSubscript:v7];
        v10 = ICCheckedDynamicCast(v8, v9);

        [v10 cancelAll];
        ++v6;
      }

      while (v4 != v6);
      v4 = [identifierBlockMap countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

@end