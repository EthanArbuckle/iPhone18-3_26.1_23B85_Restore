@interface SFDeviceIsPad
@end

@implementation SFDeviceIsPad

void ___SFDeviceIsPad_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    _SFDeviceIsPad::isPad = CFEqual(v0, @"iPad") != 0;

    CFRelease(v1);
  }
}

@end