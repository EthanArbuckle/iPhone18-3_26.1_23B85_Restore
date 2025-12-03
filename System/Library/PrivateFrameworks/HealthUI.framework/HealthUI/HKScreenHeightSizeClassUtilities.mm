@interface HKScreenHeightSizeClassUtilities
+ (int64_t)screenHeightSizeClassForCurrentDevice;
+ (int64_t)screenHeightSizeClassForHeight:(double)height scale:(double)scale;
@end

@implementation HKScreenHeightSizeClassUtilities

+ (int64_t)screenHeightSizeClassForHeight:(double)height scale:(double)scale
{
  result = 3;
  if (height > 0.0 && scale > 0.0)
  {
    v5 = height / scale;
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