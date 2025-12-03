@interface CAMProResStatusIndicator
- (CGSize)intrinsicContentSize;
- (id)_imageNameForProResVideoModeOff;
- (id)_imageNameForProResVideoModeOn;
- (id)imageNameForAXHUD;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setProResVideoMode:(int64_t)mode colorSpace:(int64_t)space animated:(BOOL)animated;
@end

@implementation CAMProResStatusIndicator

- (void)setProResVideoMode:(int64_t)mode colorSpace:(int64_t)space animated:(BOOL)animated
{
  if (self->_proResVideoMode != mode || self->_colorSpace != space)
  {
    self->_proResVideoMode = mode;
    self->_colorSpace = space;
    [(CAMControlStatusIndicator *)self updateImageAnimated:animated];
  }
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = CAMProResStatusIndicator;
  [(CAMControlStatusIndicator *)&v13 intrinsicContentSize];
  v4 = v3;
  v5 = MEMORY[0x1E69DCAB8];
  imageNameForCurrentState = [(CAMProResStatusIndicator *)self imageNameForCurrentState];
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
  v4.super_class = CAMProResStatusIndicator;
  [(CAMControlStatusIndicator *)&v4 setOrientation:1 animated:0];
}

- (id)imageNameForAXHUD
{
  proResVideoMode = [(CAMProResStatusIndicator *)self proResVideoMode];
  if (proResVideoMode == 1)
  {
    proResVideoMode = [(CAMProResStatusIndicator *)self _imageNameForProResVideoModeOn];
  }

  else if (!proResVideoMode)
  {
    proResVideoMode = [(CAMProResStatusIndicator *)self _imageNameForProResVideoModeOff];
  }

  return proResVideoMode;
}

- (id)_imageNameForProResVideoModeOn
{
  colorSpace = [(CAMProResStatusIndicator *)self colorSpace];
  v3 = @"CAMProResSDRIndicator";
  if (colorSpace == 2)
  {
    v3 = @"CAMProResHDRIndicator";
  }

  if (colorSpace == 3)
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
  colorSpace = [(CAMProResStatusIndicator *)self colorSpace];
  v3 = @"CAMProResSDROff-AXHUD";
  if (colorSpace == 2)
  {
    v3 = @"CAMProResHDROff-AXHUD";
  }

  if (colorSpace == 3)
  {
    return @"CAMProResLOGOff-AXHUD";
  }

  else
  {
    return v3;
  }
}

@end