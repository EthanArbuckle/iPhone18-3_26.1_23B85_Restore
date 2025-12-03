@interface CALNLegacyIdentifierUtils
+ (void)setLegacyIdentifier:(id)identifier onNotificationContent:(id)content;
+ (void)setLegacyIdentifierForCalendarNotification:(id)notification onNotificationContent:(id)content;
@end

@implementation CALNLegacyIdentifierUtils

+ (void)setLegacyIdentifier:(id)identifier onNotificationContent:(id)content
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  contentCopy = content;
  identifierCopy = identifier;
  v8 = [v5 numberWithUnsignedInt:393216];
  v11 = v8;
  v12[0] = identifierCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [contentCopy setUserInfoValue:v9 forKey:@"BLTWatchLegacyMap"];
  v10 = *MEMORY[0x277D85DE8];
}

+ (void)setLegacyIdentifierForCalendarNotification:(id)notification onNotificationContent:(id)content
{
  contentCopy = content;
  v7 = [notification URL];
  v8 = v7;
  if (v7)
  {
    absoluteString = [v7 absoluteString];
    [self setLegacyIdentifier:absoluteString onNotificationContent:contentCopy];
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