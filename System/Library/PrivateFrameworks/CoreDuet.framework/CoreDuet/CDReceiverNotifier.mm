@interface CDReceiverNotifier
@end

@implementation CDReceiverNotifier

void __37___CDReceiverNotifier_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(_CDReceiverNotifier);
  v2 = sharedInstance__pasExprOnceResult_1;
  sharedInstance__pasExprOnceResult_1 = v1;

  objc_autoreleasePoolPop(v0);
}

void __27___CDReceiverNotifier_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleXPCNotificationEvent:v3];
}

void __44___CDReceiverNotifier__publishXPCEvent_uid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _logChannel();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44___CDReceiverNotifier__publishXPCEvent_uid___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __44___CDReceiverNotifier__publishXPCEvent_uid___block_invoke_cold_2(a1);
  }
}

uint64_t __50___CDReceiverNotifier_handleXPCNotificationEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = [v3 eventBody];
    v6 = [v5 bundleID];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __44___CDReceiverNotifier__publishXPCEvent_uid___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_6_0(&dword_191750000, a2, a3, "Failed to event to subscriber %@ for AppIntent: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __44___CDReceiverNotifier__publishXPCEvent_uid___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end