@interface HLPAnalyticsEventController
+ (id)sharedInstance;
- (id)counterForKey:(id)a3;
- (void)configureWithHelpBookID:(id)a3 version:(id)a4;
- (void)incrementCounterForKey:(id)a3;
- (void)logAnalyticsEvent:(id)a3;
@end

@implementation HLPAnalyticsEventController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_3 != -1)
  {
    +[HLPAnalyticsEventController sharedInstance];
  }

  v3 = gHLPAnalyticsController;

  return v3;
}

uint64_t __45__HLPAnalyticsEventController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HLPAnalyticsEventController);
  v1 = gHLPAnalyticsController;
  gHLPAnalyticsController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)configureWithHelpBookID:(id)a3 version:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_identifier, a3);
  v7 = a3;
  v8 = a4;
  v9 = [v8 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  version = self->_version;
  self->_version = v9;

  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 bundleIdentifier];

  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v13 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v20[0] = @"book_ID";
  v20[1] = @"book_version";
  v15 = @"undefined";
  v21 = vbslq_s8(vceqzq_s64(*&self->_identifier), vdupq_n_s64(@"undefined"), *&self->_identifier);
  v20[2] = @"product";
  v20[3] = @"product_version";
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = @"undefined";
  }

  if (v14)
  {
    v15 = v14;
  }

  v22 = v16;
  v23 = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:v20 count:4];
  requiredKeys = self->_requiredKeys;
  self->_requiredKeys = v17;

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logAnalyticsEvent:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 eventName];
  v6 = [v4 stringWithFormat:@"%@.%@", @"com.apple.HelpKit", v5];

  v8 = v3;
  v7 = v3;
  AnalyticsSendEventLazy();
}

- (void)incrementCounterForKey:(id)a3
{
  v4 = a3;
  v5 = [(HLPAnalyticsEventController *)self countersByKey];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [(HLPAnalyticsEventController *)self setCountersByKey:v6];
  }

  v7 = [(HLPAnalyticsEventController *)self counterForKey:v4];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue") + 1}];

  v8 = [(HLPAnalyticsEventController *)self countersByKey];
  [v8 setObject:v9 forKeyedSubscript:v4];
}

- (id)counterForKey:(id)a3
{
  v4 = a3;
  v5 = [(HLPAnalyticsEventController *)self countersByKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_28647D158;
  }

  return v7;
}

@end