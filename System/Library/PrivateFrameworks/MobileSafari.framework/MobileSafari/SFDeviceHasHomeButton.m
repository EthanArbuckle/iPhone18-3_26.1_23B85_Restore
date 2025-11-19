@interface SFDeviceHasHomeButton
@end

@implementation SFDeviceHasHomeButton

uint64_t ___SFDeviceHasHomeButton_block_invoke()
{
  result = MGGetSInt32Answer();
  _SFDeviceHasHomeButton::hasHomeButton = result != 2;
  return result;
}

@end