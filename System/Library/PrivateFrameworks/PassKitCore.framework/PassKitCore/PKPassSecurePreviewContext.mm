@interface PKPassSecurePreviewContext
- (id)_initWithBackgroundColor:(id)a3 primaryColor:(id)a4 secondaryColor:(id)a5 tertiaryColor:(id)a6;
- (void)dealloc;
- (void)setBackgroundImage:(CGImage *)a3;
- (void)setIcon:(CGImage *)a3;
- (void)setImage:(CGImage *)a3;
@end

@implementation PKPassSecurePreviewContext

- (id)_initWithBackgroundColor:(id)a3 primaryColor:(id)a4 secondaryColor:(id)a5 tertiaryColor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PKPassSecurePreviewContext;
  v14 = [(PKPassSecurePreviewContext *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    backgroundColor = v14->_backgroundColor;
    v14->_backgroundColor = v15;

    v17 = [v11 copy];
    primaryColor = v14->_primaryColor;
    v14->_primaryColor = v17;

    v19 = [v12 copy];
    secondaryColor = v14->_secondaryColor;
    v14->_secondaryColor = v19;

    v21 = [v13 copy];
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

- (void)setIcon:(CGImage *)a3
{
  icon = self->_icon;
  if (icon != a3)
  {
    CGImageRelease(icon);
    self->_icon = CGImageRetain(a3);
  }
}

- (void)setImage:(CGImage *)a3
{
  image = self->_image;
  if (image != a3)
  {
    CGImageRelease(image);
    self->_image = CGImageRetain(a3);
  }
}

- (void)setBackgroundImage:(CGImage *)a3
{
  backgroundImage = self->_backgroundImage;
  if (backgroundImage != a3)
  {
    CGImageRelease(backgroundImage);
    self->_backgroundImage = CGImageRetain(a3);
  }
}

@end