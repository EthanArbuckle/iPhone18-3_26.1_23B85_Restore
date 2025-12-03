@interface CAMHDRStatusIndicator
- (CGSize)intrinsicContentSize;
- (id)imageNameForAXHUD;
- (void)setHDRMode:(int64_t)mode animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation CAMHDRStatusIndicator

- (void)setHDRMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_hdrMode != mode)
  {
    self->_hdrMode = mode;
    [(CAMControlStatusIndicator *)self updateImageAnimated:animated];
  }
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = CAMHDRStatusIndicator;
  [(CAMControlStatusIndicator *)&v13 intrinsicContentSize];
  v4 = v3;
  v5 = MEMORY[0x1E69DCAB8];
  imageNameForCurrentState = [(CAMHDRStatusIndicator *)self imageNameForCurrentState];
  v7 = CAMCameraUIFrameworkBundle();
  v8 = [v5 imageNamed:imageNameForCurrentState inBundle:v7];

  [v8 size];
  v10 = v9 + 20.0;

  v11 = v10;
  v12 = v4;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CAMHDRStatusIndicator;
  [(CAMControlStatusIndicator *)&v4 setOrientation:1 animated:0];
}

- (id)imageNameForAXHUD
{
  if ([(CAMHDRStatusIndicator *)self hdrMode])
  {
    return @"CAMHDRButton-AXHUD";
  }

  else
  {
    return @"CAMHDRButtonOff-AXHUD";
  }
}

@end