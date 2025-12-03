@interface NTKBackgroundImageFaceView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGPoint)timeViewZoomEndingCenter;
- (CGRect)maskZoomStartingBounds;
- (CGRect)vignetteZoomStartingBounds;
- (double)_backgroundImageAlphaForEditMode:(int64_t)mode;
- (double)_timeLabelAlphaForEditMode:(int64_t)mode;
- (double)_timeTravelYAdjustment;
- (id)_complicationDisplayWrapperForTouch:(id)touch;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (id)_updateFontInStyle:(id)style monospace:(BOOL)monospace;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyScaleTransform:(id)transform;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_removeAllSubviewsFrom:(id)from;
- (void)_scrubToDate:(id)date animated:(BOOL)animated;
- (void)_startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_unloadSnapshotContentViews;
- (void)setViewMode:(int64_t)mode;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation NTKBackgroundImageFaceView

- (void)_loadSnapshotContentViews
{
  v20.receiver = self;
  v20.super_class = NTKBackgroundImageFaceView;
  [(NTKDigitalFaceView *)&v20 _loadSnapshotContentViews];
  timeView = [(NTKFaceView *)self timeView];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [timeView setTextColor:whiteColor];

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [(NTKBackgroundImageFaceView *)self bounds];
  v6 = [v5 initWithFrame:?];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = v6;

  [(UIView *)self->_backgroundContainerView setAutoresizingMask:18];
  contentView = [(NTKFaceView *)self contentView];
  v9 = self->_backgroundContainerView;
  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  [contentView insertSubview:v9 belowSubview:foregroundContainerView];

  _selectedContentView = [(NTKBackgroundImageFaceView *)self _selectedContentView];
  selectedContentView = self->_selectedContentView;
  self->_selectedContentView = _selectedContentView;

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
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v17 setBackgroundColor:blackColor];

  [(UIView *)self->_transitionDimmingView setAlpha:0.0];
  contentView2 = [(NTKFaceView *)self contentView];
  [contentView2 addSubview:self->_transitionDimmingView];

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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [touchCopy view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NTKBackgroundImageFaceView *)self _complicationDisplayWrapperForTouch:touchCopy];
    v7 = v8 == 0;
  }

  return v7;
}

- (id)_complicationDisplayWrapperForTouch:(id)touch
{
  touchCopy = touch;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = 0;
  [touchCopy locationInView:self];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  anyObject = [began anyObject];
  v6 = [(NTKBackgroundImageFaceView *)self _complicationDisplayWrapperForTouch:anyObject];
  touchWrapper = self->_touchWrapper;
  self->_touchWrapper = v6;

  v8 = self->_touchWrapper;
  if (v8)
  {
    display = [(NTKComplicationDisplayWrapperView *)v8 display];
    [display setHighlighted:1];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  anyObject = [moved anyObject];
  obj = [(NTKBackgroundImageFaceView *)self _complicationDisplayWrapperForTouch:anyObject];

  v6 = obj;
  touchWrapper = self->_touchWrapper;
  if (obj != touchWrapper)
  {
    if (touchWrapper)
    {
      display = [(NTKComplicationDisplayWrapperView *)touchWrapper display];
      [display setHighlighted:0];

      v6 = obj;
    }

    if (v6)
    {
      display2 = [(NTKComplicationDisplayWrapperView *)v6 display];
      [display2 setHighlighted:1];
    }

    objc_storeStrong(&self->_touchWrapper, obj);
    v6 = obj;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  touchWrapper = self->_touchWrapper;
  if (touchWrapper)
  {
    v6 = [(NTKComplicationDisplayWrapperView *)touchWrapper display:ended];
    [v6 setHighlighted:0];

    if ([(NTKComplicationDisplayWrapperView *)self->_touchWrapper tapEnabled])
    {
      touchUpInsideHandler = [(NTKComplicationDisplayWrapperView *)self->_touchWrapper touchUpInsideHandler];

      if (touchUpInsideHandler)
      {
        touchUpInsideHandler2 = [(NTKComplicationDisplayWrapperView *)self->_touchWrapper touchUpInsideHandler];
        display = [(NTKComplicationDisplayWrapperView *)self->_touchWrapper display];
        (touchUpInsideHandler2)[2](touchUpInsideHandler2, display);
      }
    }

    v10 = self->_touchWrapper;
    self->_touchWrapper = 0;
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  touchWrapper = self->_touchWrapper;
  if (touchWrapper)
  {
    v6 = [(NTKComplicationDisplayWrapperView *)touchWrapper display:cancelled];
    [v6 setHighlighted:0];

    v7 = self->_touchWrapper;
    self->_touchWrapper = 0;
  }
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  [(NTKBackgroundImageFaceView *)self bounds:mode];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKFaceView *)self device];
  v14 = NTKDigitalTimeLabelStyleWideRightSideMargin(device);
  device2 = [(NTKFaceView *)self device];
  v16 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:device2 applyAdvanceFudge:v6 forDevice:v8, v10, v12, v14];

  return v16;
}

- (id)_updateFontInStyle:(id)style monospace:(BOOL)monospace
{
  monospaceCopy = monospace;
  styleCopy = style;
  v6 = styleCopy;
  if (monospaceCopy)
  {
    v7 = [styleCopy copy];
    v8 = MEMORY[0x277CBBB08];
    threeDigitFont = [v6 threeDigitFont];
    [threeDigitFont pointSize];
    v10 = [v8 systemFontOfSize:?];
    cLKFontWithMonospacedNumbers = [v10 CLKFontWithMonospacedNumbers];

    [v7 setFourDigitFont:cLKFontWithMonospacedNumbers];
    [v7 setThreeDigitFont:cLKFontWithMonospacedNumbers];
  }

  else
  {
    v7 = styleCopy;
  }

  return v7;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKBackgroundImageFaceView *)self _backgroundImageAlphaForEditMode:?];
  [(NTKBackgroundImageFaceView *)self _backgroundImageAlphaForEditMode:editMode];
  _selectedContentView = [(NTKBackgroundImageFaceView *)self _selectedContentView];
  CLKInterpolateBetweenFloatsClipped();
  [_selectedContentView setAlpha:?];

  [(NTKBackgroundImageFaceView *)self _timeLabelAlphaForEditMode:mode];
  [(NTKBackgroundImageFaceView *)self _timeLabelAlphaForEditMode:editMode];
  timeView = [(NTKFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];
}

- (void)_configureForEditMode:(int64_t)mode
{
  _selectedContentView = [(NTKBackgroundImageFaceView *)self _selectedContentView];
  [(NTKBackgroundImageFaceView *)self _backgroundImageAlphaForEditMode:mode];
  [_selectedContentView setAlpha:?];

  timeView = [(NTKFaceView *)self timeView];
  [(NTKBackgroundImageFaceView *)self _timeLabelAlphaForEditMode:mode];
  [timeView setAlpha:?];
}

- (double)_backgroundImageAlphaForEditMode:(int64_t)mode
{
  result = 0.4;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeLabelAlphaForEditMode:(int64_t)mode
{
  result = 0.2;
  if (!mode)
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
  device = [(NTKFaceView *)self device];
  [device screenCornerRadius];
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

- (void)setViewMode:(int64_t)mode
{
  v3.receiver = self;
  v3.super_class = NTKBackgroundImageFaceView;
  [(NTKDigitalFaceView *)&v3 setViewMode:mode];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  if ([optionCopy isEqual:toOptionCopy])
  {
    if ([toOptionCopy isEqual:self->_editOptionFrom])
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

    if ([toOptionCopy isEqual:self->_editOptionTo])
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
    device = [(NTKFaceView *)self device];
    [device screenCornerRadius];
    v18 = v17;

    [(UIView *)self->_transitionViewFrom setHidden:0];
    [(UIView *)self->_transitionViewTo setHidden:0];
    [(NTKBackgroundImageFaceView *)self _beginTransitionToOption];
    v19 = [(NTKEditOption *)self->_editOptionTo isEqual:toOptionCopy];
    v20 = MEMORY[0x277CBF2C0];
    if ((v19 & 1) == 0)
    {
      objc_storeStrong(&self->_editOptionTo, toOption);
      [(UIView *)self->_transitionViewTo removeFromSuperview];
      v21 = [(NTKBackgroundImageFaceView *)self _viewForEditOption:toOptionCopy];
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

    if (([(NTKEditOption *)self->_editOptionFrom isEqual:optionCopy]& 1) == 0)
    {
      objc_storeStrong(&self->_editOptionFrom, option);
      [(UIView *)self->_transitionViewFrom removeFromSuperview];
      v27 = [(NTKBackgroundImageFaceView *)self _viewForEditOption:optionCopy];
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
    CGAffineTransformMakeTranslation(&v50, 0.0, -(fraction * v33));
    v34 = [(UIView *)v32 setTransform:&v50];
    v35.f64[0] = 0.0;
    v36.f64[0] = 0.0;
    v37.f64[0] = 1.0;
    v46 = NTKFindCubicBezierPoint(fraction, v35, 0.0, v36, 0.0, v37, 0.0, v34, v38, v39, v40, v41, v42, v43, v44, v45);
    v47 = self->_transitionViewTo;
    CGAffineTransformMakeScale(&v50, (1.0 - v46) * -0.1 + 1.0, (1.0 - v46) * -0.1 + 1.0);
    [(UIView *)v47 setTransform:&v50, 0x3FF0000000000000, 0];
  }

LABEL_14:
}

- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  [(UIView *)self->_transitionViewFrom removeFromSuperview:option];
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

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  self->_breathScaleModifier = NTKLargeElementScaleForBreathingFraction(fraction);
  backgroundContainerView = self->_backgroundContainerView;

  [(NTKBackgroundImageFaceView *)self _applyScaleTransform:backgroundContainerView];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8 = NTKScaleForRubberBandingFraction(fraction);
  v9 = NTKAlphaForRubberBandingFraction(fraction);
  [(NTKBackgroundImageFaceView *)self _backgroundImageAlphaForEditMode:mode];
  v11 = v9 * v10;
  self->_rubberBandScaleModifier = v8;
  [(NTKBackgroundImageFaceView *)self _applyScaleTransform:self->_backgroundContainerView];
  transitionDimmingView = self->_transitionDimmingView;

  [(UIView *)transitionDimmingView setAlpha:1.0 - v11];
}

- (void)_applyScaleTransform:(id)transform
{
  v3 = self->_breathScaleModifier * self->_rubberBandScaleModifier;
  transformCopy = transform;
  CGAffineTransformMakeScale(&v5, v3, v3);
  [transformCopy setTransform:&v5];
}

- (double)_timeTravelYAdjustment
{
  device = [(NTKFaceView *)self device];
  if ([device sizeClass])
  {
    v3 = 13.5;
  }

  else
  {
    v3 = 12.5;
  }

  return v3;
}

- (void)_startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  v15.receiver = self;
  v15.super_class = NTKBackgroundImageFaceView;
  [(NTKFaceView *)&v15 _startScrubbingAnimated:animated withCompletion:completion];
  self->_shouldAdjustLayoutForTimeTravel = 1;
  [(NTKFaceView *)self _loadLayoutRules];
  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  [foregroundContainerView setNeedsLayout];

  timeTravelDimmingOverlayView = self->_timeTravelDimmingOverlayView;
  if (!timeTravelDimmingOverlayView)
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKBackgroundImageFaceView *)self bounds];
    v9 = [v8 initWithFrame:?];
    v10 = self->_timeTravelDimmingOverlayView;
    self->_timeTravelDimmingOverlayView = v9;

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)self->_timeTravelDimmingOverlayView setBackgroundColor:blackColor];

    timeTravelDimmingOverlayView = self->_timeTravelDimmingOverlayView;
  }

  [(UIView *)timeTravelDimmingOverlayView setAlpha:0.0];
  v12 = self->_timeTravelDimmingOverlayView;
  foregroundContainerView2 = [(NTKFaceView *)self foregroundContainerView];
  [(NTKBackgroundImageFaceView *)self insertSubview:v12 belowSubview:foregroundContainerView2];

  if (animatedCopy)
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

- (void)_scrubToDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  v10.receiver = self;
  v10.super_class = NTKBackgroundImageFaceView;
  dateCopy = date;
  [(NTKFaceView *)&v10 _scrubToDate:dateCopy animated:animatedCopy];
  v7 = [(NTKFaceView *)self timeView:v10.receiver];
  v8 = v7;
  v9 = 0.3;
  if (!animatedCopy)
  {
    v9 = 0.0;
  }

  [v7 setOverrideDate:dateCopy duration:v9];
}

- (void)_endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  timeView = [(NTKFaceView *)self timeView];
  v8 = timeView;
  v9 = 0.0;
  if (animatedCopy)
  {
    v9 = 0.3;
  }

  [timeView setOverrideDate:0 duration:v9];

  self->_shouldAdjustLayoutForTimeTravel = 0;
  [(NTKFaceView *)self _loadLayoutRules];
  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  [foregroundContainerView setNeedsLayout];

  if (animatedCopy)
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
  [(NTKFaceView *)&v11 _endScrubbingAnimated:animatedCopy withCompletion:completionCopy];
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
  timeView = [(NTKFaceView *)self timeView];
  [timeView setHidden:{-[NTKFaceView showContentForUnadornedSnapshot](self, "showContentForUnadornedSnapshot")}];
}

- (void)_removeAllSubviewsFrom:(id)from
{
  subviews = [from subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
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