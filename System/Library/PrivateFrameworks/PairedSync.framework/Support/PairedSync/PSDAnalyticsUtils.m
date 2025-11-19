@interface PSDAnalyticsUtils
+ (id)binPercentageRangeForInputDuration:(double)a3 withTotalDuration:(double)a4;
@end

@implementation PSDAnalyticsUtils

+ (id)binPercentageRangeForInputDuration:(double)a3 withTotalDuration:(double)a4
{
  v6 = vcvtpd_s64_f64(a3 / a4 * 100.0);
  if (v6 <= 99)
  {
    if (v6 < 1)
    {
      v7 = @"0";
    }

    else
    {
      v7 = [NSString stringWithFormat:@"%d-%d", v6 - v6 % 0xAu, v6 - v6 % 0xAu + 10, v4];
    }
  }

  else
  {
    v7 = @"100";
  }

  return v7;
}

@end