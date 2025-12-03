@interface NSDateInterval(HFAdditions)
- (id)hf_hksvDescription;
- (uint64_t)hf_searchResultForDate:()HFAdditions;
@end

@implementation NSDateInterval(HFAdditions)

- (uint64_t)hf_searchResultForDate:()HFAdditions
{
  v4 = a3;
  startDate = [self startDate];
  v6 = [v4 compare:startDate];

  if (v6 == -1)
  {
    v9 = 0;
  }

  else
  {
    endDate = [self endDate];
    v8 = [v4 compare:endDate];

    if (v8 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)hf_hksvDescription
{
  v2 = MEMORY[0x277CCACA8];
  startDate = [self startDate];
  hf_hksvDescription = [startDate hf_hksvDescription];
  endDate = [self endDate];
  hf_hksvDescription2 = [endDate hf_hksvDescription];
  v7 = [v2 stringWithFormat:@"%@ - %@", hf_hksvDescription, hf_hksvDescription2];

  return v7;
}

@end