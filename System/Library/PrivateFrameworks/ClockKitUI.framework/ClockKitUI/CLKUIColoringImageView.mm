@interface CLKUIColoringImageView
- (CGSize)maxSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CLKUIColoringImageView)initWithFrame:(CGRect)a3;
- (CLKUIColoringImageView)initWithImage:(id)a3;
- (CLKUIColoringImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (UIColor)overrideColor;
- (void)setImage:(id)a3;
- (void)setImageProvider:(id)a3;
- (void)sizeToFit;
@end

@implementation CLKUIColoringImageView

- (CLKUIColoringImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CLKUIColoringImageView;
  v3 = [(CLKUIColoringImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CLKUIColoringImageView *)v3 _commonInit];
  }

  return v4;
}

- (CLKUIColoringImageView)initWithImage:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLKUIColoringImageView;
  v3 = [(CLKUIColoringImageView *)&v6 initWithImage:a3];
  v4 = v3;
  if (v3)
  {
    [(CLKUIColoringImageView *)v3 _commonInit];
  }

  return v4;
}

- (CLKUIColoringImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v7.receiver = self;
  v7.super_class = CLKUIColoringImageView;
  v4 = [(CLKUIColoringImageView *)&v7 initWithImage:a3 highlightedImage:a4];
  v5 = v4;
  if (v4)
  {
    [(CLKUIColoringImageView *)v4 _commonInit];
  }

  return v5;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  if ([v4 renderingMode] != 2)
  {
    v5 = [v4 imageWithRenderingMode:2];

    v4 = v5;
  }

  v6.receiver = self;
  v6.super_class = CLKUIColoringImageView;
  [(CLKUIColoringImageView *)&v6 setImage:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(CLKUIColoringImageView *)self image:a3.width];
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

  v14 = [(CLKImageProvider *)self->_imageProvider pointSize];
  if (v14)
  {

LABEL_8:
    v16 = [MEMORY[0x1E695B530] sharedRenderingContext];
    v17 = [v16 device];

    CLKFloorForDevice();
    v6 = v18;
    CLKFloorForDevice();
    v8 = v19;

    goto LABEL_9;
  }

  v15 = [(CLKImageProvider *)self->_imageProvider overridePointSize];

  if (v15)
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
  v3 = [MEMORY[0x1E695B530] sharedRenderingContext];
  v4 = [v3 device];

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
    v3 = overrideColor;
  }

  else
  {
    v3 = [(CLKImageProvider *)self->_imageProvider tintColor];
  }

  return v3;
}

- (void)setImageProvider:(id)a3
{
  v11 = a3;
  if (([(CLKImageProvider *)self->_imageProvider isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_imageProvider, a3);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    imageProvider = self->_imageProvider;
    if (isKindOfClass)
    {
      symbolImageType = self->_symbolImageType;
      v8 = [(CLKUIColoringImageView *)self color];
      v9 = v8;
      if (!v8)
      {
        v9 = [(CLKUIColoringImageView *)self overrideColor];
      }

      v10 = [(CLKImageProvider *)imageProvider createSymbolImageForType:symbolImageType color:v9];
      [(CLKUIColoringImageView *)self setImage:v10];

      if (!v8)
      {
      }
    }

    else
    {
      v8 = [(CLKImageProvider *)imageProvider onePieceImage];
      [(CLKUIColoringImageView *)self setImage:v8];
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