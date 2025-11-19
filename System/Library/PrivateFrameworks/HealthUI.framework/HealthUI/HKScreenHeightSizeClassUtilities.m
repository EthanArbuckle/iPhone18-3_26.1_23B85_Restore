@interface HKScreenHeightSizeClassUtilities
+ (int64_t)screenHeightSizeClassForCurrentDevice;
+ (int64_t)screenHeightSizeClassForHeight:(double)a3 scale:(double)a4;
@end

@implementation HKScreenHeightSizeClassUtilities

+ (int64_t)screenHeightSizeClassForHeight:(double)a3 scale:(double)a4
{
  result = 3;
  if (a3 > 0.0 && a4 > 0.0)
  {
    v5 = a3 / a4;
    v6 = 2;
    if (v5 <= 670.0)
    {
      v6 = 1;
    }

    if (v5 <= 570.0)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

+ (int64_t)screenHeightSizeClassForCurrentDevice
{
  v2 = MGGetSInt32Answer();
  MGGetFloat32Answer();
  v4 = v3;
  v5 = objc_opt_class();

  return [v5 screenHeightSizeClassForHeight:v2 scale:v4];
}

@end