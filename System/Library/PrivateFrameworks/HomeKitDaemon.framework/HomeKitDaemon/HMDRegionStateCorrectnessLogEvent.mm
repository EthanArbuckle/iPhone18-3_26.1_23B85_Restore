@interface HMDRegionStateCorrectnessLogEvent
+ (id)updateWithFirstAccessory:(int64_t)a3 nearbyHome:(int64_t)a4;
- (HMDRegionStateCorrectnessLogEvent)initWithReason:(unint64_t)a3 firstAccessoryReachable:(BOOL)a4 regionStateAtHome:(int64_t)a5 regionStateNearByHome:(int64_t)a6 isStateCorrect:(BOOL)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRegionStateCorrectnessLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v18[11] = *MEMORY[0x277D85DE8];
  v17[0] = @"firstAccessoryReachable_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self firstAccessoryReachable])
  {
    v3 = &unk_283E72BC0;
  }

  else
  {
    v3 = &unk_283E72BD8;
  }

  v18[0] = v3;
  v17[1] = @"firstAccessoryReachable_BOOL";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent firstAccessoryReachable](self, "firstAccessoryReachable")}];
  v18[1] = v4;
  v17[2] = @"regionStateAtHome_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self regionStateAtHome])
  {
    v5 = &unk_283E72BC0;
  }

  else
  {
    v5 = &unk_283E72BD8;
  }

  v18[2] = v5;
  v17[3] = @"regionStateAtHome_BOOL";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent regionStateAtHome](self, "regionStateAtHome")}];
  v18[3] = v6;
  v17[4] = @"regionStateNearByHome_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self regionStateNearByHome])
  {
    v7 = &unk_283E72BC0;
  }

  else
  {
    v7 = &unk_283E72BD8;
  }

  v18[4] = v7;
  v17[5] = @"regionStateNearByHome_BOOL";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent regionStateNearByHome](self, "regionStateNearByHome")}];
  v18[5] = v8;
  v17[6] = @"regionStateUnknown_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self regionStateUnknown])
  {
    v9 = &unk_283E72BC0;
  }

  else
  {
    v9 = &unk_283E72BD8;
  }

  v18[6] = v9;
  v17[7] = @"regionStateUnknown_Bool";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent regionStateUnknown](self, "regionStateUnknown")}];
  v18[7] = v10;
  v17[8] = @"isStateCorrect_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self isStateCorrect])
  {
    v11 = &unk_283E72BC0;
  }

  else
  {
    v11 = &unk_283E72BD8;
  }

  v18[8] = v11;
  v17[9] = @"isStateCorrect_Bool";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent isStateCorrect](self, "isStateCorrect")}];
  v18[9] = v12;
  v17[10] = @"isStateIncorrect_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self isStateCorrect])
  {
    v13 = &unk_283E72BD8;
  }

  else
  {
    v13 = &unk_283E72BC0;
  }

  v18[10] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:11];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDRegionStateCorrectnessLogEvent)initWithReason:(unint64_t)a3 firstAccessoryReachable:(BOOL)a4 regionStateAtHome:(int64_t)a5 regionStateNearByHome:(int64_t)a6 isStateCorrect:(BOOL)a7
{
  v14.receiver = self;
  v14.super_class = HMDRegionStateCorrectnessLogEvent;
  result = [(HMMLogEvent *)&v14 init];
  if (result)
  {
    if (a5)
    {
      v12 = a6 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = v12;
    result->_firstAccessoryReachable = a4;
    result->_regionStateAtHome = a5 == 1;
    result->_regionStateNearByHome = a6 == 1;
    result->_regionStateUnknown = v13;
    result->_isStateCorrect = a7;
  }

  return result;
}

+ (id)updateWithFirstAccessory:(int64_t)a3 nearbyHome:(int64_t)a4
{
  if (a3 == 1 && a4 == 1)
  {
    goto LABEL_3;
  }

  if ((a3 != 1 || a4 != 2) && (a3 != 1 || a4))
  {
    if (a3 == 2 && a4 == 1)
    {
LABEL_3:
      v4 = 1;
      goto LABEL_9;
    }

    v8 = a4 == 2 || a4 == 0;
    if ((a3 != 2 || !v8) && (a3 || a4 != 1))
    {
      if (a3)
      {
        v9 = 0;
      }

      else
      {
        v9 = a4 == 2;
      }

      v4 = !v9 && (a4 | a3) == 0;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  v5 = [[HMDRegionStateCorrectnessLogEvent alloc] initWithReason:0 firstAccessoryReachable:1 regionStateAtHome:a3 regionStateNearByHome:a4 isStateCorrect:v4];

  return v5;
}

@end