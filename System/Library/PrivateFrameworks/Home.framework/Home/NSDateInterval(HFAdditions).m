@interface NSDateInterval(HFAdditions)
- (id)hf_hksvDescription;
- (uint64_t)hf_searchResultForDate:()HFAdditions;
@end

@implementation NSDateInterval(HFAdditions)

- (uint64_t)hf_searchResultForDate:()HFAdditions
{
  v4 = a3;
  v5 = [a1 startDate];
  v6 = [v4 compare:v5];

  if (v6 == -1)
  {
    v9 = 0;
  }

  else
  {
    v7 = [a1 endDate];
    v8 = [v4 compare:v7];

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
  v3 = [a1 startDate];
  v4 = [v3 hf_hksvDescription];
  v5 = [a1 endDate];
  v6 = [v5 hf_hksvDescription];
  v7 = [v2 stringWithFormat:@"%@ - %@", v4, v6];

  return v7;
}

@end