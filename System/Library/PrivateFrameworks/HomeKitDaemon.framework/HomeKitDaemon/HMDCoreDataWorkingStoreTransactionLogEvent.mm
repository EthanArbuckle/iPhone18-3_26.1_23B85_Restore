@interface HMDCoreDataWorkingStoreTransactionLogEvent
- (HMDCoreDataWorkingStoreTransactionLogEvent)initWithTransactionAuthor:(id)author;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCoreDataWorkingStoreTransactionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"transactionAuthor";
  transactionAuthor = [(HMDCoreDataWorkingStoreTransactionLogEvent *)self transactionAuthor];
  v6[1] = @"transactionCount";
  v7[0] = transactionAuthor;
  v7[1] = &unk_283E74DF8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDCoreDataWorkingStoreTransactionLogEvent)initWithTransactionAuthor:(id)author
{
  authorCopy = author;
  v9.receiver = self;
  v9.super_class = HMDCoreDataWorkingStoreTransactionLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionAuthor, author);
  }

  return v7;
}

@end