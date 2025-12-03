@interface CLKUIColoringImageView
- (CGSize)maxSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKUIColoringImageView)initWithFrame:(CGRect)frame;
- (CLKUIColoringImageView)initWithImage:(id)image;
- (CLKUIColoringImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (UIColor)overrideColor;
- (void)setImage:(id)image;
- (void)setImageProvider:(id)provider;
- (void)sizeToFit;
@end

@implementation CLKUIColoringImageView

- (CLKUIColoringImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CLKUIColoringImageView;
  v3 = [(CLKUIColoringImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CLKUIColoringImageView *)v3 _commonInit];
  }

  return v4;
}

- (CLKUIColoringImageView)initWithImage:(id)image
{
  v6.receiver = self;
  v6.super_class = CLKUIColoringImageView;
  v3 = [(CLKUIColoringImageView *)&v6 initWithImage:image];
  v4 = v3;
  if (v3)
  {
    [(CLKUIColoringImageView *)v3 _commonInit];
  }

  return v4;
}

- (CLKUIColoringImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = CLKUIColoringImageView;
  v4 = [(CLKUIColoringImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
  v5 = v4;
  if (v4)
  {
    [(CLKUIColoringImageView *)v4 _commonInit];
  }

  return v5;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if ([imageCopy renderingMode] != 2)
  {
    v5 = [imageCopy imageWithRenderingMode:2];

    imageCopy = v5;
  }

  v6.receiver = self;
  v6.super_class = CLKUIColoringImageView;
  [(CLKUIColoringImageView *)&v6 setImage:imageCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(CLKUIColoringImageView *)self image:fits.width];
  [v4 size];
  v6 = v5;
  v8 = v7;

  imageProvider = self->_imageProvider;
  if (imageProvider)
  {
    [(CLKImageProvider *)imageProvider maxSize];
    width = v10;
    height = v12;
  }

  else
  {
    width = self->_maxSize.width;
    height = self->_maxSize.height;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  pointSize = [(CLKImageProvider *)self->_imageProvider pointSize];
  if (pointSize)
  {

LABEL_8:
    mEMORY[0x1E695B530] = [MEMORY[0x1E695B530] sharedRenderingContext];
    device = [mEMORY[0x1E695B530] device];

    CLKFloorForDevice();
    v6 = v18;
    CLKFloorForDevice();
    v8 = v19;

    goto LABEL_9;
  }

  overridePointSize = [(CLKImageProvider *)self->_imageProvider overridePointSize];

  if (overridePointSize)
  {
    goto LABEL_8;
  }

  if (v6 != 0.0 && v8 != 0.0)
  {
    if (width / v6 >= height / v8)
    {
      v6 = v6 * height / v8;
      v8 = height;
    }

    else
    {
      v8 = v8 * width / v6;
      v6 = width;
    }
  }

LABEL_9:
  v20 = v6;
  v21 = v8;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)sizeToFit
{
  mEMORY[0x1E695B530] = [MEMORY[0x1E695B530] sharedRenderingContext];
  device = [mEMORY[0x1E695B530] device];

  [(CLKUIColoringImageView *)self transform];
  if (CGAffineTransformIsIdentity(&v9))
  {
    [(CLKUIColoringImageView *)self frame];
    [(CLKUIColoringImageView *)self sizeThatFits:v5, v6];
    CLKPixelAlignRectForDevice();
    [(CLKUIColoringImageView *)self setFrame:?];
  }

  else
  {
    [(CLKUIColoringImageView *)self bounds];
    [(CLKUIColoringImageView *)self sizeThatFits:v7, v8];
    CLKPixelAlignRectForDevice();
    [(CLKUIColoringImageView *)self setBounds:?];
  }
}

- (UIColor)overrideColor
{
  overrideColor = self->_overrideColor;
  if (overrideColor)
  {
    tintColor = overrideColor;
  }

  else
  {
    tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
  }

  return tintColor;
}

- (void)setImageProvider:(id)provider
{
  providerCopy = provider;
  if (([(CLKImageProvider *)self->_imageProvider isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_imageProvider, provider);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    imageProvider = self->_imageProvider;
    if (isKindOfClass)
    {
      symbolImageType = self->_symbolImageType;
      color = [(CLKUIColoringImageView *)self color];
      overrideColor = color;
      if (!color)
      {
        overrideColor = [(CLKUIColoringImageView *)self overrideColor];
      }

      v10 = [(CLKImageProvider *)imageProvider createSymbolImageForType:symbolImageType color:overrideColor];
      [(CLKUIColoringImageView *)self setImage:v10];

      if (!color)
      {
      }
    }

    else
    {
      color = [(CLKImageProvider *)imageProvider onePieceImage];
      [(CLKUIColoringImageView *)self setImage:color];
    }
  }
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end