@interface CTCarrierSpaceDataPlanMetricsError
+ (id)errorDescriptionForCode:(int64_t)code;
@end

@implementation CTCarrierSpaceDataPlanMetricsError

+ (id)errorDescriptionForCode:(int64_t)code
{
  if (code > 0x12)
  {
    return @"Unknown Error";
  }

  else
  {
    return off_278D645B0[code];
  }
}

@end