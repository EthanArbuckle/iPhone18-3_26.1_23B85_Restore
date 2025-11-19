@interface NTKBackgroundImageFaceView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGPoint)timeViewZoomEndingCenter;
- (CGRect)maskZoomStartingBounds;
- (CGRect)vignetteZoomStartingBounds;
- (double)_backgroundImageAlphaForEditMode:(int64_t)a3;
- (double)_timeLabelAlphaForEditMode:(int64_t)a3;
- (double)_timeTravelYAdjustment;
- (id)_complicationDisplayWrapperForTouch:(id)a3;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4;
- (id)_updateFontInStyle:(id)a3 monospace:(BOOL)a4;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyScaleTransform:(id)a3;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_removeAllSubviewsFrom:(id)a3;
- (void)_scrubToDate:(id)a3 animated:(BOOL)a4;
- (void)_startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_unloadSnapshotContentViews;
- (void)setViewMode:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation NTKBackgroundImageFaceView

- (void)_loadSnapshotContentViews
{
  v20.receiver = self;
  v20.super_class = NTKBackgroundImageFaceView;
  [(NTKDigitalFaceView *)&v20 _loadSnapshotContentViews];
  v3 = [(NTKFaceView *)self timeView];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:v4];

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [(NTKBackgroundImageFaceView *)self bounds];
  v6 = [v5 initWithFrame:?];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = v6;

  [(UIView *)self->_backgroundContainerView setAutoresizingMask:18];
  v8 = [(NTKFaceView *)self contentView];
  v9 = self->_backgroundContainerView;
  v10 = [(NTKFaceView *)self foregroundContainerView];
  [v8 insertSubview:v9 belowSubview:v10];

  v11 = [(NTKBackgroundImageFaceView *)self _selectedContentView];
  selectedContentView = self->_selectedContentView;
  self->_selectedContentView = v11;

  [(UIView *)self->_backgroundContainerView addSubview:self->_selectedContentView];
  v13 = self->_selectedContentView;
  [(NTKBackgroundImageFaceView *)self bounds];
  [(UIView *)v13 setFrame:?];
  [(UIView *)self->_selectedContentView setAutoresizingMask:18];
  v14 = objc_alloc(MEMORY[0x277D75D18]);
  [(NTKBackgroundImageFaceView *)self bounds];
  v15 = [v14 initWithFrame:?];
  transitionDimmingView = self->_transitionDimmingView;
  self->_transitionDimmingView = v15;

  [(UIView *)self->_transitionDimmingView setAutoresizingMask:18];
  v17 = self->_transitionDimmingView;
  v18 = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v17 setBackgroundColor:v18];

  [(UIView *)self->_transitionDimmingView setAlpha:0.0];
  v19 = [(NTKFaceView *)self contentView];
  [v19 addSubview:self->_transitionDimmingView];

  self->_breathScaleModifier = 1.0;
  self->_rubberBandScaleModifier = 1.0;
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKBackgroundImageFaceView;
  [(NTKDigitalFaceView *)&v5 _unloadSnapshotContentViews];
  [(UIView *)self->_backgroundContainerView removeFromSuperview];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = 0;

  [(UIView *)self->_selectedContentView removeFromSuperview];
  selectedContentView = self->_selectedContentView;
  self->_selectedContentView = 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [v5 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NTKBackgroundImageFaceView *)self _complicationDisplayWrapperForTouch:v5];
    v7 = v8 == 0;
  }

  return v7;
}

- (id)_complicationDisplayWrapperForTouch:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = 0;
  [v4 locationInView:self];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__NTKBackgroundImageFaceView__complicationDisplayWrapperForTouch___block_invoke;
  v9[3] = &unk_278780DC8;
  v9[6] = v5;
  v9[7] = v6;
  v9[4] = self;
  v9[5] = &v10;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __66__NTKBackgroundImageFaceView__complicationDisplayWrapperForTouch___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [v8 isUserInteractionEnabled];
  v6 = v8;
  if (v5)
  {
    v7 = [v8 display];
    [v7 bounds];
    [v7 convertRect:*(a1 + 32) toView:?];
    v11 = CGRectInset(v10, -10.0, -10.0);
    if (CGRectContainsPoint(v11, *(a1 + 48)))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    }

    v6 = v8;
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  v6 = [(NTKBackgroundImageFaceView *)self _complicationDisplayWrapperForTouch:v5];
  touchWrapper = self->_touchWrapper;
  self->_touchWrapper = v6;

  v8 = self->_touchWrapper;
  if (v8)
  {
    v9 = [(NTKComplicationDisplayWrapperView *)v8 display];
    [v9 setHighlighted:1];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  obj = [(NTKBackgroundImageFaceView *)self _complicationDisplayWrapperForTouch:v5];

  v6 = obj;
  touchWrapper = self->_touchWrapper;
  if (obj != touchWrapper)
  {
    if (touchWrapper)
    {
      v8 = [(NTKComplicationDisplayWrapperView *)touchWrapper display];
      [v8 setHighlighted:0];

      v6 = obj;
    }

    if (v6)
    {
      v9 = [(NTKComplicationDisplayWrapperView *)v6 display];
      [v9 setHighlighted:1];
    }

    objc_storeStrong(&self->_touchWrapper, obj);
    v6 = obj;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  touchWrapper = self->_touchWrapper;
  if (touchWrapper)
  {
    v6 = [(NTKComplicationDisplayWrapperView *)touchWrapper display:a3];
    [v6 setHighlighted:0];

    if ([(NTKComplicationDisplayWrapperView *)self->_touchWrapper tapEnabled])
    {
      v7 = [(NTKComplicationDisplayWrapperView *)self->_touchWrapper touchUpInsideHandler];

      if (v7)
      {
        v8 = [(NTKComplicationDisplayWrapperView *)self->_touchWrapper touchUpInsideHandler];
        v9 = [(NTKComplicationDisplayWrapperView *)self->_touchWrapper display];
        (v8)[2](v8, v9);
      }
    }

    v10 = self->_touchWrapper;
    self->_touchWrapper = 0;
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  touchWrapper = self->_touchWrapper;
  if (touchWrapper)
  {
    v6 = [(NTKComplicationDisplayWrapperView *)touchWrapper display:a3];
    [v6 setHighlighted:0];

    v7 = self->_touchWrapper;
    self->_touchWrapper = 0;
  }
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4
{
  [(NTKBackgroundImageFaceView *)self bounds:a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKFaceView *)self device];
  v14 = NTKDigitalTimeLabelStyleWideRightSideMargin(v13);
  v15 = [(NTKFaceView *)self device];
  v16 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:v15 applyAdvanceFudge:v6 forDevice:v8, v10, v12, v14];

  return v16;
}

- (id)_updateFontInStyle:(id)a3 monospace:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = [v5 copy];
    v8 = MEMORY[0x277CBBB08];
    v9 = [v6 threeDigitFont];
    [v9 pointSize];
    v10 = [v8 systemFontOfSize:?];
    v11 = [v10 CLKFontWithMonospacedNumbers];

    [v7 setFourDigitFont:v11];
    [v7 setThreeDigitFont:v11];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKBackgroundImageFaceView *)self _backgroundImageAlphaForEditMode:?];
  [(NTKBackgroundImageFaceView *)self _backgroundImageAlphaForEditMode:a5];
  v8 = [(NTKBackgroundImageFaceView *)self _selectedContentView];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  [(NTKBackgroundImageFaceView *)self _timeLabelAlphaForEditMode:a4];
  [(NTKBackgroundImageFaceView *)self _timeLabelAlphaForEditMode:a5];
  v9 = [(NTKFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v5 = [(NTKBackgroundImageFaceView *)self _selectedContentView];
  [(NTKBackgroundImageFaceView *)self _backgroundImageAlphaForEditMode:a3];
  [v5 setAlpha:?];

  v6 = [(NTKFaceView *)self timeView];
  [(NTKBackgroundImageFaceView *)self _timeLabelAlphaForEditMode:a3];
  [v6 setAlpha:?];
}

- (double)_backgroundImageAlphaForEditMode:(int64_t)a3
{
  result = 0.4;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeLabelAlphaForEditMode:(int64_t)a3
{
  result = 0.2;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (void)_prepareForEditing
{
  v6.receiver = self;
  v6.super_class = NTKBackgroundImageFaceView;
  [(NTKFaceView *)&v6 _prepareForEditing];
  v3 = [(NTKFaceView *)self device];
  [v3 screenCornerRadius];
  v5 = v4;

  NTKApplyViewCornerRadius(self->_backgroundContainerView, v5);
}

- (void)_cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKBackgroundImageFaceView;
  [(NTKFaceView *)&v3 _cleanupAfterEditing];
  NTKApplyViewCornerRadius(self->_backgroundContainerView, 0.0);
}

- (void)setViewMode:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = NTKBackgroundImageFaceView;
  [(NTKDigitalFaceView *)&v3 setViewMode:a3];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v11 = a4;
  v12 = a5;
  if ([v11 isEqual:v12])
  {
    if ([v12 isEqual:self->_editOptionFrom])
    {
      transitionViewFrom = self->_transitionViewFrom;
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v50.a = *MEMORY[0x277CBF2C0];
      *&v50.c = v14;
      *&v50.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(UIView *)transitionViewFrom setTransform:&v50];
      v15 = 888;
LABEL_13:
      [*(&self->super.super.super.super.super.isa + v15) setHidden:1];
      goto LABEL_14;
    }

    if ([v12 isEqual:self->_editOptionTo])
    {
      transitionViewTo = self->_transitionViewTo;
      v49 = *(MEMORY[0x277CBF2C0] + 16);
      *&v50.a = *MEMORY[0x277CBF2C0];
      *&v50.c = v49;
      *&v50.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(UIView *)transitionViewTo setTransform:&v50];
      v15 = 872;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = [(NTKFaceView *)self device];
    [v16 screenCornerRadius];
    v18 = v17;

    [(UIView *)self->_transitionViewFrom setHidden:0];
    [(UIView *)self->_transitionViewTo setHidden:0];
    [(NTKBackgroundImageFaceView *)self _beginTransitionToOption];
    v19 = [(NTKEditOption *)self->_editOptionTo isEqual:v12];
    v20 = MEMORY[0x277CBF2C0];
    if ((v19 & 1) == 0)
    {
      objc_storeStrong(&self->_editOptionTo, a5);
      [(UIView *)self->_transitionViewTo removeFromSuperview];
      v21 = [(NTKBackgroundImageFaceView *)self _viewForEditOption:v12];
      v22 = self->_transitionViewTo;
      self->_transitionViewTo = v21;

      v23 = self->_transitionViewTo;
      v24 = v20[1];
      *&v50.a = *v20;
      *&v50.c = v24;
      *&v50.tx = v20[2];
      [(UIView *)v23 setTransform:&v50];
      v25 = self->_transitionViewTo;
      [(NTKBackgroundImageFaceView *)self bounds];
      [(UIView *)v25 setFrame:?];
      NTKApplyViewCornerRadius(self->_transitionViewTo, v18);
      [(UIView *)self->_backgroundContainerView addSubview:self->_transitionViewTo];
    }

    if ([(NTKBackgroundImageFaceView *)self _shouldFadeToTransitionView])
    {
      v26 = self->_transitionViewTo;
      CLKCompressFraction();
      [(UIView *)v26 setAlpha:?];
    }

    if (([(NTKEditOption *)self->_editOptionFrom isEqual:v11]& 1) == 0)
    {
      objc_storeStrong(&self->_editOptionFrom, a4);
      [(UIView *)self->_transitionViewFrom removeFromSuperview];
      v27 = [(NTKBackgroundImageFaceView *)self _viewForEditOption:v11];
      v28 = self->_transitionViewFrom;
      self->_transitionViewFrom = v27;

      v29 = self->_transitionViewFrom;
      v30 = v20[1];
      *&v50.a = *v20;
      *&v50.c = v30;
      *&v50.tx = v20[2];
      [(UIView *)v29 setTransform:&v50];
      v31 = self->_transitionViewFrom;
      [(NTKBackgroundImageFaceView *)self bounds];
      [(UIView *)v31 setFrame:?];
      NTKApplyViewCornerRadius(self->_transitionViewFrom, v18);
      [(UIView *)self->_backgroundContainerView addSubview:self->_transitionViewFrom];
    }

    v32 = self->_transitionViewFrom;
    [(NTKBackgroundImageFaceView *)self bounds];
    CGAffineTransformMakeTranslation(&v50, 0.0, -(a3 * v33));
    v34 = [(UIView *)v32 setTransform:&v50];
    v35.f64[0] = 0.0;
    v36.f64[0] = 0.0;
    v37.f64[0] = 1.0;
    v46 = NTKFindCubicBezierPoint(a3, v35, 0.0, v36, 0.0, v37, 0.0, v34, v38, v39, v40, v41, v42, v43, v44, v45);
    v47 = self->_transitionViewTo;
    CGAffineTransformMakeScale(&v50, (1.0 - v46) * -0.1 + 1.0, (1.0 - v46) * -0.1 + 1.0);
    [(UIView *)v47 setTransform:&v50, 0x3FF0000000000000, 0];
  }

LABEL_14:
}

- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  [(UIView *)self->_transitionViewFrom removeFromSuperview:a3];
  [(UIView *)self->_transitionViewTo removeFromSuperview];
  editOptionFrom = self->_editOptionFrom;
  self->_editOptionFrom = 0;

  transitionViewFrom = self->_transitionViewFrom;
  self->_transitionViewFrom = 0;

  editOptionTo = self->_editOptionTo;
  self->_editOptionTo = 0;

  transitionViewTo = self->_transitionViewTo;
  self->_transitionViewTo = 0;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  self->_breathScaleModifier = NTKLargeElementScaleForBreathingFraction(a3);
  backgroundContainerView = self->_backgroundContainerView;

  [(NTKBackgroundImageFaceView *)self _applyScaleTransform:backgroundContainerView];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = NTKScaleForRubberBandingFraction(a3);
  v9 = NTKAlphaForRubberBandingFraction(a3);
  [(NTKBackgroundImageFaceView *)self _backgroundImageAlphaForEditMode:a4];
  v11 = v9 * v10;
  self->_rubberBandScaleModifier = v8;
  [(NTKBackgroundImageFaceView *)self _applyScaleTransform:self->_backgroundContainerView];
  transitionDimmingView = self->_transitionDimmingView;

  [(UIView *)transitionDimmingView setAlpha:1.0 - v11];
}

- (void)_applyScaleTransform:(id)a3
{
  v3 = self->_breathScaleModifier * self->_rubberBandScaleModifier;
  v4 = a3;
  CGAffineTransformMakeScale(&v5, v3, v3);
  [v4 setTransform:&v5];
}

- (double)_timeTravelYAdjustment
{
  v2 = [(NTKFaceView *)self device];
  if ([v2 sizeClass])
  {
    v3 = 13.5;
  }

  else
  {
    v3 = 12.5;
  }

  return v3;
}

- (void)_startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NTKBackgroundImageFaceView;
  [(NTKFaceView *)&v15 _startScrubbingAnimated:a3 withCompletion:a4];
  self->_shouldAdjustLayoutForTimeTravel = 1;
  [(NTKFaceView *)self _loadLayoutRules];
  v6 = [(NTKFaceView *)self foregroundContainerView];
  [v6 setNeedsLayout];

  timeTravelDimmingOverlayView = self->_timeTravelDimmingOverlayView;
  if (!timeTravelDimmingOverlayView)
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKBackgroundImageFaceView *)self bounds];
    v9 = [v8 initWithFrame:?];
    v10 = self->_timeTravelDimmingOverlayView;
    self->_timeTravelDimmingOverlayView = v9;

    v11 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)self->_timeTravelDimmingOverlayView setBackgroundColor:v11];

    timeTravelDimmingOverlayView = self->_timeTravelDimmingOverlayView;
  }

  [(UIView *)timeTravelDimmingOverlayView setAlpha:0.0];
  v12 = self->_timeTravelDimmingOverlayView;
  v13 = [(NTKFaceView *)self foregroundContainerView];
  [(NTKBackgroundImageFaceView *)self insertSubview:v12 belowSubview:v13];

  if (v4)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__NTKBackgroundImageFaceView__startScrubbingAnimated_withCompletion___block_invoke;
    v14[3] = &unk_27877DB10;
    v14[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v14 animations:0.3];
  }
}

uint64_t __69__NTKBackgroundImageFaceView__startScrubbingAnimated_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foregroundContainerView];
  [v2 layoutIfNeeded];

  [*(a1 + 32) layoutComplicationViews];
  [*(*(a1 + 32) + 912) setAlpha:0.5];
  v3 = *(a1 + 32);

  return [v3 _startScrubbingAnimationFromUIViewAnimateWithDuration];
}

- (void)_scrubToDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = NTKBackgroundImageFaceView;
  v6 = a3;
  [(NTKFaceView *)&v10 _scrubToDate:v6 animated:v4];
  v7 = [(NTKFaceView *)self timeView:v10.receiver];
  v8 = v7;
  v9 = 0.3;
  if (!v4)
  {
    v9 = 0.0;
  }

  [v7 setOverrideDate:v6 duration:v9];
}

- (void)_endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(NTKFaceView *)self timeView];
  v8 = v7;
  v9 = 0.0;
  if (v4)
  {
    v9 = 0.3;
  }

  [v7 setOverrideDate:0 duration:v9];

  self->_shouldAdjustLayoutForTimeTravel = 0;
  [(NTKFaceView *)self _loadLayoutRules];
  v10 = [(NTKFaceView *)self foregroundContainerView];
  [v10 setNeedsLayout];

  if (v4)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__NTKBackgroundImageFaceView__endScrubbingAnimated_withCompletion___block_invoke;
    v13[3] = &unk_27877DB10;
    v13[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__NTKBackgroundImageFaceView__endScrubbingAnimated_withCompletion___block_invoke_2;
    v12[3] = &unk_2787802F8;
    v12[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v13 animations:v12 completion:0.3];
  }

  else
  {
    [(UIView *)self->_timeTravelDimmingOverlayView setAlpha:0.0];
    [(UIView *)self->_timeTravelDimmingOverlayView removeFromSuperview];
    [(NTKBackgroundImageFaceView *)self _endScrubbingAnimationFromUIViewAnimateWithDuration];
  }

  v11.receiver = self;
  v11.super_class = NTKBackgroundImageFaceView;
  [(NTKFaceView *)&v11 _endScrubbingAnimated:v4 withCompletion:v6];
}

uint64_t __67__NTKBackgroundImageFaceView__endScrubbingAnimated_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foregroundContainerView];
  [v2 layoutIfNeeded];

  [*(*(a1 + 32) + 912) setAlpha:0.0];
  v3 = *(a1 + 32);

  return [v3 _endScrubbingAnimationFromUIViewAnimateWithDuration];
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v3 = [(NTKFaceView *)self timeView];
  [v3 setHidden:{-[NTKFaceView showContentForUnadornedSnapshot](self, "showContentForUnadornedSnapshot")}];
}

- (void)_removeAllSubviewsFrom:(id)a3
{
  v3 = [a3 subviews];
  [v3 makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (CGPoint)timeViewZoomEndingCenter
{
  x = self->_timeViewZoomEndingCenter.x;
  y = self->_timeViewZoomEndingCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)vignetteZoomStartingBounds
{
  x = self->_vignetteZoomStartingBounds.origin.x;
  y = self->_vignetteZoomStartingBounds.origin.y;
  width = self->_vignetteZoomStartingBounds.size.width;
  height = self->_vignetteZoomStartingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)maskZoomStartingBounds
{
  x = self->_maskZoomStartingBounds.origin.x;
  y = self->_maskZoomStartingBounds.origin.y;
  width = self->_maskZoomStartingBounds.size.width;
  height = self->_maskZoomStartingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end