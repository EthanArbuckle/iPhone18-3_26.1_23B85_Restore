@interface DCDispatchAfterHandler
+ (id)appLifeCycleHandler;
- (DCDispatchAfterHandler)init;
- (id)identifierForStringIdentifier:(id)a3;
- (void)cancelAll;
- (void)cancelBlocksWithStringIdentifier:(id)a3;
- (void)dispatchAfter:(double)a3 stringIdentifier:(id)a4 withBlock:(id)a5;
@end

@implementation DCDispatchAfterHandler

+ (id)appLifeCycleHandler
{
  if (appLifeCycleHandler_predicate != -1)
  {
    +[DCDispatchAfterHandler appLifeCycleHandler];
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v2 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[(DCDispatchAfterHandler *)v2];
    }
  }

  v3 = appLifeCycleHandler_sDispatchAfterHandler;

  return v3;
}

void __45__DCDispatchAfterHandler_appLifeCycleHandler__block_invoke()
{
  v0 = objc_alloc_init(DCDispatchAfterHandler);
  v1 = appLifeCycleHandler_sDispatchAfterHandler;
  appLifeCycleHandler_sDispatchAfterHandler = v0;
}

- (DCDispatchAfterHandler)init
{
  v5.receiver = self;
  v5.super_class = DCDispatchAfterHandler;
  v2 = [(DCDispatchAfterHandler *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(DCDispatchAfterHandler *)v2 setIdentifierBlockMap:v3];
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
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = v5;

  return v6;
}

- (void)dispatchAfter:(double)a3 stringIdentifier:(id)a4 withBlock:(id)a5
{
  v14 = a5;
  v8 = [(DCDispatchAfterHandler *)self identifierForStringIdentifier:a4];
  v9 = objc_opt_class();
  v10 = [(DCDispatchAfterHandler *)self identifierBlockMap];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = DCCheckedDynamicCast(v9, v11);

  if (!v12)
  {
    v12 = [[DCDispatchAfterBlocks alloc] initWithIdentifier:v8];
    v13 = [(DCDispatchAfterHandler *)self identifierBlockMap];
    [v13 setObject:v12 forKeyedSubscript:v8];
  }

  [(DCDispatchAfterBlocks *)v12 dispatchAfter:v14 withBlock:a3];
}

- (void)cancelBlocksWithStringIdentifier:(id)a3
{
  v8 = [(DCDispatchAfterHandler *)self identifierForStringIdentifier:a3];
  v4 = objc_opt_class();
  v5 = [(DCDispatchAfterHandler *)self identifierBlockMap];
  v6 = [v5 objectForKeyedSubscript:v8];
  v7 = DCCheckedDynamicCast(v4, v6);

  [v7 cancelAll];
}

- (void)cancelAll
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(DCDispatchAfterHandler *)self identifierBlockMap];
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
        v10 = DCCheckedDynamicCast(v8, v9);

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