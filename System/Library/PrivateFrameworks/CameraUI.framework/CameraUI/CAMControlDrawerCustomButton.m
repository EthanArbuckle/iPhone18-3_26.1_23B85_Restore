@interface CAMControlDrawerCustomButton
- (BOOL)_shouldRejectAccessibilityGestureForHUDManager:(id)a3;
- (BOOL)_shouldTrackView:(id)a3 forTouchAtLocation:(CGPoint)a4;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CAMControlDrawerExpandableButtonDelegate)delegate;
- (UIEdgeInsets)expansionInsets;
- (void)_setExpanded:(BOOL)a3 animated:(BOOL)a4 shouldNotify:(BOOL)a5;
- (void)_updateHighlightedView;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)setExpansionInsets:(UIEdgeInsets)a3;
@end

@implementation CAMControlDrawerCustomButton

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CAMControlDrawerCustomButton;
  [(CAMControlDrawerButton *)&v7 layoutSubviews];
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    v3 = [(CAMControlDrawerButton *)self _backgroundView];
    [v3 center];

    [(CAMControlDrawerCustomButton *)self expansionInsets];
    v4 = [(CAMControlDrawerButton *)self _imageView];
    v5 = [(CAMControlDrawerButton *)self _backgroundView];
    v6 = [(CAMControlDrawerButton *)self _slashView];
    [v4 bounds];
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [v4 setCenter:?];
    [v5 bounds];
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [v5 setCenter:?];
    [v6 bounds];
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    [v6 setCenter:?];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    v8 = [(CAMControlDrawerButton *)self _backgroundView];
    [v8 frame];
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
    v17 = [(CAMControlDrawerCustomButton *)&v20 pointInside:v7 withEvent:x, y];
  }

  v18 = v17;

  return v18;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    [v6 locationInView:self];
    v9 = v8;
    v11 = v10;
    v12 = [(CAMControlDrawerButton *)self _backgroundView];
    [(CAMControlDrawerCustomButton *)self _setTouchInTrackedView:[(CAMControlDrawerCustomButton *)self _shouldTrackView:v12 forTouchAtLocation:v9, v11]];
  }

  else
  {
    [(CAMControlDrawerCustomButton *)self _setTouchInTrackedView:1];
  }

  [(CAMControlDrawerCustomButton *)self _updateHighlightedView];
  v15.receiver = self;
  v15.super_class = CAMControlDrawerCustomButton;
  v13 = [(CAMControlDrawerCustomButton *)&v15 beginTrackingWithTouch:v6 withEvent:v7];

  return v13;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 locationInView:self];
  v9 = v8;
  v11 = v10;
  v12 = [(CAMControlDrawerButton *)self _backgroundView];
  [(CAMControlDrawerCustomButton *)self _setTouchInTrackedView:[(CAMControlDrawerCustomButton *)self _shouldTrackView:v12 forTouchAtLocation:v9, v11]];

  [(CAMControlDrawerCustomButton *)self _updateHighlightedView];
  v14.receiver = self;
  v14.super_class = CAMControlDrawerCustomButton;
  LOBYTE(self) = [(CAMControlDrawerCustomButton *)&v14 continueTrackingWithTouch:v7 withEvent:v6];

  return self;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  if ([(CAMControlDrawerCustomButton *)self _isTouchInTrackedView:a3]&& [(CAMControlDrawerCustomButton *)self isSelfExpanding])
  {
    [(CAMControlDrawerCustomButton *)self _setExpanded:[(CAMControlDrawerCustomButton *)self isExpanded]^ 1 animated:1 shouldNotify:1];
  }

  [(CAMControlDrawerCustomButton *)self _setTouchInTrackedView:0];

  [(CAMControlDrawerCustomButton *)self _updateHighlightedView];
}

- (BOOL)_shouldTrackView:(id)a3 forTouchAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 frame];
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

- (BOOL)_shouldRejectAccessibilityGestureForHUDManager:(id)a3
{
  v4 = a3;
  if ([(CAMControlDrawerCustomButton *)self isExpanded])
  {
    [v4 locationOfAccessibilityGestureInView:self];
    v6 = v5;
    v8 = v7;
    v9 = [(CAMControlDrawerButton *)self _backgroundView];
    v10 = [(CAMControlDrawerCustomButton *)self _shouldTrackView:v9 forTouchAtLocation:v6, v8];

    v11 = !v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  if (![(CAMControlDrawerCustomButton *)self _shouldRejectAccessibilityGestureForHUDManager:a3])
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
  v3 = [(CAMControlDrawerCustomButton *)self _isTouchInTrackedView];

  [(CAMControlDrawerButton *)self setHighlighted:v3];
}

- (void)setExpansionInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_expansionInsets.top), vceqq_f64(v4, *&self->_expansionInsets.bottom)))) & 1) == 0)
  {
    self->_expansionInsets = a3;
    [(CAMControlDrawerCustomButton *)self setNeedsLayout];
  }
}

- (void)_setExpanded:(BOOL)a3 animated:(BOOL)a4 shouldNotify:(BOOL)a5
{
  if (self->_expanded != a3)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    if (a4)
    {
      [(CAMControlDrawerCustomButton *)self layoutIfNeeded];
    }

    if (v5)
    {
      v9 = [(CAMControlDrawerCustomButton *)self delegate];
      [v9 expandableButton:self willChangeExpanded:v7];
    }

    self->_expanded = v7;
    [(CAMControlDrawerCustomButton *)self setNeedsLayout];
    if (v6)
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