@interface DOCBorderedFittingImageView
- (double)decorationCornerRadius;
- (void)initCommon;
- (void)layoutSubviews;
- (void)setAddDecoration:(BOOL)decoration;
- (void)setDecorationCornerRadius:(double)radius;
- (void)setFittingSize:(CGSize)size;
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
  borderView = [(DOCBorderedFittingImageView *)self borderView];
  layer = [borderView layer];
  [layer setCornerCurve:v4];

  [(DOCBorderedFittingImageView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  borderView2 = [(DOCBorderedFittingImageView *)self borderView];
  [borderView2 setFrame:{v8, v10, v12, v14}];
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = DOCBorderedFittingImageView;
  [(DOCFittingImageView *)&v43 layoutSubviews];
  addDecoration = [(DOCBorderedFittingImageView *)self addDecoration];
  borderView = [(DOCBorderedFittingImageView *)self borderView];
  v5 = borderView;
  if (addDecoration)
  {
    superview = [borderView superview];
    if (superview)
    {
      v7 = superview;
      borderView2 = [(DOCBorderedFittingImageView *)self borderView];
      superview2 = [borderView2 superview];
      superview3 = [(DOCBorderedFittingImageView *)self superview];

      if (superview2 == superview3)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    superview4 = [(DOCBorderedFittingImageView *)self superview];
    borderView3 = [(DOCBorderedFittingImageView *)self borderView];
    [superview4 insertSubview:borderView3 aboveSubview:self];

LABEL_8:
    superview5 = [(DOCBorderedFittingImageView *)self superview];
    borderView4 = [(DOCBorderedFittingImageView *)self borderView];
    [superview5 bringSubviewToFront:borderView4];

    traitCollection = [(DOCBorderedFittingImageView *)self traitCollection];
    [DOCSeparatorView separatorThicknessForTraitCollection:traitCollection];
    v21 = v20;
    borderView5 = [(DOCBorderedFittingImageView *)self borderView];
    layer = [borderView5 layer];
    [layer setBorderWidth:v21];

    [(DOCBorderedFittingImageView *)self decorationCornerRadius];
    v25 = v24;
    borderView6 = [(DOCBorderedFittingImageView *)self borderView];
    layer2 = [borderView6 layer];
    [layer2 setCornerRadius:v25];

    [(DOCBorderedFittingImageView *)self decorationCornerRadius];
    v12 = v28;
    goto LABEL_9;
  }

  layer3 = [borderView layer];
  v12 = 0.0;
  [layer3 setBorderWidth:0.0];

  borderView7 = [(DOCBorderedFittingImageView *)self borderView];
  layer4 = [borderView7 layer];
  [layer4 setCornerRadius:0.0];

LABEL_9:
  layer5 = [(DOCBorderedFittingImageView *)self layer];
  [layer5 setCornerRadius:v12];

  [(DOCBorderedFittingImageView *)self frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  borderView8 = [(DOCBorderedFittingImageView *)self borderView];
  [borderView8 setFrame:{v31, v33, v35, v37}];

  separatorColor = [MEMORY[0x277D75348] separatorColor];
  cGColor = [separatorColor CGColor];
  borderView9 = [(DOCBorderedFittingImageView *)self borderView];
  layer6 = [borderView9 layer];
  [layer6 setBorderColor:cGColor];
}

- (double)decorationCornerRadius
{
  result = self->_decorationCornerRadius;
  if (result < 0.0)
  {
    fittingSize = [(DOCFittingImageView *)self fittingSize];

    MEMORY[0x28215B528](fittingSize);
  }

  return result;
}

- (void)setAddDecoration:(BOOL)decoration
{
  if (self->_addDecoration != decoration)
  {
    self->_addDecoration = decoration;
    [(DOCBorderedFittingImageView *)self setNeedsLayout];
  }
}

- (void)setFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)setDecorationCornerRadius:(double)radius
{
  if (radius < 0.0)
  {
    radius = -1.0;
  }

  if (self->_decorationCornerRadius != radius)
  {
    self->_decorationCornerRadius = radius;
    [(DOCBorderedFittingImageView *)self setNeedsLayout];
  }
}

@end