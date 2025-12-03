@interface HMDMessageHandlerFailureMetricEvent
- (HMDMessageHandlerFailureMetricEvent)initWithFailureType:(unint64_t)type messageName:(id)name;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMessageHandlerFailureMetricEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"messageName";
  messageName = [(HMDMessageHandlerFailureMetricEvent *)self messageName];
  v8[1] = @"failureType";
  v9[0] = messageName;
  type = [(HMDMessageHandlerFailureMetricEvent *)self type];
  v9[1] = type;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDMessageHandlerFailureMetricEvent)initWithFailureType:(unint64_t)type messageName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HMDMessageHandlerFailureMetricEvent;
  v8 = [(HMMLogEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_messageName, name);
    if (type > 2)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_27867D1C0[type];
    }

    objc_storeStrong(&v9->_type, v10);
  }

  return v9;
}

@end