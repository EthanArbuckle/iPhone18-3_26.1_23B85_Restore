@interface CALNLegacyIdentifierUtils
+ (void)setLegacyIdentifier:(id)a3 onNotificationContent:(id)a4;
+ (void)setLegacyIdentifierForCalendarNotification:(id)a3 onNotificationContent:(id)a4;
@end

@implementation CALNLegacyIdentifierUtils

+ (void)setLegacyIdentifier:(id)a3 onNotificationContent:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 numberWithUnsignedInt:393216];
  v11 = v8;
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [v6 setUserInfoValue:v9 forKey:@"BLTWatchLegacyMap"];
  v10 = *MEMORY[0x277D85DE8];
}

+ (void)setLegacyIdentifierForCalendarNotification:(id)a3 onNotificationContent:(id)a4
{
  v6 = a4;
  v7 = [a3 URL];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 absoluteString];
    [a1 setLegacyIdentifier:v9 onNotificationContent:v6];
  }

  else
  {
    v10 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:v10 onNotificationContent:?];
    }
  }
}

@end