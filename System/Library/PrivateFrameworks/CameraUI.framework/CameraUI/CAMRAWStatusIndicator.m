@interface CAMRAWStatusIndicator
- (CGSize)intrinsicContentSize;
- (id)imageNameForAXHUD;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setRAWMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMRAWStatusIndicator

- (void)setRAWMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_rawMode != a3)
  {
    self->_rawMode = a3;
    [(CAMControlStatusIndicator *)self updateImageAnimated:a4];
  }
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = CAMRAWStatusIndicator;
  [(CAMControlStatusIndicator *)&v13 intrinsicContentSize];
  v4 = v3;
  v5 = MEMORY[0x1E69DCAB8];
  v6 = [(CAMRAWStatusIndicator *)self imageNameForCurrentState];
  v7 = CAMCameraUIFrameworkBundle();
  v8 = [v5 imageNamed:v6 inBundle:v7];

  [v8 size];
  v10 = v9 + 20.0;

  v11 = v10;
  v12 = v4;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = CAMRAWStatusIndicator;
  [(CAMControlStatusIndicator *)&v4 setOrientation:1 animated:0];
}

- (id)imageNameForAXHUD
{
  if ([(CAMRAWStatusIndicator *)self rawMode]== 1)
  {
    return @"CAMRAWIndicatorOn";
  }

  else
  {
    return @"CAMRAWButtonOff-AXHUD";
  }
}

@end