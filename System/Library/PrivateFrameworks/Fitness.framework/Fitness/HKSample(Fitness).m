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
  v5 = [a1 startDate];
  v6 = [v5 hk_isAfterOrEqualToDate:v4];

  return v6;
}

- (uint64_t)fi_isBeforeDate:()Fitness
{
  v4 = a3;
  v5 = [a1 endDate];
  v6 = [v5 hk_isBeforeOrEqualToDate:v4];

  return v6;
}

- (uint64_t)fi_spansDate:()Fitness useStrictDateLimits:
{
  v6 = a3;
  v7 = [a1 startDate];
  v8 = v7;
  if (!a4)
  {
    if ([v7 hk_isBeforeOrEqualToDate:v6])
    {
      v9 = [a1 endDate];
      v10 = [v9 hk_isAfterOrEqualToDate:v6];
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (![v7 hk_isBeforeDate:v6])
  {
    goto LABEL_7;
  }

  v9 = [a1 endDate];
  v10 = [v9 hk_isAfterDate:v6];
LABEL_6:
  v11 = v10;

LABEL_8:
  return v11;
}

- (uint64_t)fi_overlapsStartDate:()Fitness endDate:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 endDate];
  v9 = [v8 hk_isBeforeOrEqualToDate:v7];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [a1 startDate];
    v12 = [v11 hk_isAfterOrEqualToDate:v6];

    v10 = v12 ^ 1u;
  }

  return v10;
}

@end