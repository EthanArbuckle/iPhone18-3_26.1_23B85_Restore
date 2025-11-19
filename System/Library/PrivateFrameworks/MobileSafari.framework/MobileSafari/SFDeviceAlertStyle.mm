@interface SFDeviceAlertStyle
@end

@implementation SFDeviceAlertStyle

void ___SFDeviceAlertStyle_block_invoke()
{
  if (_SFDeviceIsPad::onceToken != -1)
  {
    _SFSizeClassForWidth_cold_1();
  }

  _SFDeviceAlertStyle::style = _SFDeviceIsPad::isPad;
}

@end