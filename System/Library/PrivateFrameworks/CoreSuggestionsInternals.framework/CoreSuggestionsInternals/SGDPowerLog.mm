@interface SGDPowerLog
+ (void)logPrewarmWithLastPrewarmTime:(double)time;
+ (void)pluginEndDeletion:(id)deletion;
+ (void)pluginEndProcessingSearchableItem:(id)item;
+ (void)pluginEndSetup:(id)setup;
+ (void)pluginStartDeletion:(id)deletion;
+ (void)pluginStartProcessingSearchableItem:(id)item;
+ (void)pluginStartSetup:(id)setup;
@end

@implementation SGDPowerLog

+ (void)pluginEndDeletion:(id)deletion
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = deletion;
  v3 = MEMORY[0x277CBEAC0];
  deletionCopy = deletion;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginStartDeletion:(id)deletion
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = deletion;
  v3 = MEMORY[0x277CBEAC0];
  deletionCopy = deletion;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginEndProcessingSearchableItem:(id)item
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = item;
  v3 = MEMORY[0x277CBEAC0];
  itemCopy = item;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginStartProcessingSearchableItem:(id)item
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = item;
  v3 = MEMORY[0x277CBEAC0];
  itemCopy = item;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginEndSetup:(id)setup
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = setup;
  v3 = MEMORY[0x277CBEAC0];
  setupCopy = setup;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginStartSetup:(id)setup
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = setup;
  v3 = MEMORY[0x277CBEAC0];
  setupCopy = setup;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)logPrewarmWithLastPrewarmTime:(double)time
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "Pre-warming suggestd", v11, 2u);
  }

  v12 = @"secondsSinceLast";
  v5 = MEMORY[0x277CCABB0];
  if (time == 0.0)
  {
    v7 = -1.0;
  }

  else
  {
    v4 = objc_opt_new();
    [v4 timeIntervalSinceReferenceDate];
    v7 = v6 - time;
  }

  v8 = [v5 numberWithDouble:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  if (time != 0.0)
  {
  }

  PLLogRegisteredEvent();

  v10 = *MEMORY[0x277D85DE8];
}

@end