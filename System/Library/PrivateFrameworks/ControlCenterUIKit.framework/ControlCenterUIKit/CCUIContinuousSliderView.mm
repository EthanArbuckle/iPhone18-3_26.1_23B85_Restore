@interface CCUIContinuousSliderView
- (CCUIContinuousSliderView)initWithFrame:(CGRect)a3;
- (CGPoint)glyphCenter;
- (double)_length;
- (void)applyContinuousSliderCornerRadius:(double)a3;
- (void)applyInoperativeAppearance:(BOOL)a3;
- (void)layoutElasticContentViews;
- (void)setAxis:(unint64_t)a3;
- (void)setValueVisible:(BOOL)a3;
@end

@implementation CCUIContinuousSliderView

- (CGPoint)glyphCenter
{
  v3 = [(CCUIBaseSliderView *)self glyphContainerView];
  [v3 bounds];
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
  v5 = [(CCUIBaseSliderView *)self elasticContentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [(CCUIContinuousSliderView *)self axis];
  if (v10 == 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = [(CCUIContinuousSliderView *)self traitCollection];
  [v12 displayScale];

  v13 = v4 * v11;
  if ([(CCUIBaseSliderView *)self shouldIntegralizeValueLayout])
  {
    UIRoundToScale();
    v13 = v14;
  }

  if (v10 == 2)
  {
    v15 = 0.0;
    v16 = -(v9 - v13);
    v17 = 0.0;
  }

  else
  {
    v18 = [(CCUIContinuousSliderView *)self effectiveUserInterfaceLayoutDirection];
    v17 = v7 - v13;
    if (v18 == 1)
    {
      v15 = -(v7 - v13);
    }

    else
    {
      v15 = 0.0;
    }

    v16 = 0.0;
    if (v18 != 1)
    {
      v17 = 0.0;
    }
  }

  [(UIView *)self->_valueIndicatorClippingView setFrame:v17];
  [(MTMaterialView *)self->_backgroundFillView setFrame:v15, v16, v7, v9];
}

- (CCUIContinuousSliderView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = CCUIContinuousSliderView;
  v3 = [(CCUIBaseSliderView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v17 = [(CCUIBaseSliderView *)v4 glyphContainerView];
    [v17 addSubview:v4->_valueIndicatorClippingView];

    v4->_axis = 2;
  }

  return v4;
}

- (void)setAxis:(unint64_t)a3
{
  v3 = 2;
  if (a3 - 3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v3 = a3;
  }

  if (v3 != self->_axis)
  {
    self->_axis = v3;
    [(CCUIContinuousSliderView *)self setNeedsLayout];
  }
}

- (void)setValueVisible:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CCUIContinuousSliderView;
  [(CCUIBaseSliderView *)&v6 setValueVisible:?];
  v5 = 0.0;
  if (v3)
  {
    v5 = 1.0;
  }

  [(UIView *)self->_valueIndicatorClippingView setAlpha:v5];
}

- (void)applyInoperativeAppearance:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CCUIContinuousSliderView;
  [(CCUIBaseSliderView *)&v5 applyInoperativeAppearance:?];
  [(MTMaterialView *)self->_backgroundFillView setHasInoperativeAppearance:v3];
}

- (void)applyContinuousSliderCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = CCUIContinuousSliderView;
  [(CCUIBaseSliderView *)&v5 applyContinuousSliderCornerRadius:?];
  [(MTMaterialView *)self->_backgroundFillView _setContinuousCornerRadius:a3];
}

- (double)_length
{
  [(CCUIContinuousSliderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CCUIContinuousSliderView *)self axis];
  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  if (v11 == 2)
  {

    return CGRectGetHeight(*&v12);
  }

  else
  {

    return CGRectGetWidth(*&v12);
  }
}

@end