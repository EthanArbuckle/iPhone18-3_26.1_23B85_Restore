@interface SFMoreMenuButton
- (BOOL)isIconFilled;
- (NSDirectionalEdgeInsets)contentInsets;
- (SFMoreMenuButton)initWithFrame:(CGRect)a3;
- (UIColor)progressTintColor;
- (double)_progressViewRadius;
- (double)_progressViewTrackWidth;
- (void)_setShowsProgressView:(BOOL)a3;
- (void)_updateContentsAnimated:(BOOL)a3;
- (void)_updateImageAllowingDissolve:(BOOL)a3;
- (void)_updateProgressViewMetrics;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
- (void)setDownloadProgress:(double)a3 animated:(BOOL)a4;
- (void)setIconFilled:(BOOL)a3;
- (void)setNeedsPulseOnView:(id)a3;
- (void)setProgressStyle:(int64_t)a3;
- (void)setProgressTintColor:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSymbolScale:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation SFMoreMenuButton

- (SFMoreMenuButton)initWithFrame:(CGRect)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SFMoreMenuButton;
  v3 = [(SFMoreMenuButton *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_downloadProgress = -2.0;
    [(SFMoreMenuButton *)v3 _updateImage];
    v5 = _SFAccessibilityIdentifierForBarItem(5uLL);
    [(SFMoreMenuButton *)v4 setAccessibilityIdentifier:v5];

    [(_SFDimmingButton *)v4 setNormalImageAlpha:1.0];
    [(_SFDimmingButton *)v4 setHighlightedImageAlpha:0.2];
    [(SFMoreMenuButton *)v4 setSymbolScale:2];
    [(SFMoreMenuButton *)v4 setAutomaticallyUpdatesConfiguration:0];
    [(SFClickableButton *)v4 setClickEnabled:1];
    v11[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = [(SFMoreMenuButton *)v4 registerForTraitChanges:v6 withTarget:v4 action:sel__updateProgressViewMetrics];

    v8 = v4;
  }

  return v4;
}

- (void)setProgressStyle:(int64_t)a3
{
  if (self->_progressStyle != a3)
  {
    self->_progressStyle = a3;
    [(SFMoreMenuButton *)self _updateImage];
  }
}

- (void)setDownloadProgress:(double)a3 animated:(BOOL)a4
{
  if (self->_downloadProgress != a3)
  {
    self->_downloadProgress = a3;
    [(SFMoreMenuButton *)self _updateContentsAnimated:a4];
  }
}

- (void)setNeedsPulseOnView:(id)a3
{
  if (self->_isShowingArrowDown)
  {
    [MEMORY[0x1E69DD250] _sf_performLinkAnimation:1 onView:a3];
  }

  else
  {
    objc_storeWeak(&self->_viewPendingPulse, a3);
  }
}

- (void)setSymbolScale:(int64_t)a3
{
  if (self->_symbolScale != a3)
  {
    self->_symbolScale = a3;
    [(SFMoreMenuButton *)self _updateImage];

    [(SFMoreMenuButton *)self _updateProgressViewMetrics];
  }
}

- (BOOL)isIconFilled
{
  if (self->_iconFilled)
  {
    return 1;
  }

  else
  {
    return [(SFMoreMenuButton *)self isSelected];
  }
}

- (void)setIconFilled:(BOOL)a3
{
  if (self->_iconFilled != a3)
  {
    self->_iconFilled = a3;
    [(SFMoreMenuButton *)self _updateContentsAnimated:0];
  }
}

- (UIColor)progressTintColor
{
  progressTintColor = self->_progressTintColor;
  if (progressTintColor)
  {
    v3 = progressTintColor;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  return v3;
}

- (void)setProgressTintColor:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_progressTintColor, a3);
    v5 = [(SFMoreMenuButton *)self progressTintColor];
    [(SFProgressView *)self->_progressView setTintColor:v5];
  }
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(SFMoreMenuButton *)self _updateImage];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(SFMoreMenuButton *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SFMoreMenuButton;
    [(SFMoreMenuButton *)&v5 setSelected:v3];
    [(SFMoreMenuButton *)self updateContents];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SFMoreMenuButton;
  [(_SFDimmingButton *)&v5 layoutSubviews];
  [(SFProgressView *)self->_progressView intrinsicContentSize];
  v3 = [(SFMoreMenuButton *)self _imageView];
  [v3 bounds];
  UIRectGetCenter();
  v4 = [(SFMoreMenuButton *)self traitCollection];
  [v4 displayScale];
  UIRectCenteredAboutPointScale();
  [(SFProgressView *)self->_progressView setFrame:?];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SFMoreMenuButton;
  [(SFMoreMenuButton *)&v4 didMoveToWindow];
  SFDeferrableUpdateViewDidMoveToWindow(self);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_movedToWindowTime = v3;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SFMoreMenuButton;
  [(SFMoreMenuButton *)&v3 tintColorDidChange];
  if ([(SFMoreMenuButton *)self _shouldShowProgressView])
  {
    [(SFMoreMenuButton *)self _updateImage];
  }
}

- (void)_updateContentsAnimated:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  movedToWindowTime = self->_movedToWindowTime;
  if (SFDeferrableUpdateViewShouldAttemptToUpdateContents(self))
  {
    [(SFMoreMenuButton *)self _updateImageAllowingDissolve:v6 > movedToWindowTime + 1.0];
    v8 = [(SFMoreMenuButton *)self _shouldShowProgressView];
    [(SFMoreMenuButton *)self _setShowsProgressView:v8];
    if (v8)
    {
      downloadProgress = self->_downloadProgress;
      if (downloadProgress == -1.0)
      {
        downloadProgress = 0.0;
      }

      [(SFProgressView *)self->_progressView setProgress:v3 animated:0 completion:downloadProgress];

      [(SFMoreMenuButton *)self _updateProgressViewMetrics];
    }
  }
}

- (void)_updateImageAllowingDissolve:(BOOL)a3
{
  v3 = a3;
  v31[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_viewPendingPulse);
  progressStyle = self->_progressStyle;
  if (progressStyle != 2)
  {
    if (progressStyle == 1)
    {
      v9 = [(SFMoreMenuButton *)self _shouldShowProgressView];
      v10 = MEMORY[0x1E69DCAB8];
      if (v9)
      {
        v11 = MEMORY[0x1E69DCAD8];
        v12 = [(SFMoreMenuButton *)self tintColor];
        v30[0] = v12;
        v13 = [MEMORY[0x1E69DC888] clearColor];
        v30[1] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
        v15 = [v11 _configurationWithHierarchicalColors:v14];
        v16 = @"arrow.down.circle";
LABEL_15:
        v17 = [v10 systemImageNamed:v16 withConfiguration:v15];

LABEL_19:
        v18 = 0;
        v19 = 0;
        goto LABEL_20;
      }

      v8 = @"arrow.down.circle.fill";
    }

    else
    {
      if (progressStyle)
      {
        v18 = 0;
        v19 = 0;
        v17 = 0;
        goto LABEL_20;
      }

      if ([(SFMoreMenuButton *)self isIconFilled])
      {
        v7 = MEMORY[0x1E69DCAB8];
        v8 = @"ellipsis.circle.fill";
LABEL_18:
        v17 = [v7 systemImageNamed:v8];
        goto LABEL_19;
      }

      v20 = [(SFMoreMenuButton *)self _shouldShowProgressView];
      v10 = MEMORY[0x1E69DCAB8];
      if (v20)
      {
        v21 = MEMORY[0x1E69DCAD8];
        v12 = [(SFMoreMenuButton *)self tintColor];
        v31[0] = v12;
        v13 = [MEMORY[0x1E69DC888] clearColor];
        v31[1] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
        v15 = [v21 _configurationWithHierarchicalColors:v14];
        v16 = @"ellipsis.circle";
        goto LABEL_15;
      }

      v8 = @"ellipsis.circle";
    }

    v7 = v10;
    goto LABEL_18;
  }

  if ([(SFMoreMenuButton *)self _shouldShowProgressView])
  {
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
    v18 = 0;
    v19 = v3 & ~self->_isShowingArrowDown;
    self->_isShowingArrowDown = 1;
  }

  else
  {
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
    v19 = 0;
    v18 = WeakRetained != 0;
    self->_isShowingArrowDown = 0;
  }

LABEL_20:
  v22 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v23 = [MEMORY[0x1E69DC888] clearColor];
  v24 = [v22 background];
  [v24 setBackgroundColor:v23];

  v25 = [v17 imageWithAlignmentRectInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v22 setImage:v25];

  v26 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:self->_symbolScale];
  [v22 setPreferredSymbolConfigurationForImage:v26];

  [v22 setContentInsets:{self->_contentInsets.top, self->_contentInsets.leading, self->_contentInsets.bottom, self->_contentInsets.trailing}];
  if (v19)
  {
    v27 = MEMORY[0x1E69DD250];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __49__SFMoreMenuButton__updateImageAllowingDissolve___block_invoke;
    v28[3] = &unk_1E721B400;
    v28[4] = self;
    v29 = v22;
    [v27 transitionWithView:self duration:5242882 options:v28 animations:0 completion:0.3];

    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  [(SFMoreMenuButton *)self setConfiguration:v22];
  if (v18)
  {
LABEL_24:
    [(SFMoreMenuButton *)self layoutIfNeeded];
    [MEMORY[0x1E69DD250] _sf_performLinkAnimation:1 onView:WeakRetained];
    objc_storeWeak(&self->_viewPendingPulse, 0);
  }

LABEL_25:
}

- (void)_setShowsProgressView:(BOOL)a3
{
  progressView = self->_progressView;
  if ((((progressView == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v9 = [(SFMoreMenuButton *)self imageView];
      [(SFProgressView *)v9 setClipsToBounds:0];
      v5 = objc_alloc_init(SFProgressView);
      v6 = self->_progressView;
      self->_progressView = v5;

      [(SFProgressView *)self->_progressView setStyle:self->_progressStyle];
      v7 = [(SFMoreMenuButton *)self progressTintColor];
      [(SFProgressView *)self->_progressView setTintColor:v7];

      [(SFProgressView *)v9 addSubview:self->_progressView];
      [(SFMoreMenuButton *)self _updateProgressViewMetrics];
      v8 = v9;
    }

    else
    {
      [(SFProgressView *)progressView removeFromSuperview];
      v8 = self->_progressView;
      self->_progressView = 0;
    }
  }
}

- (void)_updateProgressViewMetrics
{
  [(SFMoreMenuButton *)self _progressViewRadius];
  [(SFProgressView *)self->_progressView setRadius:?];
  [(SFMoreMenuButton *)self _progressViewTrackWidth];
  progressView = self->_progressView;

  [(SFProgressView *)progressView setTrackWidth:?];
}

- (double)_progressViewRadius
{
  symbolScale = self->_symbolScale;
  if ((symbolScale - 1) >= 2)
  {
    if (symbolScale != 3)
    {
      return 0.0;
    }

    v4 = ![(SFMoreMenuButton *)self isIconFilled];
    v5 = 11.5;
    v6 = 15.5;
  }

  else
  {
    v4 = ![(SFMoreMenuButton *)self isIconFilled];
    v5 = 9.0;
    v6 = 12.0;
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = [MEMORY[0x1E69DCA40] defaultMetrics];
  v9 = [(SFMoreMenuButton *)self traitCollection];
  [v8 scaledValueForValue:v9 compatibleWithTraitCollection:v7];
  v11 = v10;

  return v11;
}

- (double)_progressViewTrackWidth
{
  v2 = self->_symbolScale - 1;
  result = 0.0;
  if (v2 <= 2)
  {
    return dbl_18BC3E138[v2];
  }

  return result;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end