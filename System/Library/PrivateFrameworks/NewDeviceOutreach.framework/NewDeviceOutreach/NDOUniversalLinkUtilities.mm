@interface NDOUniversalLinkUtilities
+ (BOOL)isValidPath:(id)path;
- (NDOUniversalLinkUtilities)init;
@end

@implementation NDOUniversalLinkUtilities

+ (BOOL)isValidPath:(id)path
{
  v3 = sub_25BD797B8();
  valid = _sSo25NDOUniversalLinkUtilitiesC17NewDeviceOutreachE11isValidPathySbSSFZ_0(v3, v4);

  return valid & 1;
}

- (NDOUniversalLinkUtilities)init
{
  v3.receiver = self;
  v3.super_class = NDOUniversalLinkUtilities;
  return [(NDOUniversalLinkUtilities *)&v3 init];
}

@end