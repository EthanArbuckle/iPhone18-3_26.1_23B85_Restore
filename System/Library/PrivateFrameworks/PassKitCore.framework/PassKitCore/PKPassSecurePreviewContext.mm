@interface PKPassSecurePreviewContext
- (id)_initWithBackgroundColor:(id)color primaryColor:(id)primaryColor secondaryColor:(id)secondaryColor tertiaryColor:(id)tertiaryColor;
- (void)dealloc;
- (void)setBackgroundImage:(CGImage *)image;
- (void)setIcon:(CGImage *)icon;
- (void)setImage:(CGImage *)image;
@end

@implementation PKPassSecurePreviewContext

- (id)_initWithBackgroundColor:(id)color primaryColor:(id)primaryColor secondaryColor:(id)secondaryColor tertiaryColor:(id)tertiaryColor
{
  colorCopy = color;
  primaryColorCopy = primaryColor;
  secondaryColorCopy = secondaryColor;
  tertiaryColorCopy = tertiaryColor;
  v24.receiver = self;
  v24.super_class = PKPassSecurePreviewContext;
  v14 = [(PKPassSecurePreviewContext *)&v24 init];
  if (v14)
  {
    v15 = [colorCopy copy];
    backgroundColor = v14->_backgroundColor;
    v14->_backgroundColor = v15;

    v17 = [primaryColorCopy copy];
    primaryColor = v14->_primaryColor;
    v14->_primaryColor = v17;

    v19 = [secondaryColorCopy copy];
    secondaryColor = v14->_secondaryColor;
    v14->_secondaryColor = v19;

    v21 = [tertiaryColorCopy copy];
    tertiaryColor = v14->_tertiaryColor;
    v14->_tertiaryColor = v21;
  }

  return v14;
}

- (void)dealloc
{
  CGImageRelease(self->_icon);
  CGImageRelease(self->_image);
  CGImageRelease(self->_backgroundImage);
  v3.receiver = self;
  v3.super_class = PKPassSecurePreviewContext;
  [(PKPassSecurePreviewContext *)&v3 dealloc];
}

- (void)setIcon:(CGImage *)icon
{
  icon = self->_icon;
  if (icon != icon)
  {
    CGImageRelease(icon);
    self->_icon = CGImageRetain(icon);
  }
}

- (void)setImage:(CGImage *)image
{
  image = self->_image;
  if (image != image)
  {
    CGImageRelease(image);
    self->_image = CGImageRetain(image);
  }
}

- (void)setBackgroundImage:(CGImage *)image
{
  backgroundImage = self->_backgroundImage;
  if (backgroundImage != image)
  {
    CGImageRelease(backgroundImage);
    self->_backgroundImage = CGImageRetain(image);
  }
}

@end