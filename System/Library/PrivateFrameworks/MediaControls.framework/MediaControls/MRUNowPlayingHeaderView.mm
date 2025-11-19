@interface MRUNowPlayingHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUNowPlayingHeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContentScale:(double)a3;
- (void)setHapticView:(id)a3;
- (void)setLayout:(int64_t)a3;
- (void)setShowHaptic:(BOOL)a3;
- (void)setShowRoutingButton:(BOOL)a3;
- (void)setShowTransportButton:(BOOL)a3;
- (void)setShowWaveform:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setWaveformView:(id)a3;
- (void)updateVisibility;
@end

@implementation MRUNowPlayingHeaderView

- (MRUNowPlayingHeaderView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MRUNowPlayingHeaderView;
  v3 = [(MRUNowPlayingHeaderView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MRUNowPlayingLabelView);
    labelView = v3->_labelView;
    v3->_labelView = v4;

    [(MRUNowPlayingHeaderView *)v3 addSubview:v3->_labelView];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:-1 scale:29.0];
    v7 = [(MPButton *)MRUTransportButton easyTouchButtonWithType:0];
    routingButton = v3->_routingButton;
    v3->_routingButton = v7;

    [(MRUTransportButton *)v3->_routingButton setCursorScale:1.5];
    [(MPButton *)v3->_routingButton setHitRectInsets:-24.0, -24.0, -24.0, -24.0];
    [(MRUTransportButton *)v3->_routingButton setPreferredSymbolConfiguration:v6 forImageInState:0];
    [(MRUNowPlayingHeaderView *)v3 addSubview:v3->_routingButton];
    v9 = [(MPButton *)MRUTransportButton easyTouchButtonWithType:0];
    transportButton = v3->_transportButton;
    v3->_transportButton = v9;

    [(MPButton *)v3->_transportButton setHitRectInsets:-24.0, -24.0, -24.0, -24.0];
    [(MRUTransportButton *)v3->_transportButton setCursorScale:1.5];
    [(MRUTransportButton *)v3->_transportButton setPackageScale:0.7];
    [(MRUTransportButton *)v3->_transportButton setPreferredSymbolConfiguration:v6 forImageInState:0];
    [(MRUNowPlayingHeaderView *)v3 addSubview:v3->_transportButton];
    v3->_contentScale = 1.0;
    [(MRUNowPlayingHeaderView *)v3 updateVisibility];
  }

  return v3;
}

- (void)layoutSubviews
{
  v72.receiver = self;
  v72.super_class = MRUNowPlayingHeaderView;
  [(MRUNowPlayingHeaderView *)&v72 layoutSubviews];
  [(MRUNowPlayingHeaderView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  layout = self->_layout;
  if (layout == 4)
  {
    CGRectGetMaxX(*&v3);
    UIRectCenteredYInRect();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(MRUNowPlayingHeaderView *)self bounds];
    v70 = v30;
    v71 = v26;
    v68 = v28;
    v69 = v32;
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUWaveformView *)self->_waveformView setFrame:?];
    v78.origin.x = v7;
    v78.origin.y = v8;
    v78.size.width = v9;
    v78.size.height = v10;
    CGRectGetMaxX(v78);
    UIRectCenteredYInRect();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [(MRUNowPlayingHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUHapticView *)self->_hapticView setFrame:?];
    v79.origin.x = v7;
    v79.origin.y = v8;
    v79.size.width = v9;
    v79.size.height = v10;
    CGRectGetMaxX(v79);
    UIRectCenteredYInRect();
    [(MRUNowPlayingHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUTransportButton *)self->_transportButton setFrame:?];
    if (self->_showWaveform)
    {
      v42 = v36;
      v41 = v34;
      if (!self->_showHaptic)
      {
        v42 = v68;
        v41 = v71;
      }

      v44 = v40;
      v43 = v38;
      if (!self->_showHaptic)
      {
        v43 = v70;
        v44 = v69;
      }

      v45 = v41;
      v46 = v42;
      v47 = v43;
      v48 = v44;
    }

    else
    {
      v48 = v40;
      v47 = v38;
      v46 = v36;
      v45 = v34;
      if (!self->_showHaptic)
      {
LABEL_24:
        p_labelView = &self->_labelView;
        [(MRUNowPlayingLabelView *)self->_labelView sizeThatFits:v9, v10, v47, v48, v68];
        v87.origin.x = v7;
        v87.origin.y = v8;
        v87.size.width = v9;
        v87.size.height = v10;
        CGRectGetMinX(v87);
        v88.origin.x = v7;
        v88.origin.y = v8;
        v88.size.width = v9;
        v88.size.height = v10;
        CGRectGetWidth(v88);
LABEL_25:
        UIRectCenteredYInRect();
        [(MRUNowPlayingHeaderView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        goto LABEL_26;
      }
    }

    CGRectGetWidth(*&v45);
    UIRectInset();
    v7 = v66;
    v8 = v67;
    v9 = v47;
    v10 = v48;
    goto LABEL_24;
  }

  if (layout != 2)
  {
    CGRectGetMaxX(*&v3);
    UIRectCenteredYInRect();
    [(MRUNowPlayingHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUTransportButton *)self->_routingButton setFrame:?];
    v80.origin.x = v7;
    v80.origin.y = v8;
    v80.size.width = v9;
    v80.size.height = v10;
    v81.origin.x = CGRectGetMaxX(v80) - 22.0;
    v81.origin.y = 0.0;
    v81.size.width = 22.0;
    v81.size.height = 22.0;
    CGRectOffset(v81, -10.0, 3.0);
    [(MRUNowPlayingHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUWaveformView *)self->_waveformView setFrame:?];
    v82.origin.x = v7;
    v82.origin.y = v8;
    v82.size.width = v9;
    v82.size.height = v10;
    v83.origin.x = CGRectGetMaxX(v82) - 32.0;
    v83.origin.y = 0.0;
    v83.size.width = 32.0;
    v83.size.height = 32.0;
    CGRectOffset(v83, -10.0, 3.0);
    [(MRUNowPlayingHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUHapticView *)self->_hapticView setFrame:?];
    if (self->_showRoutingButton && self->_layout == 3)
    {
      UIRectInset();
      v7 = v49;
      v8 = v50;
      v9 = v51;
      v10 = v52;
    }

    if (self->_showWaveform && !self->_showHaptic)
    {
      UIRectInset();
      v7 = v53;
      v8 = v54;
      v9 = v55;
      v10 = v56;
    }

    if (self->_showHaptic)
    {
      UIRectInset();
      v7 = v57;
      v8 = v58;
      v9 = v59;
      v10 = v60;
    }

    v84.origin.x = v7;
    v84.origin.y = v8;
    v84.size.width = v9;
    v84.size.height = v10;
    CGRectGetMaxX(v84);
    v61 = v8;
    UIRectCenteredYInRect();
    [(MRUNowPlayingHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUTransportButton *)self->_transportButton setFrame:?];
    if (self->_showTransportButton && self->_layout == 3)
    {
      UIRectInset();
      v7 = v62;
      v61 = v63;
      v9 = v64;
      v10 = v65;
    }

    p_labelView = &self->_labelView;
    [(MRUNowPlayingLabelView *)self->_labelView sizeThatFits:v9, v10];
    v85.origin.x = v7;
    v85.origin.y = v61;
    v85.size.width = v9;
    v85.size.height = v10;
    CGRectGetMinX(v85);
    v86.origin.x = v7;
    v86.origin.y = v61;
    v86.size.width = v9;
    v86.size.height = v10;
    CGRectGetWidth(v86);
    goto LABEL_25;
  }

  UIRectInset();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(MRUNowPlayingLabelView *)self->_labelView sizeThatFits:v16, v18];
  v21 = v20;
  v73.origin.x = v13;
  v73.origin.y = v15;
  v73.size.width = v17;
  v73.size.height = v19;
  MinX = CGRectGetMinX(v73);
  v74.origin.x = v13;
  v74.origin.y = v15;
  v74.size.width = v17;
  v74.size.height = v19;
  MinY = CGRectGetMinY(v74);
  v75.origin.x = v13;
  v75.origin.y = v15;
  v75.size.width = v17;
  v75.size.height = v19;
  [(MRUNowPlayingLabelView *)self->_labelView setFrame:MinX, MinY, CGRectGetWidth(v75), v21];
  v76.origin.x = v13;
  v76.origin.y = v15;
  v76.size.width = v17;
  v76.size.height = v19;
  CGRectGetMaxX(v76);
  UIRectCenteredYInRect();
  [(MRUNowPlayingHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUTransportButton *)self->_transportButton setFrame:?];
  v77.origin.x = v13;
  v77.origin.y = v15;
  v77.size.width = v17;
  v77.size.height = v19;
  CGRectGetMaxX(v77);
  UIRectCenteredYInRect();
  [(MRUNowPlayingHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  p_labelView = &self->_routingButton;
LABEL_26:
  [*p_labelView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_layout == 2)
  {
    [(MRUNowPlayingLabelView *)self->_labelView sizeThatFits:a3.width, a3.height];
  }

  else
  {
    [(MRUTransportButton *)self->_routingButton sizeThatFits:a3.width, a3.height];
    v8 = v7;
    [(MRUNowPlayingLabelView *)self->_labelView sizeThatFits:width, height];
    if (v8 >= v6)
    {
      v6 = v8;
    }
  }

  v9 = width;
  result.height = v6;
  result.width = v9;
  return result;
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUWaveformView *)self->_waveformView setStylingProvider:v6];
    [(MRUHapticView *)self->_hapticView setStylingProvider:v6];
    [(MRUNowPlayingLabelView *)self->_labelView setStylingProvider:v6];
    [(MRUTransportButton *)self->_transportButton setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)setWaveformView:(id)a3
{
  v4 = a3;
  [(MRUWaveformView *)self->_waveformView removeFromSuperview];
  waveformView = self->_waveformView;
  self->_waveformView = v4;
  v6 = v4;

  [(MRUWaveformView *)self->_waveformView setStylingProvider:self->_stylingProvider];
  [(MRUNowPlayingHeaderView *)self addSubview:v6];

  [(MRUNowPlayingHeaderView *)self updateVisibility];

  [(MRUNowPlayingHeaderView *)self setNeedsLayout];
}

- (void)setHapticView:(id)a3
{
  v4 = a3;
  [(MRUHapticView *)self->_hapticView removeFromSuperview];
  hapticView = self->_hapticView;
  self->_hapticView = v4;
  v6 = v4;

  [(MRUHapticView *)self->_hapticView setStylingProvider:self->_stylingProvider];
  [(MRUNowPlayingHeaderView *)self addSubview:v6];

  [(MRUNowPlayingHeaderView *)self updateVisibility];

  [(MRUNowPlayingHeaderView *)self setNeedsLayout];
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(MRUNowPlayingHeaderView *)self updateVisibility];

    [(MRUNowPlayingHeaderView *)self setNeedsLayout];
  }
}

- (void)setShowTransportButton:(BOOL)a3
{
  if (self->_showTransportButton != a3)
  {
    self->_showTransportButton = a3;
    [(MRUNowPlayingHeaderView *)self updateVisibility];

    [(MRUNowPlayingHeaderView *)self setNeedsLayout];
  }
}

- (void)setShowWaveform:(BOOL)a3
{
  if (self->_showWaveform != a3)
  {
    self->_showWaveform = a3;
    [(MRUNowPlayingHeaderView *)self updateVisibility];

    [(MRUNowPlayingHeaderView *)self setNeedsLayout];
  }
}

- (void)setShowHaptic:(BOOL)a3
{
  if (self->_showHaptic != a3)
  {
    self->_showHaptic = a3;
    [(MRUNowPlayingHeaderView *)self updateVisibility];

    [(MRUNowPlayingHeaderView *)self setNeedsLayout];
  }
}

- (void)setShowRoutingButton:(BOOL)a3
{
  if (self->_showRoutingButton != a3)
  {
    self->_showRoutingButton = a3;
    [(MRUNowPlayingHeaderView *)self updateVisibility];

    [(MRUNowPlayingHeaderView *)self setNeedsLayout];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(MRUNowPlayingLabelView *)self->_labelView setTextAlignment:?];

    [(MRUNowPlayingHeaderView *)self setNeedsLayout];
  }
}

- (void)setContentScale:(double)a3
{
  if (vabdd_f64(self->_contentScale, a3) > 2.22044605e-16)
  {
    self->_contentScale = a3;
    [(MRUNowPlayingLabelView *)self->_labelView setContentScale:?];
  }
}

- (void)updateVisibility
{
  layout = self->_layout;
  if (layout <= 1)
  {
    if (layout)
    {
      if (layout != 1)
      {
        return;
      }

      goto LABEL_5;
    }

LABEL_9:
    [(MRUTransportButton *)self->_routingButton setAlpha:0.0];
    [(MRUTransportButton *)self->_transportButton setAlpha:0.0];
    v6 = 0.0;
    if (self->_showWaveform)
    {
      v6 = 1.0;
      if (self->_showHaptic)
      {
        v6 = 0.0;
      }
    }

    [(MRUWaveformView *)self->_waveformView setAlpha:v6];
    v5 = 1.0;
    if (!self->_showHaptic)
    {
      v5 = 0.0;
    }

    hapticView = self->_hapticView;
    goto LABEL_15;
  }

  if (layout == 4)
  {
    goto LABEL_9;
  }

  if (layout != 3)
  {
    if (layout != 2)
    {
      return;
    }

LABEL_5:
    [(MRUTransportButton *)self->_routingButton setAlpha:0.0];
    [(MRUTransportButton *)self->_transportButton setAlpha:0.0];
    [(MRUWaveformView *)self->_waveformView setAlpha:0.0];
    hapticView = self->_hapticView;
    v5 = 0.0;
LABEL_15:

    [(MRUHapticView *)hapticView setAlpha:v5];
    return;
  }

  if (self->_showRoutingButton)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(MRUTransportButton *)self->_routingButton setAlpha:v7];
  if (self->_showTransportButton)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(MRUTransportButton *)self->_transportButton setAlpha:v8];
  [(MRUWaveformView *)self->_waveformView setAlpha:0.0];
  [(MRUHapticView *)self->_hapticView setAlpha:0.0];
  if (self->_showTransportButton)
  {
    v9 = &unk_1A2307D18;
  }

  else
  {
    v9 = &unk_1A2307CD8;
  }

  v10 = *v9;
  v11 = &unk_1A2307D10;
  if (!self->_showTransportButton)
  {
    v11 = &qword_1A2307CD0;
  }

  v12 = *v11;
  v13 = &unk_1A2307D08;
  if (!self->_showTransportButton)
  {
    v13 = &unk_1A2307CC8;
  }

  v14 = *v13;
  if (self->_showTransportButton)
  {
    v15 = &MRUNowPlayingHitRectInsetRight;
  }

  else
  {
    v15 = &MRUNowPlayingHitRectInset;
  }

  [(MPButton *)self->_routingButton setHitRectInsets:*v15, v14, v12, v10];
  if (self->_showRoutingButton)
  {
    v16 = &MRUNowPlayingHitRectInsetLeft;
  }

  else
  {
    v16 = &MRUNowPlayingHitRectInset;
  }

  v17 = *v16;
  v18 = *(v16 + 1);
  transportButton = self->_transportButton;
  v20 = *(v16 + 2);
  v21 = *(v16 + 3);

  [(MPButton *)transportButton setHitRectInsets:v17, v18, v20, v21];
}

@end