@interface SFDeviceSupportsDesktopSitesByDefault
@end

@implementation SFDeviceSupportsDesktopSitesByDefault

uint64_t ___SFDeviceSupportsDesktopSitesByDefault_block_invoke()
{
  result = _SFDeviceIsPad();
  if (result)
  {
    result = MGGetSInt32Answer();
    v2 = result != 28 && (result & 0xFFFFFFFE) != 6;
    _SFDeviceSupportsDesktopSitesByDefault::supportsDesktopSites = v2;
  }

  return result;
}

@end