@interface CAMPhotoVideoModeSwitch
- (CAMPhotoVideoModeSwitch)initWithFrame:(CGRect)frame;
- (CGRect)knobFrame;
- (double)_knobXPosition;
- (double)_trackBorderWidth;
- (double)_trackColorAlpha;
- (double)_trackColorWhite;
- (void)_swipe:(id)_swipe;
- (void)_touchCancel:(id)cancel;
- (void)_touchCommit:(id)commit;
- (void)_touchStart:(id)start;
- (void)_updateAnimatedValuesWithAnimator:(id)animator;
- (void)_updateKnobAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setMode:(unint64_t)mode animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)toggleModeAnimated:(BOOL)animated;
@end

@implementation CAMPhotoVideoModeSwitch

- (CAMPhotoVideoModeSwitch)initWithFrame:(CGRect)frame
{
  v57.receiver = self;
  v57.super_class = CAMPhotoVideoModeSwitch;
  v3 = [(CAMPhotoVideoModeSwitch *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_mode = 0;
    v56 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"camera.fill" withConfiguration:v56];
    v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
    photoImageView = v4->__photoImageView;
    v4->__photoImageView = v6;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(UIImageView *)v4->__photoImageView layer];
    [layer setShadowColor:cGColor];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v4->__photoImageView setTintColor:whiteColor];

    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    layer2 = [(UIImageView *)v4->__photoImageView layer];
    [layer2 setShadowOffset:{v12, v13}];

    layer3 = [(UIImageView *)v4->__photoImageView layer];
    [layer3 setShadowRadius:2.0];

    layer4 = [(UIImageView *)v4->__photoImageView layer];
    LODWORD(v17) = 1051931443;
    [layer4 setShadowOpacity:v17];

    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video.fill" withConfiguration:v56];
    v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
    videoImageView = v4->__videoImageView;
    v4->__videoImageView = v19;

    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    cGColor2 = [blackColor2 CGColor];
    layer5 = [(UIImageView *)v4->__videoImageView layer];
    [layer5 setShadowColor:cGColor2];

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v4->__videoImageView setTintColor:whiteColor2];

    layer6 = [(UIImageView *)v4->__videoImageView layer];
    [layer6 setShadowOffset:{v12, v13}];

    layer7 = [(UIImageView *)v4->__videoImageView layer];
    [layer7 setShadowRadius:2.0];

    layer8 = [(UIImageView *)v4->__videoImageView layer];
    LODWORD(v28) = 1051931443;
    [layer8 setShadowOpacity:v28];

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
    cGColor3 = [v37 CGColor];
    layer9 = [(UIView *)v4->__track layer];
    [layer9 setBorderColor:cGColor3];

    [(CAMPhotoVideoModeSwitch *)v4 _trackBorderWidth];
    v41 = v40;
    layer10 = [(UIView *)v4->__track layer];
    [layer10 setBorderWidth:v41];

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
    whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4->__knob setBackgroundColor:whiteColor3];

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
  _photoImageView = [(CAMPhotoVideoModeSwitch *)self _photoImageView];
  v44 = CAMViewAlignmentSize(_photoImageView);
  v5 = v4;

  _videoImageView = [(CAMPhotoVideoModeSwitch *)self _videoImageView];
  v43 = CAMViewAlignmentSize(_videoImageView);
  v8 = v7;

  [(CAMPhotoVideoModeSwitch *)self bounds];
  v10 = v9;
  v12 = v11 * 0.5;
  v13 = v11 * 0.5 + -14.0;
  _track = [(CAMPhotoVideoModeSwitch *)self _track];
  [_track setFrame:{0.0, v13, v10, 28.0}];

  [(CAMPhotoVideoModeSwitch *)self knobFrame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  _knob = [(CAMPhotoVideoModeSwitch *)self _knob];
  [_knob setFrame:{v16, v18, v20, v22}];

  _photoImageView2 = [(CAMPhotoVideoModeSwitch *)self _photoImageView];
  [_photoImageView2 setFrame:{12.0, v12 - v5 * 0.5, v44, v5}];

  _videoImageView2 = [(CAMPhotoVideoModeSwitch *)self _videoImageView];
  [_videoImageView2 setFrame:{v10 - v43 + -12.0, v12 - v8 * 0.5, v43, v8}];

  _knob2 = [(CAMPhotoVideoModeSwitch *)self _knob];
  [_knob2 bounds];
  UIRectGetCenter();
  v28 = v27;
  v30 = v29;

  _knobSelectionPhotoImageView = [(CAMPhotoVideoModeSwitch *)self _knobSelectionPhotoImageView];
  [_knobSelectionPhotoImageView setCenter:{v28, v30}];

  _knobSelectionVideoImageView = [(CAMPhotoVideoModeSwitch *)self _knobSelectionVideoImageView];
  [_knobSelectionVideoImageView setCenter:{v28, v30}];

  _track2 = [(CAMPhotoVideoModeSwitch *)self _track];
  [_track2 bounds];
  v35 = v34 * 0.5;
  _track3 = [(CAMPhotoVideoModeSwitch *)self _track];
  layer = [_track3 layer];
  [layer setCornerRadius:v35];

  _knob3 = [(CAMPhotoVideoModeSwitch *)self _knob];
  [_knob3 bounds];
  v40 = v39 * 0.5;
  _knob4 = [(CAMPhotoVideoModeSwitch *)self _knob];
  layer2 = [_knob4 layer];
  [layer2 setCornerRadius:v40];

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
  mode = [(CAMPhotoVideoModeSwitch *)self mode];
  result = 0.0;
  if (mode == 1)
  {
    [(CAMPhotoVideoModeSwitch *)self bounds];
    return v5 + v5 * -0.5;
  }

  return result;
}

- (double)_trackColorAlpha
{
  mode = [(CAMPhotoVideoModeSwitch *)self mode];
  result = 0.11;
  if (mode)
  {
    return 0.5;
  }

  return result;
}

- (double)_trackColorWhite
{
  mode = [(CAMPhotoVideoModeSwitch *)self mode];
  result = 0.0;
  if (!mode)
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v2 = 1.0 / v4;
  }

  return v2;
}

- (void)_touchStart:(id)start
{
  [(CAMPhotoVideoModeSwitch *)self _setIsTouching:1];

  [(CAMPhotoVideoModeSwitch *)self _updateKnobAnimated:1];
}

- (void)_touchCancel:(id)cancel
{
  [(CAMPhotoVideoModeSwitch *)self _setIsTouching:0];

  [(CAMPhotoVideoModeSwitch *)self _updateKnobAnimated:1];
}

- (void)_touchCommit:(id)commit
{
  [(CAMPhotoVideoModeSwitch *)self _setIsTouching:0];

  [(CAMPhotoVideoModeSwitch *)self toggleModeAnimated:1];
}

- (void)_swipe:(id)_swipe
{
  _swipeCopy = _swipe;
  if ([_swipeCopy direction] == 2 || objc_msgSend(_swipeCopy, "direction") == 1)
  {
    [(CAMPhotoVideoModeSwitch *)self toggleModeAnimated:1];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [CAMView rotateView:"rotateView:toInterfaceOrientation:animated:" toInterfaceOrientation:self animated:?];
  }
}

- (void)setMode:(unint64_t)mode animated:(BOOL)animated
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(CAMPhotoVideoModeSwitch *)self _updateKnobAnimated:animated];
  }
}

- (void)toggleModeAnimated:(BOOL)animated
{
  [(CAMPhotoVideoModeSwitch *)self setMode:[(CAMPhotoVideoModeSwitch *)self mode]== 0 animated:animated];

  [(CAMPhotoVideoModeSwitch *)self sendActionsForControlEvents:4096];
}

- (void)_updateAnimatedValuesWithAnimator:(id)animator
{
  animatorCopy = animator;
  _knob = [(CAMPhotoVideoModeSwitch *)self _knob];
  [_knob frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [animatorCopy valueForKey:@"CAMAnimatorKnobPositionKey"];
  UIRoundToViewScale();
  v13 = v12;
  _knob2 = [(CAMPhotoVideoModeSwitch *)self _knob];
  [_knob2 setFrame:{v13, v7, v9, v11}];

  [animatorCopy valueForKey:@"CAMAnimatorKnobSelectionProgressKey"];
  CEKProgressClamped();
  v16 = 1.0 - v15;
  _knobSelectionPhotoImageView = [(CAMPhotoVideoModeSwitch *)self _knobSelectionPhotoImageView];
  [_knobSelectionPhotoImageView setAlpha:v16];

  CEKProgressClamped();
  v19 = v18;
  _knobSelectionVideoImageView = [(CAMPhotoVideoModeSwitch *)self _knobSelectionVideoImageView];
  [_knobSelectionVideoImageView setAlpha:v19];

  [animatorCopy valueForKey:@"CAMTrackColorAlphaKey"];
  v22 = v21;
  [animatorCopy valueForKey:@"CAMTrackColorWhiteKey"];
  v24 = v23;

  v26 = [MEMORY[0x1E69DC888] colorWithWhite:v24 alpha:v22];
  _track = [(CAMPhotoVideoModeSwitch *)self _track];
  [_track setBackgroundColor:v26];
}

- (void)_updateKnobAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
  _track = [(CAMPhotoVideoModeSwitch *)self _track];
  layer = [_track layer];
  [layer setBorderWidth:v7];

  _animator = [(CAMPhotoVideoModeSwitch *)self _animator];
  [(CAMPhotoVideoModeSwitch *)self _knobXPosition];
  if (animatedCopy)
  {
    [_animator setValue:@"CAMAnimatorKnobPositionKey" forKey:0 duration:? timingCurve:?];

    _animator2 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [_animator2 setValue:@"CAMAnimatorKnobSelectionProgressKey" forKey:0 duration:v5 timingCurve:0.15];

    _animator3 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _trackColorAlpha];
    [_animator3 setValue:@"CAMTrackColorAlphaKey" forKey:0 duration:? timingCurve:?];

    _animator4 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _trackColorWhite];
    [_animator4 setValue:@"CAMTrackColorWhiteKey" forKey:0 duration:? timingCurve:?];
  }

  else
  {
    [_animator setValue:@"CAMAnimatorKnobPositionKey" forKey:?];

    _animator5 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [_animator5 setValue:@"CAMAnimatorKnobSelectionProgressKey" forKey:v5];

    _animator6 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _trackColorAlpha];
    [_animator6 setValue:@"CAMTrackColorAlphaKey" forKey:?];

    _animator7 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _trackColorWhite];
    [_animator7 setValue:@"CAMTrackColorWhiteKey" forKey:?];

    _animator4 = [(CAMPhotoVideoModeSwitch *)self _animator];
    [(CAMPhotoVideoModeSwitch *)self _updateAnimatedValuesWithAnimator:?];
  }
}

@end