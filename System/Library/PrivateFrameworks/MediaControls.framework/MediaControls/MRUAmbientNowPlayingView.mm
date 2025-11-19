@interface MRUAmbientNowPlayingView
- (MRUAmbientNowPlayingView)initWithFrame:(CGRect)a3;
- (UIView)backgroundView;
- (void)createConstraints;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setBackgroundView:(id)a3;
- (void)setNowPlayingInfo:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setRoutingButtonImage:(id)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTransportControls:(id)a3;
- (void)sliderInteractionWillExtend:(id)a3 insets:(UIEdgeInsets)a4;
- (void)updateVisualStyling;
@end

@implementation MRUAmbientNowPlayingView

- (MRUAmbientNowPlayingView)initWithFrame:(CGRect)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = MRUAmbientNowPlayingView;
  v3 = [(MRUAmbientNowPlayingView *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    [(MRUAmbientNowPlayingView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    boundsLayoutGuide = v3->_boundsLayoutGuide;
    v3->_boundsLayoutGuide = v5;

    [(MRUAmbientNowPlayingView *)v3 addLayoutGuide:v3->_boundsLayoutGuide];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    transportControlsLayoutGuide = v3->_transportControlsLayoutGuide;
    v3->_transportControlsLayoutGuide = v7;

    [(MRUAmbientNowPlayingView *)v3 addLayoutGuide:v3->_transportControlsLayoutGuide];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    leftButtonLayoutGuide = v3->_leftButtonLayoutGuide;
    v3->_leftButtonLayoutGuide = v9;

    [(MRUAmbientNowPlayingView *)v3 addLayoutGuide:v3->_leftButtonLayoutGuide];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    rightButtonLayoutGuide = v3->_rightButtonLayoutGuide;
    v3->_rightButtonLayoutGuide = v11;

    [(MRUAmbientNowPlayingView *)v3 addLayoutGuide:v3->_rightButtonLayoutGuide];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    labelViewLayoutGuide = v3->_labelViewLayoutGuide;
    v3->_labelViewLayoutGuide = v13;

    [(MRUAmbientNowPlayingView *)v3 addLayoutGuide:v3->_labelViewLayoutGuide];
    v15 = objc_alloc_init(MRUFlippingArtworkView);
    artworkView = v3->_artworkView;
    v3->_artworkView = v15;

    [(MRUFlippingArtworkView *)v3->_artworkView setStyle:10];
    [(MRUAmbientNowPlayingView *)v3 addSubview:v3->_artworkView];
    v17 = objc_alloc_init(MRUNowPlayingLabelView);
    labelView = v3->_labelView;
    v3->_labelView = v17;

    [(MRUNowPlayingLabelView *)v3->_labelView setLayout:3];
    [(MRUNowPlayingLabelView *)v3->_labelView setTextAlignment:1];
    [(MRUNowPlayingLabelView *)v3->_labelView setMarqueeFadeEdgeInsets:0.0, 48.0, 0.0, 48.0];
    [(MRUNowPlayingLabelView *)v3->_labelView setMarqueeContentGap:96.0];
    [(MRUNowPlayingLabelView *)v3->_labelView setShowRoute:0];
    [(MRUAmbientNowPlayingView *)v3 addSubview:v3->_labelView];
    v19 = objc_alloc_init(MRUNowPlayingTimeControlsView);
    timeControlsView = v3->_timeControlsView;
    v3->_timeControlsView = v19;

    [(MRUNowPlayingTimeControlsView *)v3->_timeControlsView setLayout:2];
    [(MRUNowPlayingTimeControlsView *)v3->_timeControlsView setSliderHeight:14.0];
    [(MRUNowPlayingTimeControlsView *)v3->_timeControlsView setSliderExpansionFactor:1.78571429];
    [(MRUAmbientNowPlayingView *)v3 addSubview:v3->_timeControlsView];
    if (MRUIsSmallScreen())
    {
      v21 = 1.5;
    }

    else
    {
      v21 = 2.0;
    }

    v22 = [(MPButton *)MRUTransportButton easyTouchButtonWithType:0];
    centerButton = v3->_centerButton;
    v3->_centerButton = v22;

    [(MRUTransportButton *)v3->_centerButton setPackageScale:v21];
    [(MRUAmbientNowPlayingView *)v3 addSubview:v3->_centerButton];
    v24 = [(MPButton *)MRUHoldTransportButton easyTouchButtonWithType:0];
    leftButton = v3->_leftButton;
    v3->_leftButton = v24;

    [(MRUTransportButton *)v3->_leftButton setPackageScale:v21];
    [(MRUAmbientNowPlayingView *)v3 addSubview:v3->_leftButton];
    v26 = [(MPButton *)MRUHoldTransportButton easyTouchButtonWithType:0];
    rightButton = v3->_rightButton;
    v3->_rightButton = v26;

    [(MRUTransportButton *)v3->_rightButton setPackageScale:v21];
    [(MRUAmbientNowPlayingView *)v3 addSubview:v3->_rightButton];
    v28 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:32.0];
    leftRightTransportButtonsSymbolConfiguration = v3->_leftRightTransportButtonsSymbolConfiguration;
    v3->_leftRightTransportButtonsSymbolConfiguration = v28;

    v30 = [(MPButton *)MRUTransportButton easyTouchButtonWithType:0];
    routingButton = v3->_routingButton;
    v3->_routingButton = v30;

    v32 = [(MRUTransportButton *)v3->_routingButton imageView];
    [v32 setClipsToBounds:0];

    [(MRUAmbientNowPlayingView *)v3 addSubview:v3->_routingButton];
    v33 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:-1 scale:28.0];
    routingButtonSymbolConfiguration = v3->_routingButtonSymbolConfiguration;
    v3->_routingButtonSymbolConfiguration = v33;

    v35 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:-1 scale:24.0];
    routingButtonSymbolConfigurationSmall = v3->_routingButtonSymbolConfigurationSmall;
    v3->_routingButtonSymbolConfigurationSmall = v35;

    v37 = objc_alloc_init(MRUAmbientNowPlayingVolumeControlsView);
    volumeControlsView = v3->_volumeControlsView;
    v3->_volumeControlsView = v37;

    [(MRUAmbientNowPlayingVolumeControlsView *)v3->_volumeControlsView setSliderExpansionFactor:1.78571429];
    v39 = [(MRUAmbientNowPlayingVolumeControlsView *)v3->_volumeControlsView slider];
    [v39 addObserver:v3];

    [(MRUAmbientNowPlayingView *)v3 addSubview:v3->_volumeControlsView];
    v44[0] = objc_opt_class();
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v41 = [(MRUAmbientNowPlayingView *)v3 registerForTraitChanges:v40 withAction:sel_updateVisualStyling];

    [(MRUAmbientNowPlayingView *)v3 createConstraints];
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = MRUAmbientNowPlayingView;
  [(MRUAmbientNowPlayingView *)&v15 layoutSubviews];
  [(MRUAmbientNowPlayingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MRUAmbientNowPlayingView *)self backgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(MRUNowPlayingLabelView *)self->_labelView estimatedHeight];
  v13 = v12;
  [(NSLayoutConstraint *)self->_transportControlsLayoutGuideTopConstraint setConstant:?];
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView intrinsicContentSize];
  [(NSLayoutConstraint *)self->_transportControlsLayoutGuideBottomConstraint setConstant:-v14];
  [(NSLayoutConstraint *)self->_labelViewLayoutGuideHeightConstraint setConstant:v13];
}

- (void)safeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = MRUAmbientNowPlayingView;
  [(MRUAmbientNowPlayingView *)&v8 safeAreaInsetsDidChange];
  [(MRUAmbientNowPlayingView *)self safeAreaInsets];
  if (v3 < v5)
  {
    v3 = v5;
  }

  if (v3 < v4)
  {
    v3 = v4;
  }

  if (v3 < v6)
  {
    v3 = v6;
  }

  if (v3 > 0.0)
  {
    v7 = v3 + 8.0;
    [(NSLayoutConstraint *)self->_boundsLayoutGuideLeadingConstraint setConstant:v3 + 8.0];
    [(NSLayoutConstraint *)self->_boundsLayoutGuideTrailingConstraint setConstant:v7];
  }
}

- (void)createConstraints
{
  v126[41] = *MEMORY[0x1E69E9840];
  [(MRUFlippingArtworkView *)self->_artworkView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MRUTransportButton *)self->_routingButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MRUNowPlayingLabelView *)self->_labelView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MRUTransportButton *)self->_centerButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MRUTransportButton *)self->_leftButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MRUTransportButton *)self->_rightButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = 70.0;
  if (MRUIsSmallScreen())
  {
    v3 = 70.0 * 0.0;
  }

  v92 = MEMORY[0x1E696ACD8];
  v125 = [(UILayoutGuide *)self->_boundsLayoutGuide leadingAnchor];
  v124 = [(MRUAmbientNowPlayingView *)self leadingAnchor];
  v4 = [v125 constraintEqualToAnchor:v124 constant:55.0];
  boundsLayoutGuideLeadingConstraint = self->_boundsLayoutGuideLeadingConstraint;
  self->_boundsLayoutGuideLeadingConstraint = v4;

  v126[0] = v4;
  v123 = [(MRUAmbientNowPlayingView *)self trailingAnchor];
  v122 = [(UILayoutGuide *)self->_boundsLayoutGuide trailingAnchor];
  v6 = [v123 constraintEqualToAnchor:v122 constant:55.0];
  boundsLayoutGuideTrailingConstraint = self->_boundsLayoutGuideTrailingConstraint;
  self->_boundsLayoutGuideTrailingConstraint = v6;

  v126[1] = v6;
  v121 = [(UILayoutGuide *)self->_boundsLayoutGuide topAnchor];
  v120 = [(MRUAmbientNowPlayingView *)self topAnchor];
  v119 = [v121 constraintEqualToAnchor:v120 constant:46.0];
  v126[2] = v119;
  v118 = [(MRUAmbientNowPlayingView *)self bottomAnchor];
  v117 = [(UILayoutGuide *)self->_boundsLayoutGuide bottomAnchor];
  v116 = [v118 constraintEqualToAnchor:v117 constant:46.0];
  v126[3] = v116;
  v115 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
  v114 = [(UILayoutGuide *)self->_labelViewLayoutGuide topAnchor];
  v8 = [v115 constraintEqualToAnchor:v114];
  transportControlsLayoutGuideTopConstraint = self->_transportControlsLayoutGuideTopConstraint;
  self->_transportControlsLayoutGuideTopConstraint = v8;

  v126[4] = v8;
  v113 = [(UILayoutGuide *)self->_transportControlsLayoutGuide bottomAnchor];
  v112 = [(UILayoutGuide *)self->_boundsLayoutGuide bottomAnchor];
  v10 = [v113 constraintEqualToAnchor:v112];
  transportControlsLayoutGuideBottomConstraint = self->_transportControlsLayoutGuideBottomConstraint;
  self->_transportControlsLayoutGuideBottomConstraint = v10;

  v126[5] = v10;
  v111 = [(UILayoutGuide *)self->_leftButtonLayoutGuide leftAnchor];
  v110 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView leftAnchor];
  v109 = [v111 constraintEqualToAnchor:v110];
  v126[6] = v109;
  v108 = [(UILayoutGuide *)self->_leftButtonLayoutGuide rightAnchor];
  v107 = [(MRUTransportButton *)self->_centerButton leftAnchor];
  v106 = [v108 constraintEqualToAnchor:v107];
  v126[7] = v106;
  v105 = [(UILayoutGuide *)self->_rightButtonLayoutGuide leftAnchor];
  v104 = [(MRUTransportButton *)self->_centerButton rightAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v126[8] = v103;
  v102 = [(UILayoutGuide *)self->_rightButtonLayoutGuide rightAnchor];
  v101 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView rightAnchor];
  v100 = [v102 constraintEqualToAnchor:v101];
  v126[9] = v100;
  v99 = [(UILayoutGuide *)self->_labelViewLayoutGuide topAnchor];
  v98 = [(MRUTransportButton *)self->_routingButton bottomAnchor];
  v97 = [v99 constraintEqualToAnchor:v98 constant:12.0];
  v126[10] = v97;
  v96 = [(UILayoutGuide *)self->_labelViewLayoutGuide heightAnchor];
  v12 = [v96 constraintEqualToConstant:0.0];
  labelViewLayoutGuideHeightConstraint = self->_labelViewLayoutGuideHeightConstraint;
  self->_labelViewLayoutGuideHeightConstraint = v12;

  v126[11] = v12;
  v95 = [(MRUFlippingArtworkView *)self->_artworkView leadingAnchor];
  v94 = [(UILayoutGuide *)self->_boundsLayoutGuide leadingAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v126[12] = v93;
  v91 = [(MRUFlippingArtworkView *)self->_artworkView topAnchor];
  v90 = [(UILayoutGuide *)self->_boundsLayoutGuide topAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v126[13] = v89;
  v88 = [(MRUFlippingArtworkView *)self->_artworkView bottomAnchor];
  v87 = [(UILayoutGuide *)self->_boundsLayoutGuide bottomAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v126[14] = v86;
  v85 = [(MRUFlippingArtworkView *)self->_artworkView widthAnchor];
  v84 = [(MRUFlippingArtworkView *)self->_artworkView heightAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v126[15] = v83;
  v82 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView leadingAnchor];
  v81 = [(MRUFlippingArtworkView *)self->_artworkView trailingAnchor];
  v80 = [v82 constraintEqualToAnchor:v81 constant:56.0];
  v126[16] = v80;
  v79 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView trailingAnchor];
  v78 = [(UILayoutGuide *)self->_boundsLayoutGuide trailingAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v126[17] = v77;
  v76 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView bottomAnchor];
  v75 = [(UILayoutGuide *)self->_boundsLayoutGuide bottomAnchor];
  v74 = [v76 constraintEqualToAnchor:v75 constant:4.0];
  v126[18] = v74;
  v73 = [(MRUTransportButton *)self->_routingButton topAnchor];
  v72 = [(UILayoutGuide *)self->_boundsLayoutGuide topAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v126[19] = v71;
  v70 = [(MRUTransportButton *)self->_routingButton trailingAnchor];
  v68 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView trailingAnchor];
  v67 = [v70 constraintEqualToAnchor:v68];
  v126[20] = v67;
  v65 = [(MRUTransportButton *)self->_routingButton widthAnchor];
  v64 = [v65 constraintEqualToConstant:32.0];
  v126[21] = v64;
  v63 = [(MRUTransportButton *)self->_routingButton heightAnchor];
  v62 = [v63 constraintEqualToConstant:32.0];
  v126[22] = v62;
  v60 = [(MRUTransportButton *)self->_routingButton leadingAnchor];
  v59 = [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView trailingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:20.0];
  v126[23] = v58;
  v56 = [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView leadingAnchor];
  v55 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView leadingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v126[24] = v54;
  v53 = [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView centerYAnchor];
  v52 = [(MRUTransportButton *)self->_routingButton centerYAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v126[25] = v51;
  v50 = [(MRUNowPlayingLabelView *)self->_labelView centerYAnchor];
  v49 = [(UILayoutGuide *)self->_labelViewLayoutGuide centerYAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v126[26] = v48;
  v47 = [(MRUNowPlayingLabelView *)self->_labelView leadingAnchor];
  v46 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 constant:48.0];
  v126[27] = v45;
  v69 = [(MRUNowPlayingLabelView *)self->_labelView trailingAnchor];
  v44 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView trailingAnchor];
  v43 = [v69 constraintEqualToAnchor:v44 constant:-48.0];
  v126[28] = v43;
  v42 = [(MRUTransportButton *)self->_centerButton centerYAnchor];
  v57 = [(UILayoutGuide *)self->_transportControlsLayoutGuide centerYAnchor];
  LODWORD(v14) = 1144750080;
  v41 = [v42 mru_constraintEqualToAnchor:v57 priority:v14];
  v126[29] = v41;
  v40 = [(MRUTransportButton *)self->_centerButton centerXAnchor];
  v39 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView centerXAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v126[30] = v38;
  v37 = [(MRUTransportButton *)self->_centerButton widthAnchor];
  v36 = [v37 constraintEqualToConstant:v3];
  v126[31] = v36;
  v35 = [(MRUTransportButton *)self->_centerButton heightAnchor];
  v34 = [v35 constraintEqualToConstant:v3];
  v126[32] = v34;
  v33 = [(MRUTransportButton *)self->_leftButton centerYAnchor];
  v32 = [(MRUTransportButton *)self->_centerButton centerYAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v126[33] = v31;
  v30 = [(MRUTransportButton *)self->_leftButton centerXAnchor];
  v61 = [(UILayoutGuide *)self->_leftButtonLayoutGuide centerXAnchor];
  v29 = [v30 constraintEqualToAnchor:v61];
  v126[34] = v29;
  v28 = [(MRUTransportButton *)self->_leftButton widthAnchor];
  v27 = [v28 constraintEqualToConstant:v3];
  v126[35] = v27;
  v66 = [(MRUTransportButton *)self->_leftButton heightAnchor];
  v26 = [v66 constraintEqualToConstant:v3];
  v126[36] = v26;
  v25 = [(MRUTransportButton *)self->_rightButton centerYAnchor];
  v15 = [(MRUTransportButton *)self->_centerButton centerYAnchor];
  v16 = [v25 constraintEqualToAnchor:v15];
  v126[37] = v16;
  v17 = [(MRUTransportButton *)self->_rightButton centerXAnchor];
  v18 = [(UILayoutGuide *)self->_rightButtonLayoutGuide centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v126[38] = v19;
  v20 = [(MRUTransportButton *)self->_rightButton widthAnchor];
  v21 = [v20 constraintEqualToConstant:v3];
  v126[39] = v21;
  v22 = [(MRUTransportButton *)self->_rightButton heightAnchor];
  v23 = [v22 constraintEqualToConstant:v3];
  v126[40] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:41];
  [v92 activateConstraints:v24];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUNowPlayingLabelView *)self->_labelView setStylingProvider:v6];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setStylingProvider:v6];
    [(MRUTransportButton *)self->_leftButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_centerButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_rightButton setStylingProvider:v6];
    [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView setStylingProvider:v6];
    [(MRUFlippingArtworkView *)self->_artworkView setStylingProvider:v6];
    [(MRUAmbientNowPlayingView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    v4 = a3;
    self->_onScreen = a3;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setOnScreen:?];
    [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView setOnScreen:v4];
    artworkView = self->_artworkView;

    [(MRUFlippingArtworkView *)artworkView setOnScreen:v4];
  }
}

- (void)setNowPlayingInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 placeholder];
  [(MRUNowPlayingLabelView *)self->_labelView setPlaceholder:v5];

  -[MRUNowPlayingLabelView setShowPlaceholder:](self->_labelView, "setShowPlaceholder:", [v4 showPlaceholder]);
  v6 = [v4 stringForComponents:1];
  [(MRUNowPlayingLabelView *)self->_labelView setTitle:v6];

  v7 = [v4 stringForComponents:58];
  [(MRUNowPlayingLabelView *)self->_labelView setSubtitle:v7];

  v8 = [v4 identifier];
  [(MRUFlippingArtworkView *)self->_artworkView setItemIdentifier:v8];

  v9 = [v4 isPlaying];
  artworkView = self->_artworkView;

  [(MRUFlippingArtworkView *)artworkView setPlaying:v9];
}

- (void)setTransportControls:(id)a3
{
  v4 = a3;
  v5 = [v4 leftItem];
  [(MRUTransportButton *)self->_leftButton setTransportControlItem:v5];

  v6 = [v4 centerItem];
  [(MRUTransportButton *)self->_centerButton setTransportControlItem:v6];

  v7 = [v4 rightItem];

  [(MRUTransportButton *)self->_rightButton setTransportControlItem:v7];
  [(MRUTransportButton *)self->_leftButton setPreferredSymbolConfiguration:self->_leftRightTransportButtonsSymbolConfiguration forImageInState:0];
  rightButton = self->_rightButton;
  leftRightTransportButtonsSymbolConfiguration = self->_leftRightTransportButtonsSymbolConfiguration;

  [(MRUTransportButton *)rightButton setPreferredSymbolConfiguration:leftRightTransportButtonsSymbolConfiguration forImageInState:0];
}

- (void)setRoutingButtonImage:(id)a3
{
  v4 = a3;
  v5 = &OBJC_IVAR___MRUAmbientNowPlayingView__routingButtonSymbolConfiguration;
  v13 = v4;
  if (v4)
  {
    [v4 size];
    v7 = v6;
    [v13 size];
    if (v7 / v8 > 1.1)
    {
      v5 = &OBJC_IVAR___MRUAmbientNowPlayingView__routingButtonSymbolConfigurationSmall;
    }
  }

  v9 = *(&self->super.super.super.isa + *v5);
  v10 = [v13 imageByApplyingSymbolConfiguration:v9];
  routingButton = self->_routingButton;
  v12 = [MRUAsset image:v10];
  [(MRUTransportButton *)routingButton setAsset:v12 animated:self->_onScreen];
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_backgroundView);
    [v6 removeFromSuperview];

    objc_storeWeak(&self->_backgroundView, v4);
    if (v4)
    {
      if (self->_onScreen)
      {
        [v4 setAlpha:0.0];
        [(MRUAmbientNowPlayingView *)self insertSubview:v4 atIndex:0];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __46__MRUAmbientNowPlayingView_setBackgroundView___block_invoke;
        v8[3] = &unk_1E7663898;
        v9 = v4;
        [v7 animateWithDuration:327680 delay:v8 options:0 animations:0.5 completion:0.0];
      }

      else
      {
        [(MRUAmbientNowPlayingView *)self insertSubview:v4 atIndex:0];
      }
    }
  }
}

- (void)sliderInteractionWillExtend:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  left = a4.left;
  volumeControlsView = self->_volumeControlsView;
  v8 = a3;
  v9 = [(MRUAmbientNowPlayingVolumeControlsView *)volumeControlsView slider];

  if (v9 == v8)
  {
    v10 = [(MRUAmbientNowPlayingView *)self traitCollection];
    if ([v10 layoutDirection] != 1)
    {
      left = -right;
    }

    CGAffineTransformMakeTranslation(&v13, left, 0.0);
    routingButton = self->_routingButton;
    v12 = v13;
    [(MRUTransportButton *)routingButton setTransform:&v12];
  }
}

- (void)updateVisualStyling
{
  v5 = [(MRUAmbientNowPlayingView *)self stylingProvider];
  routingButton = self->_routingButton;
  v4 = [(MRUAmbientNowPlayingView *)self traitCollection];
  [v5 applyStyle:1 toView:routingButton traitCollection:v4];
}

- (UIView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

@end