@interface CUIMutableNamedLayerImage
- (CGColor)color;
- (CUIMutableNamedLayerImage)init;
- (id)gradient;
- (id)mutableCopy;
- (void)dealloc;
- (void)setAppearance:(id)appearance;
- (void)setColor:(CGColor *)color;
- (void)setGradient:(id)gradient;
- (void)setImage:(CGImage *)image;
@end

@implementation CUIMutableNamedLayerImage

- (CGColor)color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  else
  {
    return self->_gradientOrColor;
  }
}

- (CUIMutableNamedLayerImage)init
{
  v4.receiver = self;
  v4.super_class = CUIMutableNamedLayerImage;
  v2 = [(CUIMutableNamedLayerImage *)&v4 init];
  [(CUIMutableNamedLayerImage *)v2 setOpacity:1.0];
  return v2;
}

- (id)gradient
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_gradientOrColor;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  CGImageRelease(self->_image);

  v3.receiver = self;
  v3.super_class = CUIMutableNamedLayerImage;
  [(CUINamedLayerImage *)&v3 dealloc];
}

- (void)setImage:(CGImage *)image
{
  image = self->_image;
  if (image != image)
  {
    CGImageRelease(image);
    CGImageRetain(image);
    self->_image = image;
  }
}

- (void)setColor:(CGColor *)color
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != color)
  {

    colorCopy = color;
    self->_gradientOrColor = color;
  }
}

- (void)setGradient:(id)gradient
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != gradient)
  {

    gradientCopy = gradient;
    self->_gradientOrColor = gradient;
  }
}

- (void)setAppearance:(id)appearance
{
  appearance = self->_appearance;
  if (appearance != appearance)
  {

    self->_appearance = appearance;
  }
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(CUIMutableNamedLayerImage);
  [(CUIMutableNamedLayerImage *)v3 setImage:[(CUIMutableNamedLayerImage *)self image]];
  [(CUINamedImage *)self scale];
  [(CUIMutableNamedLayerImage *)v3 setScale:?];
  [(CUINamedLayerImage *)self frame];
  [(CUIMutableNamedLayerImage *)v3 setFrame:?];
  [(CUIMutableNamedLayerImage *)self opacity];
  [(CUIMutableNamedLayerImage *)v3 setOpacity:?];
  [(CUINamedLayerImage *)self blurStrength];
  [(CUIMutableNamedLayerImage *)v3 setBlurStrength:?];
  [(CUIMutableNamedLayerImage *)v3 setHasLightingEffects:[(CUINamedLayerImage *)self hasLightingEffects]];
  if ([(CUIMutableNamedLayerImage *)self color])
  {
    [(CUIMutableNamedLayerImage *)v3 setColor:[(CUIMutableNamedLayerImage *)self color]];
  }

  else
  {
    [(CUIMutableNamedLayerImage *)v3 setGradient:[(CUIMutableNamedLayerImage *)self gradient]];
  }

  [(CUIMutableNamedLayerImage *)v3 setSdfTexture:[(CUIMutableNamedLayerImage *)self sdfTexture]];
  return v3;
}

@end