@interface HKSample(Fitness)
- (uint64_t)fi_isAfterDate:()Fitness;
- (uint64_t)fi_isBeforeDate:()Fitness;
- (uint64_t)fi_overlapsStartDate:()Fitness endDate:;
- (uint64_t)fi_spansDate:()Fitness useStrictDateLimits:;
@end

@implementation HKSample(Fitness)

- (uint64_t)fi_isAfterDate:()Fitness
{
  v4 = a3;
  startDate = [self startDate];
  v6 = [startDate hk_isAfterOrEqualToDate:v4];

  return v6;
}

- (uint64_t)fi_isBeforeDate:()Fitness
{
  v4 = a3;
  endDate = [self endDate];
  v6 = [endDate hk_isBeforeOrEqualToDate:v4];

  return v6;
}

- (uint64_t)fi_spansDate:()Fitness useStrictDateLimits:
{
  v6 = a3;
  startDate = [self startDate];
  v8 = startDate;
  if (!a4)
  {
    if ([startDate hk_isBeforeOrEqualToDate:v6])
    {
      endDate = [self endDate];
      v10 = [endDate hk_isAfterOrEqualToDate:v6];
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (![startDate hk_isBeforeDate:v6])
  {
    goto LABEL_7;
  }

  endDate = [self endDate];
  v10 = [endDate hk_isAfterDate:v6];
LABEL_6:
  v11 = v10;

LABEL_8:
  return v11;
}

- (uint64_t)fi_overlapsStartDate:()Fitness endDate:
{
  v6 = a4;
  v7 = a3;
  endDate = [self endDate];
  v9 = [endDate hk_isBeforeOrEqualToDate:v7];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    startDate = [self startDate];
    v12 = [startDate hk_isAfterOrEqualToDate:v6];

    v10 = v12 ^ 1u;
  }

  return v10;
}

@end