@interface HMDProcessExitInfoLogEvent
- (HMDProcessExitInfoLogEvent)initWithExitType:(id)type reason:(id)reason;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDProcessExitInfoLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"exitType";
  exitType = [(HMDProcessExitInfoLogEvent *)self exitType];
  if (exitType)
  {
    [(HMDProcessExitInfoLogEvent *)self exitType];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v4 = ;
  v11[0] = v4;
  v10[1] = @"exitReason";
  exitReason = [(HMDProcessExitInfoLogEvent *)self exitReason];
  if (exitReason)
  {
    [(HMDProcessExitInfoLogEvent *)self exitReason];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v6 = ;
  v10[2] = @"exitCount";
  v11[1] = v6;
  v11[2] = &unk_283E71B88;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDProcessExitInfoLogEvent)initWithExitType:(id)type reason:(id)reason
{
  typeCopy = type;
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = HMDProcessExitInfoLogEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exitType, type);
    objc_storeStrong(&v10->_exitReason, reason);
  }

  return v10;
}

@end