@interface MRUNowPlayingTransportControlsView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)sizeThatFits:(CGSize)result;
- (MRUNowPlayingTransportControlsView)initWithFrame:(CGRect)a3;
- (MRUNowPlayingTransportControlsViewDelegate)delegate;
- (void)configureLeadingButton;
- (void)didSelectRoutingButton:(id)a3;
- (void)layoutSubviews;
- (void)setContentScale:(double)a3;
- (void)setLayout:(int64_t)a3;
- (void)setShowRoutingButton:(BOOL)a3;
- (void)setShowTVRemoteButton:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTransportControls:(id)a3;
- (void)updateImageConfiguration;
- (void)updateVisibility;
@end

@implementation MRUNowPlayingTransportControlsView

- (MRUNowPlayingTransportControlsView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = MRUNowPlayingTransportControlsView;
  v3 = [(MRUNowPlayingTransportControlsView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [(MPButton *)MRUTransportButton easyTouchButtonWithType:0];
    leadingButton = v3->_leadingButton;
    v3->_leadingButton = v4;

    [(MRUNowPlayingTransportControlsView *)v3 addSubview:v3->_leadingButton];
    v6 = [(MPButton *)MRUHoldTransportButton easyTouchButtonWithType:0];
    leftButton = v3->_leftButton;
    v3->_leftButton = v6;

    [(MRUNowPlayingTransportControlsView *)v3 addSubview:v3->_leftButton];
    v8 = [(MPButton *)MRUTransportButton easyTouchButtonWithType:0];
    centerButton = v3->_centerButton;
    v3->_centerButton = v8;

    [(MRUNowPlayingTransportControlsView *)v3 addSubview:v3->_centerButton];
    v10 = [(MPButton *)MRUHoldTransportButton easyTouchButtonWithType:0];
    rightButton = v3->_rightButton;
    v3->_rightButton = v10;

    [(MRUNowPlayingTransportControlsView *)v3 addSubview:v3->_rightButton];
    v12 = objc_alloc_init(MRUTransportButton);
    routingButton = v3->_routingButton;
    v3->_routingButton = v12;

    [(MRUTransportButton *)v3->_routingButton addTarget:v3 action:sel_didSelectRoutingButton_ forControlEvents:64];
    [(MRUNowPlayingTransportControlsView *)v3 addSubview:v3->_routingButton];
    [(MRUTransportButton *)v3->_routingButton setAccessibilityIdentifier:@"UIA.MediaControls.NowPlaying.RoutingButton"];
    v3->_contentScale = 1.0;
    [(MRUNowPlayingTransportControlsView *)v3 updateImageConfiguration];
    [(MRUNowPlayingTransportControlsView *)v3 updateVisibility];
    [(MRUNowPlayingTransportControlsView *)v3 setAccessibilityIdentifier:@"UIA.MediaControls.NowPlaying.TransportControlsView"];
  }

  return v3;
}

- (void)layoutSubviews
{
  v95.receiver = self;
  v95.super_class = MRUNowPlayingTransportControlsView;
  [(MRUNowPlayingTransportControlsView *)&v95 layoutSubviews];
  [(MRUNowPlayingTransportControlsView *)self bounds];
  height = v96.size.height;
  x = v96.origin.x;
  y = v96.origin.y;
  width = v96.size.width;
  v7 = CGRectGetHeight(v96);
  layout = self->_layout;
  if (layout > 4)
  {
    switch(layout)
    {
      case 5:
        v17 = x + 7.0;
        v18 = y + 0.0;
        v19 = width - (7.0 + 7.0);
        v20 = height - (0.0 + 0.0);
        v106.origin.x = v17;
        v106.origin.y = v18;
        v106.size.width = v19;
        v106.size.height = v20;
        CGRectGetMinX(v106);
        UIRectCenteredYInRect();
        [(MRUTransportButton *)self->_leadingButton setFrame:?];
        v107.origin.x = v17;
        v107.origin.y = v18;
        v107.size.width = v19;
        v107.size.height = v20;
        CGRectGetMinX(v107);
        UIRectCenteredYInRect();
        [(MRUTransportButton *)self->_leftButton setFrame:?];
        UIRectCenteredRect();
        UIRectCenteredRect();
        [(MRUTransportButton *)self->_centerButton setFrame:?];
        v108.origin.x = v17;
        v108.origin.y = v18;
        v108.size.width = v19;
        v108.size.height = v20;
        CGRectGetMaxX(v108);
        UIRectCenteredYInRect();
        [(MRUTransportButton *)self->_rightButton setFrame:?];
        v109.origin.x = v17;
        v109.origin.y = v18;
        v109.size.width = v19;
        v109.size.height = v20;
        CGRectGetMaxX(v109);
        goto LABEL_21;
      case 6:
        v110.origin.x = x;
        v110.origin.y = y;
        v110.size.width = width;
        v110.size.height = height;
        CGRectGetMinX(v110);
        v83 = width;
        UIRectCenteredYInRect();
        [(MRUTransportButton *)self->_leadingButton setFrame:?];
        UIRectCenteredRect();
        v22 = v21;
        v88 = v23;
        rect = v21;
        v24 = v23;
        v26 = v25;
        v86 = v27;
        v87 = v25;
        v28 = v27;
        [(MRUTransportButton *)self->_centerButton setFrame:?];
        v111.origin.x = v22;
        v111.origin.y = v24;
        v111.size.width = v26;
        v111.size.height = v28;
        CGRectGetMinX(v111);
        UIRectCenteredYInRect();
        v29 = v112.origin.y;
        v30 = v112.size.width;
        v31 = v112.size.height;
        MinX = CGRectGetMinX(v112);
        v113.size.width = v83;
        v93 = x;
        v33 = height;
        v34 = MinX;
        v113.origin.x = x;
        v113.origin.y = y;
        v35 = y;
        v36 = v83;
        v113.size.height = v33;
        v37 = CGRectGetMinX(v113);
        if (v34 >= v37)
        {
          v37 = v34;
        }

        [(MRUTransportButton *)self->_leftButton setFrame:v37, v29, v30, v31, *&v83, 0x4038000000000000];
        v114.origin.y = v88;
        v114.origin.x = rect;
        v114.size.height = v86;
        v114.size.width = v87;
        CGRectGetMaxX(v114);
        UIRectCenteredYInRect();
        recta = v115.origin.y;
        v38 = v115.size.width;
        v39 = v115.size.height;
        v40 = CGRectGetMinX(v115);
        v116.origin.x = v93;
        v116.origin.y = v35;
        v116.size.width = v36;
        v116.size.height = v33;
        v41 = CGRectGetMaxX(v116) - v7;
        if (v40 < v41)
        {
          v41 = v40;
        }

        [(MRUTransportButton *)self->_rightButton setFrame:v41, recta, v38, v39];
        v117.origin.x = v93;
        v117.origin.y = v35;
        v117.size.width = v36;
        v117.size.height = v33;
        CGRectGetMaxX(v117);
        goto LABEL_21;
      case 8:
        UIRectCenteredRect();
        v10 = v9;
        v12 = v11;
        v84 = v11;
        v85 = v13;
        v14 = v13;
        v16 = v15;
        rectb = v15;
        [(MRUTransportButton *)self->_centerButton setFrame:?];
        v97.origin.x = v10;
        v97.origin.y = v12;
        v97.size.width = v14;
        v97.size.height = v16;
        CGRectGetMinX(v97);
        UIRectCenteredYInRect();
        [(MRUTransportButton *)self->_leadingButton setFrame:?];
        v98.origin.x = v10;
        v98.origin.y = v84;
        v98.size.width = v85;
        v98.size.height = rectb;
        CGRectGetMinX(v98);
        UIRectCenteredYInRect();
        [(MRUTransportButton *)self->_leftButton setFrame:?];
        v99.origin.x = v10;
        v99.origin.y = v84;
        v99.size.width = v85;
        v99.size.height = rectb;
        CGRectGetMaxX(v99);
        UIRectCenteredYInRect();
        [(MRUTransportButton *)self->_rightButton setFrame:?];
        v100.origin.x = v10;
        v100.origin.y = v84;
        v100.size.width = v85;
        v100.size.height = rectb;
        CGRectGetMinX(v100);
LABEL_21:
        UIRectCenteredYInRect();
        v45 = 440;
        goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (layout != 1)
  {
    if (layout == 4)
    {
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = width;
      v101.size.height = height;
      CGRectGetMinX(v101);
      UIRectCenteredYInRect();
      [(MRUTransportButton *)self->_leadingButton setFrame:?];
      v102.origin.x = x;
      v102.origin.y = y;
      v102.size.width = width;
      v102.size.height = height;
      CGRectGetMinX(v102);
      UIRectCenteredYInRect();
      [(MRUTransportButton *)self->_leftButton setFrame:?];
      v103.origin.x = x;
      v103.origin.y = y;
      v103.size.width = width;
      v103.size.height = height;
      CGRectGetMinX(v103);
      UIRectCenteredYInRect();
      [(MRUTransportButton *)self->_centerButton setFrame:?];
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      CGRectGetMaxX(v104);
      UIRectCenteredYInRect();
      [(MRUTransportButton *)self->_rightButton setFrame:?];
      v105.origin.x = x;
      v105.origin.y = y;
      v105.size.width = width;
      v105.size.height = height;
      CGRectGetMaxX(v105);
      goto LABEL_21;
    }

LABEL_17:
    v94 = height;
    if (self->_showRoutingButton || ([(MRUTransportButton *)self->_leadingButton transportControlItem], v46 = objc_claimAutoreleasedReturnValue(), v46, v46))
    {
      v122.origin.x = x;
      v122.origin.y = y;
      v122.size.width = width;
      v122.size.height = height;
      CGRectGetWidth(v122);
      UIRoundToViewScale();
      v123.origin.x = x;
      v123.origin.y = y;
      v123.size.width = width;
      v123.size.height = height;
      CGRectGetMinX(v123);
      v124.origin.x = x;
      v124.origin.y = y;
      v124.size.width = width;
      v124.size.height = height;
      CGRectGetMinY(v124);
      UIRectCenteredYInRect();
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      [(MRUTransportButton *)self->_leadingButton setFrame:?];
      v125.origin.x = v48;
      v125.origin.y = v50;
      v125.size.width = v52;
      v125.size.height = v54;
      CGRectGetMaxX(v125);
      v126.origin.x = x;
      v126.origin.y = y;
      v126.size.width = width;
      v126.size.height = v94;
      CGRectGetMinY(v126);
      UIRectCenteredYInRect();
      [(MRUTransportButton *)self->_leftButton setFrame:?];
      v127.origin.x = x;
      v127.origin.y = y;
      v127.size.width = width;
      v127.size.height = v94;
      CGRectGetMinY(v127);
      UIRectCenteredRect();
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      [(MRUTransportButton *)self->_centerButton setFrame:?];
      v63 = v56;
      v64 = v58;
      v65 = v60;
      v66 = v62;
    }

    else
    {
      v133.origin.x = x;
      v133.origin.y = y;
      v133.size.width = width;
      v133.size.height = height;
      CGRectGetWidth(v133);
      UIRoundToViewScale();
      v134.origin.x = x;
      v134.origin.y = y;
      v134.size.width = width;
      v134.size.height = height;
      CGRectGetMinX(v134);
      v135.origin.x = x;
      v135.origin.y = y;
      v135.size.width = width;
      v135.size.height = height;
      CGRectGetMinY(v135);
      UIRectCenteredYInRect();
      [(MRUTransportButton *)self->_leadingButton setFrame:?];
      v136.origin.x = x;
      v136.origin.y = y;
      v136.size.width = width;
      v136.size.height = height;
      CGRectGetMinX(v136);
      v137.origin.x = x;
      v137.origin.y = y;
      v137.size.width = width;
      v137.size.height = height;
      CGRectGetMinY(v137);
      UIRectCenteredYInRect();
      [(MRUTransportButton *)self->_leftButton setFrame:?];
      UIRectCenteredRect();
      UIRectCenteredRect();
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;
      [(MRUTransportButton *)self->_centerButton setFrame:?];
      v63 = v76;
      v64 = v78;
      v65 = v80;
      v66 = v82;
    }

    CGRectGetMaxX(*&v63);
    v128.origin.x = x;
    v128.origin.y = y;
    v128.size.width = width;
    v128.size.height = v94;
    CGRectGetMinY(v128);
    UIRectCenteredYInRect();
    [(MRUTransportButton *)self->_rightButton setFrame:?];
    v129.origin.x = x;
    v129.origin.y = y;
    v129.size.width = width;
    v129.size.height = v94;
    CGRectGetMaxX(v129);
    v130.origin.x = x;
    v130.origin.y = y;
    v130.size.width = width;
    v130.size.height = v94;
    CGRectGetMinY(v130);
    goto LABEL_21;
  }

  v118.origin.x = x;
  v118.origin.y = y;
  v118.size.width = width;
  v118.size.height = height;
  CGRectGetMinX(v118);
  UIRectCenteredYInRect();
  [(MRUTransportButton *)self->_leadingButton setFrame:?];
  v119.origin.x = x;
  v119.origin.y = y;
  v119.size.width = width;
  v119.size.height = height;
  CGRectGetMaxX(v119);
  UIRectCenteredYInRect();
  [(MRUTransportButton *)self->_routingButton setFrame:?];
  UIRectInset();
  v42 = v120.origin.x;
  v43 = v120.origin.y;
  v44 = v120.size.width;
  rectc = v120.size.height;
  CGRectGetMinX(v120);
  UIRectCenteredYInRect();
  [(MRUTransportButton *)self->_leftButton setFrame:?];
  UIRectCenteredRect();
  UIRectCenteredRect();
  [(MRUTransportButton *)self->_centerButton setFrame:?];
  v121.origin.x = v42;
  v121.origin.y = v43;
  v121.size.width = v44;
  v121.size.height = rectc;
  CGRectGetMaxX(v121);
  UIRectCenteredYInRect();
  v45 = 488;
LABEL_22:
  [*(&self->super.super.super.isa + v45) setFrame:?];
  [(MRUTransportButton *)self->_centerButton frame];
  CGRectGetMaxX(v131);
  [(MRUTransportButton *)self->_rightButton frame];
  CGRectGetMinX(v132);
  UIEdgeInsetsMakeWithEdges();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  [(MPButton *)self->_leadingButton setHitRectInsets:?];
  [(MPButton *)self->_leftButton setHitRectInsets:v68, v70, v72, v74];
  [(MPButton *)self->_centerButton setHitRectInsets:v68, v70, v72, v74];
  [(MPButton *)self->_rightButton setHitRectInsets:v68, v70, v72, v74];
  [(MPButton *)self->_routingButton setHitRectInsets:v68, v70, v72, v74];
  [(MRUNowPlayingTransportControlsView *)self updateImageConfiguration];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  layout = self->_layout;
  if ((layout - 5) >= 2)
  {
    if (layout == 4)
    {
      v4 = 40.0;
      result.width = 80.0;
    }

    else
    {
      v4 = 44.0;
    }
  }

  else
  {
    v4 = 26.0;
  }

  result.height = v4;
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MRUNowPlayingTransportControlsView;
    v5 = [(MRUNowPlayingTransportControlsView *)&v7 gestureRecognizerShouldBegin:v4];
  }

  return v5;
}

- (void)setTransportControls:(id)a3
{
  objc_storeStrong(&self->_transportControls, a3);
  v5 = a3;
  v6 = [v5 leftItem];
  [(MRUTransportButton *)self->_leftButton setTransportControlItem:v6];

  v7 = [v5 centerItem];
  [(MRUTransportButton *)self->_centerButton setTransportControlItem:v7];

  v8 = [v5 rightItem];
  [(MRUTransportButton *)self->_rightButton setTransportControlItem:v8];

  [(MRUNowPlayingTransportControlsView *)self configureLeadingButton];
  [(MRUNowPlayingTransportControlsView *)self updateImageConfiguration];

  [(MRUNowPlayingTransportControlsView *)self updateVisibility];
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(MRUNowPlayingTransportControlsView *)self updateImageConfiguration];
    [(MRUNowPlayingTransportControlsView *)self updateVisibility];

    [(MRUNowPlayingTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowRoutingButton:(BOOL)a3
{
  if (self->_showRoutingButton != a3)
  {
    self->_showRoutingButton = a3;
    [(MRUNowPlayingTransportControlsView *)self updateVisibility];

    [(MRUNowPlayingTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowTVRemoteButton:(BOOL)a3
{
  if (self->_showTVRemoteButton != a3)
  {
    self->_showTVRemoteButton = a3;
    [(MRUNowPlayingTransportControlsView *)self configureLeadingButton];
    [(MRUNowPlayingTransportControlsView *)self updateVisibility];

    [(MRUNowPlayingTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUTransportButton *)self->_leadingButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_leftButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_centerButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_rightButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_routingButton setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)setContentScale:(double)a3
{
  if (vabdd_f64(self->_contentScale, a3) > 2.22044605e-16)
  {
    self->_contentScale = a3;
    [(MRUNowPlayingTransportControlsView *)self updateImageConfiguration];

    [(MRUNowPlayingTransportControlsView *)self setNeedsLayout];
  }
}

- (void)didSelectRoutingButton:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transportControlsView:self didSelectRoutingButton:v4];
}

- (void)updateImageConfiguration
{
  layout = self->_layout;
  if ((layout - 5) < 2)
  {
    goto LABEL_4;
  }

  if (layout == 4)
  {
    v14 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:-1 scale:self->_contentScale * 17.0];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:-1 scale:self->_contentScale * 20.0];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:-1 scale:self->_contentScale * 28.0];
    v6 = 0;
    v7 = 0.7;
    v9 = &MRUNowPlayingTransportCursorScaleSmall;
  }

  else
  {
    if (layout == 1)
    {
LABEL_4:
      v14 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:-1 scale:self->_contentScale * 13.0];
      v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:1 scale:self->_contentScale * 20.0];
      v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:3 scale:self->_contentScale * 22.0];
      v6 = 0;
      v7 = 0.7;
      v8 = 0.75;
      v9 = &MRUNowPlayingTransportCursorScaleSmall;
      goto LABEL_8;
    }

    v14 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:-1 scale:self->_contentScale * 21.0];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:-1 scale:self->_contentScale * 26.0];
    v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:-1 scale:self->_contentScale * 40.0];
    v7 = 1.1;
    v6 = 1;
    v9 = &MRUNowPlayingTransportCursorScaleDefault;
  }

  v8 = v7;
LABEL_8:
  contentScale = self->_contentScale;
  v11 = v7 * contentScale;
  v12 = v8 * contentScale;
  v13 = *v9 * contentScale;
  [(MRUTransportButton *)self->_leadingButton setPreferredSymbolConfiguration:v14 forImageInState:0];
  [(MRUTransportButton *)self->_leftButton setPreferredSymbolConfiguration:v4 forImageInState:0];
  [(MRUTransportButton *)self->_centerButton setPreferredSymbolConfiguration:v5 forImageInState:0];
  [(MRUTransportButton *)self->_rightButton setPreferredSymbolConfiguration:v4 forImageInState:0];
  [(MRUTransportButton *)self->_routingButton setPreferredSymbolConfiguration:v14 forImageInState:0];
  [(MRUTransportButton *)self->_leadingButton setPackageScale:v11];
  [(MRUTransportButton *)self->_leftButton setPackageScale:v11];
  [(MRUTransportButton *)self->_centerButton setPackageScale:v12];
  [(MRUTransportButton *)self->_rightButton setPackageScale:v11];
  [(MRUTransportButton *)self->_routingButton setPackageScale:v11];
  [(MRUTransportButton *)self->_leadingButton setCursorScale:v13];
  [(MRUTransportButton *)self->_leftButton setCursorScale:v13];
  [(MRUTransportButton *)self->_centerButton setCursorScale:v13];
  [(MRUTransportButton *)self->_rightButton setCursorScale:v13];
  [(MRUTransportButton *)self->_routingButton setCursorScale:v13];
  [(MRUTransportButton *)self->_leadingButton setShowHighlightCircle:v6];
  [(MRUTransportButton *)self->_leftButton setShowHighlightCircle:v6];
  [(MRUTransportButton *)self->_centerButton setShowHighlightCircle:v6];
  [(MRUTransportButton *)self->_rightButton setShowHighlightCircle:v6];
  [(MRUTransportButton *)self->_routingButton setShowHighlightCircle:v6];
}

- (void)updateVisibility
{
  layout = self->_layout;
  if ((layout - 5) < 2)
  {
    goto LABEL_4;
  }

  if (layout == 4)
  {
    v4 = 0.0;
    [(MRUTransportButton *)self->_leadingButton setAlpha:0.0];
    leftButton = self->_leftButton;
    v6 = 0.0;
    goto LABEL_6;
  }

  if (layout == 1)
  {
LABEL_4:
    v4 = 0.0;
    [(MRUTransportButton *)self->_leadingButton setAlpha:0.0];
    leftButton = self->_leftButton;
    v6 = 1.0;
LABEL_6:
    [(MRUTransportButton *)leftButton setAlpha:v6];
    goto LABEL_7;
  }

  v8 = [(MRUTransportButton *)self->_leadingButton transportControlItem];
  v4 = 0.5;
  if (v8)
  {
    v9 = 0.5;
  }

  else
  {
    v9 = 0.0;
  }

  [(MRUTransportButton *)self->_leadingButton setAlpha:v9];

  [(MRUTransportButton *)self->_leftButton setAlpha:1.0];
  if (!self->_showRoutingButton)
  {
    v4 = 0.0;
  }

LABEL_7:
  routingButton = self->_routingButton;

  [(MRUTransportButton *)routingButton setAlpha:v4];
}

- (void)configureLeadingButton
{
  objc_initWeak(&location, self->_leadingButton);
  objc_initWeak(&from, self);
  if (self->_showTVRemoteButton)
  {
    v3 = [MRUAsset alloc];
    v4 = +[MRUAssetsProvider tvRemote];
    v5 = [(MRUAsset *)v3 initWithImage:v4];

    v6 = [MRUTransportControlItem alloc];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __60__MRUNowPlayingTransportControlsView_configureLeadingButton__block_invoke;
    v13 = &unk_1E7665D58;
    objc_copyWeak(&v14, &from);
    objc_copyWeak(&v15, &location);
    v7 = [(MRUTransportControlItem *)v6 initWithIdentifier:@"tvremote" asset:v5 mainAction:&v10];
    [(MRUTransportButton *)self->_leadingButton setTransportControlItem:v7, v10, v11, v12, v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
  }

  else
  {
    v8 = [(MRUTransportControls *)self->_transportControls leadingItem];

    leadingButton = self->_leadingButton;
    if (!v8)
    {
      [(MRUTransportButton *)self->_leadingButton setTransportControlItem:0];
      goto LABEL_6;
    }

    v5 = [(MRUTransportControls *)self->_transportControls leadingItem];
    [(MRUTransportButton *)leadingButton setTransportControlItem:v5];
  }

LABEL_6:
  [(MRUNowPlayingTransportControlsView *)self setNeedsLayout];
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __60__MRUNowPlayingTransportControlsView_configureLeadingButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [v2 transportControlsView:v3 didSelectTVRemoteButton:v4];
}

- (MRUNowPlayingTransportControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end