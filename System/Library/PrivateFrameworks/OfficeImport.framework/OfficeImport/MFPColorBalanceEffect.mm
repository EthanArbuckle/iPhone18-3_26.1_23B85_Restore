@interface MFPColorBalanceEffect
- (MFPColorBalanceEffect)initWithCyanRed:(int)red magentaGreen:(int)green yellowBlue:(int)blue;
@end

@implementation MFPColorBalanceEffect

- (MFPColorBalanceEffect)initWithCyanRed:(int)red magentaGreen:(int)green yellowBlue:(int)blue
{
  v9.receiver = self;
  v9.super_class = MFPColorBalanceEffect;
  result = [(MFPColorBalanceEffect *)&v9 init];
  if (result)
  {
    result->mCyanRed = red;
    result->mMagentaGreen = green;
    result->mYellowBlue = blue;
  }

  return result;
}

@end