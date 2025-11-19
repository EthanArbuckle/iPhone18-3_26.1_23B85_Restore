@interface FAPushNotificationHandler
+ (id)sharedHandler;
- (void)didReceivePushNotificationWithPayload:(id)a3;
@end

@implementation FAPushNotificationHandler

+ (id)sharedHandler
{
  if (sharedHandler_onceToken != -1)
  {
    +[FAPushNotificationHandler sharedHandler];
  }

  v3 = sharedHandler_handler;

  return v3;
}

uint64_t __42__FAPushNotificationHandler_sharedHandler__block_invoke()
{
  sharedHandler_handler = objc_alloc_init(FAPushNotificationHandler);

  return MEMORY[0x1EEE66BB8]();
}

- (void)didReceivePushNotificationWithPayload:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FAPushNotificationHandler: Received payload %@", &v7, 0xCu);
  }

  v5 = [[FAHandleFamilyEventPushNotificationRequest alloc] initWithPayload:v3];
  [(FAHandleFamilyEventPushNotificationRequest *)v5 startRequestWithCompletionHandler:&__block_literal_global_20];

  v6 = *MEMORY[0x1E69E9840];
}

void __67__FAPushNotificationHandler_didReceivePushNotificationWithPayload___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1B70B0000, v3, OS_LOG_TYPE_DEFAULT, "FAPushNotificationHandler: Error handling push notification - %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end