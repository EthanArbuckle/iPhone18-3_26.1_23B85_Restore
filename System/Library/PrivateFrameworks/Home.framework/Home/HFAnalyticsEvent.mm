@interface HFAnalyticsEvent
- (HFAnalyticsEvent)initWithData:(id)data;
- (HFAnalyticsEvent)initWithEventType:(unint64_t)type;
- (NSDictionary)payload;
- (NSString)name;
- (id)description;
@end

@implementation HFAnalyticsEvent

- (HFAnalyticsEvent)initWithData:(id)data
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAnalyticsEvent.m" lineNumber:22 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAnalyticsEvent initWithData:]", objc_opt_class()}];

  return 0;
}

- (HFAnalyticsEvent)initWithEventType:(unint64_t)type
{
  if ([(HFAnalyticsEvent *)self isMemberOfClass:objc_opt_class()])
  {
    NSLog(&cfstr_Initwitheventt.isa);
  }

  v10.receiver = self;
  v10.super_class = HFAnalyticsEvent;
  v5 = [(HFAnalyticsEvent *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = type;
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v6->_timestamp;
    v6->_timestamp = date;
  }

  return v6;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  name = [(HFAnalyticsEvent *)self name];
  v5 = [v3 appendObject:name withName:@"name"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  payload = [(HFAnalyticsEvent *)self payload];
  v7 = [payload countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(payload);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        payload2 = [(HFAnalyticsEvent *)self payload];
        v13 = [payload2 objectForKeyedSubscript:v11];
        v14 = [v3 appendObject:v13 withName:v11];
      }

      v8 = [payload countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  build = [v3 build];

  v16 = *MEMORY[0x277D85DE8];

  return build;
}

- (NSString)name
{
  type = [(HFAnalyticsEvent *)self type];

  return [HFAnalytics eventNameForEventType:type];
}

- (NSDictionary)payload
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"timestamp";
  timestamp = [(HFAnalyticsEvent *)self timestamp];
  hf_analyticsTimestamp = [timestamp hf_analyticsTimestamp];
  v8[0] = hf_analyticsTimestamp;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end