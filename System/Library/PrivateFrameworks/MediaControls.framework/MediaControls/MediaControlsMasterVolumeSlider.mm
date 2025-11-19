@interface MediaControlsMasterVolumeSlider
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (MediaControlsMasterVolumeSlider)initWithFrame:(CGRect)a3;
- (MediaControlsMasterVolumeSliderDelegate)delegate;
- (id)createThumbView;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)handleLongPress:(id)a3;
- (void)layoutSubviews;
- (void)setSyncState:(int64_t)a3;
- (void)shrinkThumbAfterDelay:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MediaControlsMasterVolumeSlider

- (MediaControlsMasterVolumeSlider)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = MediaControlsMasterVolumeSlider;
  v3 = [(MPVolumeSlider *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MediaControlsMasterVolumeSlider *)v3 setSyncState:0];
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [(MPVolumeSlider *)v4 thumbView];
    [v6 frame];
    v7 = [v5 initWithFrame:?];
    growingThumbView = v4->_growingThumbView;
    v4->_growingThumbView = v7;

    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4->_growingThumbView setBackgroundColor:v9];

    [(UIView *)v4->_growingThumbView setAlpha:1.0];
    [(UIView *)v4->_growingThumbView setUserInteractionEnabled:0];
    v10 = [(UIView *)v4->_growingThumbView layer];
    [v10 setShadowRadius:5.0];

    v11 = [(UIView *)v4->_growingThumbView layer];
    LODWORD(v12) = 1045220557;
    [v11 setShadowOpacity:v12];

    [(MediaControlsMasterVolumeSlider *)v4 addSubview:v4->_growingThumbView];
    v13 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel_handleLongPress_];
    longPressRecognizer = v4->_longPressRecognizer;
    v4->_longPressRecognizer = v13;

    [(UILongPressGestureRecognizer *)v4->_longPressRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v4->_longPressRecognizer setDelegate:v4];
    [(UILongPressGestureRecognizer *)v4->_longPressRecognizer setAllowableMovement:30.0];
    [(MediaControlsMasterVolumeSlider *)v4 addGestureRecognizer:v4->_longPressRecognizer];
  }

  return v4;
}

- (id)createThumbView
{
  v6.receiver = self;
  v6.super_class = MediaControlsMasterVolumeSlider;
  v3 = [(MediaControlsVolumeSlider *)&v6 createThumbView];
  v4 = [(MPVolumeSlider *)self thumbView];
  [v4 setHidden:1];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = MediaControlsMasterVolumeSlider;
  [(MediaControlsMasterVolumeSlider *)&v5 traitCollectionDidChange:a3];
  v4 = [(MediaControlsMasterVolumeSlider *)self traitCollection];
  -[UILongPressGestureRecognizer setEnabled:](self->_longPressRecognizer, "setEnabled:", [v4 forceTouchCapability] == 1);
}

- (void)setSyncState:(int64_t)a3
{
  if (self->_syncState == a3 || !self->_syncingEnabled)
  {
    return;
  }

  v9 = [(MediaControlsMasterVolumeSlider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v9 slider:self syncStateWillChangeFromState:self->_syncState toState:a3];
  }

  else
  {
    v5 = 1;
  }

  self->_syncState = a3;
  v6 = [(MediaControlsMasterVolumeSlider *)self syncState];
  if (v6 == 4)
  {
    v7 = self;
    v8 = 0;
LABEL_12:
    [(MediaControlsMasterVolumeSlider *)v7 setSyncState:v8];
    goto LABEL_14;
  }

  if (v6 == 1)
  {
    if (!v5)
    {
      [(UINotificationFeedbackGenerator *)self->_negativeFeedbackGenerator notificationOccurred:2];
      [(UINotificationFeedbackGenerator *)self->_negativeFeedbackGenerator prepare];
      [(MediaControlsMasterVolumeSlider *)self setSyncState:3];
      [(MediaControlsMasterVolumeSlider *)self shrinkThumbAfterDelay:0.15];
      goto LABEL_14;
    }

    [(UIImpactFeedbackGenerator *)self->_positiveFeedbackGenerator impactOccurred];
    [(UIImpactFeedbackGenerator *)self->_positiveFeedbackGenerator prepare];
    v7 = self;
    v8 = 2;
    goto LABEL_12;
  }

LABEL_14:
}

- (void)handleLongPress:(id)a3
{
  if ([(UILongPressGestureRecognizer *)self->_longPressRecognizer state]== 1)
  {
    [(MediaControlsMasterVolumeSlider *)self setSyncState:1];
    [(MediaControlsMasterVolumeSlider *)self setNeedsLayout];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__MediaControlsMasterVolumeSlider_handleLongPress___block_invoke;
    v4[3] = &unk_1E7663898;
    v4[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:1 delay:v4 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.7 completion:0.0];
  }
}

- (void)shrinkThumbAfterDelay:(double)a3
{
  v5 = [(MPVolumeSlider *)self thumbView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x1E6970508]) initWithMass:2.0 stiffness:300.0 damping:28.0 initialVelocity:{0.0, 0.0}];
  v15 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  [v14 setSpringCubicTimingParameters:v15];

  v16 = [objc_alloc(MEMORY[0x1E6970500]) initWithDuration:v14 timingParameters:1.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__MediaControlsMasterVolumeSlider_shrinkThumbAfterDelay___block_invoke;
  v17[3] = &unk_1E76648B0;
  v17[4] = self;
  v17[5] = v7;
  v17[6] = v9;
  v17[7] = v11;
  v17[8] = v13;
  [v16 addAnimations:v17];
  [v16 startAnimationAfterDelay:a3];
  self->_forcePercent = 0.0;
  [(MediaControlsMasterVolumeSlider *)self setNeedsLayout];
}

void __57__MediaControlsMasterVolumeSlider_shrinkThumbAfterDelay___block_invoke(uint64_t a1)
{
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  [*(*(a1 + 32) + 632) setFrame:?];
  [*(*(a1 + 32) + 632) frame];
  v3 = v2 * 0.5;
  v4 = [*(*(a1 + 32) + 632) layer];
  [v4 setCornerRadius:v3];
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MediaControlsMasterVolumeSlider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 shouldEnableSyncingForSlider:self];
    self->_syncingEnabled = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (self->_syncingEnabled)
  {
LABEL_5:
    [(UIImpactFeedbackGenerator *)self->_positiveFeedbackGenerator prepare];
    [(UINotificationFeedbackGenerator *)self->_negativeFeedbackGenerator prepare];
    v10 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:2];
    positiveFeedbackGenerator = self->_positiveFeedbackGenerator;
    self->_positiveFeedbackGenerator = v10;

    v12 = objc_alloc_init(MEMORY[0x1E69DCCF0]);
    negativeFeedbackGenerator = self->_negativeFeedbackGenerator;
    self->_negativeFeedbackGenerator = v12;
  }

LABEL_6:
  [v7 locationInView:0];
  *&v14 = v14;
  self->_initialX = *&v14;
  v17.receiver = self;
  v17.super_class = MediaControlsMasterVolumeSlider;
  v15 = [(MPVolumeSlider *)&v17 beginTrackingWithTouch:v7 withEvent:v6];

  return v15;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_syncingEnabled || self->_syncState == 3)
  {
    goto LABEL_14;
  }

  [(MediaControlsMasterVolumeSlider *)self setNeedsLayout];
  [v6 locationInView:0];
  *&v8 = v8;
  if (vabds_f32(*&v8, self->_initialX) <= 15.0)
  {
    v9 = [(MediaControlsMasterVolumeSlider *)self traitCollection];
    v10 = [v9 forceTouchCapability];

    if (v10 == 2)
    {
      [v6 force];
      v12 = v11;
      [v6 maximumPossibleForce];
      self->_forcePercent = v12 / v13;
      [(MediaControlsMasterVolumeSlider *)self setNeedsLayout];
      forcePercent = self->_forcePercent;
      if (forcePercent >= 0.949999881 && self->_syncState != 2)
      {
        v15 = 1;
        [(MediaControlsMasterVolumeSlider *)self setSyncState:1];
        goto LABEL_10;
      }

      if (forcePercent >= 0.179999881)
      {
        v15 = self->_syncState == 2;
        goto LABEL_10;
      }
    }
  }

  else
  {
    [(MediaControlsMasterVolumeSlider *)self setSyncState:3];
    [(MediaControlsMasterVolumeSlider *)self shrinkThumbAfterDelay:0.0];
  }

  v15 = 1;
LABEL_10:
  v16 = [(MediaControlsMasterVolumeSlider *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 slider:self shouldCancelSnapWithTouch:v6])
  {
    [(MediaControlsMasterVolumeSlider *)self setSyncState:3];
    [(MediaControlsMasterVolumeSlider *)self shrinkThumbAfterDelay:0.0];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__MediaControlsMasterVolumeSlider_continueTrackingWithTouch_withEvent___block_invoke;
  v20[3] = &unk_1E7663898;
  v20[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:5 delay:v20 options:0 animations:0.05 completion:0.0];

  if (!v15)
  {
    v17 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v19.receiver = self;
  v19.super_class = MediaControlsMasterVolumeSlider;
  v17 = [(MPVolumeSlider *)&v19 continueTrackingWithTouch:v6 withEvent:v7];
LABEL_15:

  return v17;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = MediaControlsMasterVolumeSlider;
  [(MPVolumeSlider *)&v7 endTrackingWithTouch:a3 withEvent:a4];
  if (self->_syncingEnabled)
  {
    [(MediaControlsMasterVolumeSlider *)self shrinkThumbAfterDelay:0.0];
    [(MediaControlsMasterVolumeSlider *)self setSyncState:4];
    positiveFeedbackGenerator = self->_positiveFeedbackGenerator;
    self->_positiveFeedbackGenerator = 0;

    negativeFeedbackGenerator = self->_negativeFeedbackGenerator;
    self->_negativeFeedbackGenerator = 0;
  }
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = MediaControlsMasterVolumeSlider;
  [(MPVolumeSlider *)&v4 cancelTrackingWithEvent:a3];
  [(MediaControlsMasterVolumeSlider *)self setSyncState:3];
  [(MediaControlsMasterVolumeSlider *)self shrinkThumbAfterDelay:0.0];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = MediaControlsMasterVolumeSlider;
  [(MediaControlsMasterVolumeSlider *)&v10 layoutSubviews];
  [(MediaControlsMasterVolumeSlider *)self bringSubviewToFront:self->_growingThumbView];
  v3 = [(MPVolumeSlider *)self thumbView];
  [v3 frame];
  v4 = [(MPVolumeSlider *)self volumeController];
  v5 = [v4 isVolumeControlAvailable];
  v6 = 0.0;
  if (v5)
  {
    v6 = 1.0;
  }

  [(UIView *)self->_growingThumbView setAlpha:v6];

  [v3 frame];
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  [(UIView *)self->_growingThumbView setFrame:?];
  [(UIView *)self->_growingThumbView frame];
  v8 = v7 * 0.5;
  v9 = [(UIView *)self->_growingThumbView layer];
  [v9 setCornerRadius:v8];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (self->_longPressRecognizer == v4 || (v8.receiver = self, v8.super_class = MediaControlsMasterVolumeSlider, ![(MediaControlsMasterVolumeSlider *)&v8 respondsToSelector:sel_gestureRecognizerShouldBegin_]))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MediaControlsMasterVolumeSlider;
    v5 = [(MediaControlsVolumeSlider *)&v7 gestureRecognizerShouldBegin:v4];
  }

  return v5;
}

- (MediaControlsMasterVolumeSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end