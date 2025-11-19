@interface MediaControlsParentContainerView
- (MediaControlsParentContainerView)initWithFrame:(CGRect)a3;
- (void)_setInitialFrameForRoutingView:(id)a3;
- (void)_toggleRoutingPickerAnimated:(BOOL)a3;
- (void)_updateRoutingPickerVisibilityAnimated:(BOOL)a3;
- (void)_updateTimeControlVisibility:(id)a3;
- (void)didMoveToWindow;
- (void)handleHoverGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)setRoutingView:(id)a3;
- (void)setSelectedMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setStyle:(int64_t)a3;
@end

@implementation MediaControlsParentContainerView

- (MediaControlsParentContainerView)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = MediaControlsParentContainerView;
  v3 = [(MediaControlsParentContainerView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MediaControlsContainerView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(MediaControlsContainerView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    containerView = v3->_containerView;
    v3->_containerView = v9;

    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    mediaControlsRoutingPickerView = v3->_mediaControlsRoutingPickerView;
    v3->_mediaControlsRoutingPickerView = v11;

    v13 = [[MediaControlsSeparatorView alloc] initWithFrame:v5, v6, v7, v8];
    topDividerView = v3->_topDividerView;
    v3->_topDividerView = v13;

    v15 = [[MediaControlsSeparatorView alloc] initWithFrame:v5, v6, v7, v8];
    bottomDividerView = v3->_bottomDividerView;
    v3->_bottomDividerView = v15;

    v3->_routingViewControllerAnimationCount = 0;
    v17 = [(MediaControlsParentContainerView *)v3 containerView];
    [(MediaControlsParentContainerView *)v3 addSubview:v17];

    v18 = [(MediaControlsParentContainerView *)v3 mediaControlsRoutingPickerView];
    [(MediaControlsParentContainerView *)v3 addSubview:v18];

    v19 = [(MediaControlsParentContainerView *)v3 topDividerView];
    [(MediaControlsParentContainerView *)v3 addSubview:v19];

    v20 = [(MediaControlsParentContainerView *)v3 bottomDividerView];
    [(MediaControlsParentContainerView *)v3 addSubview:v20];

    [(MediaControlsParentContainerView *)v3 setClipsToBounds:1];
    v21 = [MEMORY[0x1E69DC938] currentDevice];
    v22 = [v21 userInterfaceIdiom];

    if (v22 == 1)
    {
      v23 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v3 action:sel_handleHoverGestureRecognizer_];
      [(MediaControlsParentContainerView *)v3 addGestureRecognizer:v23];
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = MediaControlsParentContainerView;
  [(MediaControlsParentContainerView *)&v54 layoutSubviews];
  v3 = [(MediaControlsParentContainerView *)self traitCollection];
  [v3 displayScale];

  MPFloatGetSafeScaleForValue();
  v5 = v4;
  [(MediaControlsParentContainerView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(MediaControlsParentContainerView *)self selectedMode];
  style = self->_style;
  v16 = style > 5;
  v17 = (1 << style) & 0x29;
  if (v16 || v17 == 0)
  {
    v43 = [(MediaControlsParentContainerView *)self containerView];
    [v43 setFrame:{v7, v9, v11, v13}];

    v37 = [(MediaControlsParentContainerView *)self mediaControlsRoutingPickerView];
    v38 = v37;
    v39 = v7;
    v40 = v9;
    v41 = v11;
    v42 = v13;
  }

  else
  {
    v19 = v7 + 0.0;
    if (v14 != 1)
    {
      v19 = v7;
    }

    v52 = v19;
    UIRectIntegralWithScale();
    v21 = v20;
    v23 = v22;
    v53 = v5;
    v25 = v24;
    v27 = v26;
    v28 = [(MediaControlsParentContainerView *)self containerView];
    [v28 setFrame:{v21, v23, v25, v27}];

    UIRectIntegralWithScale();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(MediaControlsParentContainerView *)self mediaControlsRoutingPickerView];
    v38 = v37;
    v39 = v30;
    v5 = v53;
    v40 = v32;
    v41 = v34;
    v42 = v36;
  }

  [v37 setFrame:{v39, v40, v41, v42, *&v52}];

  if (v5 >= 1.0)
  {
    v44 = v5;
  }

  else
  {
    v44 = 1.0;
  }

  v45 = 1.0 / v44;
  [(MediaControlsParentContainerView *)self bounds];
  MinY = CGRectGetMinY(v55);
  [(MediaControlsParentContainerView *)self bounds];
  Width = CGRectGetWidth(v56);
  v48 = [(MediaControlsParentContainerView *)self topDividerView];
  [v48 setFrame:{0.0, MinY, Width, v45}];

  [(MediaControlsParentContainerView *)self bounds];
  v49 = CGRectGetMaxY(v57) - v45;
  [(MediaControlsParentContainerView *)self bounds];
  v50 = CGRectGetWidth(v58);
  v51 = [(MediaControlsParentContainerView *)self bottomDividerView];
  [v51 setFrame:{0.0, v49, v50, v45}];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MediaControlsParentContainerView;
  [(MediaControlsParentContainerView *)&v3 didMoveToWindow];
  [(MediaControlsParentContainerView *)self _updateTimeControlVisibility:@"didMoveToWindow"];
}

- (void)setStyle:(int64_t)a3
{
  v5 = [(MediaControlsParentContainerView *)self containerView];
  [v5 setStyle:a3];

  if (self->_style != a3)
  {
    self->_style = a3;
    [(MediaControlsParentContainerView *)self _updateRoutingPickerVisibilityAnimated:0];
    [(MediaControlsParentContainerView *)self _updateTimeControlVisibility:@"setStyle"];

    [(MediaControlsParentContainerView *)self setNeedsLayout];
  }
}

- (void)setSelectedMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_selectedMode != a3)
  {
    v5 = a4;
    self->_selectedMode = a3;
    [(MediaControlsParentContainerView *)self _updateTimeControlVisibility:@"setSelectedMode"];

    [(MediaControlsParentContainerView *)self _toggleRoutingPickerAnimated:v5];
  }
}

- (void)_updateRoutingPickerVisibilityAnimated:(BOOL)a3
{
  v5 = [(MediaControlsParentContainerView *)self selectedMode];
  if (!a3)
  {
    v6 = [(MediaControlsParentContainerView *)self mediaControlsRoutingPickerView];
    [v6 setHidden:v5 != 1];
  }

  if (v5 == 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [(MediaControlsParentContainerView *)self containerView];
  [v8 setAlpha:v7];
}

- (void)_updateTimeControlVisibility:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MediaControlsParentContainerView *)self _isInAWindow])
  {
    v5 = ![(MediaControlsParentContainerView *)self selectedMode]&& (![(MediaControlsParentContainerView *)self style]|| [(MediaControlsParentContainerView *)self style]== 4) || [(MediaControlsParentContainerView *)self style]== 3;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MediaControlsParentContainerView *)self containerView];
  [v6 setTimeControlOnScreen:v5];

  if ([(MediaControlsParentContainerView *)self style]== 3)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MediaControlsParentContainerView *)self containerView];
      v9 = 138543874;
      v10 = v4;
      v11 = 1024;
      v12 = [v8 isTimeControlOnScreen];
      v13 = 1024;
      v14 = [(MediaControlsParentContainerView *)self _isInAWindow];
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "MediaControlsCoverSheet _updateTimeControlVisibility Reason: %{public}@ timeControlOnScreen: %{BOOL}u _isInAWindow:%{BOOL}u", &v9, 0x18u);
    }
  }
}

- (void)_toggleRoutingPickerAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(MediaControlsParentContainerView *)self selectedMode]== 1)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__MediaControlsParentContainerView__toggleRoutingPickerAnimated___block_invoke;
    v20[3] = &unk_1E7663898;
    v20[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
    [(UIView *)self->_mediaControlsRoutingPickerView setHidden:0];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__MediaControlsParentContainerView__toggleRoutingPickerAnimated___block_invoke_2;
  aBlock[3] = &unk_1E7663F38;
  aBlock[4] = self;
  v19 = v3;
  v5 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__MediaControlsParentContainerView__toggleRoutingPickerAnimated___block_invoke_3;
  v17[3] = &unk_1E7663898;
  v17[4] = self;
  v6 = _Block_copy(v17);
  if (v3)
  {
    v7 = [(MediaControlsParentContainerView *)self selectedMode];
    v8 = objc_alloc(MEMORY[0x1E6970508]);
    if (v7 == 1)
    {
      v9 = 500.0;
      v10 = 1000.0;
      v11 = 3.0;
    }

    else
    {
      v9 = 300.0;
      v10 = 36.0;
      v11 = 2.0;
    }

    v12 = [v8 initWithMass:v11 stiffness:v9 damping:v10 initialVelocity:{0.0, 0.0}];
    v13 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
    [v12 setSpringCubicTimingParameters:v13];

    v14 = [objc_alloc(MEMORY[0x1E6970500]) initWithDuration:v12 timingParameters:1.0];
    [v14 addAnimations:v5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__MediaControlsParentContainerView__toggleRoutingPickerAnimated___block_invoke_4;
    v15[3] = &unk_1E7664888;
    v16 = v6;
    [v14 addCompletion:v15];
    [v14 startAnimation];
  }

  else
  {
    v5[2](v5);
    v6[2](v6);
  }
}

uint64_t __65__MediaControlsParentContainerView__toggleRoutingPickerAnimated___block_invoke_2(uint64_t a1)
{
  ++*(*(a1 + 32) + 456);
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateRoutingPickerVisibilityAnimated:v3];
}

void *__65__MediaControlsParentContainerView__toggleRoutingPickerAnimated___block_invoke_3(uint64_t a1)
{
  --*(*(a1 + 32) + 456);
  result = *(a1 + 32);
  if (!result[57])
  {
    v3 = [result selectedMode] != 1;
    v4 = *(*(a1 + 32) + 448);

    return [v4 setHidden:v3];
  }

  return result;
}

- (void)_setInitialFrameForRoutingView:(id)a3
{
  v4 = [(MediaControlsParentContainerView *)self traitCollection];
  [v4 displayScale];

  [(MediaControlsParentContainerView *)self bounds];
  UIRectIntegralWithScale();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(MediaControlsParentContainerView *)self mediaControlsRoutingPickerView];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (void)setRoutingView:(id)a3
{
  v5 = a3;
  mediaControlsRoutingPickerView = self->_mediaControlsRoutingPickerView;
  if (mediaControlsRoutingPickerView != v5)
  {
    v7 = v5;
    if ([(UIView *)mediaControlsRoutingPickerView isDescendantOfView:self])
    {
      [(UIView *)self->_mediaControlsRoutingPickerView removeFromSuperview];
    }

    objc_storeStrong(&self->_mediaControlsRoutingPickerView, a3);
    [(MediaControlsParentContainerView *)self addSubview:self->_mediaControlsRoutingPickerView];
    [(MediaControlsParentContainerView *)self _updateRoutingPickerVisibilityAnimated:0];
    mediaControlsRoutingPickerView = [(MediaControlsParentContainerView *)self selectedMode];
    v5 = v7;
    if (mediaControlsRoutingPickerView == 1)
    {
      [(MediaControlsParentContainerView *)self layoutIfNeeded];
      mediaControlsRoutingPickerView = [(MediaControlsParentContainerView *)self setNeedsLayout];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](mediaControlsRoutingPickerView, v5);
}

- (void)handleHoverGestureRecognizer:(id)a3
{
  if (self->_style == 3)
  {
    v5 = ([a3 state] - 3) < 0xFFFFFFFFFFFFFFFELL;

    [(MediaControlsParentContainerView *)self setClipsToBounds:v5];
  }
}

@end