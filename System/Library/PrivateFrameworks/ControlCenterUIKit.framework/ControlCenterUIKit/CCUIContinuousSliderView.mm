@interface CCUIContinuousSliderView
- (CCUIContinuousSliderView)initWithFrame:(CGRect)frame;
- (CGPoint)glyphCenter;
- (double)_length;
- (void)applyContinuousSliderCornerRadius:(double)radius;
- (void)applyInoperativeAppearance:(BOOL)appearance;
- (void)layoutElasticContentViews;
- (void)setAxis:(unint64_t)axis;
- (void)setValueVisible:(BOOL)visible;
@end

@implementation CCUIContinuousSliderView

- (CGPoint)glyphCenter
{
  glyphContainerView = [(CCUIBaseSliderView *)self glyphContainerView];
  [glyphContainerView bounds];
  v5 = v4;
  v7 = v6;

  if ([(CCUIContinuousSliderView *)self axis]== 2)
  {
    v8 = v5 * 0.5;
    v9 = v7 - v5 * 0.5;
  }

  else
  {
    if ([(CCUIContinuousSliderView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v8 = v5 + v7 * -0.65;
    }

    else
    {
      v8 = v7 * 0.65;
    }

    v9 = v7 * 0.5;
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (void)layoutElasticContentViews
{
  v19.receiver = self;
  v19.super_class = CCUIContinuousSliderView;
  [(CCUIBaseSliderView *)&v19 layoutElasticContentViews];
  [(CCUIBaseSliderView *)self presentationLayoutValue];
  v4 = v3;
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView bounds];
  v7 = v6;
  v9 = v8;

  axis = [(CCUIContinuousSliderView *)self axis];
  if (axis == 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  traitCollection = [(CCUIContinuousSliderView *)self traitCollection];
  [traitCollection displayScale];

  v13 = v4 * v11;
  if ([(CCUIBaseSliderView *)self shouldIntegralizeValueLayout])
  {
    UIRoundToScale();
    v13 = v14;
  }

  if (axis == 2)
  {
    v15 = 0.0;
    v16 = -(v9 - v13);
    v17 = 0.0;
  }

  else
  {
    effectiveUserInterfaceLayoutDirection = [(CCUIContinuousSliderView *)self effectiveUserInterfaceLayoutDirection];
    v17 = v7 - v13;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v15 = -(v7 - v13);
    }

    else
    {
      v15 = 0.0;
    }

    v16 = 0.0;
    if (effectiveUserInterfaceLayoutDirection != 1)
    {
      v17 = 0.0;
    }
  }

  [(UIView *)self->_valueIndicatorClippingView setFrame:v17];
  [(MTMaterialView *)self->_backgroundFillView setFrame:v15, v16, v7, v9];
}

- (CCUIContinuousSliderView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = CCUIContinuousSliderView;
  v3 = [(CCUIBaseSliderView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CCUIContinuousSliderView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = +[CCUIControlCenterMaterialView _lightFillMaterialView];
    backgroundFillView = v4->_backgroundFillView;
    v4->_backgroundFillView = v13;

    [(MTMaterialView *)v4->_backgroundFillView setUserInteractionEnabled:0];
    [(MTMaterialView *)v4->_backgroundFillView setFrame:v6, v8, v10, v12];
    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    valueIndicatorClippingView = v4->_valueIndicatorClippingView;
    v4->_valueIndicatorClippingView = v15;

    [(UIView *)v4->_valueIndicatorClippingView setUserInteractionEnabled:0];
    [(UIView *)v4->_valueIndicatorClippingView setClipsToBounds:1];
    [(UIView *)v4->_valueIndicatorClippingView addSubview:v4->_backgroundFillView];
    glyphContainerView = [(CCUIBaseSliderView *)v4 glyphContainerView];
    [glyphContainerView addSubview:v4->_valueIndicatorClippingView];

    v4->_axis = 2;
  }

  return v4;
}

- (void)setAxis:(unint64_t)axis
{
  axisCopy = 2;
  if (axis - 3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    axisCopy = axis;
  }

  if (axisCopy != self->_axis)
  {
    self->_axis = axisCopy;
    [(CCUIContinuousSliderView *)self setNeedsLayout];
  }
}

- (void)setValueVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = CCUIContinuousSliderView;
  [(CCUIBaseSliderView *)&v6 setValueVisible:?];
  v5 = 0.0;
  if (visibleCopy)
  {
    v5 = 1.0;
  }

  [(UIView *)self->_valueIndicatorClippingView setAlpha:v5];
}

- (void)applyInoperativeAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  v5.receiver = self;
  v5.super_class = CCUIContinuousSliderView;
  [(CCUIBaseSliderView *)&v5 applyInoperativeAppearance:?];
  [(MTMaterialView *)self->_backgroundFillView setHasInoperativeAppearance:appearanceCopy];
}

- (void)applyContinuousSliderCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = CCUIContinuousSliderView;
  [(CCUIBaseSliderView *)&v5 applyContinuousSliderCornerRadius:?];
  [(MTMaterialView *)self->_backgroundFillView _setContinuousCornerRadius:radius];
}

- (double)_length
{
  [(CCUIContinuousSliderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  axis = [(CCUIContinuousSliderView *)self axis];
  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  if (axis == 2)
  {

    return CGRectGetHeight(*&v12);
  }

  else
  {

    return CGRectGetWidth(*&v12);
  }
}

@end