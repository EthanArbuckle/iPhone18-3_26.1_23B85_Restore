@interface CAMProResStatusIndicator
- (CGSize)intrinsicContentSize;
- (id)_imageNameForProResVideoModeOff;
- (id)_imageNameForProResVideoModeOn;
- (id)imageNameForAXHUD;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setProResVideoMode:(int64_t)a3 colorSpace:(int64_t)a4 animated:(BOOL)a5;
@end

@implementation CAMProResStatusIndicator

- (void)setProResVideoMode:(int64_t)a3 colorSpace:(int64_t)a4 animated:(BOOL)a5
{
  if (self->_proResVideoMode != a3 || self->_colorSpace != a4)
  {
    self->_proResVideoMode = a3;
    self->_colorSpace = a4;
    [(CAMControlStatusIndicator *)self updateImageAnimated:a5];
  }
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = CAMProResStatusIndicator;
  [(CAMControlStatusIndicator *)&v13 intrinsicContentSize];
  v4 = v3;
  v5 = MEMORY[0x1E69DCAB8];
  v6 = [(CAMProResStatusIndicator *)self imageNameForCurrentState];
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
  v4.super_class = CAMProResStatusIndicator;
  [(CAMControlStatusIndicator *)&v4 setOrientation:1 animated:0];
}

- (id)imageNameForAXHUD
{
  v3 = [(CAMProResStatusIndicator *)self proResVideoMode];
  if (v3 == 1)
  {
    v3 = [(CAMProResStatusIndicator *)self _imageNameForProResVideoModeOn];
  }

  else if (!v3)
  {
    v3 = [(CAMProResStatusIndicator *)self _imageNameForProResVideoModeOff];
  }

  return v3;
}

- (id)_imageNameForProResVideoModeOn
{
  v2 = [(CAMProResStatusIndicator *)self colorSpace];
  v3 = @"CAMProResSDRIndicator";
  if (v2 == 2)
  {
    v3 = @"CAMProResHDRIndicator";
  }

  if (v2 == 3)
  {
    return @"CAMProResLOGIndicator";
  }

  else
  {
    return v3;
  }
}

- (id)_imageNameForProResVideoModeOff
{
  v2 = [(CAMProResStatusIndicator *)self colorSpace];
  v3 = @"CAMProResSDROff-AXHUD";
  if (v2 == 2)
  {
    v3 = @"CAMProResHDROff-AXHUD";
  }

  if (v2 == 3)
  {
    return @"CAMProResLOGOff-AXHUD";
  }

  else
  {
    return v3;
  }
}

@end