@interface SGDPowerLog
+ (void)logPrewarmWithLastPrewarmTime:(double)a3;
+ (void)pluginEndDeletion:(id)a3;
+ (void)pluginEndProcessingSearchableItem:(id)a3;
+ (void)pluginEndSetup:(id)a3;
+ (void)pluginStartDeletion:(id)a3;
+ (void)pluginStartProcessingSearchableItem:(id)a3;
+ (void)pluginStartSetup:(id)a3;
@end

@implementation SGDPowerLog

+ (void)pluginEndDeletion:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginStartDeletion:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginEndProcessingSearchableItem:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginStartProcessingSearchableItem:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginEndSetup:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)pluginStartSetup:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"plugin";
  v8[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)logPrewarmWithLastPrewarmTime:(double)a3
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
  if (a3 == 0.0)
  {
    v7 = -1.0;
  }

  else
  {
    v4 = objc_opt_new();
    [v4 timeIntervalSinceReferenceDate];
    v7 = v6 - a3;
  }

  v8 = [v5 numberWithDouble:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  if (a3 != 0.0)
  {
  }

  PLLogRegisteredEvent();

  v10 = *MEMORY[0x277D85DE8];
}

@end