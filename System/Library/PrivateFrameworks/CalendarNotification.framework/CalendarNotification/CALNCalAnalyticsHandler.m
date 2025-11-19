@interface CALNCalAnalyticsHandler
+ (CALNCalAnalyticsHandler)sharedInstance;
- (void)recordNotificationResponse:(id)a3;
- (void)recordPostedNotification:(id)a3;
@end

@implementation CALNCalAnalyticsHandler

+ (CALNCalAnalyticsHandler)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CALNCalAnalyticsHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_handler;

  return v2;
}

uint64_t __41__CALNCalAnalyticsHandler_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_handler = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)recordPostedNotification:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"notificationType";
  v3 = [a3 sourceIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  CalAnalyticsSendEvent();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)recordNotificationResponse:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"notificationType";
  v3 = a3;
  v4 = [v3 notificationRecord];
  v5 = [v4 sourceIdentifier];
  v9[1] = @"actionIdentifier";
  v10[0] = v5;
  v6 = [v3 actionIdentifier];

  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  CalAnalyticsSendEvent();

  v8 = *MEMORY[0x277D85DE8];
}

@end