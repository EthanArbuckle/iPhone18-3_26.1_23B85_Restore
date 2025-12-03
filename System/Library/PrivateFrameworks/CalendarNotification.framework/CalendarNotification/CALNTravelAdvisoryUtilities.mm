@interface CALNTravelAdvisoryUtilities
+ (BOOL)isLastFireTimeOfAlert:(id)alert withinEightMinutesOfDate:(id)date;
@end

@implementation CALNTravelAdvisoryUtilities

+ (BOOL)isLastFireTimeOfAlert:(id)alert withinEightMinutesOfDate:(id)date
{
  [alert timeIntervalSinceDate:date];
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  return v4 <= 480.0;
}

@end