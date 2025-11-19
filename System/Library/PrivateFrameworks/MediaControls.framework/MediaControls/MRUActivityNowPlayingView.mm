@interface MRUActivityNowPlayingView
- (MRUActivityNowPlayingView)initWithFrame:(CGRect)a3;
- (double)preferredHeightForBottomSafeArea;
- (void)layoutSubviews;
- (void)setShowTrailingAccessoryWhenExpanded:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)updateVisibilty;
@end

@implementation MRUActivityNowPlayingView

- (MRUActivityNowPlayingView)initWithFrame:(CGRect)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = MRUActivityNowPlayingView;
  v3 = [(MRUActivityNowPlayingView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MRUActivityNowPlayingView *)v3 layer];
    [v5 setHitTestsAsOpaque:1];

    v6 = objc_alloc_init(MRUFlippingArtworkView);
    [(MRUFlippingArtworkView *)v6 setStyle:7];
    [(MRUFlippingArtworkView *)v6 setDimsWhenPaused:1];
    [(MRUFlippingArtworkView *)v6 setPlaceholderSymbolName:@"speaker.wave.2.fill"];
    v7 = objc_alloc_init(MRUFlippingArtworkView);
    [(MRUFlippingArtworkView *)v7 setStyle:7];
    [(MRUFlippingArtworkView *)v7 setDimsWhenPaused:1];
    [(MRUFlippingArtworkView *)v7 setPlaceholderSymbolName:@"speaker.wave.2.fill"];
    v24[0] = v6;
    v24[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    artworkViews = v4->_artworkViews;
    v4->_artworkViews = v8;

    v10 = [[MRUActivityAccessoryView alloc] initWithContentView:v6 size:26.0, 22.0];
    leadingView = v4->_leadingView;
    v4->_leadingView = v10;

    [(MRUActivityNowPlayingView *)v4 addSubview:v4->_leadingView];
    v12 = [[MRUActivityAccessoryView alloc] initWithContentView:v7 size:45.0, 22.0];
    detachedMinimalView = v4->_detachedMinimalView;
    v4->_detachedMinimalView = v12;

    v14 = [[MRUActivityTrailingAccessoryView alloc] initWithSize:22.0, 22.0];
    trailingView = v4->_trailingView;
    v4->_trailingView = v14;

    [(MRUActivityNowPlayingView *)v4 addSubview:v4->_trailingView];
    v16 = objc_alloc_init(MRUActivityNowPlayingHeaderView);
    headerView = v4->_headerView;
    v4->_headerView = v16;

    [(MRUActivityNowPlayingView *)v4 addSubview:v4->_headerView];
    v18 = objc_alloc_init(MRUNowPlayingTimeControlsView);
    timeControlsView = v4->_timeControlsView;
    v4->_timeControlsView = v18;

    [(MRUActivityNowPlayingView *)v4 addSubview:v4->_timeControlsView];
    v20 = objc_alloc_init(MRUNowPlayingTransportControlsView);
    transportControlsView = v4->_transportControlsView;
    v4->_transportControlsView = v20;

    [(MRUNowPlayingTransportControlsView *)v4->_transportControlsView setLayout:0];
    [(MRUActivityNowPlayingView *)v4 addSubview:v4->_transportControlsView];
    [(MRUActivityNowPlayingView *)v4 updateVisibilty];
  }

  return v4;
}

- (void)layoutSubviews
{
  v115.receiver = self;
  v115.super_class = MRUActivityNowPlayingView;
  [(MRUActivityNowPlayingView *)&v115 layoutSubviews];
  [(MRUActivityNowPlayingView *)self updateVisibilty];
  v3 = [(MRUActivityNowPlayingView *)self traitCollection];
  [v3 displayScale];

  v4 = [(MRUActivityNowPlayingView *)self SBUISA_layoutMode];
  [(MRUActivityNowPlayingView *)self bounds];
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (v4 == 4)
  {
    UIRectInset();
    x = v116.origin.x;
    y = v116.origin.y;
    width = v116.size.width;
    height = v116.size.height;
    CGRectGetMinX(v116);
    v117.origin.x = x;
    v117.origin.y = y;
    v117.size.width = width;
    v117.size.height = height;
    CGRectGetMinY(v117);
    UIRectRoundToScale();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(MRUActivityNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUActivityAccessoryView *)self->_leadingView setFrame:?];
    [(MRUActivityAccessoryView *)self->_leadingView setContentInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v118.origin.x = x;
    v118.origin.y = y;
    v118.size.width = width;
    v118.size.height = height;
    CGRectGetMaxX(v118);
    SBUISystemApertureInterItemSpacing();
    v119.origin.x = x;
    v119.origin.y = y;
    v119.size.width = width;
    v119.size.height = height;
    CGRectGetMinY(v119);
    SBUISystemApertureInterItemSpacing();
    UIRectRoundToScale();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(MRUActivityAccessoryView *)self->_trailingView setContentOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [(MRUActivityNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUActivityTrailingAccessoryView *)self->_trailingView setFrame:?];
    if (self->_showTrailingAccessoryWhenExpanded)
    {
      v120.origin.x = v26;
      v120.origin.y = v28;
      v120.size.width = v30;
      v120.size.height = v32;
      CGRectGetWidth(v120);
    }

    v132.origin.y = v20;
    v132.origin.x = v18;
    v132.size.height = v24;
    v132.size.width = v22;
    CGRectGetWidth(v132);
    UIRectInset();
    v74 = [(MRUActivityNowPlayingView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v74 layoutFrame];
    CGRectGetHeight(v133);
    [(MRUActivityNowPlayingHeaderView *)self->_headerView labelInset];

    UIRectInset();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    [(MRUActivityNowPlayingHeaderView *)self->_headerView sizeThatFits:v79, v81];
    v134.origin.x = v76;
    v134.origin.y = v78;
    v134.size.width = v80;
    v134.size.height = v82;
    CGRectGetMinX(v134);
    v135.origin.x = v76;
    v135.origin.y = v78;
    v135.size.width = v80;
    v135.size.height = v82;
    CGRectGetMinY(v135);
    UIRectRoundToScale();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    [(MRUActivityNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUActivityNowPlayingHeaderView *)self->_headerView setFrame:?];
    [(MRUActivityNowPlayingView *)self bounds];
    UIRectInset();
    v136.origin.x = v84;
    v136.origin.y = v86;
    v136.size.width = v88;
    v136.size.height = v90;
    CGRectGetHeight(v136);
    UIRectInset();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v95, v97];
    v137.origin.x = v92;
    v137.origin.y = v94;
    v137.size.width = v96;
    v137.size.height = v98;
    CGRectGetMinX(v137);
    v138.origin.x = v92;
    v138.origin.y = v94;
    v138.size.width = v96;
    v138.size.height = v98;
    CGRectGetMinY(v138);
    UIRectRoundToScale();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:?];
    v139.origin.x = v100;
    v139.origin.y = v102;
    v139.size.width = v104;
    v139.size.height = v106;
    CGRectGetHeight(v139);
    UIRectInset();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    p_transportControlsView = &self->_transportControlsView;
    [(MRUNowPlayingTransportControlsView *)*p_transportControlsView sizeThatFits:v111, v113];
    v140.origin.x = v108;
    v140.origin.y = v110;
    v140.size.width = v112;
    v140.size.height = v114;
    CGRectGetMinX(v140);
    v141.origin.x = v108;
    v141.origin.y = v110;
    v141.size.width = v112;
    v141.size.height = v114;
    CGRectGetMinY(v141);
    UIRectRoundToScale();
  }

  else
  {
    CGRectGetMinX(*&v5);
    v121.origin.x = v9;
    v121.origin.y = v10;
    v121.size.width = v11;
    v121.size.height = v12;
    CGRectGetMinY(v121);
    UIRectRoundToScale();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [(MRUActivityNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUActivityAccessoryView *)self->_leadingView setFrame:?];
    [(MRUActivityAccessoryView *)self->_leadingView setContentInsets:-0.5, -1.0, -0.5, 0.0];
    v122.origin.x = v34;
    v122.origin.y = v36;
    v122.size.width = v38;
    v122.size.height = v40;
    CGRectGetWidth(v122);
    UIRectInset();
    v41 = v123.origin.x;
    v42 = v123.origin.y;
    v43 = v123.size.width;
    v44 = v123.size.height;
    CGRectGetMaxX(v123);
    v124.origin.x = v41;
    v124.origin.y = v42;
    v124.size.width = v43;
    v124.size.height = v44;
    CGRectGetMinY(v124);
    [(MRUActivityAccessoryView *)self->_trailingView setContentOffset:-1.0, 0.0];
    UIRectRoundToScale();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    [(MRUActivityNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUActivityTrailingAccessoryView *)self->_trailingView setFrame:?];
    v125.origin.x = v46;
    v125.origin.y = v48;
    v125.size.width = v50;
    v125.size.height = v52;
    CGRectGetWidth(v125);
    UIRectInset();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    [(MRUActivityNowPlayingHeaderView *)self->_headerView sizeThatFits:v57, v59];
    v62 = v61;
    v64 = v63;
    v126.origin.x = v54;
    v126.origin.y = v56;
    v126.size.width = v58;
    v126.size.height = v60;
    MinX = CGRectGetMinX(v126);
    v127.origin.x = v54;
    v127.origin.y = v56;
    v127.size.width = v58;
    v127.size.height = v60;
    MinY = CGRectGetMinY(v127);
    [(MRUActivityNowPlayingHeaderView *)self->_headerView labelInset];
    [(MRUActivityNowPlayingHeaderView *)self->_headerView setFrame:MinX, MinY - v67, v62, v64];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v58, v60];
    v69 = v68;
    v71 = v70;
    v128.origin.x = v54;
    v128.origin.y = v56;
    v128.size.width = v58;
    v128.size.height = v60;
    v72 = CGRectGetMinX(v128);
    v129.origin.x = v54;
    v129.origin.y = v56;
    v129.size.width = v58;
    v129.size.height = v60;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:v72, CGRectGetMinY(v129), v69, v71];
    p_transportControlsView = &self->_transportControlsView;
    [(MRUNowPlayingTransportControlsView *)*p_transportControlsView sizeThatFits:v58, v60];
    v130.origin.x = v54;
    v130.origin.y = v56;
    v130.size.width = v58;
    v130.size.height = v60;
    CGRectGetMinX(v130);
    v131.origin.x = v54;
    v131.origin.y = v56;
    v131.size.width = v58;
    v131.size.height = v60;
    CGRectGetMinY(v131);
    UIRectCenteredRect();
  }

  [(MRUNowPlayingTransportControlsView *)*p_transportControlsView setFrame:?];
}

- (double)preferredHeightForBottomSafeArea
{
  [(MRUActivityNowPlayingHeaderView *)self->_headerView labelInset];
  v4 = v3;
  v5 = [(MRUActivityNowPlayingView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v5 layoutFrame];
  v6 = CGRectGetHeight(v13) - v4;

  [(MRUActivityNowPlayingHeaderView *)self->_headerView sizeThatFits:1.79769313e308, 1.79769313e308];
  v8 = v6 + v7 - v4;
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:1.79769313e308, 1.79769313e308];
  v10 = v8 + v9 + 4.0;
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:1.79769313e308, 1.79769313e308];
  return v10 + v11;
}

- (void)setStylingProvider:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUActivityNowPlayingHeaderView *)self->_headerView setStylingProvider:v5];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setStylingProvider:v5];
    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setStylingProvider:v5];
    [(MRUActivityTrailingAccessoryView *)self->_trailingView setStylingProvider:v5];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_artworkViews;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setStylingProvider:{v5, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setShowTrailingAccessoryWhenExpanded:(BOOL)a3
{
  if (self->_showTrailingAccessoryWhenExpanded != a3)
  {
    self->_showTrailingAccessoryWhenExpanded = a3;
    [(MRUActivityNowPlayingView *)self setNeedsLayout];

    [(MRUActivityNowPlayingView *)self updateVisibilty];
  }
}

- (void)updateVisibilty
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(MRUActivityNowPlayingView *)self SBUISA_layoutMode];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_artworkViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) setOnScreen:v3 > 1];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  if (v3 == 4)
  {
    timeControlsView = self->_timeControlsView;
    v16 = *(MEMORY[0x1E695EFD0] + 16);
    *&v20.a = *MEMORY[0x1E695EFD0];
    v17 = *&v20.a;
    *&v20.c = v16;
    *&v20.tx = *(MEMORY[0x1E695EFD0] + 32);
    v15 = *&v20.tx;
    [(MRUNowPlayingTimeControlsView *)timeControlsView setTransform:&v20];
    transportControlsView = self->_transportControlsView;
    *&v20.a = v17;
    *&v20.c = v16;
    *&v20.tx = v15;
    [(MRUNowPlayingTransportControlsView *)transportControlsView setTransform:&v20];
    v11 = 1.0;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setAlpha:1.0];
    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setAlpha:1.0];
    if (!self->_showTrailingAccessoryWhenExpanded)
    {
      v11 = 0.0;
    }
  }

  else
  {
    CGAffineTransformMakeScale(&v19, 0.5, 0.5);
    v12 = self->_timeControlsView;
    v20 = v19;
    [(MRUNowPlayingTimeControlsView *)v12 setTransform:&v20];
    CGAffineTransformMakeScale(&v18, 0.5, 0.5);
    v13 = self->_transportControlsView;
    v20 = v18;
    [(MRUNowPlayingTransportControlsView *)v13 setTransform:&v20];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setAlpha:0.0];
    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setAlpha:0.0];
    v11 = 1.0;
  }

  v14 = [(MRUActivityAccessoryView *)self->_trailingView contentView];
  [v14 setAlpha:v11];
}

@end