@interface CDInteractionStoreNotifier
@end

@implementation CDInteractionStoreNotifier

void __45___CDInteractionStoreNotifier_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(_CDInteractionStoreNotifier);
  v2 = sharedInstance__pasExprOnceResult_3;
  sharedInstance__pasExprOnceResult_3 = v1;

  objc_autoreleasePoolPop(v0);
}

void __35___CDInteractionStoreNotifier_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleXPCNotificationEvent:v3];
}

void __35___CDInteractionStoreNotifier_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleXPCNotificationEvent:v3];
}

uint64_t __57___CDInteractionStoreNotifier_filterInteractionsForUser___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 nsUserName];
  v3 = NSUserName();
  v4 = [v2 isEqual:v3];

  return v4;
}

void __40___CDInteractionStoreNotifier_recorded___block_invoke(uint64_t a1)
{
  v1 = a1;
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = v1;
    LOBYTE(v5) = 0;
    v6 = 0;
    v7 = *v21;
    do
    {
      v8 = 0;
      v9 = v5;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v20 + 1) + 8 * v8);
        v11 = [v10 mechanism];
        v5 = 1;
        if ((v9 & 1) == 0)
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "mechanism")}];
          v5 = [v12 isEqual:&unk_1F05EED00];
        }

        v6 |= 1 << v11;
        ++v8;
        v9 = v5;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);

    v1 = v19;
    [*(v19 + 40) postPackedMechanisms:v6];
  }

  else
  {

    v5 = 0;
  }

  v13 = [*(v1 + 40) filterInteractionsForUser:*(v1 + 32)];
  if ([v13 count])
  {
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v24 = @"_CDInteractionsKey";
    v15 = MEMORY[0x1E695E0F0];
    if (*(v1 + 32))
    {
      v15 = *(v1 + 32);
    }

    v25 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v14 postNotificationName:@"_CDInteractionStoreRecordedInteractionsNotification" object:0 userInfo:v16];

    [*(v1 + 40) publishRecordedXPCEvent:v13];
    if (v5)
    {
      v17 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v17 postNotificationName:@"_CDInteractionStoreRecordedShareSheetInteractionNotification" object:0 userInfo:0];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __39___CDInteractionStoreNotifier_deleted___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= 1 << [*(*(&v13 + 1) + 8 * i) mechanism];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);

    [*(a1 + 40) postPackedMechanisms:v5];
  }

  else
  {
  }

  v8 = [*(a1 + 40) filterInteractionsForUser:{*(a1 + 32), v13}];
  if ([v8 count])
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = @"_CDInteractionsKey";
    v10 = MEMORY[0x1E695E0F0];
    if (*(a1 + 32))
    {
      v10 = *(a1 + 32);
    }

    v18 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v9 postNotificationName:@"_CDInteractionStoreDeletedInteractionsNotification" object:0 userInfo:v11];

    [*(a1 + 40) publishDeletedXPCEvent:v8];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __55___CDInteractionStoreNotifier_publishRecordedXPCEvent___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55___CDInteractionStoreNotifier_publishRecordedXPCEvent___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Successfully sent event to %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __54___CDInteractionStoreNotifier_publishDeletedXPCEvent___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging interactionChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55___CDInteractionStoreNotifier_publishRecordedXPCEvent___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Successfully sent event to %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __55___CDInteractionStoreNotifier_publishRecordedXPCEvent___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0(&dword_191750000, v1, v2, "Failed to event to subscriber %@ for recorded interaction: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

@end