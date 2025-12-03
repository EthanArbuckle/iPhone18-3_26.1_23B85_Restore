@interface NTKGreenfieldFallbackTemplateProvider
+ (id)_tombstoneImageForFamily:(int64_t)family;
+ (id)templateForClientIdentifier:(id)identifier displayName:(id)name family:(int64_t)family device:(id)device sdkVersion:(id)version;
@end

@implementation NTKGreenfieldFallbackTemplateProvider

+ (id)templateForClientIdentifier:(id)identifier displayName:(id)name family:(int64_t)family device:(id)device sdkVersion:(id)version
{
  versionCopy = version;
  deviceCopy = device;
  nameCopy = name;
  v14 = [self _tombstoneImageForFamily:family];
  v15 = [NTKNoContentTemplateProvider templateForDisplayName:nameCopy image:v14 family:family device:deviceCopy sdkVersion:versionCopy];

  return v15;
}

+ (id)_tombstoneImageForFamily:(int64_t)family
{
  if (family <= 0xC && ((0x1595u >> family) & 1) != 0)
  {
    NTKImageNamed(off_27877EE38[family]);
  }

  return 0;
}

@end