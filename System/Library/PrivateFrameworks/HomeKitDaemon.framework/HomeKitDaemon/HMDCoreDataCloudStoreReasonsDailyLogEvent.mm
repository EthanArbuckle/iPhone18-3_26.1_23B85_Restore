@interface HMDCoreDataCloudStoreReasonsDailyLogEvent
- (HMDCoreDataCloudStoreReasonsDailyLogEvent)initWithReason:(id)reason reasonCount:(unint64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCoreDataCloudStoreReasonsDailyLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"changeReason";
  reason = [(HMDCoreDataCloudStoreReasonsDailyLogEvent *)self reason];
  v8[1] = @"reasonCount";
  v9[0] = reason;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCoreDataCloudStoreReasonsDailyLogEvent reasonCount](self, "reasonCount")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDCoreDataCloudStoreReasonsDailyLogEvent)initWithReason:(id)reason reasonCount:(unint64_t)count
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = HMDCoreDataCloudStoreReasonsDailyLogEvent;
  v8 = [(HMMLogEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, reason);
    v9->_reasonCount = count;
  }

  return v9;
}

@end