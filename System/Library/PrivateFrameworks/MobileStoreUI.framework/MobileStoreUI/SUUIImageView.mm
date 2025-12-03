@interface SUUIImageView
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UITapGestureRecognizer)tapRecognizer;
- (void)layoutSubviews;
- (void)setContents:(id)contents;
- (void)setImage:(id)image;
- (void)setPlaceholder:(id)placeholder;
@end

@implementation SUUIImageView

- (UITapGestureRecognizer)tapRecognizer
{
  tapRecognizer = self->_tapRecognizer;
  if (!tapRecognizer)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75B80]);
    v5 = self->_tapRecognizer;
    self->_tapRecognizer = v4;

    [(SUUIImageView *)self addGestureRecognizer:self->_tapRecognizer];
    tapRecognizer = self->_tapRecognizer;
  }

  return tapRecognizer;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v14.receiver = self;
  v14.super_class = SUUIImageView;
  [(SUUIImageView *)&v14 setImage:imageCopy];
  if (imageCopy)
  {
    [(SUUIImageView *)self setPlaceholder:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layer2 = imageCopy;
    [layer2 cornerRadius];
    v7 = fabs(v6);
    if (v7 < 2.22044605e-16)
    {
      [(SUUIImageView *)self _setCornerRadius:0.0];
      v9 = 0.0;
    }

    else
    {
      cornerType = [layer2 cornerType];
      if (cornerType == 1)
      {
        [layer2 cornerRadius];
        [(SUUIImageView *)self _setCornerRadius:?];
        goto LABEL_11;
      }

      if (cornerType)
      {
LABEL_11:
        [(SUUIImageView *)self setClipsToBounds:v7 >= 2.22044605e-16];
        layer = [(SUUIImageView *)self layer];
        [layer2 borderWidth];
        matched = SUUIGraphicsMatchViewBorderToStroke(self, v11);
        [layer setBorderWidth:?];
        borderColor = [layer2 borderColor];
        [layer setBorderColor:{objc_msgSend(borderColor, "CGColor")}];

        [layer setAllowsEdgeAntialiasing:fabs(matched) >= 2.22044605e-16];
        goto LABEL_12;
      }

      [layer2 cornerRadius];
    }

    [(SUUIImageView *)self _setContinuousCornerRadius:v9];
    goto LABEL_11;
  }

  [(SUUIImageView *)self _setContinuousCornerRadius:0.0];
  [(SUUIImageView *)self _setCornerRadius:0.0];
  [(SUUIImageView *)self setClipsToBounds:0];
  layer2 = [(SUUIImageView *)self layer];
  [layer2 setBorderWidth:0.0];
  [layer2 setBorderColor:0];
  [layer2 setAllowsEdgeAntialiasing:0];
LABEL_12:
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  if (self->_placeholder != placeholderCopy)
  {
    v11 = placeholderCopy;
    objc_storeStrong(&self->_placeholder, placeholder);
    layer = [(SUUIImageView *)self layer];
    if (v11)
    {
      borderColor = [(SUUIImagePlaceholder *)v11 borderColor];
      [layer setStrokeColor:{objc_msgSend(borderColor, "CGColor")}];

      [(SUUIImagePlaceholder *)v11 borderWidth];
      [layer setLineWidth:{SUUIGraphicsMatchViewBorderToStroke(self, v8)}];
      cornerPathBlock = [(SUUIImagePlaceholder *)v11 cornerPathBlock];
      if (cornerPathBlock)
      {
        [(SUUIImageView *)self setCornerPathBlock:cornerPathBlock];
        self->_lastLayoutSize = *MEMORY[0x277CBF3A8];
        [(SUUIImageView *)self setNeedsLayout];
      }

      else
      {
        [(SUUIImageView *)self setCornerPathBlock:0];
        [layer setPath:0];
      }

      backgroundColor = [(SUUIImagePlaceholder *)v11 backgroundColor];
      [layer setFillColor:{objc_msgSend(backgroundColor, "CGColor")}];
    }

    else
    {
      [(SUUIImageView *)self setCornerPathBlock:0];
      [layer setStrokeColor:0];
      [layer setLineWidth:0.0];
      [layer setPath:0];
      [layer setFillColor:0];
    }

    placeholderCopy = v11;
  }
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUUIImageView *)self setImage:contentsCopy];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [(SUUIImageView *)self setImage:0];
    if (isKindOfClass)
    {
      v5 = contentsCopy;
    }

    else
    {
      v5 = 0;
    }

    [(SUUIImageView *)self setPlaceholder:v5];
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SUUIImageView;
  [(SUUIImageView *)&v18 layoutSubviews];
  [(SUUIImageView *)self bounds];
  if (self->_cornerPathBlock)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    p_lastLayoutSize = &self->_lastLayoutSize;
    if (self->_lastLayoutSize.width != v5 || self->_lastLayoutSize.height != v6)
    {
      layer = [(SUUIImageView *)self layer];
      [layer lineWidth];
      UIRoundToViewScale();
      v15 = v14;

      v19.origin.x = v7;
      v19.origin.y = v8;
      v19.size.width = v9;
      v19.size.height = v10;
      v20 = CGRectInset(v19, v15, v15);
      v16 = (*(self->_cornerPathBlock + 2))(v20.origin, *&v20.origin.y, v20.size, *&v20.size.height);
      layer2 = [(SUUIImageView *)self layer];
      [layer2 setPath:{objc_msgSend(v16, "CGPath")}];

      p_lastLayoutSize->width = v9;
      p_lastLayoutSize->height = v10;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = self->_imageSize.width;
  v6 = self->_imageSize.height;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  if (v5 == *MEMORY[0x277CBF3A8] && v6 == v8)
  {
    image = [(SUUIImageView *)self image];
    [image size];
    v5 = v11;
    v6 = v12;
  }

  if (width >= v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = width;
  }

  if (height == v8 && width == v7)
  {
    v13 = v5;
  }

  v15 = v6;
  result.height = v15;
  result.width = v13;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end