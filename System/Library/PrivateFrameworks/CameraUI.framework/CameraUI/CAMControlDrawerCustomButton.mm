@interface CAMControlDrawerCustomButton
- (BOOL)_shouldRejectAccessibilityGestureForHUDManager:(id)manager;
- (BOOL)_shouldTrackView:(id)view forTouchAtLocation:(CGPoint)location;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMControlDrawerExpandableButtonDelegate)delegate;
- (UIEdgeInsets)expansionInsets;
- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify;
- (void)_updateHighlightedView;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)manager;
- (void)setExpansionInsets:(UIEdgeInsets)insets;
@end

@implementation CAMControlDrawerCustomButton

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CAMControlDrawerCustomButton;
  [(CAMControlDrawerButton *)&v7 layoutSubviews];
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    _backgroundView = [(CAMControlDrawerButton *)self _backgroundView];
    [_backgroundView center];

    [(CAMControlDrawerCustomButton *)self expansionInsets];
    _imageView = [(CAMControlDrawerButton *)self _imageView];
    _backgroundView2 = [(CAMControlDrawerButton *)self _backgroundView];
    _slashView = [(CAMControlDrawerButton *)self _slashView];
    [_imageView bounds];
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [_imageView setCenter:?];
    [_backgroundView2 bounds];
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [_backgroundView2 setCenter:?];
    [_slashView bounds];
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [_slashView setCenter:?];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    _backgroundView = [(CAMControlDrawerButton *)self _backgroundView];
    [_backgroundView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    v21.x = x;
    v21.y = y;
    v17 = CGRectContainsPoint(v22, v21);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CAMControlDrawerCustomButton;
    v17 = [(CAMControlDrawerCustomButton *)&v20 pointInside:eventCopy withEvent:x, y];
  }

  v18 = v17;

  return v18;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    [touchCopy locationInView:self];
    v9 = v8;
    v11 = v10;
    _backgroundView = [(CAMControlDrawerButton *)self _backgroundView];
    [(CAMControlDrawerCustomButton *)self _setTouchInTrackedView:[(CAMControlDrawerCustomButton *)self _shouldTrackView:_backgroundView forTouchAtLocation:v9, v11]];
  }

  else
  {
    [(CAMControlDrawerCustomButton *)self _setTouchInTrackedView:1];
  }

  [(CAMControlDrawerCustomButton *)self _updateHighlightedView];
  v15.receiver = self;
  v15.super_class = CAMControlDrawerCustomButton;
  v13 = [(CAMControlDrawerCustomButton *)&v15 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v13;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [touchCopy locationInView:self];
  v9 = v8;
  v11 = v10;
  _backgroundView = [(CAMControlDrawerButton *)self _backgroundView];
  [(CAMControlDrawerCustomButton *)self _setTouchInTrackedView:[(CAMControlDrawerCustomButton *)self _shouldTrackView:_backgroundView forTouchAtLocation:v9, v11]];

  [(CAMControlDrawerCustomButton *)self _updateHighlightedView];
  v14.receiver = self;
  v14.super_class = CAMControlDrawerCustomButton;
  LOBYTE(self) = [(CAMControlDrawerCustomButton *)&v14 continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  return self;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  if ([(CAMControlDrawerCustomButton *)self _isTouchInTrackedView:touch]&& [(CAMControlDrawerCustomButton *)self isSelfExpanding])
  {
    [(CAMControlDrawerCustomButton *)self _setExpanded:[(CAMControlDrawerCustomButton *)self isExpanded]^ 1 animated:1 shouldNotify:1];
  }

  [(CAMControlDrawerCustomButton *)self _setTouchInTrackedView:0];

  [(CAMControlDrawerCustomButton *)self _updateHighlightedView];
}

- (BOOL)_shouldTrackView:(id)view forTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  [viewCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [viewCopy frame];
  v16 = v15;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v22 = CGRectInset(v21, -20.0, -v16);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(v22, *&v17);
}

- (BOOL)_shouldRejectAccessibilityGestureForHUDManager:(id)manager
{
  managerCopy = manager;
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    [managerCopy locationOfAccessibilityGestureInView:self];
    v6 = v5;
    v8 = v7;
    _backgroundView = [(CAMControlDrawerButton *)self _backgroundView];
    v10 = [(CAMControlDrawerCustomButton *)self _shouldTrackView:_backgroundView forTouchAtLocation:v6, v8];

    v11 = !v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)selectedByAccessibilityHUDManager:(id)manager
{
  if (![(CAMControlDrawerCustomButton *)self _shouldRejectAccessibilityGestureForHUDManager:manager])
  {
    [(CAMControlDrawerCustomButton *)self cancelTouchTracking];
    [(CAMControlDrawerCustomButton *)self sendActionsForControlEvents:64];
    if ([(CAMControlDrawerCustomButton *)self isSelfExpanding])
    {
      v4 = [(CAMControlDrawerCustomButton *)self isExpanded]^ 1;

      [(CAMControlDrawerCustomButton *)self _setExpanded:v4 animated:1 shouldNotify:1];
    }
  }
}

- (void)_updateHighlightedView
{
  _isTouchInTrackedView = [(CAMControlDrawerCustomButton *)self _isTouchInTrackedView];

  [(CAMControlDrawerButton *)self setHighlighted:_isTouchInTrackedView];
}

- (void)setExpansionInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_expansionInsets.top), vceqq_f64(v4, *&self->_expansionInsets.bottom)))) & 1) == 0)
  {
    self->_expansionInsets = insets;
    [(CAMControlDrawerCustomButton *)self setNeedsLayout];
  }
}

- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify
{
  if (self->_expanded != expanded)
  {
    notifyCopy = notify;
    animatedCopy = animated;
    expandedCopy = expanded;
    if (animated)
    {
      [(CAMControlDrawerCustomButton *)self layoutIfNeeded];
    }

    if (notifyCopy)
    {
      delegate = [(CAMControlDrawerCustomButton *)self delegate];
      [delegate expandableButton:self willChangeExpanded:expandedCopy];
    }

    self->_expanded = expandedCopy;
    [(CAMControlDrawerCustomButton *)self setNeedsLayout];
    if (animatedCopy)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __67__CAMControlDrawerCustomButton__setExpanded_animated_shouldNotify___block_invoke;
      v10[3] = &unk_1E76F77B0;
      v10[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }
  }
}

- (UIEdgeInsets)expansionInsets
{
  top = self->_expansionInsets.top;
  left = self->_expansionInsets.left;
  bottom = self->_expansionInsets.bottom;
  right = self->_expansionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CAMControlDrawerExpandableButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end