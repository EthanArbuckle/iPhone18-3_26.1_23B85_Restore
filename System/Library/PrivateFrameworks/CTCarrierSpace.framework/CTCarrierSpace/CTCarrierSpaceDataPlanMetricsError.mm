@interface CTCarrierSpaceDataPlanMetricsError
+ (id)errorDescriptionForCode:(int64_t)a3;
@end

@implementation CTCarrierSpaceDataPlanMetricsError

+ (id)errorDescriptionForCode:(int64_t)a3
{
  if (a3 > 0x12)
  {
    return @"Unknown Error";
  }

  else
  {
    return off_278D645B0[a3];
  }
}

@end