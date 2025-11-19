@interface CAMZoomSlider
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isAutozooming;
- (BOOL)shouldHideForExpiredVisibilityTimer;
- (CAMZoomSlider)initWithCoder:(id)a3;
- (CAMZoomSlider)initWithFrame:(CGRect)a3;
- (CAMZoomSlider)initWithLayoutStyle:(int64_t)a3;
- (CAMZoomSliderDelegate)delegate;
- (CGRect)maximumValueImageRectForBounds:(CGRect)a3;
- (CGRect)minimumValueImageRectForBounds:(CGRect)a3;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)alignmentRectInsets;
- (double)_thumbCenterXForValue:(float)a3 trackRect:(CGRect)a4;
- (float)_valueForThumbCenterX:(double)a3 trackRect:(CGRect)a4;
- (int64_t)locationOfTouch:(id)a3;
- (void)_beginAutozooming;
- (void)_commonCAMZoomSliderInitializationWithLayoutStyle:(int64_t)a3;
- (void)_endAutozooming;
- (void)_handleTouchUpInside:(id)a3;
- (void)_hideZoomSlider:(id)a3;
- (void)_makeInvisibleAnimationDuration:(double)a3;
- (void)_setMaximumAutozooming:(BOOL)a3;
- (void)_setMinimumAutozooming:(BOOL)a3;
- (void)_startVisibilityTimer;
- (void)_stopVisibilityTimer;
- (void)_updateAutozooming;
- (void)_updateForLayoutStyle;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)makeInvisibleAnimated:(BOOL)a3;
- (void)makeVisibleAnimated:(BOOL)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setVisibilityTimerSuspended:(BOOL)a3;
@end

@implementation CAMZoomSlider

- (void)_commonCAMZoomSliderInitializationWithLayoutStyle:(int64_t)a3
{
  self->_layoutStyle = a3;
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [(CAMZoomSlider *)self setBackgroundColor:v4];

  self->__autozooming = 0;
  self->_minimumAutozooming = 0;
  self->_maximumAutozooming = 0;
  [(CAMZoomSlider *)self _updateForLayoutStyle];
  [(CAMZoomSlider *)self addTarget:self action:sel__handleTouchUpInside_ forControlEvents:64];
  v9 = +[CAMCaptureCapabilities capabilities];
  if ([v9 allowHaptics])
  {
    v5 = [MEMORY[0x1E69DD4B0] sliderConfiguration];
    v6 = [v5 tweakedConfigurationForCaller:self usage:@"zoomSlider"];

    v7 = [MEMORY[0x1E69DD470] feedbackWithDictionaryRepresentation:&unk_1F16C8FE8];
    [v6 setUserInteractingThresholdFeedback:v7];

    [v6 setUserInteractingThresholdFeedbackUpdateBlock:&__block_literal_global];
    v8 = [objc_alloc(MEMORY[0x1E69DD4A8]) initWithConfiguration:v6];
    [v8 _setOutputMode:5];
    [(CAMZoomSlider *)self _setEdgeFeedbackGenerator:v8];
  }
}

void __67__CAMZoomSlider__commonCAMZoomSliderInitializationWithLayoutStyle___block_invoke(double a1, uint64_t a2, void *a3)
{
  if (a1 < 0.0)
  {
    a1 = -a1;
  }

  v3 = fmin(a1 * 0.0005, 0.475);
  if (v3 < 0.35)
  {
    v3 = 0.35;
  }

  v4 = v3;
  v6 = [a3 hapticParameters];
  *&v5 = v4;
  [v6 setVolume:v5];
}

- (CAMZoomSlider)initWithLayoutStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMZoomSlider;
  v4 = [(CAMZoomSlider *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMZoomSlider *)v4 _commonCAMZoomSliderInitializationWithLayoutStyle:a3];
    v6 = v5;
  }

  return v5;
}

- (CAMZoomSlider)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMZoomSlider *)self initWithLayoutStyle:v5];
}

- (CAMZoomSlider)initWithCoder:(id)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMZoomSlider *)self initWithLayoutStyle:v5];
}

- (void)dealloc
{
  [(NSTimer *)self->__visibilityTimer invalidate];
  visibilityTimer = self->__visibilityTimer;
  self->__visibilityTimer = 0;

  v4.receiver = self;
  v4.super_class = CAMZoomSlider;
  [(CAMZoomSlider *)&v4 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CAMZoomSlider *)self thumbImageForState:0];
  v3 = *MEMORY[0x1E69DE788];
  [v2 size];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v95.receiver = self;
  v95.super_class = CAMZoomSlider;
  [(CAMZoomSlider *)&v95 layoutSubviews];
  [(CAMZoomSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAMZoomSlider *)self trackRectForBounds:?];
  rect = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CAMZoomSlider *)self _shouldReverseLayoutDirection];
  [(CAMZoomSlider *)self value];
  v20 = v19;
  v21 = [(CAMZoomSlider *)self _minTrackView];
  v22 = [(CAMZoomSlider *)self _maxTrackView];
  if (v21)
  {
    minTrackMaskView = self->__minTrackMaskView;
    if (!minTrackMaskView)
    {
      v24 = objc_alloc(MEMORY[0x1E69DD250]);
      v25 = [v24 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v26 = self->__minTrackMaskView;
      self->__minTrackMaskView = v25;

      v27 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)self->__minTrackMaskView setBackgroundColor:v27];

      minTrackMaskView = self->__minTrackMaskView;
    }

    v28 = [(UIView *)minTrackMaskView layer];
    v29 = [v21 layer];
    [v29 setMask:v28];
  }

  if (v22)
  {
    maxTrackMaskView = self->__maxTrackMaskView;
    if (!maxTrackMaskView)
    {
      v31 = objc_alloc(MEMORY[0x1E69DD250]);
      v32 = [v31 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v33 = self->__maxTrackMaskView;
      self->__maxTrackMaskView = v32;

      v34 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)self->__maxTrackMaskView setBackgroundColor:v34];

      maxTrackMaskView = self->__maxTrackMaskView;
    }

    v35 = [(UIView *)maxTrackMaskView layer];
    v36 = [v22 layer];
    [v36 setMask:v35];
  }

  LODWORD(v88) = v20;
  [(CAMZoomSlider *)self thumbRectForBounds:v4 trackRect:v6 value:v8, v10, rect, v13, v15, v17, v88];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  [v21 bounds];
  [v21 convertRect:self toView:?];
  v46 = v45;
  v91 = v47;
  v92 = v48;
  v50 = v49;
  [v22 bounds];
  [v22 convertRect:self toView:?];
  v52 = v51;
  v90 = v53;
  v55 = v54;
  recta = v56;
  v96.origin.x = v38;
  v96.origin.y = v40;
  v96.size.width = v42;
  v96.size.height = v44;
  v89 = CGRectGetMinX(v96) + 1.0;
  v97.origin.x = v38;
  v97.origin.y = v40;
  v97.size.width = v42;
  v97.size.height = v44;
  v57 = CGRectGetMaxX(v97) + -1.0;
  v58 = v46;
  if (v18)
  {
    v60 = v91;
    v59 = v92;
    v61 = v91;
    v62 = v50;
    v63 = v92;
    v64 = v57 - CGRectGetMinX(*&v58);
    if (v64 > 0.0)
    {
      v50 = v50 - v64;
      v46 = v46 + v64;
    }

    v98.origin.x = v52;
    v65 = v90;
    v98.origin.y = v90;
    v98.size.width = v55;
    v98.size.height = recta;
    v66 = CGRectGetMaxX(v98) - v89;
    if (v66 > 0.0)
    {
      v55 = v55 - v66;
    }
  }

  else
  {
    v60 = v91;
    v59 = v92;
    v67 = v91;
    v68 = v50;
    v69 = v92;
    v65 = v90;
    v70 = CGRectGetMaxX(*&v58) - v89;
    if (v70 > 0.0)
    {
      v50 = v50 - v70;
    }

    v99.origin.x = v52;
    v99.origin.y = v90;
    v99.size.width = v55;
    v99.size.height = recta;
    v71 = v57 - CGRectGetMinX(v99);
    if (v71 > 0.0)
    {
      v55 = v55 - v71;
      v52 = v52 + v71;
    }
  }

  [(CAMZoomSlider *)self convertRect:v21 toView:v46, v60, v50, v59];
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  [(CAMZoomSlider *)self convertRect:v22 toView:v52, v65, v55, recta];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  [(UIView *)self->__minTrackMaskView setFrame:v73, v75, v77, v79];
  [(UIView *)self->__maxTrackMaskView setFrame:v81, v83, v85, v87];
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CAMZoomSlider *)self minimumValueImage];
  [v8 size];
  v29 = v9;
  v11 = v10;
  [(CAMZoomSlider *)self trackRectForBounds:x, y, width, height];
  CGRectGetMidY(v30);
  UIRoundToViewScale();
  v13 = v12;
  [(CAMZoomSlider *)self alignmentRectInsets];
  v15 = v14;
  v17 = v16;
  v18 = [(CAMZoomSlider *)self _shouldReverseLayoutDirection];
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  if (v18)
  {
    v23 = v29;
    v24 = CGRectGetMaxX(*&v19) - v29 - v17;
  }

  else
  {
    v24 = v15 + CGRectGetMinX(*&v19);
    v23 = v29;
  }

  v25 = v24;
  v26 = v13;
  v27 = v23;
  v28 = v11;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CAMZoomSlider *)self maximumValueImage];
  [v8 size];
  v29 = v9;
  v11 = v10;
  [(CAMZoomSlider *)self trackRectForBounds:x, y, width, height];
  CGRectGetMidY(v30);
  UIRoundToViewScale();
  v13 = v12;
  [(CAMZoomSlider *)self alignmentRectInsets];
  v15 = v14;
  v17 = v16;
  v18 = [(CAMZoomSlider *)self _shouldReverseLayoutDirection];
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  if (v18)
  {
    v23 = v15 + CGRectGetMinX(*&v19);
    v24 = v29;
  }

  else
  {
    v24 = v29;
    v23 = CGRectGetMaxX(*&v19) - v29 - v17;
  }

  v25 = v23;
  v26 = v13;
  v27 = v24;
  v28 = v11;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CAMZoomSlider *)self alignmentRectInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CAMZoomSlider *)self minimumValueImage];
  v15 = [(CAMZoomSlider *)self maximumValueImage];
  [v14 size];
  v17 = v16;
  [v15 size];
  v19 = v18;
  v20 = [(CAMZoomSlider *)self _shouldReverseLayoutDirection];
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  if (v20)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  v23 = v9 + v21 + 20.0;
  v24 = x + v23;
  v25 = y + v7;
  v26 = width - (v23 + v13 + v22 + 20.0);
  v27 = height - (v7 + v11);
  v28 = [(CAMZoomSlider *)self minimumTrackImageForState:0];
  [v28 size];
  v30 = v29;
  v39.origin.x = v24;
  v39.origin.y = v25;
  v39.size.width = v26;
  v39.size.height = v27;
  CGRectGetMidY(v39);
  UIRoundToViewScale();
  v32 = v31;

  v33 = v24;
  v34 = v32;
  v35 = v26;
  v36 = v30;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(CAMZoomSlider *)self thumbImageForState:0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [v10 size];
  v12 = v11;
  v14 = v13;
  *&v11 = a5;
  [(CAMZoomSlider *)self _thumbCenterXForValue:v11 trackRect:x, y, width, height];
  v16 = v15;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v28 = v16;
  MidY = CGRectGetMidY(v30);
  v25 = *MEMORY[0x1E695EFF8];
  v26 = v12;
  v27 = v14;
  [CAMView ceilBounds:&v25 andRoundCenter:&v28 toViewScale:self];
  v17 = v26;
  v18 = v27;
  v19 = v28 - v26 * 0.5;
  v20 = MidY - v27 * 0.5;

  v21 = v19;
  v22 = v20;
  v23 = v17;
  v24 = v18;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)_thumbCenterXForValue:(float)a3 trackRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(CAMZoomSlider *)self minimumValue];
  v11 = v10;
  [(CAMZoomSlider *)self maximumValue];
  v13 = (a3 - v11) / (v12 - v11);
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  if (v13 <= 1.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1.0;
  }

  if ([(CAMZoomSlider *)self _shouldReverseLayoutDirection])
  {
    v14 = 1.0 - v14;
  }

  [(CAMZoomSlider *)self _thumbCenterMinimumXForTrackRect:x, y, width, height];
  v16 = v15;
  [(CAMZoomSlider *)self _thumbCenterMaximumXForTrackRect:x, y, width, height];
  return v16 + v14 * (v17 - v16);
}

- (float)_valueForThumbCenterX:(double)a3 trackRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(CAMZoomSlider *)self _thumbCenterMinimumXForTrackRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v11 = v10;
  [(CAMZoomSlider *)self _thumbCenterMaximumXForTrackRect:x, y, width, height];
  *&width = (a3 - v11) / (v12 - v11);
  [(CAMZoomSlider *)self minimumValue];
  v14 = v13;
  [(CAMZoomSlider *)self maximumValue];
  v16 = v14 + (*&width * (result - v14));
  if (v16 < v14)
  {
    v16 = v14;
  }

  if (v16 <= result)
  {
    return v16;
  }

  return result;
}

- (int64_t)locationOfTouch:(id)a3
{
  [a3 locationInView:self];
  v50 = v5;
  v51 = v4;
  [(CAMZoomSlider *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CAMZoomSlider *)self minimumValueImageRectForBounds:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v48 = v9;
  v49 = v7;
  v46 = v13;
  v47 = v11;
  [(CAMZoomSlider *)self maximumValueImageRectForBounds:v7, v9, v11, v13];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v55.origin.x = v15;
  v55.origin.y = v17;
  v55.size.width = v19;
  v55.size.height = v21;
  v56 = CGRectInset(v55, -15.0, -15.0);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v56.origin.x = v23;
  v56.origin.y = v25;
  v56.size.width = v27;
  v56.size.height = v29;
  v57 = CGRectInset(v56, -15.0, -15.0);
  v34 = v57.origin.x;
  v35 = v57.origin.y;
  v36 = v57.size.width;
  v37 = v57.size.height;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v52.x = v51;
  v52.y = v50;
  if (CGRectContainsPoint(v57, v52))
  {
    return 3;
  }

  v58.origin.x = v34;
  v58.origin.y = v35;
  v58.size.width = v36;
  v58.size.height = v37;
  v53.x = v51;
  v53.y = v50;
  if (CGRectContainsPoint(v58, v53))
  {
    return 4;
  }

  v59.origin.x = v49;
  v59.origin.y = v48;
  v59.size.width = v47;
  v59.size.height = v46;
  v54.x = v51;
  v54.y = v50;
  if (!CGRectContainsPoint(v59, v54))
  {
    return 0;
  }

  [(CAMZoomSlider *)self value];
  v40 = v39;
  [(CAMZoomSlider *)self trackRectForBounds:v49, v48, v47, v46];
  LODWORD(v45) = v40;
  [(CAMZoomSlider *)self thumbRectForBounds:v49 trackRect:v48 value:v47, v46, v41, v42, v43, v44, v45];
  if (vabdd_f64(CGRectGetMidX(v60), v51) > 40.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CAMZoomSlider;
  if ([(CAMZoomSlider *)&v10 beginTrackingWithTouch:v6 withEvent:a4])
  {
    goto LABEL_2;
  }

  v9 = [(CAMZoomSlider *)self locationOfTouch:v6];
  switch(v9)
  {
    case 2:
      goto LABEL_2;
    case 4:
      [(CAMZoomSlider *)self _setMaximumAutozooming:1];
      goto LABEL_2;
    case 3:
      [(CAMZoomSlider *)self _setMinimumAutozooming:1];
LABEL_2:
      v7 = 1;
      [(CAMZoomSlider *)self setVisibilityTimerSuspended:1];
      goto LABEL_3;
  }

  if ([(NSTimer *)self->__visibilityTimer isValid])
  {
    [(CAMZoomSlider *)self _startVisibilityTimer];
  }

  v7 = 0;
LABEL_3:

  return v7;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CAMZoomSlider *)self isAutozooming])
  {
    [v6 previousLocationInView:self];
    v9 = v8;
    v11 = v10;
    [v6 locationInView:self];
    v13 = v12;
    v14 = vabdd_f64(v12, v9);
    if (v14 > vabdd_f64(v15, v11) && v14 > 20.0)
    {
      if ([(CAMZoomSlider *)self isMinimumAutozooming]&& v13 > v9)
      {
        [(CAMZoomSlider *)self _setMinimumAutozooming:0];
      }

      else if ([(CAMZoomSlider *)self isMaximumAutozooming]&& v13 < v9)
      {
        [(CAMZoomSlider *)self _setMaximumAutozooming:0];
      }
    }
  }

  if ([(CAMZoomSlider *)self isAutozooming])
  {
    v17 = 1;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CAMZoomSlider;
    v17 = [(CAMZoomSlider *)&v19 continueTrackingWithTouch:v6 withEvent:v7];
  }

  return v17;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CAMZoomSlider *)self isAutozooming])
  {
    [(CAMZoomSlider *)self _setMinimumAutozooming:0];
    [(CAMZoomSlider *)self _setMaximumAutozooming:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CAMZoomSlider;
    [(CAMZoomSlider *)&v8 endTrackingWithTouch:v6 withEvent:v7];
  }

  [(CAMZoomSlider *)self setVisibilityTimerSuspended:0];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  [(CAMZoomSlider *)self setVisibilityTimerSuspended:0];
  v5.receiver = self;
  v5.super_class = CAMZoomSlider;
  [(CAMZoomSlider *)&v5 cancelTrackingWithEvent:v4];
}

- (void)_setMinimumAutozooming:(BOOL)a3
{
  if (self->_minimumAutozooming != a3)
  {
    self->_minimumAutozooming = a3;
    [(CAMZoomSlider *)self _updateAutozooming];
  }
}

- (void)_setMaximumAutozooming:(BOOL)a3
{
  if (self->_maximumAutozooming != a3)
  {
    self->_maximumAutozooming = a3;
    [(CAMZoomSlider *)self _updateAutozooming];
  }
}

- (BOOL)isAutozooming
{
  if ([(CAMZoomSlider *)self isMinimumAutozooming])
  {
    return 1;
  }

  return [(CAMZoomSlider *)self isMaximumAutozooming];
}

- (void)_beginAutozooming
{
  if (!self->__autozooming)
  {
    self->__autozooming = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 zoomSliderDidBeginAutozooming:self];
      }
    }
  }
}

- (void)_updateAutozooming
{
  if ([(CAMZoomSlider *)self isAutozooming])
  {

    [(CAMZoomSlider *)self _beginAutozooming];
  }

  else
  {

    [(CAMZoomSlider *)self _endAutozooming];
  }
}

- (void)_endAutozooming
{
  if (self->__autozooming)
  {
    self->__autozooming = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 zoomSliderDidEndAutozooming:self];
      }
    }
  }
}

- (BOOL)shouldHideForExpiredVisibilityTimer
{
  v3 = [objc_opt_class() shouldFadeOutZoomSliderForLayoutStyle:{-[CAMZoomSlider layoutStyle](self, "layoutStyle")}];
  v4 = [(CAMZoomSlider *)self isVisibilityTimerSuspended];
  return v3 & ((v4 | [(NSTimer *)self->__visibilityTimer isValid]) ^ 1);
}

- (void)setVisibilityTimerSuspended:(BOOL)a3
{
  if (self->_visibilityTimerSuspended != a3)
  {
    self->_visibilityTimerSuspended = a3;
    if (a3)
    {
      [(CAMZoomSlider *)self _stopVisibilityTimer];
    }

    else
    {
      [(CAMZoomSlider *)self _startVisibilityTimer];
    }
  }
}

- (void)_startVisibilityTimer
{
  [(CAMZoomSlider *)self _stopVisibilityTimer];
  if ([objc_opt_class() shouldFadeOutZoomSliderForLayoutStyle:{-[CAMZoomSlider layoutStyle](self, "layoutStyle")}] && !-[CAMZoomSlider isVisibilityTimerSuspended](self, "isVisibilityTimerSuspended"))
  {
    v3 = objc_alloc(MEMORY[0x1E695DFF0]);
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
    v5 = [v3 initWithFireDate:v4 interval:self target:sel__hideZoomSlider_ selector:0 userInfo:0 repeats:0.0];
    visibilityTimer = self->__visibilityTimer;
    self->__visibilityTimer = v5;

    v7 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v7 addTimer:self->__visibilityTimer forMode:*MEMORY[0x1E695E8E0]];
  }
}

- (void)_stopVisibilityTimer
{
  visibilityTimer = self->__visibilityTimer;
  if (visibilityTimer && [(NSTimer *)visibilityTimer isValid])
  {
    [(NSTimer *)self->__visibilityTimer invalidate];
    v4 = self->__visibilityTimer;
    self->__visibilityTimer = 0;
  }
}

- (void)makeVisibleAnimated:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.05;
  }

  else
  {
    v4 = 0.0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CAMZoomSlider_makeVisibleAnimated___block_invoke;
  v8[3] = &unk_1E76F77B0;
  v8[4] = self;
  [CAMView animateIfNeededWithDuration:v8 animations:v4];
  [(CAMZoomSlider *)self _startVisibilityTimer];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 willShowZoomSlider:self withAnimationDuration:v4];
  }
}

- (void)makeInvisibleAnimated:(BOOL)a3
{
  v3 = 0.1;
  if (!a3)
  {
    v3 = 0.0;
  }

  [(CAMZoomSlider *)self _makeInvisibleAnimationDuration:v3];
}

- (void)_makeInvisibleAnimationDuration:(double)a3
{
  [(CAMZoomSlider *)self _stopVisibilityTimer];
  if (([(CAMZoomSlider *)self isHidden]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    [(CAMZoomSlider *)self alpha];
    v5 = v6 == 0.0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CAMZoomSlider__makeInvisibleAnimationDuration___block_invoke;
  v10[3] = &unk_1E76F77B0;
  v10[4] = self;
  [CAMView animateIfNeededWithDuration:v10 animations:a3];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 willHideZoomSlider:self withAnimationDuration:a3];
    }
  }
}

- (void)_hideZoomSlider:(id)a3
{
  if (([(CAMZoomSlider *)self isTracking]& 1) == 0)
  {
    [(CAMZoomSlider *)self _stopVisibilityTimer];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__CAMZoomSlider__hideZoomSlider___block_invoke;
    v7[3] = &unk_1E76F77B0;
    v7[4] = self;
    [CAMView animateIfNeededWithDuration:v7 animations:0.5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 willHideZoomSlider:self withAnimationDuration:0.5];
    }
  }
}

- (void)_handleTouchUpInside:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained zoomSliderDidEndZooming:self];
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMZoomSlider *)self _updateForLayoutStyle];
  }
}

- (void)_updateForLayoutStyle
{
  v3 = [(CAMZoomSlider *)self layoutStyle];
  if (v3 == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  [(CAMZoomSlider *)self setSemanticContentAttribute:v4];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = CAMCameraUIFrameworkBundle();
  v7 = [v5 imageNamed:@"CAMZoomSliderThumb" inBundle:v6];
  v8 = [MEMORY[0x1E69DC888] systemYellowColor];
  v28 = [v7 imageWithTintColor:v8];

  v9 = MEMORY[0x1E69DCAB8];
  v10 = CAMCameraUIFrameworkBundle();
  v11 = [v9 imageNamed:@"CAMZoomSliderTrack" inBundle:v10];

  v12 = MEMORY[0x1E69DCAB8];
  v13 = CAMCameraUIFrameworkBundle();
  v14 = [v12 imageNamed:@"CAMZoomSliderPlus" inBundle:v13];
  v15 = [MEMORY[0x1E69DC888] whiteColor];
  v16 = [v14 imageWithTintColor:v15];

  v17 = MEMORY[0x1E69DCAB8];
  v18 = CAMCameraUIFrameworkBundle();
  v19 = [v17 imageNamed:@"CAMZoomSliderMinus" inBundle:v18];

  [v11 size];
  v22 = [v11 resizableImageWithCapInsets:1 resizingMode:{v20 * 0.5, v21 * 0.5, v20 * 0.5, v21 * 0.5}];
  if (v3 == 1)
  {
    v23 = MEMORY[0x1E69DCAB8];
    v24 = [v19 CGImage];
    [v19 scale];
    v25 = [v23 imageWithCGImage:v24 scale:2 orientation:?];

    v19 = v25;
  }

  v26 = [MEMORY[0x1E69DC888] whiteColor];
  v27 = [v19 imageWithTintColor:v26];

  [(CAMZoomSlider *)self setThumbImage:v28 forState:0];
  [(CAMZoomSlider *)self setMinimumTrackImage:v22 forState:0];
  [(CAMZoomSlider *)self setMaximumTrackImage:v22 forState:0];
  [(CAMZoomSlider *)self setMaximumValueImage:v16];
  [(CAMZoomSlider *)self setMinimumValueImage:v27];
  [(CAMZoomSlider *)self setNeedsLayout];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v8[7] = v4;
    v8[8] = v5;
    v6 = a4;
    self->_orientation = a3;
    [(CAMZoomSlider *)self setNeedsLayout];
    if (v6)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__CAMZoomSlider_setOrientation_animated___block_invoke;
      v8[3] = &unk_1E76F77B0;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 options:0 animations:0.3 completion:0.0];
    }
  }
}

- (CAMZoomSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end