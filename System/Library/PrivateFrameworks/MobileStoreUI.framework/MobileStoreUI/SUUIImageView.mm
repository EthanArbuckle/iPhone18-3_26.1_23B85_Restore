@interface SUUIImageView
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UITapGestureRecognizer)tapRecognizer;
- (void)layoutSubviews;
- (void)setContents:(id)a3;
- (void)setImage:(id)a3;
- (void)setPlaceholder:(id)a3;
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

- (void)setImage:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SUUIImageView;
  [(SUUIImageView *)&v14 setImage:v4];
  if (v4)
  {
    [(SUUIImageView *)self setPlaceholder:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 cornerRadius];
    v7 = fabs(v6);
    if (v7 < 2.22044605e-16)
    {
      [(SUUIImageView *)self _setCornerRadius:0.0];
      v9 = 0.0;
    }

    else
    {
      v8 = [v5 cornerType];
      if (v8 == 1)
      {
        [v5 cornerRadius];
        [(SUUIImageView *)self _setCornerRadius:?];
        goto LABEL_11;
      }

      if (v8)
      {
LABEL_11:
        [(SUUIImageView *)self setClipsToBounds:v7 >= 2.22044605e-16];
        v10 = [(SUUIImageView *)self layer];
        [v5 borderWidth];
        matched = SUUIGraphicsMatchViewBorderToStroke(self, v11);
        [v10 setBorderWidth:?];
        v13 = [v5 borderColor];
        [v10 setBorderColor:{objc_msgSend(v13, "CGColor")}];

        [v10 setAllowsEdgeAntialiasing:fabs(matched) >= 2.22044605e-16];
        goto LABEL_12;
      }

      [v5 cornerRadius];
    }

    [(SUUIImageView *)self _setContinuousCornerRadius:v9];
    goto LABEL_11;
  }

  [(SUUIImageView *)self _setContinuousCornerRadius:0.0];
  [(SUUIImageView *)self _setCornerRadius:0.0];
  [(SUUIImageView *)self setClipsToBounds:0];
  v5 = [(SUUIImageView *)self layer];
  [v5 setBorderWidth:0.0];
  [v5 setBorderColor:0];
  [v5 setAllowsEdgeAntialiasing:0];
LABEL_12:
}

- (void)setPlaceholder:(id)a3
{
  v5 = a3;
  if (self->_placeholder != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_placeholder, a3);
    v6 = [(SUUIImageView *)self layer];
    if (v11)
    {
      v7 = [(SUUIImagePlaceholder *)v11 borderColor];
      [v6 setStrokeColor:{objc_msgSend(v7, "CGColor")}];

      [(SUUIImagePlaceholder *)v11 borderWidth];
      [v6 setLineWidth:{SUUIGraphicsMatchViewBorderToStroke(self, v8)}];
      v9 = [(SUUIImagePlaceholder *)v11 cornerPathBlock];
      if (v9)
      {
        [(SUUIImageView *)self setCornerPathBlock:v9];
        self->_lastLayoutSize = *MEMORY[0x277CBF3A8];
        [(SUUIImageView *)self setNeedsLayout];
      }

      else
      {
        [(SUUIImageView *)self setCornerPathBlock:0];
        [v6 setPath:0];
      }

      v10 = [(SUUIImagePlaceholder *)v11 backgroundColor];
      [v6 setFillColor:{objc_msgSend(v10, "CGColor")}];
    }

    else
    {
      [(SUUIImageView *)self setCornerPathBlock:0];
      [v6 setStrokeColor:0];
      [v6 setLineWidth:0.0];
      [v6 setPath:0];
      [v6 setFillColor:0];
    }

    v5 = v11;
  }
}

- (void)setContents:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUUIImageView *)self setImage:v6];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [(SUUIImageView *)self setImage:0];
    if (isKindOfClass)
    {
      v5 = v6;
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
      v13 = [(SUUIImageView *)self layer];
      [v13 lineWidth];
      UIRoundToViewScale();
      v15 = v14;

      v19.origin.x = v7;
      v19.origin.y = v8;
      v19.size.width = v9;
      v19.size.height = v10;
      v20 = CGRectInset(v19, v15, v15);
      v16 = (*(self->_cornerPathBlock + 2))(v20.origin, *&v20.origin.y, v20.size, *&v20.size.height);
      v17 = [(SUUIImageView *)self layer];
      [v17 setPath:{objc_msgSend(v16, "CGPath")}];

      p_lastLayoutSize->width = v9;
      p_lastLayoutSize->height = v10;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self->_imageSize.width;
  v6 = self->_imageSize.height;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  if (v5 == *MEMORY[0x277CBF3A8] && v6 == v8)
  {
    v10 = [(SUUIImageView *)self image];
    [v10 size];
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