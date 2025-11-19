@interface HMDProcessExitInfoLogEvent
- (HMDProcessExitInfoLogEvent)initWithExitType:(id)a3 reason:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDProcessExitInfoLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"exitType";
  v3 = [(HMDProcessExitInfoLogEvent *)self exitType];
  if (v3)
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
  v5 = [(HMDProcessExitInfoLogEvent *)self exitReason];
  if (v5)
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

- (HMDProcessExitInfoLogEvent)initWithExitType:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDProcessExitInfoLogEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exitType, a3);
    objc_storeStrong(&v10->_exitReason, a4);
  }

  return v10;
}

@end