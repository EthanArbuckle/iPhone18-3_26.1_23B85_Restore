@interface MRUVolumeBackgroundView
- (BOOL)hasExpandedButtons;
- (MRUVolumeBackgroundView)initWithFrame:(CGRect)a3;
- (double)totalHorizontalSliderWidth;
- (void)collapseExpandableButtons;
- (void)expandButton:(id)a3;
- (void)layoutSubviews;
- (void)layoutSubviewsHorizontal;
- (void)layoutSubviewsVertical;
- (void)setShowConversationAwarenessButton:(BOOL)a3;
- (void)setShowEnvironmentSlider:(BOOL)a3;
- (void)setShowNowPlayingView:(BOOL)a3;
- (void)setShowPrimaryListeningModeButton:(BOOL)a3;
- (void)setShowSecondaryAssetView:(BOOL)a3;
- (void)setShowSecondaryListeningModeButton:(BOOL)a3;
- (void)setShowSpatialAudioModeButton:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)updateVisibility;
@end

@implementation MRUVolumeBackgroundView

- (void)updateVisibility
{
  v3 = 1.0;
  v4 = 1.0;
  if (self->_showSecondaryListeningModeButton)
  {
    if ([(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded])
    {
      v4 = 0.5;
    }

    else
    {
      v4 = 1.0;
    }
  }

  if (self->_showPrimaryListeningModeButton)
  {
    if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      v3 = 0.5;
    }

    else
    {
      v3 = 1.0;
    }
  }

  v5 = [(MRUVolumeBackgroundView *)self hasExpandedButtons];
  v6 = 0.0;
  v7 = 1.0;
  if (!self->_showNowPlayingView)
  {
    v7 = 0.0;
  }

  [(MRUVolumeNowPlayingView *)self->_nowPlayingView setAlpha:v7];
  if (MRULayoutShouldBeVertical())
  {
    [(MRUOutputDeviceAssetView *)self->_primaryAssetView setAlpha:v4];
    if (self->_showSecondaryAssetView)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0.0;
    }

    [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setAlpha:v8];
    showPrimaryListeningModeButton = self->_showPrimaryListeningModeButton;
    if (showPrimaryListeningModeButton && v5)
    {
      v10 = ![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded];
    }

    else
    {
      v10 = !showPrimaryListeningModeButton;
    }

    v21 = 0.0;
    if (!v10)
    {
      v21 = 1.0;
    }

    [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAlpha:v21];
    showSecondaryListeningModeButton = self->_showSecondaryListeningModeButton;
    if (showSecondaryListeningModeButton && v5)
    {
      v23 = ![(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded];
    }

    else
    {
      v23 = !showSecondaryListeningModeButton;
    }

    v26 = 0.0;
    if (!v23)
    {
      v26 = 1.0;
    }

    [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAlpha:v26];
    showSpatialAudioModeButton = self->_showSpatialAudioModeButton;
    if (showSpatialAudioModeButton && v5)
    {
      v28 = ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded];
    }

    else
    {
      v28 = !showSpatialAudioModeButton;
    }

    v29 = 0.0;
    if (!v28)
    {
      v29 = 1.0;
    }

LABEL_63:
    [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setAlpha:v29];
    showConversationAwarenessButton = self->_showConversationAwarenessButton;
    if (showConversationAwarenessButton && v5)
    {
      v34 = ![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded];
    }

    else
    {
      v34 = !showConversationAwarenessButton;
    }

    v35 = 0.0;
    if (!v34)
    {
      v35 = 1.0;
    }

    [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setAlpha:v35];
    v18 = !self->_showNowPlayingView;
    v19 = 0.0;
    v20 = 1.0;
    goto LABEL_69;
  }

  if (!self->_showSecondaryAssetView)
  {
    [(MRUOutputDeviceAssetView *)self->_primaryAssetView setAlpha:1.0];
    [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setAlpha:0.0];
    v24 = self->_showPrimaryListeningModeButton;
    if (v24 && v5)
    {
      v25 = ![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded];
    }

    else
    {
      v25 = !v24;
    }

    if (v25)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }

    [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAlpha:v30];
    [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAlpha:0.0];
    v31 = self->_showSpatialAudioModeButton;
    if (v31 && v5)
    {
      v32 = ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded];
    }

    else
    {
      v32 = !v31;
    }

    v29 = 1.0;
    if (v32)
    {
      v29 = 0.0;
    }

    goto LABEL_63;
  }

  if (!self->_showPrimaryListeningModeButton || (v11 = [(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded], v12 = 0.0, !v11))
  {
    v12 = v4;
  }

  [(MRUOutputDeviceAssetView *)self->_primaryAssetView setAlpha:v12];
  v13 = 0.0;
  if (self->_showSecondaryAssetView)
  {
    if (!self->_showSecondaryListeningModeButton || (v14 = [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded], v13 = 0.0, !v14))
    {
      v13 = v3;
    }
  }

  [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setAlpha:v13];
  if (self->_showPrimaryListeningModeButton && (!self->_showSpatialAudioModeButton || ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded]))
  {
    v6 = v4;
  }

  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAlpha:v6];
  v15 = 0.0;
  if (self->_showSecondaryListeningModeButton)
  {
    v16 = v3;
  }

  else
  {
    v16 = 0.0;
  }

  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAlpha:v16];
  v17 = 1.0;
  if (!self->_showSpatialAudioModeButton)
  {
    v17 = 0.0;
  }

  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setAlpha:v17];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setAlpha:0.0];
  if (self->_showNowPlayingView)
  {
    v15 = 1.0;
    if (self->_showSpatialAudioModeButton)
    {
      v18 = ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded];
      v19 = 1.0;
      v20 = 0.0;
LABEL_69:
      if (v18)
      {
        v15 = v19;
      }

      else
      {
        v15 = v20;
      }
    }
  }

  nowPlayingView = self->_nowPlayingView;

  [(MRUVolumeNowPlayingView *)nowPlayingView setAlpha:v15];
}

- (BOOL)hasExpandedButtons
{
  if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded]|| [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded]|| [(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
  {
    return 1;
  }

  conversationAwarenessButton = self->_conversationAwarenessButton;

  return [(MediaControlsExpandableButton *)conversationAwarenessButton isExpanded];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUVolumeBackgroundView;
  [(MRUVolumeBackgroundView *)&v3 layoutSubviews];
  if (MRULayoutShouldBeVertical())
  {
    [(MRUVolumeBackgroundView *)self layoutSubviewsVertical];
  }

  else
  {
    [(MRUVolumeBackgroundView *)self layoutSubviewsHorizontal];
  }
}

- (void)layoutSubviewsVertical
{
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAxis:0];
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAxis:0];
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setAxis:0];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setAxis:0];
  [(MRUVolumeNowPlayingView *)self->_nowPlayingView setAxis:MRUIsSmallScreen() ^ 1];
  v3 = [(MRUVolumeBackgroundView *)self traitCollection];
  [v3 displayScale];
  v5 = v4;
  v41 = v4;

  MRUExpandedContentInsets();
  MRUVerticalScreenInset(self);
  v6 = CCUISliderExpandedContentModuleWidth();
  v34 = v7;
  MRUDefaultExpandedWidth(v6);
  CCUISliderExpandedContentModuleHeight();
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectCenteredIntegralRectScale();
  v39 = v8;
  v40 = v9;
  v11 = v10;
  rect = v12;
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectInset();
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v18 = CGRectGetWidth(v45);
  v46.origin.x = v39;
  v46.size.width = v40;
  v35 = v11;
  v46.origin.y = v11;
  v46.size.height = rect;
  v19 = CGRectGetMinY(v46);
  v36 = y;
  v37 = x;
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v20 = v19 - CGRectGetMinY(v47);
  if (self->_showSecondaryAssetView)
  {
    v21 = v34;
  }

  else
  {
    v21 = v18;
  }

  [(MRUOutputDeviceAssetView *)self->_primaryAssetView sizeThatFits:v21, v20];
  UIRectCenteredIntegralRectScale();
  [(MRUOutputDeviceAssetView *)self->_primaryAssetView setFrame:v41];
  v48.origin.x = MinX;
  v48.origin.y = MinY;
  v48.size.width = v18;
  v48.size.height = v20;
  CGRectGetMaxX(v48);
  v49.origin.x = MinX;
  v49.origin.y = MinY;
  v49.size.width = v18;
  v49.size.height = v20;
  CGRectGetMinY(v49);
  v50.origin.x = MinX;
  v50.origin.y = MinY;
  v50.size.width = v18;
  v50.size.height = v20;
  [(MRUOutputDeviceAssetView *)self->_secondaryAssetView sizeThatFits:v34, CGRectGetHeight(v50)];
  UIRectCenteredIntegralRectScale();
  [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setFrame:v41];
  if (self->_showSecondaryAssetView)
  {
    v22 = width;
    v23 = height;
    if (![(MRUVolumeBackgroundView *)self hasExpandedButtons])
    {
      v51.origin.y = v36;
      v51.origin.x = v37;
      v51.size.width = width;
      v51.size.height = height;
      CGRectGetWidth(v51);
    }
  }

  else
  {
    v22 = width;
    v23 = height;
  }

  v52.origin.x = v37;
  v52.origin.y = v36;
  v52.size.width = v22;
  v52.size.height = v23;
  CGRectGetMaxY(v52);
  v53.origin.x = v39;
  v53.size.width = v40;
  v53.origin.y = v35;
  v53.size.height = rect;
  CGRectGetMaxY(v53);
  v54.origin.x = v37;
  v54.origin.y = v36;
  v54.size.width = v22;
  v54.size.height = v23;
  CGRectGetHeight(v54);
  UIRectInset();
  v24 = v55.origin.x;
  v25 = v55.origin.y;
  v26 = v55.size.width;
  v27 = v55.size.height;
  CGRectGetWidth(v55);
  showSecondaryAssetView = self->_showSecondaryAssetView;
  if (self->_showSpatialAudioModeButton && self->_showSecondaryAssetView)
  {
    if (![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      goto LABEL_22;
    }

    showSecondaryAssetView = self->_showSecondaryAssetView;
  }

  if (showSecondaryAssetView && ![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
  {
    goto LABEL_22;
  }

  showSpatialAudioModeButton = self->_showSpatialAudioModeButton;
  if (!self->_showConversationAwarenessButton || !self->_showSpatialAudioModeButton)
  {
    goto LABEL_19;
  }

  if (![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
  {
LABEL_22:
    UIRectInset();
    goto LABEL_23;
  }

  showSpatialAudioModeButton = self->_showSpatialAudioModeButton;
LABEL_19:
  if ((showSpatialAudioModeButton || self->_showConversationAwarenessButton) && ![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
  {
    goto LABEL_22;
  }

LABEL_23:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setFrame:?];
  if (![(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded])
  {
    UIRectInset();
  }

  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setFrame:?];
  if (self->_showSecondaryAssetView && ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
  {
    goto LABEL_33;
  }

  if (self->_showPrimaryListeningModeButton)
  {
    if (!self->_showConversationAwarenessButton)
    {
      goto LABEL_32;
    }

    if (![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
    {
LABEL_33:
      UIRectInset();
      goto LABEL_34;
    }

    if (self->_showPrimaryListeningModeButton)
    {
      goto LABEL_32;
    }
  }

  if (self->_showConversationAwarenessButton)
  {
LABEL_32:
    if (![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setFrame:?];
  if (self->_showPrimaryListeningModeButton)
  {
    if (!self->_showSpatialAudioModeButton)
    {
      goto LABEL_38;
    }

    if (![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
    {
      goto LABEL_41;
    }

    if (self->_showPrimaryListeningModeButton)
    {
LABEL_38:
      if ([(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
      {
        goto LABEL_39;
      }

LABEL_41:
      UIRectInset();
      goto LABEL_42;
    }
  }

LABEL_39:
  if (self->_showSpatialAudioModeButton && ![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded:v24])
  {
    goto LABEL_41;
  }

LABEL_42:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setFrame:?];
  v56.origin.x = v37;
  v56.origin.y = v36;
  v56.size.width = v22;
  v56.size.height = v23;
  CGRectGetMinX(v56);
  v57.origin.x = v39;
  v57.origin.y = v35;
  v57.size.width = v40;
  v57.size.height = rect;
  CGRectGetMaxY(v57);
  v58.origin.x = v37;
  v58.origin.y = v36;
  v58.size.width = v22;
  v58.size.height = v23;
  v30 = CGRectGetWidth(v58);
  v59.origin.y = v25;
  v59.origin.x = v24;
  v59.size.width = v26;
  v59.size.height = v27;
  v31 = CGRectGetMinY(v59);
  v60.origin.x = v39;
  v60.origin.y = v35;
  v60.size.width = v40;
  v60.size.height = rect;
  [(MRUVolumeNowPlayingView *)self->_nowPlayingView sizeThatFits:v30, v31 - CGRectGetMaxY(v60)];
  UIRectCenteredIntegralRectScale();
  nowPlayingView = self->_nowPlayingView;

  [(MRUVolumeNowPlayingView *)nowPlayingView setFrame:?];
}

- (MRUVolumeBackgroundView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = MRUVolumeBackgroundView;
  v3 = [(MRUVolumeBackgroundView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MRUOutputDeviceAssetView);
    primaryAssetView = v3->_primaryAssetView;
    v3->_primaryAssetView = v4;

    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_primaryAssetView];
    v6 = objc_alloc_init(MRUOutputDeviceAssetView);
    secondaryAssetView = v3->_secondaryAssetView;
    v3->_secondaryAssetView = v6;

    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_secondaryAssetView];
    v8 = objc_alloc_init(MRUVolumeNowPlayingView);
    nowPlayingView = v3->_nowPlayingView;
    v3->_nowPlayingView = v8;

    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_nowPlayingView];
    v10 = [[MediaControlsExpandableButton alloc] initForControlCenter];
    primaryListeningModeButton = v3->_primaryListeningModeButton;
    v3->_primaryListeningModeButton = v10;

    [(MediaControlsExpandableButton *)v3->_primaryListeningModeButton setMaximumExpandedSize:0.0, 226.0];
    [(MediaControlsExpandableButton *)v3->_primaryListeningModeButton setButtonImageSize:54.0, 54.0];
    [(MediaControlsExpandableButton *)v3->_primaryListeningModeButton setContentVerticalAlignment:1];
    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_primaryListeningModeButton];
    v12 = [[MediaControlsExpandableButton alloc] initForControlCenter];
    secondaryListeningModeButton = v3->_secondaryListeningModeButton;
    v3->_secondaryListeningModeButton = v12;

    [(MediaControlsExpandableButton *)v3->_secondaryListeningModeButton setMaximumExpandedSize:0.0, 226.0];
    [(MediaControlsExpandableButton *)v3->_secondaryListeningModeButton setButtonImageSize:54.0, 54.0];
    [(MediaControlsExpandableButton *)v3->_secondaryListeningModeButton setContentVerticalAlignment:1];
    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_secondaryListeningModeButton];
    v14 = [[MediaControlsExpandableButton alloc] initForControlCenter];
    spatialAudioModeButton = v3->_spatialAudioModeButton;
    v3->_spatialAudioModeButton = v14;

    [(MediaControlsExpandableButton *)v3->_spatialAudioModeButton setMaximumExpandedSize:0.0, 226.0];
    [(MediaControlsExpandableButton *)v3->_spatialAudioModeButton setButtonImageSize:54.0, 54.0];
    [(MediaControlsExpandableButton *)v3->_spatialAudioModeButton setContentVerticalAlignment:1];
    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_spatialAudioModeButton];
    v16 = [[MediaControlsExpandableButton alloc] initForControlCenter];
    conversationAwarenessButton = v3->_conversationAwarenessButton;
    v3->_conversationAwarenessButton = v16;

    [(MediaControlsExpandableButton *)v3->_conversationAwarenessButton setMaximumExpandedSize:0.0, 226.0];
    [(MediaControlsExpandableButton *)v3->_conversationAwarenessButton setButtonImageSize:54.0, 54.0];
    [(MediaControlsExpandableButton *)v3->_conversationAwarenessButton setContentVerticalAlignment:1];
    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_conversationAwarenessButton];
    [(MRUVolumeBackgroundView *)v3 updateVisibility];
  }

  return v3;
}

- (void)layoutSubviewsHorizontal
{
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAxis:1];
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAxis:1];
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setAxis:1];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setAxis:1];
  v3 = self->_showSecondaryAssetView && self->_showSpatialAudioModeButton;
  [(MRUVolumeNowPlayingView *)self->_nowPlayingView setAxis:v3];
  v4 = [(MRUVolumeBackgroundView *)self traitCollection];
  [v4 displayScale];
  v47 = v5;

  MRUExpandedContentInsets();
  MRUHortizonalScreenInset(self);
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectInset();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  CCUISliderExpandedContentModuleWidth();
  CCUISliderExpandedContentModuleHeight();
  v50.origin.x = v7;
  v50.origin.y = v9;
  v50.size.width = v11;
  v50.size.height = v13;
  Width = CGRectGetWidth(v50);
  [(MRUVolumeBackgroundView *)self totalHorizontalSliderWidth];
  v16 = Width - v15;
  v17 = 2.0;
  if (self->_showSecondaryAssetView && self->_showSpatialAudioModeButton)
  {
    v17 = 3.0;
  }

  v18 = v16 / v17;
  v51.origin.x = v7;
  v51.origin.y = v9;
  v51.size.width = v11;
  v51.size.height = v13;
  CGRectGetMinX(v51);
  v48 = v18;
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectCenteredYInRectScale();
  v44 = v20;
  v45 = v19;
  v41 = v22;
  v43 = v21;
  v52.origin.x = v7;
  v52.origin.y = v9;
  v52.size.width = v11;
  v52.size.height = v13;
  CGRectGetMaxX(v52);
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectCenteredYInRectScale();
  v38 = v24;
  v39 = v23;
  v36 = v26;
  v37 = v25;
  v53.origin.x = v7;
  v53.origin.y = v9;
  v53.size.width = v11;
  v53.size.height = v13;
  [MediaControlsExpandableButton collapsedHeightWithImageHeight:54.0 maximumHeight:CGRectGetHeight(v53) / 3.0, v47];
  v54.origin.x = v7;
  v54.origin.y = v9;
  v54.size.width = v11;
  v54.size.height = v13;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = v7;
  v55.origin.y = v9;
  v55.size.width = v11;
  v55.size.height = v13;
  MinY = CGRectGetMinY(v55);
  v56.origin.x = v7;
  v56.origin.y = v9;
  v56.size.width = v11;
  v56.size.height = v13;
  Height = CGRectGetHeight(v56);
  v57.origin.y = v44;
  v57.origin.x = v45;
  v57.size.height = v41;
  v57.size.width = v43;
  MaxX = CGRectGetMaxX(v57);
  v58.origin.x = v7;
  v58.origin.y = v9;
  v58.size.width = v11;
  v58.size.height = v13;
  v42 = CGRectGetMinY(v58);
  v59.origin.x = v7;
  v59.origin.y = v9;
  v59.size.width = v11;
  v59.size.height = v13;
  v40 = CGRectGetHeight(v59);
  v60.origin.y = v38;
  v60.origin.x = v39;
  v60.size.height = v36;
  v60.size.width = v37;
  CGRectGetMaxX(v60);
  v61.origin.x = v7;
  v61.origin.y = v9;
  v61.size.width = v11;
  v61.size.height = v13;
  CGRectGetMinY(v61);
  v62.origin.x = v7;
  v62.origin.y = v9;
  v62.size.width = v11;
  v62.size.height = v13;
  CGRectGetHeight(v62);
  UIRectInset();
  if (self->_showSecondaryAssetView || self->_showNowPlayingView)
  {
    UIRectInset();
  }

  UIRectIntegralWithScale();
  [(MRUOutputDeviceAssetView *)self->_primaryAssetView setFrame:?];
  UIRectInset();
  UIRectIntegralWithScale();
  [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setFrame:?];
  if (self->_showSecondaryAssetView)
  {
    if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      goto LABEL_21;
    }

    if (self->_showSecondaryAssetView)
    {
      goto LABEL_20;
    }
  }

  if (!self->_showSpatialAudioModeButton)
  {
    goto LABEL_17;
  }

  if (self->_showConversationAwarenessButton)
  {
    if (![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      goto LABEL_20;
    }

    if (!self->_showSpatialAudioModeButton)
    {
LABEL_17:
      if (!self->_showConversationAwarenessButton)
      {
        goto LABEL_19;
      }
    }
  }

  if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
  {
LABEL_19:
    if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      goto LABEL_21;
    }
  }

LABEL_20:
  UIRectInset();
LABEL_21:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setFrame:?];
  if (![(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded])
  {
    UIRectInset();
  }

  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setFrame:?];
  if (self->_showSecondaryAssetView)
  {
    v34 = [(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded];
    v33 = v40;
    v31 = v42;
    v32 = v48;
    v30 = MaxX;
    if (v34)
    {
      goto LABEL_34;
    }

    if (self->_showSecondaryAssetView)
    {
      goto LABEL_33;
    }
  }

  if (!self->_showPrimaryListeningModeButton)
  {
    goto LABEL_30;
  }

  if (self->_showConversationAwarenessButton)
  {
    if (![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded:v30])
    {
      goto LABEL_33;
    }

    if (!self->_showPrimaryListeningModeButton)
    {
LABEL_30:
      if (!self->_showConversationAwarenessButton)
      {
        goto LABEL_32;
      }
    }
  }

  if ([(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
  {
LABEL_32:
    if ([(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
    {
      goto LABEL_34;
    }
  }

LABEL_33:
  UIRectInset();
LABEL_34:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setFrame:?];
  if (!self->_showPrimaryListeningModeButton)
  {
    goto LABEL_39;
  }

  if (self->_showSpatialAudioModeButton)
  {
    if (![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
    {
LABEL_42:
      UIRectInset();
      goto LABEL_43;
    }

    if (!self->_showPrimaryListeningModeButton)
    {
      goto LABEL_39;
    }
  }

  if (![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
  {
    goto LABEL_42;
  }

LABEL_39:
  if (self->_showSpatialAudioModeButton && ![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded]|| ![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
  {
    goto LABEL_42;
  }

LABEL_43:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setFrame:?];
  [(MRUVolumeNowPlayingView *)self->_nowPlayingView sizeThatFits:v48, Height];
  v63.origin.x = MinX;
  v63.origin.y = MinY;
  v63.size.width = v48;
  v63.size.height = Height;
  CGRectGetMidY(v63);
  UIRectCenteredXInRectScale();
  if (self->_showSecondaryAssetView)
  {
    v64.origin.x = MaxX;
    v64.origin.y = v42;
    v64.size.width = v48;
    v64.size.height = v40;
    CGRectGetMidY(v64);
    UIRectCenteredXInRectScale();
  }

  nowPlayingView = self->_nowPlayingView;

  [(MRUVolumeNowPlayingView *)nowPlayingView setFrame:?];
}

- (void)setShowSecondaryAssetView:(BOOL)a3
{
  self->_showSecondaryAssetView = a3;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowNowPlayingView:(BOOL)a3
{
  self->_showNowPlayingView = a3;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowPrimaryListeningModeButton:(BOOL)a3
{
  self->_showPrimaryListeningModeButton = a3;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowSecondaryListeningModeButton:(BOOL)a3
{
  self->_showSecondaryListeningModeButton = a3;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowSpatialAudioModeButton:(BOOL)a3
{
  self->_showSpatialAudioModeButton = a3;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowConversationAwarenessButton:(BOOL)a3
{
  self->_showConversationAwarenessButton = a3;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowEnvironmentSlider:(BOOL)a3
{
  if (self->_showEnvironmentSlider != a3)
  {
    self->_showEnvironmentSlider = a3;
    [(MRUVolumeBackgroundView *)self setNeedsLayout];
  }
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUOutputDeviceAssetView *)self->_primaryAssetView setStylingProvider:v6];
    [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setStylingProvider:v6];
    [(MRUVolumeNowPlayingView *)self->_nowPlayingView setStylingProvider:v6];
    [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setStylingProvider:v6];
    [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setStylingProvider:v6];
    [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setStylingProvider:v6];
    [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)expandButton:(id)a3
{
  v6 = a3;
  [(MediaControlsExpandableButton *)v6 setExpanded:1];
  p_primaryListeningModeButton = &self->_primaryListeningModeButton;
  primaryListeningModeButton = self->_primaryListeningModeButton;
  if (primaryListeningModeButton == v6)
  {
    primaryListeningModeButton = self->_secondaryListeningModeButton;
    p_primaryListeningModeButton = &self->_secondaryListeningModeButton;
LABEL_6:
    [(MediaControlsExpandableButton *)primaryListeningModeButton setExpanded:0];
    [(MediaControlsExpandableButton *)*p_primaryListeningModeButton setUserInteractionEnabled:0];
    goto LABEL_7;
  }

  if (self->_secondaryListeningModeButton == v6 || self->_spatialAudioModeButton == v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(MRUVolumeBackgroundView *)self updateVisibility];
}

- (void)collapseExpandableButtons
{
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setExpanded:0];
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setExpanded:0];
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setExpanded:0];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setExpanded:0];
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setUserInteractionEnabled:1];
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setUserInteractionEnabled:1];
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setUserInteractionEnabled:1];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setUserInteractionEnabled:1];
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (double)totalHorizontalSliderWidth
{
  if (self->_showSecondaryAssetView)
  {
    if (self->_showSpatialAudioModeButton)
    {
      CCUISliderExpandedContentModuleWidth();
      return v3 + v3;
    }

    goto LABEL_5;
  }

  if (self->_showEnvironmentSlider)
  {
LABEL_5:

    return MRUDefaultExpandedWidth(self);
  }

  CCUISliderExpandedContentModuleWidth();
  return result;
}

@end