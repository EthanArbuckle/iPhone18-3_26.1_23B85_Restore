@interface CAMPhotoVideoModeSwitch
- (CAMPhotoVideoModeSwitch)initWithFrame:(CGRect)a3;
- (CGRect)knobFrame;
- (double)_knobXPosition;
- (double)_trackBorderWidth;
- (double)_trackColorAlpha;
- (double)_trackColorWhite;
- (void)_swipe:(id)a3;
- (void)_touchCancel:(id)a3;
- (void)_touchCommit:(id)a3;
- (void)_touchStart:(id)a3;
- (void)_updateAnimatedValuesWithAnimator:(id)a3;
- (void)_updateKnobAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setMode:(unint64_t)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)toggleModeAnimated:(BOOL)a3;
@end

@implementation CAMPhotoVideoModeSwitch

- (CAMPhotoVideoModeSwitch)initWithFrame:(CGRect)a3
{
  v57.receiver = self;
  v57.super_class = CAMPhotoVideoModeSwitch;
  v3 = [(CAMPhotoVideoModeSwitch *)&v57 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_mode = 0;
    v56 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"camera.fill" withConfiguration:v56];
    v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
    photoImageView = v4->__photoImageView;
    v4->__photoImageView = v6;

    v8 = [MEMORY[0x1E69DC888] blackColor];
    v9 = [v8 CGColor];
    v10 = [(UIImageView *)v4->__photoImageView layer];
    [v10 setShadowColor:v9];

    v11 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v4->__photoImageView setTintColor:v11];

    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    v14 = [(UIImageView *)v4->__photoImageView layer];
    [v14 setShadowOffset:{v12, v13}];

    v15 = [(UIImageView *)v4->__photoImageView layer];
    [v15 setShadowRadius:2.0];

    v16 = [(UIImageView *)v4->__photoImageView layer];
    LODWORD(v17) = 1051931443;
    [v16 setShadowOpacity:v17];

    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video.fill" withConfiguration:v56];
    v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
    videoImageView = v4->__videoImageView;
    v4->__videoImageView = v19;

    v21 = [MEMORY[0x1E69DC888] blackColor];
    v22 = [v21 CGColor];
    v23 = [(UIImageView *)v4->__videoImageView layer];
    [v23 setShadowColor:v22];

    v24 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v4->__videoImageView setTintColor:v24];

    v25 = [(UIImageView *)v4->__videoImageView layer];
    [v25 setShadowOffset:{v12, v13}];

    v26 = [(UIImageView *)v4->__videoImageView layer];
    [v26 setShadowRadius:2.0];

    v27 = [(UIImageView *)v4->__videoImageView layer];
    LODWORD(v28) = 1051931443;
    [v27 setShadowOpacity:v28];

    v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
    knobSelectionPhotoImageView = v4->__knobSelectionPhotoImageView;
    v4->__knobSelectionPhotoImageView = v29;

    v31 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
    [(UIImageView *)v4->__knobSelectionPhotoImageView setTintColor:v31];

    v32 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
    knobSelectionVideoImageView = v4->__knobSelectionVideoImageView;
    v4->__knobSelectionVideoImageView = v32;

    v34 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
    [(UIImageView *)v4->__knobSelectionVideoImageView setTintColor:v34];

    [(UIImageView *)v4->__knobSelectionVideoImageView setAlpha:0.0];
    v35 = objc_alloc_init(MEMORY[0x1E69DD250]);
    track = v4->__track;
    v4->__track = v35;

    [(UIView *)v4->__track setUserInteractionEnabled:0];
    v37 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.11];
    v38 = [v37 CGColor];
    v39 = [(UIView *)v4->__track layer];
    [v39 setBorderColor:v38];

    [(CAMPhotoVideoModeSwitch *)v4 _trackBorderWidth];
    v41 = v40;
    v42 = [(UIView *)v4->__track layer];
    [v42 setBorderWidth:v41];

    v43 = MEMORY[0x1E69DC888];
    [(CAMPhotoVideoModeSwitch *)v4 _trackColorWhite];
    v45 = v44;
    [(CAMPhotoVideoModeSwitch *)v4 _trackColorAlpha];
    v47 = [v43 colorWithWhite:v45 alpha:v46];
    [(UIView *)v4->__track setBackgroundColor:v47];

    v48 = objc_alloc_init(MEMORY[0x1E69DD250]);
    knob = v4->__knob;
    v4->__knob = v48;

    [(UIView *)v4->__knob setUserInteractionEnabled:0];
    v50 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4->__knob setBackgroundColor:v50];

    [(UIView *)v4->__knob addSubview:v4->__knobSelectionPhotoImageView];
    [(UIView *)v4->__knob addSubview:v4->__knobSelectionVideoImageView];
    [(CAMPhotoVideoModeSwitch *)v4 addSubview:v4->__track];
    [(CAMPhotoVideoModeSwitch *)v4 addSubview:v4->__photoImageView];
    [(CAMPhotoVideoModeSwitch *)v4 addSubview:v4->__videoImageView];
    [(CAMPhotoVideoModeSwitch *)v4 addSubview:v4->__knob];
    v51 = objc_alloc_init(MEMORY[0x1E6993808]);
    animator = v4->__animator;
    v4->__animator = v51;

    [(CEKAdditiveAnimator *)v4->__animator setDelegate:v4];
    [(CAMPhotoVideoModeSwitch *)v4 addTarget:v4 action:sel__touchStart_ forControlEvents:17];
    [(CAMPhotoVideoModeSwitch *)v4 addTarget:v4 action:sel__touchCommit_ forControlEvents:64];
    [(CAMPhotoVideoModeSwitch *)v4 addTarget:v4 action:sel__touchCancel_ forControlEvents:416];
    v53 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:v4 action:sel__swipe_];
    [v53 setDirection:2];
    [(CAMPhotoVideoModeSwitch *)v4 addGestureRecognizer:v53];
    v54 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:v4 action:sel__swipe_];
    [v54 setDirection:1];
    [(CAMPhotoVideoModeSwitch *)v4 addGestureRecognizer:v54];
  }

  return v4;
}

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = CAMPhotoVideoModeSwitch;
  [(CAMPhotoVideoModeSwitch *)&v45 layoutSubviews];
  v3 = [(CAMPhotoVideoModeSwitch *)self _photoImageView];
  v44 = CAMViewAlignmentSize(v3);
  v5 = v4;

  v6 = [(CAMPhotoVideoModeSwitch *)self _videoImageView];
  v43 = CAMViewAlignmentSize(v6);
  v8 = v7;

  [(CAMPhotoVideoModeSwitch *)self bounds];
  v10 = v9;
  v12 = v11 * 0.5;
  v13 = v11 * 0.5 + -14.0;
  v14 = [(CAMPhotoVideoModeSwitch *)self _track];
  [v14 setFrame:{0.0, v13, v10, 28.0}];

  [(CAMPhotoVideoModeSwitch *)self knobFrame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(CAMPhotoVideoModeSwitch *)self _knob];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(CAMPhotoVideoModeSwitch *)self _photoImageView];
  [v24 setFrame:{12.0, v12 - v5 * 0.5, v44, v5}];

  v25 = [(CAMPhotoVideoModeSwitch *)self _videoImageView];
  [v25 setFrame:{v10 - v43 + -12.0, v12 - v8 * 0.5, v43, v8}];

  v26 = [(CAMPhotoVideoModeSwitch *)self _knob];
  [v26 bounds];
  UIRectGetCenter();
  v28 = v27;
  v30 = v29;

  v31 = [(CAMPhotoVideoModeSwitch *)self _knobSelectionPhotoImageView];
  [v31 setCenter:{v28, v30}];

  v32 = [(CAMPhotoVideoModeSwitch *)self _knobSelectionVideoImageView];
  [v32 setCenter:{v28, v30}];

  v33 = [(CAMPhotoVideoModeSwitch *)self _track];
  [v33 bounds];
  v35 = v34 * 0.5;
  v36 = [(CAMPhotoVideoModeSwitch *)self _track];
  v37 = [v36 layer];
  [v37 setCornerRadius:v35];

  v38 = [(CAMPhotoVideoModeSwitch *)self _knob];
  [v38 bounds];
  v40 = v39 * 0.5;
  v41 = [(CAMPhotoVideoModeSwitch *)self _knob];
  v42 = [v41 layer];
  [v42 setCornerRadius:v40];

  [(CAMPhotoVideoModeSwitch *)self _updateKnobAnimated:0];
}

- (CGRect)knobFrame
{
  [(CAMPhotoVideoModeSwitch *)self bounds];
  v4 = v3;
  v6 = v5 * 0.5;
  [(CAMPhotoVideoModeSwitch *)self _knobXPosition];
  v8 = v4 * 0.5 + -14.0;
  v9 = 28.0;
  v10 = v6;
  result.size.height = v9;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (double)_knobXPosition
{
  v3 = [(CAMPhotoVideoModeSwitch *)self mode];
  result = 0.0;
  if (v3 == 1)
  {
    [(CAMPhotoVideoModeSwitch *)self bounds];
    return v5 + v5 * -0.5;
  }

  return result;
}

- (double)_trackColorAlpha
{
  v2 = [(CAMPhotoVideoModeSwitch *)self mode];
  result = 0.11;
  if (v2)
  {
    return 0.5;
  }

  return result;
}

- (double)_trackColorWhite
{
  v2 = [(CAMPhotoVideoModeSwitch *)self mode];
  result = 0.0;
  if (!v2)
  {
    return 1.0;
  }

  return result;
}

- (double)_trackBorderWidth
{
  v2 = 0.0;
  if (![(CAMPhotoVideoModeSwitch *)self mode])
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    v2 = 1.0 / v4;
  }

  return v2;
}

- (void)_touchStart:(id)a3
{
  [(CAMPhotoVideoModeSwitch *)self _setIsTouching:1];

  [(CAMPhotoVideoModeSwitch *)self _updateKnobAnimated:1];
}

- (void)_touchCancel:(id)a3
{
  [(CAMPhotoVideoModeSwitch *)self _setIsTouching:0];

  [(CAMPhotoVideoModeSwitch *)self _updateKnobAnimated:1];
}

- (void)_touchCommit:(id)a3
{
  [(CAMPhotoVideoModeSwitch *)self _setIsTouching:0];

  [(CAMPhotoVideoModeSwitch *)self toggleModeAnimated:1];
}

- (void)_swipe:(id)a3
{
  v4 = a3;
  if ([v4 direction] == 2 || objc_msgSend(v4, "direction") == 1)
  {
    [(CAMPhotoVideoModeSwitch *)self toggleModeAnimated:1];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [CAMView rotateView:"rotateView:toInterfaceOrientation:animated:" toInterfaceOrientation:self animated:?];
  }
}

- (void)setMode:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(CAMPhotoVideoModeSwitch *)self _updateKnobAnimated:a4];
  }
}

- (void)toggleModeAnimated:(BOOL)a3
{
  [(CAMPhotoVideoModeSwitch *)self setMode:[(CAMPhotoVideoModeSwitch *)self mode]== 0 animated:a3];

  [(CAMPhotoVideoModeSwitch *)self sendActionsForControlEvents:4096];
}

- (void)_updateAnimatedValuesWithAnimator:(id)a3
{
  v4 = a3;
  v5 = [(CAMPhotoVideoModeSwitch *)self _knob];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v4 valueForKey:@"CAMAnimatorKnobPositionKey"];
  UIRoundToViewScale();
  v13 = v12;
  v14 = [(CAMPhotoVideoModeSwitch *)self _knob];
  [v14 setFrame:{v13, v7, v9, v11}];

  [v4 valueForKey:@"CAMAnimatorKnobSelectionProgressKey"];
  CEKProgressClamped();
  v16 = 1.0 - v15;
  v17 = [(CAMPhotoVideoModeSwitch *)self _knobSelectionPhotoImageView];
  [v17 setAlpha:v16];

  CEKProgressClamped();
  v19 = v18;
  v20 = [(CAMPhotoVideoModeSwitch *)self _knobSelectionVideoImageView];
  [v20 setAlpha:v19];

  [v4 valueForKey:@"CAMTrackColorAlphaKey"];
  v22 = v21;
  [v4 valueForKey:@"CAMTrackColorWhiteKey"];
  v24 = v23;

  v26 = [MEMORY[0x1E69DC888] colorWithWhite:v24 alpha:v22];
  v25 = [(CAMPhotoVideoModeSwitch *)self _track];
  [v25 setBackgroundColor:v26];
}

- (void)_updateKnobAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CAMPhotoVideoModeSwitch *)self mode]== 1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(CAMPhotoVideoModeSwitch *)self _trackBorderWidth];
  v7 = v6;
  v8 = [(CAMPhotoVideoModeSwitch *)self _track];
  v9 = [v8 layer];
  [v9 setBorderWidth:v7];

  v10 = [(CAMPhotoVideoModeSwitch *)self _animator];
  [(CAMPhotoVideoModeSwitch *)self _knobXPosition];
  if (v3)
  {
    [v10 setValue:@"CAMAnimatorKnobPositionKey" forKey:0 duration:? timingCurve:?];

    v11 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [v11 setValue:@"CAMAnimatorKnobSelectionProgressKey" forKey:0 duration:v5 timingCurve:0.15];

    v12 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _trackColorAlpha];
    [v12 setValue:@"CAMTrackColorAlphaKey" forKey:0 duration:? timingCurve:?];

    v16 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _trackColorWhite];
    [v16 setValue:@"CAMTrackColorWhiteKey" forKey:0 duration:? timingCurve:?];
  }

  else
  {
    [v10 setValue:@"CAMAnimatorKnobPositionKey" forKey:?];

    v13 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [v13 setValue:@"CAMAnimatorKnobSelectionProgressKey" forKey:v5];

    v14 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _trackColorAlpha];
    [v14 setValue:@"CAMTrackColorAlphaKey" forKey:?];

    v15 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _trackColorWhite];
    [v15 setValue:@"CAMTrackColorWhiteKey" forKey:?];

    v16 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _updateAnimatedValuesWithAnimator:?];
  }
}

@end