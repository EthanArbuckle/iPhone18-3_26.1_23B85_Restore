@interface HMDLogEventWeekBasedFilter
- (BOOL)isEventInSample:(id)a3;
- (HMDLogEventWeekBasedFilter)initWithDateProvider:(id)a3;
- (unint64_t)resultHashWithEvent:(id)a3;
@end

@implementation HMDLogEventWeekBasedFilter

- (BOOL)isEventInSample:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 enableEventFilterSpecifying])
  {
    v5 = v4;
    if ([v5 conformsToProtocol:&unk_283EF0FD8])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [(HMDLogEventWeekBasedFilter *)self resultHashWithEvent:v7]% 7 + 1;
      v9 = [(HMDLogEventWeekBasedFilter *)self dateProvider];
      v10 = [v9 currentDayNumberOfWeek];

      v11 = v8 == v10;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (unint64_t)resultHashWithEvent:(id)a3
{
  v4 = MEMORY[0x277CBEB28];
  v5 = a3;
  v6 = [v5 sampledUUID];
  v7 = [v6 hm_convertToData];
  v8 = [v4 dataWithData:v7];

  v9 = [(HMDLogEventWeekBasedFilter *)self dateProvider];
  v10 = [v9 startOfCurrentWeek];
  v11 = [v10 hash];

  v19 = v11;
  [v8 appendBytes:&v19 length:8];
  v12 = [v5 sampledCategory];
  v13 = [v12 dataUsingEncoding:4];
  [v8 appendData:v13];

  v14 = [v5 sampledData];

  [v8 appendData:v14];
  v15 = [v8 hm_generateSHA256];
  v18 = 0;
  [v15 getBytes:&v18 length:8];
  v16 = v18;

  return v16;
}

- (HMDLogEventWeekBasedFilter)initWithDateProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDLogEventWeekBasedFilter;
  v6 = [(HMDLogEventWeekBasedFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateProvider, a3);
  }

  return v7;
}

@end