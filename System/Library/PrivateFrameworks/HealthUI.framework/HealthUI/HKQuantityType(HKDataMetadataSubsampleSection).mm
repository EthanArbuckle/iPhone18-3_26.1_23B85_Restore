@interface HKQuantityType(HKDataMetadataSubsampleSection)
- (uint64_t)associatedSampleAggregationStyle;
@end

@implementation HKQuantityType(HKDataMetadataSubsampleSection)

- (uint64_t)associatedSampleAggregationStyle
{
  code = [self code];
  if (code > 297)
  {
    if (code == 298 || code == 304)
    {
      return 3;
    }
  }

  else
  {
    if (code == 269)
    {
      return 4;
    }

    if (code == 277)
    {
      return 5;
    }
  }

  if ([self aggregationStyle])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end