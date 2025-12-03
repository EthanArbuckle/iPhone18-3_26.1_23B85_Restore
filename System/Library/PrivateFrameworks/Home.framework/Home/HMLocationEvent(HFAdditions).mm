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
  region = [self region];
  v4 = [v2 hf_locationEventTypeForRegion:region];

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
    location = [v6 location];

    if (location)
    {
      location2 = [v6 location];
      [location2 coordinate];
      location = [v9 containsCoordinate:?];
    }
  }

  else
  {
    location = 0;
  }

  return location;
}

- (uint64_t)hf_isRegionAtHome:()HFAdditions
{
  v4 = a3;
  v5 = objc_opt_class();
  region = [self region];
  v7 = [v5 hf_isRegion:region atHome:v4];

  return v7;
}

@end