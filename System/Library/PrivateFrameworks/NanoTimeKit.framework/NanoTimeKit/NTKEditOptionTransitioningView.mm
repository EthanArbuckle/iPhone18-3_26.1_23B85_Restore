@interface NTKEditOptionTransitioningView
- (NTKEditOptionTransitioningView)initWithFrame:(CGRect)a3;
- (NTKEditOptionTransitioningViewDelegate)delegate;
- (void)_resetTransitionImageView:(id)a3;
- (void)_updateUnifiedScaleTransform;
- (void)didAddSubview:(id)a3;
- (void)setBreatheFraction:(double)a3;
- (void)setFromEditOption:(id)a3;
- (void)setOption:(id)a3;
- (void)setRubberBandingFraction:(double)a3;
- (void)setToEditOption:(id)a3;
- (void)setTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5;
@end

@implementation NTKEditOptionTransitioningView

- (NTKEditOptionTransitioningView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = NTKEditOptionTransitioningView;
  v3 = [(NTKEditOptionTransitioningView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    [(NTKEditOptionTransitioningView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKEditOptionTransitioningView *)v3 bounds];
    v6 = [v5 initWithFrame:?];
    transitionContainer = v3->_transitionContainer;
    v3->_transitionContainer = v6;

    v8 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v3->_transitionContainer setBackgroundColor:v8];

    [(NTKEditOptionTransitioningView *)v3 addSubview:v3->_transitionContainer];
    v3->_breathScaleModifier = 1.0;
    v3->_rubberBandScaleModifier = 1.0;
    v9 = [MEMORY[0x277CBBAE8] currentDevice];
    [v9 screenCornerRadius];
    v11 = v10;

    v12 = objc_alloc(MEMORY[0x277D755E8]);
    [(NTKEditOptionTransitioningView *)v3 bounds];
    v13 = [v12 initWithFrame:?];
    toTransitionImageView = v3->_toTransitionImageView;
    v3->_toTransitionImageView = v13;

    [(UIImageView *)v3->_toTransitionImageView setHidden:1];
    [(UIView *)v3->_transitionContainer addSubview:v3->_toTransitionImageView];
    NTKApplyViewCornerRadius(v3->_toTransitionImageView, v11);
    v15 = objc_alloc(MEMORY[0x277D755E8]);
    [(NTKEditOptionTransitioningView *)v3 bounds];
    v16 = [v15 initWithFrame:?];
    fromTransitionImageView = v3->_fromTransitionImageView;
    v3->_fromTransitionImageView = v16;

    [(UIImageView *)v3->_fromTransitionImageView setHidden:1];
    [(UIView *)v3->_transitionContainer addSubview:v3->_fromTransitionImageView];
    NTKApplyViewCornerRadius(v3->_fromTransitionImageView, v11);
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKEditOptionTransitioningView *)v3 bounds];
    v19 = [v18 initWithFrame:?];
    transitionDimmingView = v3->_transitionDimmingView;
    v3->_transitionDimmingView = v19;

    [(UIView *)v3->_transitionDimmingView setAutoresizingMask:18];
    v21 = v3->_transitionDimmingView;
    v22 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v21 setBackgroundColor:v22];

    [(UIView *)v3->_transitionDimmingView setAlpha:0.0];
    [(NTKEditOptionTransitioningView *)v3 addSubview:v3->_transitionDimmingView];
  }

  return v3;
}

- (void)didAddSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKEditOptionTransitioningView;
  [(NTKEditOptionTransitioningView *)&v4 didAddSubview:a3];
  [(NTKEditOptionTransitioningView *)self bringSubviewToFront:self->_transitionDimmingView];
}

- (void)setBreatheFraction:(double)a3
{
  self->_breathScaleModifier = NTKLargeElementScaleForBreathingFraction(a3);

  [(NTKEditOptionTransitioningView *)self _updateUnifiedScaleTransform];
}

- (void)setRubberBandingFraction:(double)a3
{
  self->_rubberBandScaleModifier = NTKScaleForRubberBandingFraction(a3);

  [(NTKEditOptionTransitioningView *)self _updateUnifiedScaleTransform];
}

- (void)_updateUnifiedScaleTransform
{
  transitionContainer = self->_transitionContainer;
  CGAffineTransformMakeScale(&v3, self->_breathScaleModifier * self->_rubberBandScaleModifier, self->_breathScaleModifier * self->_rubberBandScaleModifier);
  [(UIView *)transitionContainer setTransform:&v3];
}

- (void)setOption:(id)a3
{
  toTransitionImageView = self->_toTransitionImageView;
  v5 = a3;
  [(UIImageView *)toTransitionImageView setHidden:1];
  [(UIImageView *)self->_fromTransitionImageView setHidden:0];
  [(NTKEditOptionTransitioningView *)self setFromEditOption:v5];
}

- (void)setTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 isEqual:v9])
  {
    if ([v9 isEqual:self->_fromEditOption])
    {
      fromTransitionImageView = self->_fromTransitionImageView;
      v11 = *(MEMORY[0x277CBF2C0] + 16);
      *&v34.a = *MEMORY[0x277CBF2C0];
      *&v34.c = v11;
      *&v34.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(UIImageView *)fromTransitionImageView setTransform:&v34];
      v12 = 440;
LABEL_9:
      [*(&self->super.super.super.isa + v12) setHidden:1];
      goto LABEL_10;
    }

    if ([v9 isEqual:self->_toEditOption])
    {
      toTransitionImageView = self->_toTransitionImageView;
      v33 = *(MEMORY[0x277CBF2C0] + 16);
      *&v34.a = *MEMORY[0x277CBF2C0];
      *&v34.c = v33;
      *&v34.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(UIImageView *)toTransitionImageView setTransform:&v34];
      v12 = 448;
      goto LABEL_9;
    }
  }

  else
  {
    [(UIImageView *)self->_toTransitionImageView setHidden:0];
    [(UIImageView *)self->_fromTransitionImageView setHidden:0];
    [(NTKEditOptionTransitioningView *)self setToEditOption:v9];
    v13 = [(NTKEditOptionTransitioningView *)self delegate];
    v14 = [v13 shouldFadeIncomingView];

    if (v14)
    {
      v27 = self->_toTransitionImageView;
      CLKCompressFraction();
      v15 = [(UIImageView *)v27 setAlpha:?];
    }

    v23.f64[0] = 0.0;
    v24.f64[0] = 0.0;
    v25.f64[0] = 1.0;
    v28 = NTKFindCubicBezierPoint(a3, v23, 0.0, v24, 0.0, v25, 0.0, v15, v16, v17, v18, v19, v20, v21, v22, v26);
    v29 = self->_toTransitionImageView;
    CGAffineTransformMakeScale(&v34, (1.0 - v28) * -0.1 + 1.0, (1.0 - v28) * -0.1 + 1.0);
    [(UIImageView *)v29 setTransform:&v34, 0x3FF0000000000000, 0];
    [(NTKEditOptionTransitioningView *)self setFromEditOption:v8];
    v30 = self->_fromTransitionImageView;
    [(NTKEditOptionTransitioningView *)self bounds];
    CGAffineTransformMakeTranslation(&v34, 0.0, -(a3 * v31));
    [(UIImageView *)v30 setTransform:&v34];
  }

LABEL_10:
}

- (void)setToEditOption:(id)a3
{
  v5 = a3;
  if (self->_toEditOption != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_toEditOption, a3);
    [(NTKEditOptionTransitioningView *)self _resetTransitionImageView:self->_toTransitionImageView];
    toTransitionImageView = self->_toTransitionImageView;
    v7 = [(NTKEditOptionTransitioningView *)self delegate];
    v8 = [v7 imageForEditOption:v9];
    [(UIImageView *)toTransitionImageView setImage:v8];

    v5 = v9;
  }
}

- (void)setFromEditOption:(id)a3
{
  v5 = a3;
  if (self->_fromEditOption != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_fromEditOption, a3);
    [(NTKEditOptionTransitioningView *)self _resetTransitionImageView:self->_fromTransitionImageView];
    fromTransitionImageView = self->_fromTransitionImageView;
    v7 = [(NTKEditOptionTransitioningView *)self delegate];
    v8 = [v7 imageForEditOption:v9];
    [(UIImageView *)fromTransitionImageView setImage:v8];

    v5 = v9;
  }
}

- (void)_resetTransitionImageView:(id)a3
{
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *MEMORY[0x277CBF2C0];
  v7 = v4;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  v5 = a3;
  [v5 setTransform:&v6];
  [(NTKEditOptionTransitioningView *)self bounds:v6];
  [v5 setFrame:?];
}

- (NTKEditOptionTransitioningViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end