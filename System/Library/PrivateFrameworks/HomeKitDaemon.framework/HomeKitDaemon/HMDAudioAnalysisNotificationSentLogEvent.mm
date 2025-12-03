@interface HMDAudioAnalysisNotificationSentLogEvent
+ (id)shortDescription;
- (HMDAudioAnalysisNotificationSentLogEvent)initWithDate:(id)date reason:(unint64_t)reason state:(unint64_t)state;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAudioAnalysisNotificationSentLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"reason";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisNotificationSentLogEvent reason](self, "reason")}];
  v8[1] = @"state";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisNotificationSentLogEvent state](self, "state")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDAudioAnalysisNotificationSentLogEvent)initWithDate:(id)date reason:(unint64_t)reason state:(unint64_t)state
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = HMDAudioAnalysisNotificationSentLogEvent;
  v10 = [(HMMLogEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dateOfOccurrence, date);
    v11->_reason = reason;
    v11->_state = state;
  }

  return v11;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end