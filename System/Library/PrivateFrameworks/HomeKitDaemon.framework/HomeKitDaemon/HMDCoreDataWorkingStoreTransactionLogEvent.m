@interface HMDCoreDataWorkingStoreTransactionLogEvent
- (HMDCoreDataWorkingStoreTransactionLogEvent)initWithTransactionAuthor:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCoreDataWorkingStoreTransactionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"transactionAuthor";
  v2 = [(HMDCoreDataWorkingStoreTransactionLogEvent *)self transactionAuthor];
  v6[1] = @"transactionCount";
  v7[0] = v2;
  v7[1] = &unk_283E74DF8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDCoreDataWorkingStoreTransactionLogEvent)initWithTransactionAuthor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDCoreDataWorkingStoreTransactionLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionAuthor, a3);
  }

  return v7;
}

@end