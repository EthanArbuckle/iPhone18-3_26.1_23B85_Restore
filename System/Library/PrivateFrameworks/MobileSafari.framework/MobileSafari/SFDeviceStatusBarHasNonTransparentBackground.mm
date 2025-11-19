@interface SFDeviceStatusBarHasNonTransparentBackground
@end

@implementation SFDeviceStatusBarHasNonTransparentBackground

void ___SFDeviceStatusBarHasNonTransparentBackground_block_invoke()
{
  if (_SFDeviceHasHomeButton::onceToken != -1)
  {
    _SFDeviceHasHomeButton_cold_1();
  }

  if (_SFDeviceHasHomeButton::hasHomeButton == 1)
  {
    if (_SFDeviceIsPad::onceToken != -1)
    {
      _SFSizeClassForWidth_cold_1();
    }

    v0 = _SFDeviceIsPad::isPad ^ 1;
  }

  else
  {
    v0 = 0;
  }

  _SFDeviceStatusBarHasNonTransparentBackground::canHaveBackground = v0 & 1;
}

@end