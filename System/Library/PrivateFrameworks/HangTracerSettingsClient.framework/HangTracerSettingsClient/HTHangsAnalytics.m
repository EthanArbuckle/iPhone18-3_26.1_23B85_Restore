@interface HTHangsAnalytics
+ (void)sendActivationEvent:(BOOL)a3 developerAppCount:(unint64_t)a4;
+ (void)sendHangThresholdChangedEvent:(unint64_t)a3;
+ (void)sendLogSharedEvent;
@end

@implementation HTHangsAnalytics

+ (void)sendActivationEvent:(BOOL)a3 developerAppCount:(unint64_t)a4
{
  if (CoreAnalyticsLibraryCore())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__HTHangsAnalytics_sendActivationEvent_developerAppCount___block_invoke;
    v6[3] = &__block_descriptor_41_e19___NSDictionary_8__0l;
    v7 = a3;
    v6[4] = a4;
    HTAnalyticsSendEventLazy(@"com.apple.hangtracer.thirdpartyhangdetection.enablement.v1", v6);
  }
}

id __58__HTHangsAnalytics_sendActivationEvent_developerAppCount___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"isEnabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = @"developerAppCount";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)sendHangThresholdChangedEvent:(unint64_t)a3
{
  if (CoreAnalyticsLibraryCore())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__HTHangsAnalytics_sendHangThresholdChangedEvent___block_invoke;
    v4[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v4[4] = a3;
    HTAnalyticsSendEventLazy(@"com.apple.hangtracer.thirdpartyhangdetection.hangthreshold.v1", v4);
  }
}

id __50__HTHangsAnalytics_sendHangThresholdChangedEvent___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"hangThresholdMS";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)sendLogSharedEvent
{
  if (CoreAnalyticsLibraryCore())
  {

    HTAnalyticsSendEventLazy(@"com.apple.hangtracer.thirdpartyhangdetection.logshared.v1", &__block_literal_global_0);
  }
}

@end