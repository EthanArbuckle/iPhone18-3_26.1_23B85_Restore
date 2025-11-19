@interface CDInteractionStoreNotificationReceiver
@end

@implementation CDInteractionStoreNotificationReceiver

void __47___CDInteractionStoreNotificationReceiver_init__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    WeakRetained = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __47___CDInteractionStoreNotificationReceiver_init__block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained postPackedMechanisms:state64];
  }
}

@end