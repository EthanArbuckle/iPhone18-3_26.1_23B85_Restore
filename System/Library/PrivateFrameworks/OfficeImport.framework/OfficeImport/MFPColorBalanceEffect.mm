@interface MFPColorBalanceEffect
- (MFPColorBalanceEffect)initWithCyanRed:(int)a3 magentaGreen:(int)a4 yellowBlue:(int)a5;
@end

@implementation MFPColorBalanceEffect

- (MFPColorBalanceEffect)initWithCyanRed:(int)a3 magentaGreen:(int)a4 yellowBlue:(int)a5
{
  v9.receiver = self;
  v9.super_class = MFPColorBalanceEffect;
  result = [(MFPColorBalanceEffect *)&v9 init];
  if (result)
  {
    result->mCyanRed = a3;
    result->mMagentaGreen = a4;
    result->mYellowBlue = a5;
  }

  return result;
}

@end