@interface SFMoreMenuButton
- (BOOL)isIconFilled;
- (NSDirectionalEdgeInsets)contentInsets;
- (SFMoreMenuButton)initWithFrame:(CGRect)frame;
- (UIColor)progressTintColor;
- (double)_progressViewRadius;
- (double)_progressViewTrackWidth;
- (void)_setShowsProgressView:(BOOL)view;
- (void)_updateContentsAnimated:(BOOL)animated;
- (void)_updateImageAllowingDissolve:(BOOL)dissolve;
- (void)_updateProgressViewMetrics;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentInsets:(NSDirectionalEdgeInsets)insets;
- (void)setDownloadProgress:(double)progress animated:(BOOL)animated;
- (void)setIconFilled:(BOOL)filled;
- (void)setNeedsPulseOnView:(id)view;
- (void)setProgressStyle:(int64_t)style;
- (void)setProgressTintColor:(id)color;
- (void)setSelected:(BOOL)selected;
- (void)setSymbolScale:(int64_t)scale;
- (void)tintColorDidChange;
@end

@implementation SFMoreMenuButton

- (SFMoreMenuButton)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SFMoreMenuButton;
  v3 = [(SFMoreMenuButton *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setProgressStyle:(int64_t)style
{
  if (self->_progressStyle != style)
  {
    self->_progressStyle = style;
    [(SFMoreMenuButton *)self _updateImage];
  }
}

- (void)setDownloadProgress:(double)progress animated:(BOOL)animated
{
  if (self->_downloadProgress != progress)
  {
    self->_downloadProgress = progress;
    [(SFMoreMenuButton *)self _updateContentsAnimated:animated];
  }
}

- (void)setNeedsPulseOnView:(id)view
{
  if (self->_isShowingArrowDown)
  {
    [MEMORY[0x1E69DD250] _sf_performLinkAnimation:1 onView:view];
  }

  else
  {
    objc_storeWeak(&self->_viewPendingPulse, view);
  }
}

- (void)setSymbolScale:(int64_t)scale
{
  if (self->_symbolScale != scale)
  {
    self->_symbolScale = scale;
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

- (void)setIconFilled:(BOOL)filled
{
  if (self->_iconFilled != filled)
  {
    self->_iconFilled = filled;
    [(SFMoreMenuButton *)self _updateContentsAnimated:0];
  }
}

- (UIColor)progressTintColor
{
  progressTintColor = self->_progressTintColor;
  if (progressTintColor)
  {
    systemBlueColor = progressTintColor;
  }

  else
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  return systemBlueColor;
}

- (void)setProgressTintColor:(id)color
{
  colorCopy = color;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_progressTintColor, color);
    progressTintColor = [(SFMoreMenuButton *)self progressTintColor];
    [(SFProgressView *)self->_progressView setTintColor:progressTintColor];
  }
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.leading;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(SFMoreMenuButton *)self _updateImage];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(SFMoreMenuButton *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = SFMoreMenuButton;
    [(SFMoreMenuButton *)&v5 setSelected:selectedCopy];
    [(SFMoreMenuButton *)self updateContents];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SFMoreMenuButton;
  [(_SFDimmingButton *)&v5 layoutSubviews];
  [(SFProgressView *)self->_progressView intrinsicContentSize];
  _imageView = [(SFMoreMenuButton *)self _imageView];
  [_imageView bounds];
  UIRectGetCenter();
  traitCollection = [(SFMoreMenuButton *)self traitCollection];
  [traitCollection displayScale];
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

- (void)_updateContentsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  movedToWindowTime = self->_movedToWindowTime;
  if (SFDeferrableUpdateViewShouldAttemptToUpdateContents(self))
  {
    [(SFMoreMenuButton *)self _updateImageAllowingDissolve:v6 > movedToWindowTime + 1.0];
    _shouldShowProgressView = [(SFMoreMenuButton *)self _shouldShowProgressView];
    [(SFMoreMenuButton *)self _setShowsProgressView:_shouldShowProgressView];
    if (_shouldShowProgressView)
    {
      downloadProgress = self->_downloadProgress;
      if (downloadProgress == -1.0)
      {
        downloadProgress = 0.0;
      }

      [(SFProgressView *)self->_progressView setProgress:animatedCopy animated:0 completion:downloadProgress];

      [(SFMoreMenuButton *)self _updateProgressViewMetrics];
    }
  }
}

- (void)_updateImageAllowingDissolve:(BOOL)dissolve
{
  dissolveCopy = dissolve;
  v31[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_viewPendingPulse);
  progressStyle = self->_progressStyle;
  if (progressStyle != 2)
  {
    if (progressStyle == 1)
    {
      _shouldShowProgressView = [(SFMoreMenuButton *)self _shouldShowProgressView];
      v10 = MEMORY[0x1E69DCAB8];
      if (_shouldShowProgressView)
      {
        v11 = MEMORY[0x1E69DCAD8];
        tintColor = [(SFMoreMenuButton *)self tintColor];
        v30[0] = tintColor;
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        v30[1] = clearColor;
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

      _shouldShowProgressView2 = [(SFMoreMenuButton *)self _shouldShowProgressView];
      v10 = MEMORY[0x1E69DCAB8];
      if (_shouldShowProgressView2)
      {
        v21 = MEMORY[0x1E69DCAD8];
        tintColor = [(SFMoreMenuButton *)self tintColor];
        v31[0] = tintColor;
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        v31[1] = clearColor;
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
    v19 = dissolveCopy & ~self->_isShowingArrowDown;
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
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  background = [plainButtonConfiguration background];
  [background setBackgroundColor:clearColor2];

  v25 = [v17 imageWithAlignmentRectInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [plainButtonConfiguration setImage:v25];

  v26 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:self->_symbolScale];
  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v26];

  [plainButtonConfiguration setContentInsets:{self->_contentInsets.top, self->_contentInsets.leading, self->_contentInsets.bottom, self->_contentInsets.trailing}];
  if (v19)
  {
    v27 = MEMORY[0x1E69DD250];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __49__SFMoreMenuButton__updateImageAllowingDissolve___block_invoke;
    v28[3] = &unk_1E721B400;
    v28[4] = self;
    v29 = plainButtonConfiguration;
    [v27 transitionWithView:self duration:5242882 options:v28 animations:0 completion:0.3];

    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  [(SFMoreMenuButton *)self setConfiguration:plainButtonConfiguration];
  if (v18)
  {
LABEL_24:
    [(SFMoreMenuButton *)self layoutIfNeeded];
    [MEMORY[0x1E69DD250] _sf_performLinkAnimation:1 onView:WeakRetained];
    objc_storeWeak(&self->_viewPendingPulse, 0);
  }

LABEL_25:
}

- (void)_setShowsProgressView:(BOOL)view
{
  progressView = self->_progressView;
  if ((((progressView == 0) ^ view) & 1) == 0)
  {
    if (view)
    {
      imageView = [(SFMoreMenuButton *)self imageView];
      [(SFProgressView *)imageView setClipsToBounds:0];
      v5 = objc_alloc_init(SFProgressView);
      v6 = self->_progressView;
      self->_progressView = v5;

      [(SFProgressView *)self->_progressView setStyle:self->_progressStyle];
      progressTintColor = [(SFMoreMenuButton *)self progressTintColor];
      [(SFProgressView *)self->_progressView setTintColor:progressTintColor];

      [(SFProgressView *)imageView addSubview:self->_progressView];
      [(SFMoreMenuButton *)self _updateProgressViewMetrics];
      v8 = imageView;
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

  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  traitCollection = [(SFMoreMenuButton *)self traitCollection];
  [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:v7];
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