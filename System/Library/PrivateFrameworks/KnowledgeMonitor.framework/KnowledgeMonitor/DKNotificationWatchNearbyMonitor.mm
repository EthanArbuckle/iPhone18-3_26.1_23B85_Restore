@interface DKNotificationWatchNearbyMonitor
@end

@implementation DKNotificationWatchNearbyMonitor

uint64_t __42___DKNotificationWatchNearbyMonitor_start__block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 138412290;
    *&v6[4] = @"com.apple.coreduetd.nearbydeviceschanged";
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Notification handler called for %@", v6, 0xCu);
  }

  *v6 = 0;
  result = notify_get_state(a2, v6);
  if (!result)
  {
    result = [_DKNotificationWatchNearbyMonitor setIsWatchNearby:*v6 != 0];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end