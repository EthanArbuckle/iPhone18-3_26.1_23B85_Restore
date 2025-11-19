@interface _PXPhotosLensSegmentedControl
+ (double)_cornerRadiusForTraitCollection:(id)a3 size:(int)a4;
+ (double)_sectionIndicatorInsetForTraitCollection:(id)a3 size:(int)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_PXPhotosLensSegmentedControl)initWithFrame:(CGRect)a3;
- (void)_highlightSegment:(int64_t)a3;
- (void)_updateAppearanceEffect;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _PXPhotosLensSegmentedControl

- (void)_highlightSegment:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0 && [(_PXPhotosLensSegmentedControl *)self selectedSegmentIndex]!= a3)
  {
    self->_lastTouchRemainedOnSelectedSegment = 0;
  }

  v5.receiver = self;
  v5.super_class = _PXPhotosLensSegmentedControl;
  [(_PXPhotosLensSegmentedControl *)&v5 _highlightSegment:a3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  self->_lastTouchRemainedOnSelectedSegment = 0;
  v4.receiver = self;
  v4.super_class = _PXPhotosLensSegmentedControl;
  [(_PXPhotosLensSegmentedControl *)&v4 touchesCancelled:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_PXPhotosLensSegmentedControl *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 anyObject];
  [v16 locationInView:self];
  v21.x = v17;
  v21.y = v18;
  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v19 = CGRectContainsPoint(v22, v21);

  if (!v19)
  {
    self->_lastTouchRemainedOnSelectedSegment = 0;
  }

  v20.receiver = self;
  v20.super_class = _PXPhotosLensSegmentedControl;
  [(_PXPhotosLensSegmentedControl *)&v20 touchesEnded:v7 withEvent:v6];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  p_locationForCurrentTouch = &self->_locationForCurrentTouch;
  self->_locationForPreviousTouch = self->_locationForCurrentTouch;
  v7 = a4;
  v8 = a3;
  v9 = [v8 anyObject];
  [v9 locationInView:self];
  p_locationForCurrentTouch->x = v10;
  p_locationForCurrentTouch->y = v11;

  v12.receiver = self;
  v12.super_class = _PXPhotosLensSegmentedControl;
  [(_PXPhotosLensSegmentedControl *)&v12 touchesMoved:v8 withEvent:v7];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_lastTouchRemainedOnSelectedSegment = 1;
  p_locationForPreviousTouch = &self->_locationForPreviousTouch;
  v7 = a4;
  v8 = a3;
  v9 = [v8 anyObject];
  [v9 locationInView:self];
  p_locationForPreviousTouch->x = v10;
  p_locationForPreviousTouch->y = v11;

  self->_locationForCurrentTouch = *p_locationForPreviousTouch;
  v12.receiver = self;
  v12.super_class = _PXPhotosLensSegmentedControl;
  [(_PXPhotosLensSegmentedControl *)&v12 touchesBegan:v8 withEvent:v7];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
LABEL_9:
    v12.receiver = self;
    v12.super_class = _PXPhotosLensSegmentedControl;
    v10 = [(_PXPhotosLensSegmentedControl *)&v12 gestureRecognizerShouldBegin:v4];
    goto LABEL_10;
  }

  v5 = v4;

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v5 view];

  if (v6 == self)
  {
    goto LABEL_9;
  }

  v7 = vsubq_f64(self->_locationForCurrentTouch, self->_locationForPreviousTouch);
  v8 = vbslq_s8(vcltzq_f64(v7), vnegq_f64(v7), v7);
  if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v8, 1), v8)).u8[0] & 1) == 0)
  {
    v9 = vmovn_s64(vceqq_f64(v7, *MEMORY[0x277CBF348]));
    if ((v9.i32[0] & v9.i32[1] & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (void)_updateAppearanceEffect
{
  if ((MEMORY[0x21CEE04B0](self, a2) & 1) == 0)
  {
    v3 = MEMORY[0x277D75D00];
    v5 = [MEMORY[0x277D75210] effectWithStyle:7];
    v4 = [v3 _effectForBlurEffect:v5 vibrancyStyle:110];
    [(_PXPhotosLensSegmentedControl *)self _setSelectedSegmentVibrancyEffect:v4];
  }
}

- (_PXPhotosLensSegmentedControl)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _PXPhotosLensSegmentedControl;
  v3 = [(_PXPhotosLensSegmentedControl *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_PXPhotosLensSegmentedControl *)v3 setApportionsSegmentWidthsByContent:1];
    if ((MEMORY[0x21CEE04B0]([(_PXPhotosLensSegmentedControl *)v4 setTransparentBackground:1]) & 1) == 0)
    {
      v5 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:0.45];
      [(_PXPhotosLensSegmentedControl *)v4 setSelectedSegmentTintColor:v5];
    }

    if ((MEMORY[0x21CEE04B0]([(_PXPhotosLensSegmentedControl *)v4 _setAlwaysEmitValueChanged:1]) & 1) == 0)
    {
      [(_PXPhotosLensSegmentedControl *)v4 _updateAppearanceEffect];
    }
  }

  return v4;
}

+ (double)_sectionIndicatorInsetForTraitCollection:(id)a3 size:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = 4.0;
  if (MEMORY[0x21CEE04B0]())
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS____PXPhotosLensSegmentedControl;
    objc_msgSendSuper2(&v10, sel__sectionIndicatorInsetForTraitCollection_size_, v6, v4);
    v7 = v8;
  }

  return v7;
}

+ (double)_cornerRadiusForTraitCollection:(id)a3 size:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = 18.0;
  if (MEMORY[0x21CEE04B0]())
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS____PXPhotosLensSegmentedControl;
    objc_msgSendSuper2(&v10, sel__cornerRadiusForTraitCollection_size_, v6, v4);
    v7 = v8;
  }

  return v7;
}

@end