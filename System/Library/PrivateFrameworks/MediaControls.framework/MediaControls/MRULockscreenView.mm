@interface MRULockscreenView
- (CGRect)suggestionsFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRULockscreenView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentEdgeInsets;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setShowArtworkView:(BOOL)a3;
- (void)setShowSuggestionsView:(BOOL)a3;
- (void)setShowVolumeControlsView:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setSuggestionsView:(id)a3;
- (void)updateOnScreen;
- (void)updateTextAlignment;
- (void)updateVisibility;
@end

@implementation MRULockscreenView

- (MRULockscreenView)initWithFrame:(CGRect)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MRULockscreenView;
  v3 = [(MRULockscreenView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MRULockscreenView *)v3 layer];
    [v5 setHitTestsAsOpaque:1];

    v6 = objc_alloc_init(MRUNowPlayingHeaderView);
    headerView = v4->_headerView;
    v4->_headerView = v6;

    [(MRUNowPlayingHeaderView *)v4->_headerView setLayout:0];
    v8 = [(MRUNowPlayingHeaderView *)v4->_headerView labelView];
    [v8 setLayout:2];

    [(MRULockscreenView *)v4 addSubview:v4->_headerView];
    v9 = objc_alloc_init(MRUNowPlayingTimeControlsView);
    timeControlsView = v4->_timeControlsView;
    v4->_timeControlsView = v9;

    [(MRUNowPlayingTimeControlsView *)v4->_timeControlsView setLayout:1];
    [(MRULockscreenView *)v4 addSubview:v4->_timeControlsView];
    v11 = objc_alloc_init(MRUNowPlayingTransportControlsView);
    transportControlsView = v4->_transportControlsView;
    v4->_transportControlsView = v11;

    [(MRUNowPlayingTransportControlsView *)v4->_transportControlsView setLayout:2];
    [(MRULockscreenView *)v4 addSubview:v4->_transportControlsView];
    v13 = objc_alloc_init(MRUNowPlayingVolumeControlsView);
    volumeControlsView = v4->_volumeControlsView;
    v4->_volumeControlsView = v13;

    [(MRUNowPlayingVolumeControlsView *)v4->_volumeControlsView setLayout:1];
    [(MRULockscreenView *)v4 addSubview:v4->_volumeControlsView];
    v15 = objc_alloc_init(MRUArtworkView);
    artworkView = v4->_artworkView;
    v4->_artworkView = v15;

    [(MRUArtworkView *)v4->_artworkView setStyle:1];
    [(MRUArtworkView *)v4->_artworkView setAnimation:1];
    v17 = [(MRUArtworkView *)v4->_artworkView pointerInteraction];
    [v17 setEnabled:1];

    [(MRULockscreenView *)v4 addSubview:v4->_artworkView];
    v4->_showArtworkView = 1;
    v4->_showVolumeControlsView = 1;
    [(MRULockscreenView *)v4 updateTextAlignment];
    [(MRULockscreenView *)v4 updateVisibility];
    [(MRULockscreenView *)v4 setAccessibilityIdentifier:@"UIA.MediaControls.LockscreenView"];
    v22[0] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v19 = [(MRULockscreenView *)v4 registerForTraitChanges:v18 withAction:sel_updateDimmed];
  }

  return v4;
}

- (void)layoutSubviews
{
  v90 = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = MRULockscreenView;
  [(MRULockscreenView *)&v85 layoutSubviews];
  [(MRULockscreenView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = MCLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v91.origin.x = v4;
    v91.origin.y = v6;
    v91.size.width = v8;
    v91.size.height = v10;
    v13 = NSStringFromCGRect(v91);
    *buf = 138543618;
    v87 = v12;
    v88 = 2114;
    v89 = v13;
    _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ frame: %{public}@", buf, 0x16u);
  }

  v14 = [(MRULockscreenView *)self traitCollection];
  [v14 displayScale];
  v84 = v15;

  [(MRULockscreenView *)self suggestionsFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(UIView *)self->_suggestionsView setFrame:?];
  if (self->_showSuggestionsView)
  {
    v92.origin.x = v17;
    v92.origin.y = v19;
    v92.size.width = v21;
    v92.size.height = v23;
    CGRectGetHeight(v92);
    UIRectInset();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
  }

  else
  {
    top = self->_contentEdgeInsets.top;
    left = self->_contentEdgeInsets.left;
    v25 = v4 + left;
    v27 = v6 + top;
    v29 = v8 - (left + self->_contentEdgeInsets.right);
    v31 = v10 - (top + self->_contentEdgeInsets.bottom);
  }

  [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v29, v31];
  v35 = v34;
  v37 = v36;
  v93.origin.x = v25;
  v93.origin.y = v27;
  v93.size.width = v29;
  v93.size.height = v31;
  MinX = CGRectGetMinX(v93);
  v94.origin.x = v25;
  v94.origin.y = v27;
  v94.size.width = v29;
  v94.size.height = v31;
  MaxY = CGRectGetMaxY(v94);
  v40 = MaxY - v37;
  [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:MinX, MaxY - v37, v35, v37];
  if (self->_showVolumeControlsView)
  {
    v95.origin.x = MinX;
    v95.origin.y = v40;
    v95.size.width = v35;
    v95.size.height = v37;
    CGRectGetHeight(v95);
    UIRectInset();
    v25 = v41;
    v27 = v42;
    v29 = v43;
    v31 = v44;
  }

  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v29, v31];
  v46 = v45;
  v48 = v47;
  v96.origin.x = v25;
  v96.origin.y = v27;
  v96.size.width = v29;
  v96.size.height = v31;
  v49 = CGRectGetMinX(v96);
  v97.origin.x = v25;
  v97.origin.y = v27;
  v97.size.width = v29;
  v97.size.height = v31;
  v50 = CGRectGetMaxY(v97);
  v51 = v50 - v48;
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:v49, v50 - v48, v46, v48];
  v98.origin.x = v49;
  v98.origin.y = v51;
  v98.size.width = v46;
  v98.size.height = v48;
  CGRectGetHeight(v98);
  UIRectInset();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v56, v58];
  v99.origin.x = v53;
  v99.origin.y = v55;
  v99.size.width = v57;
  v99.size.height = v59;
  CGRectGetMinX(v99);
  v100.origin.x = v53;
  v100.origin.y = v55;
  v100.size.width = v57;
  v100.size.height = v59;
  CGRectGetMaxY(v100);
  UIRectInset();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  [(MRULockscreenView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:?];
  v101.origin.x = v61;
  v101.origin.y = v63;
  v101.size.width = v65;
  v101.size.height = v67;
  CGRectGetHeight(v101);
  UIRectInset();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  if (!self->_showSuggestionsView && self->_showArtworkView)
  {
    UIRectInset();
    v69 = v76;
    v71 = v77;
    v73 = v78;
    v75 = v79;
  }

  v102.origin.x = v69;
  v102.origin.y = v71;
  v102.size.width = v73;
  v102.size.height = v75;
  CGRectGetMinX(v102);
  v103.origin.x = v69;
  v103.origin.y = v71;
  v103.size.width = v73;
  v103.size.height = v75;
  CGRectGetMinY(v103);
  [(MRULockscreenView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUArtworkView *)self->_artworkView setFrame:?];
  if (!self->_showSuggestionsView && self->_showArtworkView)
  {
    UIRectInset();
    v69 = v80;
    v71 = v81;
    v73 = v82;
    v75 = v83;
  }

  [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v73, v75];
  v104.origin.x = v69;
  v104.origin.y = v71;
  v104.size.width = v73;
  v104.size.height = v75;
  CGRectGetMinX(v104);
  v105.origin.x = v69;
  v105.origin.y = v71;
  v105.size.width = v73;
  v105.size.height = v75;
  CGRectGetMinY(v105);
  UIRectCenteredYInRectScale();
  [(MRULockscreenView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  bottom = self->_contentEdgeInsets.bottom;
  v6 = self->_contentEdgeInsets.left + self->_contentEdgeInsets.right;
  if (self->_showSuggestionsView)
  {
    v7 = a3.height - bottom;
    [(UIView *)self->_suggestionsView sizeThatFits:a3.width];
    v9 = v7 - v8;
    v10 = bottom + v8;
  }

  else
  {
    v10 = bottom + self->_contentEdgeInsets.top;
    v9 = a3.height - v10;
  }

  v11 = width - v6;
  [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v11, v9];
  if (self->_showArtworkView && !self->_showSuggestionsView)
  {
    v13 = 57.0;
    if (v12 > 57.0)
    {
      v13 = v12;
    }

    v12 = v13 + 7.0;
  }

  v14 = v10 + v12;
  v15 = v9 - v12;
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v11, v15];
  v17 = v15 - v16;
  v18 = v14 + v16;
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v11, v17];
  v20 = v18 + v19 + 7.0;
  if (self->_showVolumeControlsView)
  {
    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v11, v17 - (v19 + 7.0)];
    v20 = v20 + v21 + 7.0;
  }

  v22 = width;
  v23 = v20;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUArtworkView *)self->_artworkView setStylingProvider:v6];
    [(MRUNowPlayingHeaderView *)self->_headerView setStylingProvider:v6];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setStylingProvider:v6];
    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setStylingProvider:v6];
    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)setSuggestionsView:(id)a3
{
  v5 = a3;
  suggestionsView = self->_suggestionsView;
  if (suggestionsView != v5)
  {
    [(UIView *)suggestionsView removeFromSuperview];
    objc_storeStrong(&self->_suggestionsView, a3);
    [(MRULockscreenView *)self addSubview:v5];
    v7 = MEMORY[0x1E69DD250];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __40__MRULockscreenView_setSuggestionsView___block_invoke;
    v11 = &unk_1E76639D0;
    v12 = v5;
    v13 = self;
    [v7 performWithoutAnimation:&v8];
    [(MRULockscreenView *)self updateVisibility:v8];
    [(MRULockscreenView *)self setNeedsLayout];
  }
}

uint64_t __40__MRULockscreenView_setSuggestionsView___block_invoke(uint64_t a1)
{
  [*(a1 + 40) suggestionsFrame];
  [*(a1 + 32) setFrame:?];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    [(MRULockscreenView *)self updateOnScreen];
  }
}

- (void)setShowArtworkView:(BOOL)a3
{
  if (self->_showArtworkView != a3)
  {
    self->_showArtworkView = a3;
    [(MRULockscreenView *)self updateTextAlignment];
    [(MRULockscreenView *)self updateVisibility];

    [(MRULockscreenView *)self setNeedsLayout];
  }
}

- (void)setShowVolumeControlsView:(BOOL)a3
{
  if (self->_showVolumeControlsView != a3)
  {
    self->_showVolumeControlsView = a3;
    [(MRULockscreenView *)self updateVisibility];

    [(MRULockscreenView *)self setNeedsLayout];
  }
}

- (void)setShowSuggestionsView:(BOOL)a3
{
  if (self->_showSuggestionsView != a3)
  {
    self->_showSuggestionsView = a3;
    [(MRULockscreenView *)self updateTextAlignment];
    [(MRULockscreenView *)self updateVisibility];

    [(MRULockscreenView *)self setNeedsLayout];
  }
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = a3;
    [(MRULockscreenView *)self setNeedsLayout];
  }
}

- (void)updateTextAlignment
{
  if (self->_showSuggestionsView)
  {
    v2 = 1;
  }

  else if (self->_showArtworkView)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  [(MRUNowPlayingHeaderView *)self->_headerView setTextAlignment:v2];
}

- (void)updateOnScreen
{
  onScreen = self->_onScreen;
  if (onScreen)
  {
    v2 = [(MRULockscreenView *)self traitCollection];
    v5 = [v2 mr_shouldDim] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MRUNowPlayingHeaderView *)self->_headerView labelView];
  [v6 setMarqueeEnabled:v5];

  if (onScreen)
  {
  }

  v7 = self->_onScreen;
  timeControlsView = self->_timeControlsView;

  [(MRUNowPlayingTimeControlsView *)timeControlsView setOnScreen:v7];
}

- (void)updateVisibility
{
  v3 = 0.0;
  if (!self->_showSuggestionsView && self->_showArtworkView)
  {
    v3 = 1.0;
  }

  [(MRUArtworkView *)self->_artworkView setAlpha:v3];
  if (self->_showArtworkView)
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v9.a = *MEMORY[0x1E695EFD0];
    *&v9.c = v4;
    *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v9, 0.01, 0.01);
  }

  artworkView = self->_artworkView;
  v8 = v9;
  [(MRUArtworkView *)artworkView setTransform:&v8];
  if (self->_showVolumeControlsView)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setAlpha:v6];
  if (self->_showSuggestionsView)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(UIView *)self->_suggestionsView setAlpha:v7];
}

- (CGRect)suggestionsFrame
{
  [(MRULockscreenView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_suggestionsView sizeThatFits:v7, v9];
  v12 = v11;
  v14 = v13;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  MinY = CGRectGetMinY(v21);
  v17 = MinX;
  v18 = v12;
  v19 = v14;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = MinY;
  result.origin.x = v17;
  return result;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end