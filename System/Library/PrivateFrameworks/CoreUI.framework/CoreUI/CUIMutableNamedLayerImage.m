@interface CUIMutableNamedLayerImage
- (CGColor)color;
- (CUIMutableNamedLayerImage)init;
- (id)gradient;
- (id)mutableCopy;
- (void)dealloc;
- (void)setAppearance:(id)a3;
- (void)setColor:(CGColor *)a3;
- (void)setGradient:(id)a3;
- (void)setImage:(CGImage *)a3;
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

- (void)setImage:(CGImage *)a3
{
  image = self->_image;
  if (image != a3)
  {
    CGImageRelease(image);
    CGImageRetain(a3);
    self->_image = a3;
  }
}

- (void)setColor:(CGColor *)a3
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != a3)
  {

    v6 = a3;
    self->_gradientOrColor = a3;
  }
}

- (void)setGradient:(id)a3
{
  gradientOrColor = self->_gradientOrColor;
  if (gradientOrColor != a3)
  {

    v6 = a3;
    self->_gradientOrColor = a3;
  }
}

- (void)setAppearance:(id)a3
{
  appearance = self->_appearance;
  if (appearance != a3)
  {

    self->_appearance = a3;
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