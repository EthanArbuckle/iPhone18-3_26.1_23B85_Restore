@interface NTKGreenfieldFallbackTemplateProvider
+ (id)_tombstoneImageForFamily:(int64_t)a3;
+ (id)templateForClientIdentifier:(id)a3 displayName:(id)a4 family:(int64_t)a5 device:(id)a6 sdkVersion:(id)a7;
@end

@implementation NTKGreenfieldFallbackTemplateProvider

+ (id)templateForClientIdentifier:(id)a3 displayName:(id)a4 family:(int64_t)a5 device:(id)a6 sdkVersion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = [a1 _tombstoneImageForFamily:a5];
  v15 = [NTKNoContentTemplateProvider templateForDisplayName:v13 image:v14 family:a5 device:v12 sdkVersion:v11];

  return v15;
}

+ (id)_tombstoneImageForFamily:(int64_t)a3
{
  if (a3 <= 0xC && ((0x1595u >> a3) & 1) != 0)
  {
    NTKImageNamed(off_27877EE38[a3]);
  }

  return 0;
}

@end