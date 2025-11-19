@interface DOCBorderedFittingImageView
- (double)decorationCornerRadius;
- (void)initCommon;
- (void)layoutSubviews;
- (void)setAddDecoration:(BOOL)a3;
- (void)setDecorationCornerRadius:(double)a3;
- (void)setFittingSize:(CGSize)a3;
@end

@implementation DOCBorderedFittingImageView

- (void)initCommon
{
  self->_decorationCornerRadius = -1.0;
  v16.receiver = self;
  v16.super_class = DOCBorderedFittingImageView;
  [(DOCFittingImageView *)&v16 initCommon];
  v3 = objc_opt_new();
  [(DOCBorderedFittingImageView *)self setBorderView:v3];

  v4 = *MEMORY[0x277CDA138];
  v5 = [(DOCBorderedFittingImageView *)self borderView];
  v6 = [v5 layer];
  [v6 setCornerCurve:v4];

  [(DOCBorderedFittingImageView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(DOCBorderedFittingImageView *)self borderView];
  [v15 setFrame:{v8, v10, v12, v14}];
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = DOCBorderedFittingImageView;
  [(DOCFittingImageView *)&v43 layoutSubviews];
  v3 = [(DOCBorderedFittingImageView *)self addDecoration];
  v4 = [(DOCBorderedFittingImageView *)self borderView];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 superview];
    if (v6)
    {
      v7 = v6;
      v8 = [(DOCBorderedFittingImageView *)self borderView];
      v9 = [v8 superview];
      v10 = [(DOCBorderedFittingImageView *)self superview];

      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v15 = [(DOCBorderedFittingImageView *)self superview];
    v16 = [(DOCBorderedFittingImageView *)self borderView];
    [v15 insertSubview:v16 aboveSubview:self];

LABEL_8:
    v17 = [(DOCBorderedFittingImageView *)self superview];
    v18 = [(DOCBorderedFittingImageView *)self borderView];
    [v17 bringSubviewToFront:v18];

    v19 = [(DOCBorderedFittingImageView *)self traitCollection];
    [DOCSeparatorView separatorThicknessForTraitCollection:v19];
    v21 = v20;
    v22 = [(DOCBorderedFittingImageView *)self borderView];
    v23 = [v22 layer];
    [v23 setBorderWidth:v21];

    [(DOCBorderedFittingImageView *)self decorationCornerRadius];
    v25 = v24;
    v26 = [(DOCBorderedFittingImageView *)self borderView];
    v27 = [v26 layer];
    [v27 setCornerRadius:v25];

    [(DOCBorderedFittingImageView *)self decorationCornerRadius];
    v12 = v28;
    goto LABEL_9;
  }

  v11 = [v4 layer];
  v12 = 0.0;
  [v11 setBorderWidth:0.0];

  v13 = [(DOCBorderedFittingImageView *)self borderView];
  v14 = [v13 layer];
  [v14 setCornerRadius:0.0];

LABEL_9:
  v29 = [(DOCBorderedFittingImageView *)self layer];
  [v29 setCornerRadius:v12];

  [(DOCBorderedFittingImageView *)self frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(DOCBorderedFittingImageView *)self borderView];
  [v38 setFrame:{v31, v33, v35, v37}];

  v39 = [MEMORY[0x277D75348] separatorColor];
  v40 = [v39 CGColor];
  v41 = [(DOCBorderedFittingImageView *)self borderView];
  v42 = [v41 layer];
  [v42 setBorderColor:v40];
}

- (double)decorationCornerRadius
{
  result = self->_decorationCornerRadius;
  if (result < 0.0)
  {
    v5 = [(DOCFittingImageView *)self fittingSize];

    MEMORY[0x28215B528](v5);
  }

  return result;
}

- (void)setAddDecoration:(BOOL)a3
{
  if (self->_addDecoration != a3)
  {
    self->_addDecoration = a3;
    [(DOCBorderedFittingImageView *)self setNeedsLayout];
  }
}

- (void)setFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(DOCFittingImageView *)self fittingSize];
  v7 = v6;
  v9 = v8;
  v11.receiver = self;
  v11.super_class = DOCBorderedFittingImageView;
  [(DOCFittingImageView *)&v11 setFittingSize:width, height];
  if (v7 != width || v9 != height)
  {
    [(DOCBorderedFittingImageView *)self setNeedsLayout];
  }
}

- (void)setDecorationCornerRadius:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = -1.0;
  }

  if (self->_decorationCornerRadius != a3)
  {
    self->_decorationCornerRadius = a3;
    [(DOCBorderedFittingImageView *)self setNeedsLayout];
  }
}

@end