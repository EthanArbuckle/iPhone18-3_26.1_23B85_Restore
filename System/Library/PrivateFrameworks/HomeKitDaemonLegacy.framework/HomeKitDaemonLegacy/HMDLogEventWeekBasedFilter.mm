@interface HMDLogEventWeekBasedFilter
- (BOOL)isEventInSample:(id)sample;
- (HMDLogEventWeekBasedFilter)initWithDateProvider:(id)provider;
- (unint64_t)resultHashWithEvent:(id)event;
@end

@implementation HMDLogEventWeekBasedFilter

- (BOOL)isEventInSample:(id)sample
{
  sampleCopy = sample;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [sampleCopy enableEventFilterSpecifying])
  {
    v5 = sampleCopy;
    if ([v5 conformsToProtocol:&unk_286646F50])
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
      dateProvider = [(HMDLogEventWeekBasedFilter *)self dateProvider];
      currentDayNumberOfWeek = [dateProvider currentDayNumberOfWeek];

      v11 = v8 == currentDayNumberOfWeek;
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

- (unint64_t)resultHashWithEvent:(id)event
{
  v4 = MEMORY[0x277CBEB28];
  eventCopy = event;
  sampledUUID = [eventCopy sampledUUID];
  hm_convertToData = [sampledUUID hm_convertToData];
  v8 = [v4 dataWithData:hm_convertToData];

  dateProvider = [(HMDLogEventWeekBasedFilter *)self dateProvider];
  startOfCurrentWeek = [dateProvider startOfCurrentWeek];
  v11 = [startOfCurrentWeek hash];

  v19 = v11;
  [v8 appendBytes:&v19 length:8];
  sampledCategory = [eventCopy sampledCategory];
  v13 = [sampledCategory dataUsingEncoding:4];
  [v8 appendData:v13];

  sampledData = [eventCopy sampledData];

  [v8 appendData:sampledData];
  hm_generateSHA256 = [v8 hm_generateSHA256];
  v18 = 0;
  [hm_generateSHA256 getBytes:&v18 length:8];
  v16 = v18;

  return v16;
}

- (HMDLogEventWeekBasedFilter)initWithDateProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = HMDLogEventWeekBasedFilter;
  v6 = [(HMDLogEventWeekBasedFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateProvider, provider);
  }

  return v7;
}

@end