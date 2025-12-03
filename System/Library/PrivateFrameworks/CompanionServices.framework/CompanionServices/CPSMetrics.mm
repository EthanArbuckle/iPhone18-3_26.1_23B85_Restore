@interface CPSMetrics
+ (void)_sendEvent:(id)event withPayloadBuilder:(id)builder;
+ (void)sendAppSignInSessionActivatedEvent:(id)event;
+ (void)sendAppSignInSessionCompletedEvent:(id)event;
+ (void)sendProviderDeviceUsageEvent:(id)event;
+ (void)sendStorePurchaseSessionCompletedEvent:(id)event;
+ (void)sendSystemSessionCompletedEvent:(id)event;
@end

@implementation CPSMetrics

+ (void)sendAppSignInSessionActivatedEvent:(id)event
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__CPSMetrics_sendAppSignInSessionActivatedEvent___block_invoke;
  v3[3] = &__block_descriptor_33_e26___NSMutableDictionary_8__0l;
  eventCopy = event;
  [self _sendEvent:@"com.apple.appletv.comp-auth.app-sign-in.activated" withPayloadBuilder:v3];
}

id __49__CPSMetrics_sendAppSignInSessionActivatedEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32) & 1];
  [v2 setObject:v3 forKeyedSubscript:@"reqAppleID"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 32) >> 1) & 1];
  [v2 setObject:v4 forKeyedSubscript:@"reqPassword"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 32) >> 2) & 1];
  [v2 setObject:v5 forKeyedSubscript:@"custOther"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 32) >> 3) & 1];
  [v2 setObject:v6 forKeyedSubscript:@"custRestorePurchase"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 32) >> 4) & 1];
  [v2 setObject:v7 forKeyedSubscript:@"custVideoSubscriber"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 32) >> 5) & 1];
  [v2 setObject:v8 forKeyedSubscript:@"trusAssocDomains"];

  return v2;
}

+ (void)sendAppSignInSessionCompletedEvent:(id)event
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__CPSMetrics_sendAppSignInSessionCompletedEvent___block_invoke;
  v3[3] = &__block_descriptor_40_e26___NSMutableDictionary_8__0l;
  v3[4] = event.var0;
  [self _sendEvent:@"com.apple.appletv.comp-auth.app-sign-in.completed" withPayloadBuilder:v3];
}

id __49__CPSMetrics_sendAppSignInSessionCompletedEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v2;
  v4 = *(a1 + 32) - 1;
  if (v4 > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&off_278DF16B0 + v4);
  }

  [v2 setObject:v5 forKeyedSubscript:@"result"];

  return v3;
}

+ (void)sendProviderDeviceUsageEvent:(id)event
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3254779904;
  v5[2] = __43__CPSMetrics_sendProviderDeviceUsageEvent___block_invoke;
  v5[3] = &__block_descriptor_48_e8_32n11_8_8_s0_t8w8_e19___NSDictionary_8__0l;
  eventCopy = event;
  v4 = event.var0;
  [self _sendEvent:@"com.apple.appletv.comp-auth.provider-device-usage" withPayloadBuilder:v5];
}

id __43__CPSMetrics_sendProviderDeviceUsageEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v4 = GestaltProductTypeStringToDeviceClass();
  if (v4 == 1)
  {
    v5 = @"phone";
  }

  else
  {
    if (v4 != 3)
    {
      goto LABEL_6;
    }

    v5 = @"pad";
  }

  [v2 setObject:v5 forKeyedSubscript:@"deviceClass"];
LABEL_6:
  v6 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 40) >> 19) & 1];
  [v2 setObject:v6 forKeyedSubscript:@"flagsOwner"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 40) >> 13) & 1];
  [v2 setObject:v7 forKeyedSubscript:@"flagsHome"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 40) >> 14) & 1];
  [v2 setObject:v8 forKeyedSubscript:@"flagsFamily"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:(*(a1 + 40) >> 15) & 1];
  [v2 setObject:v9 forKeyedSubscript:@"flagsPaired"];

  return v2;
}

+ (void)sendStorePurchaseSessionCompletedEvent:(id)event
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__CPSMetrics_sendStorePurchaseSessionCompletedEvent___block_invoke;
  v3[3] = &__block_descriptor_40_e26___NSMutableDictionary_8__0l;
  v3[4] = event.var0;
  [self _sendEvent:@"com.apple.appletv.comp-auth.store-purchase.completed" withPayloadBuilder:v3];
}

id __53__CPSMetrics_sendStorePurchaseSessionCompletedEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v2;
  v4 = *(a1 + 32) - 1;
  if (v4 > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&off_278DF16B0 + v4);
  }

  [v2 setObject:v5 forKeyedSubscript:@"result"];

  return v3;
}

+ (void)sendSystemSessionCompletedEvent:(id)event
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__CPSMetrics_sendSystemSessionCompletedEvent___block_invoke;
  v3[3] = &__block_descriptor_48_e26___NSMutableDictionary_8__0l;
  eventCopy = event;
  [self _sendEvent:@"com.apple.appletv.comp-auth.system-auth.completed" withPayloadBuilder:v3];
}

id __46__CPSMetrics_sendSystemSessionCompletedEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32) - 1;
  if (v3 >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", *(a1 + 32)];
  }

  else
  {
    v4 = *(&off_278DF1690 + v3);
  }

  [v2 setObject:v4 forKeyedSubscript:@"service"];

  v5 = *(a1 + 40) - 1;
  if (v5 > 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_278DF16B0 + v5);
  }

  [v2 setObject:v6 forKeyedSubscript:@"result"];

  return v2;
}

+ (void)_sendEvent:(id)event withPayloadBuilder:(id)builder
{
  v11 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  builderCopy = builder;
  if (MetricsLog_token != -1)
  {
    +[CPSMetrics _sendEvent:withPayloadBuilder:];
  }

  v7 = MetricsLog_log;
  if (os_log_type_enabled(MetricsLog_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = eventCopy;
    _os_log_impl(&dword_243D1C000, v7, OS_LOG_TYPE_DEFAULT, "Send event: %{public}@", &v9, 0xCu);
  }

  if (builderCopy)
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    AnalyticsSendEvent();
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end