@interface HLPAnalyticsEventController
+ (id)sharedInstance;
- (id)counterForKey:(id)key;
- (void)configureWithHelpBookID:(id)d version:(id)version;
- (void)incrementCounterForKey:(id)key;
- (void)logAnalyticsEvent:(id)event;
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

- (void)configureWithHelpBookID:(id)d version:(id)version
{
  v24 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_identifier, d);
  dCopy = d;
  versionCopy = version;
  v9 = [versionCopy stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  version = self->_version;
  self->_version = v9;

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [mainBundle2 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v20[0] = @"book_ID";
  v20[1] = @"book_version";
  v15 = @"undefined";
  v21 = vbslq_s8(vceqzq_s64(*&self->_identifier), vdupq_n_s64(@"undefined"), *&self->_identifier);
  v20[2] = @"product";
  v20[3] = @"product_version";
  if (bundleIdentifier)
  {
    v16 = bundleIdentifier;
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

- (void)logAnalyticsEvent:(id)event
{
  eventCopy = event;
  v4 = MEMORY[0x277CCACA8];
  eventName = [eventCopy eventName];
  v6 = [v4 stringWithFormat:@"%@.%@", @"com.apple.HelpKit", eventName];

  v8 = eventCopy;
  v7 = eventCopy;
  AnalyticsSendEventLazy();
}

- (void)incrementCounterForKey:(id)key
{
  keyCopy = key;
  countersByKey = [(HLPAnalyticsEventController *)self countersByKey];

  if (!countersByKey)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(HLPAnalyticsEventController *)self setCountersByKey:dictionary];
  }

  v7 = [(HLPAnalyticsEventController *)self counterForKey:keyCopy];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue") + 1}];

  countersByKey2 = [(HLPAnalyticsEventController *)self countersByKey];
  [countersByKey2 setObject:v9 forKeyedSubscript:keyCopy];
}

- (id)counterForKey:(id)key
{
  keyCopy = key;
  countersByKey = [(HLPAnalyticsEventController *)self countersByKey];
  v6 = [countersByKey objectForKeyedSubscript:keyCopy];

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