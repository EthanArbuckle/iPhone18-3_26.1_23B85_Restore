@interface SFDeviceHasRectangularScreen
@end

@implementation SFDeviceHasRectangularScreen

void ___SFDeviceHasRectangularScreen_block_invoke()
{
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 _peripheryInsets];
  v1.f64[1] = v0;
  v3.f64[1] = v2;
  _SFDeviceHasRectangularScreen::hasRectangularScreen = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *MEMORY[0x1E69DDCE0]), vceqq_f64(v1, *(MEMORY[0x1E69DDCE0] + 16))))) & 1;
}

@end