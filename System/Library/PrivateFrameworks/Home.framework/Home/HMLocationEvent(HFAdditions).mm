@interface HMLocationEvent(HFAdditions)
+ (uint64_t)hf_locationEventTypeForRegion:()HFAdditions;
+ (void)hf_isRegion:()HFAdditions atHome:;
- (uint64_t)hf_eventType;
- (uint64_t)hf_isRegionAtHome:()HFAdditions;
@end

@implementation HMLocationEvent(HFAdditions)

+ (uint64_t)hf_locationEventTypeForRegion:()HFAdditions
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 notifyOnEntry])
  {
    return 1;
  }

  return 2;
}

- (uint64_t)hf_eventType
{
  v2 = objc_opt_class();
  v3 = [a1 region];
  v4 = [v2 hf_locationEventTypeForRegion:v3];

  return v4;
}

+ (void)hf_isRegion:()HFAdditions atHome:
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v6 location];

    if (v10)
    {
      v11 = [v6 location];
      [v11 coordinate];
      v10 = [v9 containsCoordinate:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)hf_isRegionAtHome:()HFAdditions
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 region];
  v7 = [v5 hf_isRegion:v6 atHome:v4];

  return v7;
}

@end