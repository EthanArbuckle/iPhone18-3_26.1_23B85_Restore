@interface HKQuantityType(HKDataMetadataSubsampleSection)
- (uint64_t)associatedSampleAggregationStyle;
@end

@implementation HKQuantityType(HKDataMetadataSubsampleSection)

- (uint64_t)associatedSampleAggregationStyle
{
  v2 = [a1 code];
  if (v2 > 297)
  {
    if (v2 == 298 || v2 == 304)
    {
      return 3;
    }
  }

  else
  {
    if (v2 == 269)
    {
      return 4;
    }

    if (v2 == 277)
    {
      return 5;
    }
  }

  if ([a1 aggregationStyle])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end