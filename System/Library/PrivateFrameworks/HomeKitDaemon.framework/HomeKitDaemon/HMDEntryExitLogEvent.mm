@interface HMDEntryExitLogEvent
- (HMDEntryExitLogEvent)initWithReason:(unint64_t)reason isFalse:(BOOL)false lastFired:(double)fired isInitial:(BOOL)initial;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEntryExitLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v20[6] = *MEMORY[0x277D85DE8];
  if ([(HMDEntryExitLogEvent *)self isInitial])
  {
    v19[0] = @"isEntry_INT";
    if ([(HMDEntryExitLogEvent *)self isEntry])
    {
      v3 = &unk_283E75248;
    }

    else
    {
      v3 = &unk_283E75260;
    }

    v20[0] = v3;
    v19[1] = @"isEntry_BOOL";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isEntry](self, "isEntry")}];
    v20[1] = v4;
    v19[2] = @"isExit_INT";
    if ([(HMDEntryExitLogEvent *)self isExit])
    {
      v5 = &unk_283E75248;
    }

    else
    {
      v5 = &unk_283E75260;
    }

    v20[2] = v5;
    v19[3] = @"isExit_BOOL";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isExit](self, "isExit")}];
    v20[3] = v6;
    v19[4] = @"isFalse_INT";
    if ([(HMDEntryExitLogEvent *)self isFalse])
    {
      v7 = &unk_283E75248;
    }

    else
    {
      v7 = &unk_283E75260;
    }

    v20[4] = v7;
    v19[5] = @"isFalse_BOOL";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isFalse](self, "isFalse")}];
    v20[5] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  }

  else
  {
    v17[0] = @"isEntry_INT";
    if ([(HMDEntryExitLogEvent *)self isEntry])
    {
      v10 = &unk_283E75248;
    }

    else
    {
      v10 = &unk_283E75260;
    }

    v18[0] = v10;
    v17[1] = @"isEntry_BOOL";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isEntry](self, "isEntry")}];
    v18[1] = v4;
    v17[2] = @"isExit_INT";
    if ([(HMDEntryExitLogEvent *)self isExit])
    {
      v11 = &unk_283E75248;
    }

    else
    {
      v11 = &unk_283E75260;
    }

    v18[2] = v11;
    v17[3] = @"isExit_BOOL";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isExit](self, "isExit")}];
    v18[3] = v6;
    v17[4] = @"isFalse_INT";
    if ([(HMDEntryExitLogEvent *)self isFalse])
    {
      v12 = &unk_283E75248;
    }

    else
    {
      v12 = &unk_283E75260;
    }

    v18[4] = v12;
    v17[5] = @"isFalse_BOOL";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isFalse](self, "isFalse")}];
    v18[5] = v8;
    v17[6] = @"secondsLastFired_DOUBLE";
    v13 = MEMORY[0x277CCABB0];
    [(HMDEntryExitLogEvent *)self secondsLastFired];
    v14 = [v13 numberWithDouble:?];
    v18[6] = v14;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDEntryExitLogEvent)initWithReason:(unint64_t)reason isFalse:(BOOL)false lastFired:(double)fired isInitial:(BOOL)initial
{
  v11.receiver = self;
  v11.super_class = HMDEntryExitLogEvent;
  result = [(HMMLogEvent *)&v11 init];
  if (result)
  {
    result->_isEntry = reason == 0;
    result->_isExit = reason == 1;
    result->_secondsLastFired = fired;
    result->_isFalse = false;
    result->_isInitial = initial;
  }

  return result;
}

@end