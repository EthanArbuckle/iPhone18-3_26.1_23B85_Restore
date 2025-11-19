@interface _CDInteractionHarvester
- (id)harvestInteractionsBetweenStartDate:(id)a3 endDate:(id)a4;
@end

@implementation _CDInteractionHarvester

- (id)harvestInteractionsBetweenStartDate:(id)a3 endDate:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  context = objc_autoreleasePoolPush();
  v7 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionHarvester harvestInteractionsBetweenStartDate:v5 endDate:v6];
  }

  v8 = [_CDSpotlightItemUtils querySpotlightItemsWithStartDate:v5 endDate:v6 getMail:1 getMessages:1];
  v9 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionHarvester harvestInteractionsBetweenStartDate:v8 endDate:?];
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v11 = NSUserName();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [_CDSpotlightItemUtils interactionForSearchableItem:*(*(&v22 + 1) + 8 * i) nsUserName:v11];
        if (v17)
        {
          [v10 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionHarvester harvestInteractionsBetweenStartDate:v10 endDate:?];
  }

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)harvestInteractionsBetweenStartDate:(void *)a1 endDate:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 timeIntervalSinceNow];
  [a2 timeIntervalSinceNow];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)harvestInteractionsBetweenStartDate:(void *)a1 endDate:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)harvestInteractionsBetweenStartDate:(void *)a1 endDate:.cold.3(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end