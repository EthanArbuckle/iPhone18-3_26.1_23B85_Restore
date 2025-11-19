@interface DKNotificationScreenLockImputedMonitor
@end

@implementation DKNotificationScreenLockImputedMonitor

void __68___DKNotificationScreenLockImputedMonitor_receiveNotificationEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) instantState];
  v3 = [v2 objectForKeyedSubscript:@"kCurrentEvent"];

  if (!v3)
  {
    v4 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_DEFAULT, "ScreenLockStateImputed: instantState[kCurrentEvent] was nil when we received an event notification, which means KnowledgeStore will drop this event. Imputing the missing value.", v5, 2u);
    }

    [*(a1 + 32) setCurrentEventInInstantStateUsingLastKnowledgeStoreEvent];
  }
}

@end