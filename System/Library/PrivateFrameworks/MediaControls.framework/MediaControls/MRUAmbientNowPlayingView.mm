@interface MRUAmbientNowPlayingView
- (MRUAmbientNowPlayingView)initWithFrame:(CGRect)frame;
- (UIView)backgroundView;
- (void)createConstraints;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setBackgroundView:(id)view;
- (void)setNowPlayingInfo:(id)info;
- (void)setOnScreen:(BOOL)screen;
- (void)setRoutingButtonImage:(id)image;
- (void)setStylingProvider:(id)provider;
- (void)setTransportControls:(id)controls;
- (void)sliderInteractionWillExtend:(id)extend insets:(UIEdgeInsets)insets;
- (void)updateVisualStyling;
@end

@implementation MRUAmbientNowPlayingView

- (MRUAmbientNowPlayingView)initWithFrame:(CGRect)frame
{
  v44[1] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = MRUAmbientNowPlayingView;
  v3 = [(MRUAmbientNowPlayingView *)&v43 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(MRUAmbientNowPlayingView *)v3 setBackgroundColor:blackColor];

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

    imageView = [(MRUTransportButton *)v3->_routingButton imageView];
    [imageView setClipsToBounds:0];

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
    slider = [(MRUAmbientNowPlayingVolumeControlsView *)v3->_volumeControlsView slider];
    [slider addObserver:v3];

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
  backgroundView = [(MRUAmbientNowPlayingView *)self backgroundView];
  [backgroundView setFrame:{v4, v6, v8, v10}];

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
  leadingAnchor = [(UILayoutGuide *)self->_boundsLayoutGuide leadingAnchor];
  leadingAnchor2 = [(MRUAmbientNowPlayingView *)self leadingAnchor];
  v4 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:55.0];
  boundsLayoutGuideLeadingConstraint = self->_boundsLayoutGuideLeadingConstraint;
  self->_boundsLayoutGuideLeadingConstraint = v4;

  v126[0] = v4;
  trailingAnchor = [(MRUAmbientNowPlayingView *)self trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_boundsLayoutGuide trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:55.0];
  boundsLayoutGuideTrailingConstraint = self->_boundsLayoutGuideTrailingConstraint;
  self->_boundsLayoutGuideTrailingConstraint = v6;

  v126[1] = v6;
  topAnchor = [(UILayoutGuide *)self->_boundsLayoutGuide topAnchor];
  topAnchor2 = [(MRUAmbientNowPlayingView *)self topAnchor];
  v119 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:46.0];
  v126[2] = v119;
  bottomAnchor = [(MRUAmbientNowPlayingView *)self bottomAnchor];
  bottomAnchor2 = [(UILayoutGuide *)self->_boundsLayoutGuide bottomAnchor];
  v116 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:46.0];
  v126[3] = v116;
  topAnchor3 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
  topAnchor4 = [(UILayoutGuide *)self->_labelViewLayoutGuide topAnchor];
  v8 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  transportControlsLayoutGuideTopConstraint = self->_transportControlsLayoutGuideTopConstraint;
  self->_transportControlsLayoutGuideTopConstraint = v8;

  v126[4] = v8;
  bottomAnchor3 = [(UILayoutGuide *)self->_transportControlsLayoutGuide bottomAnchor];
  bottomAnchor4 = [(UILayoutGuide *)self->_boundsLayoutGuide bottomAnchor];
  v10 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  transportControlsLayoutGuideBottomConstraint = self->_transportControlsLayoutGuideBottomConstraint;
  self->_transportControlsLayoutGuideBottomConstraint = v10;

  v126[5] = v10;
  leftAnchor = [(UILayoutGuide *)self->_leftButtonLayoutGuide leftAnchor];
  leftAnchor2 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView leftAnchor];
  v109 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v126[6] = v109;
  rightAnchor = [(UILayoutGuide *)self->_leftButtonLayoutGuide rightAnchor];
  leftAnchor3 = [(MRUTransportButton *)self->_centerButton leftAnchor];
  v106 = [rightAnchor constraintEqualToAnchor:leftAnchor3];
  v126[7] = v106;
  leftAnchor4 = [(UILayoutGuide *)self->_rightButtonLayoutGuide leftAnchor];
  rightAnchor2 = [(MRUTransportButton *)self->_centerButton rightAnchor];
  v103 = [leftAnchor4 constraintEqualToAnchor:rightAnchor2];
  v126[8] = v103;
  rightAnchor3 = [(UILayoutGuide *)self->_rightButtonLayoutGuide rightAnchor];
  rightAnchor4 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView rightAnchor];
  v100 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v126[9] = v100;
  topAnchor5 = [(UILayoutGuide *)self->_labelViewLayoutGuide topAnchor];
  bottomAnchor5 = [(MRUTransportButton *)self->_routingButton bottomAnchor];
  v97 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:12.0];
  v126[10] = v97;
  heightAnchor = [(UILayoutGuide *)self->_labelViewLayoutGuide heightAnchor];
  v12 = [heightAnchor constraintEqualToConstant:0.0];
  labelViewLayoutGuideHeightConstraint = self->_labelViewLayoutGuideHeightConstraint;
  self->_labelViewLayoutGuideHeightConstraint = v12;

  v126[11] = v12;
  leadingAnchor3 = [(MRUFlippingArtworkView *)self->_artworkView leadingAnchor];
  leadingAnchor4 = [(UILayoutGuide *)self->_boundsLayoutGuide leadingAnchor];
  v93 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v126[12] = v93;
  topAnchor6 = [(MRUFlippingArtworkView *)self->_artworkView topAnchor];
  topAnchor7 = [(UILayoutGuide *)self->_boundsLayoutGuide topAnchor];
  v89 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v126[13] = v89;
  bottomAnchor6 = [(MRUFlippingArtworkView *)self->_artworkView bottomAnchor];
  bottomAnchor7 = [(UILayoutGuide *)self->_boundsLayoutGuide bottomAnchor];
  v86 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v126[14] = v86;
  widthAnchor = [(MRUFlippingArtworkView *)self->_artworkView widthAnchor];
  heightAnchor2 = [(MRUFlippingArtworkView *)self->_artworkView heightAnchor];
  v83 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v126[15] = v83;
  leadingAnchor5 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView leadingAnchor];
  trailingAnchor3 = [(MRUFlippingArtworkView *)self->_artworkView trailingAnchor];
  v80 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:56.0];
  v126[16] = v80;
  trailingAnchor4 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView trailingAnchor];
  trailingAnchor5 = [(UILayoutGuide *)self->_boundsLayoutGuide trailingAnchor];
  v77 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v126[17] = v77;
  bottomAnchor8 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView bottomAnchor];
  bottomAnchor9 = [(UILayoutGuide *)self->_boundsLayoutGuide bottomAnchor];
  v74 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:4.0];
  v126[18] = v74;
  topAnchor8 = [(MRUTransportButton *)self->_routingButton topAnchor];
  topAnchor9 = [(UILayoutGuide *)self->_boundsLayoutGuide topAnchor];
  v71 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v126[19] = v71;
  trailingAnchor6 = [(MRUTransportButton *)self->_routingButton trailingAnchor];
  trailingAnchor7 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView trailingAnchor];
  v67 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v126[20] = v67;
  widthAnchor2 = [(MRUTransportButton *)self->_routingButton widthAnchor];
  v64 = [widthAnchor2 constraintEqualToConstant:32.0];
  v126[21] = v64;
  heightAnchor3 = [(MRUTransportButton *)self->_routingButton heightAnchor];
  v62 = [heightAnchor3 constraintEqualToConstant:32.0];
  v126[22] = v62;
  leadingAnchor6 = [(MRUTransportButton *)self->_routingButton leadingAnchor];
  trailingAnchor8 = [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView trailingAnchor];
  v58 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor8 constant:20.0];
  v126[23] = v58;
  leadingAnchor7 = [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView leadingAnchor];
  leadingAnchor8 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView leadingAnchor];
  v54 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v126[24] = v54;
  centerYAnchor = [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView centerYAnchor];
  centerYAnchor2 = [(MRUTransportButton *)self->_routingButton centerYAnchor];
  v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v126[25] = v51;
  centerYAnchor3 = [(MRUNowPlayingLabelView *)self->_labelView centerYAnchor];
  centerYAnchor4 = [(UILayoutGuide *)self->_labelViewLayoutGuide centerYAnchor];
  v48 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v126[26] = v48;
  leadingAnchor9 = [(MRUNowPlayingLabelView *)self->_labelView leadingAnchor];
  leadingAnchor10 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView leadingAnchor];
  v45 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:48.0];
  v126[27] = v45;
  trailingAnchor9 = [(MRUNowPlayingLabelView *)self->_labelView trailingAnchor];
  trailingAnchor10 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView trailingAnchor];
  v43 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-48.0];
  v126[28] = v43;
  centerYAnchor5 = [(MRUTransportButton *)self->_centerButton centerYAnchor];
  centerYAnchor6 = [(UILayoutGuide *)self->_transportControlsLayoutGuide centerYAnchor];
  LODWORD(v14) = 1144750080;
  v41 = [centerYAnchor5 mru_constraintEqualToAnchor:centerYAnchor6 priority:v14];
  v126[29] = v41;
  centerXAnchor = [(MRUTransportButton *)self->_centerButton centerXAnchor];
  centerXAnchor2 = [(MRUNowPlayingTimeControlsView *)self->_timeControlsView centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v126[30] = v38;
  widthAnchor3 = [(MRUTransportButton *)self->_centerButton widthAnchor];
  v36 = [widthAnchor3 constraintEqualToConstant:v3];
  v126[31] = v36;
  heightAnchor4 = [(MRUTransportButton *)self->_centerButton heightAnchor];
  v34 = [heightAnchor4 constraintEqualToConstant:v3];
  v126[32] = v34;
  centerYAnchor7 = [(MRUTransportButton *)self->_leftButton centerYAnchor];
  centerYAnchor8 = [(MRUTransportButton *)self->_centerButton centerYAnchor];
  v31 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v126[33] = v31;
  centerXAnchor3 = [(MRUTransportButton *)self->_leftButton centerXAnchor];
  centerXAnchor4 = [(UILayoutGuide *)self->_leftButtonLayoutGuide centerXAnchor];
  v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v126[34] = v29;
  widthAnchor4 = [(MRUTransportButton *)self->_leftButton widthAnchor];
  v27 = [widthAnchor4 constraintEqualToConstant:v3];
  v126[35] = v27;
  heightAnchor5 = [(MRUTransportButton *)self->_leftButton heightAnchor];
  v26 = [heightAnchor5 constraintEqualToConstant:v3];
  v126[36] = v26;
  centerYAnchor9 = [(MRUTransportButton *)self->_rightButton centerYAnchor];
  centerYAnchor10 = [(MRUTransportButton *)self->_centerButton centerYAnchor];
  v16 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
  v126[37] = v16;
  centerXAnchor5 = [(MRUTransportButton *)self->_rightButton centerXAnchor];
  centerXAnchor6 = [(UILayoutGuide *)self->_rightButtonLayoutGuide centerXAnchor];
  v19 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v126[38] = v19;
  widthAnchor5 = [(MRUTransportButton *)self->_rightButton widthAnchor];
  v21 = [widthAnchor5 constraintEqualToConstant:v3];
  v126[39] = v21;
  heightAnchor6 = [(MRUTransportButton *)self->_rightButton heightAnchor];
  v23 = [heightAnchor6 constraintEqualToConstant:v3];
  v126[40] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:41];
  [v92 activateConstraints:v24];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUNowPlayingLabelView *)self->_labelView setStylingProvider:v6];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setStylingProvider:v6];
    [(MRUTransportButton *)self->_leftButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_centerButton setStylingProvider:v6];
    [(MRUTransportButton *)self->_rightButton setStylingProvider:v6];
    [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView setStylingProvider:v6];
    [(MRUFlippingArtworkView *)self->_artworkView setStylingProvider:v6];
    [(MRUAmbientNowPlayingView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    screenCopy = screen;
    self->_onScreen = screen;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setOnScreen:?];
    [(MRUAmbientNowPlayingVolumeControlsView *)self->_volumeControlsView setOnScreen:screenCopy];
    artworkView = self->_artworkView;

    [(MRUFlippingArtworkView *)artworkView setOnScreen:screenCopy];
  }
}

- (void)setNowPlayingInfo:(id)info
{
  infoCopy = info;
  placeholder = [infoCopy placeholder];
  [(MRUNowPlayingLabelView *)self->_labelView setPlaceholder:placeholder];

  -[MRUNowPlayingLabelView setShowPlaceholder:](self->_labelView, "setShowPlaceholder:", [infoCopy showPlaceholder]);
  v6 = [infoCopy stringForComponents:1];
  [(MRUNowPlayingLabelView *)self->_labelView setTitle:v6];

  v7 = [infoCopy stringForComponents:58];
  [(MRUNowPlayingLabelView *)self->_labelView setSubtitle:v7];

  identifier = [infoCopy identifier];
  [(MRUFlippingArtworkView *)self->_artworkView setItemIdentifier:identifier];

  isPlaying = [infoCopy isPlaying];
  artworkView = self->_artworkView;

  [(MRUFlippingArtworkView *)artworkView setPlaying:isPlaying];
}

- (void)setTransportControls:(id)controls
{
  controlsCopy = controls;
  leftItem = [controlsCopy leftItem];
  [(MRUTransportButton *)self->_leftButton setTransportControlItem:leftItem];

  centerItem = [controlsCopy centerItem];
  [(MRUTransportButton *)self->_centerButton setTransportControlItem:centerItem];

  rightItem = [controlsCopy rightItem];

  [(MRUTransportButton *)self->_rightButton setTransportControlItem:rightItem];
  [(MRUTransportButton *)self->_leftButton setPreferredSymbolConfiguration:self->_leftRightTransportButtonsSymbolConfiguration forImageInState:0];
  rightButton = self->_rightButton;
  leftRightTransportButtonsSymbolConfiguration = self->_leftRightTransportButtonsSymbolConfiguration;

  [(MRUTransportButton *)rightButton setPreferredSymbolConfiguration:leftRightTransportButtonsSymbolConfiguration forImageInState:0];
}

- (void)setRoutingButtonImage:(id)image
{
  imageCopy = image;
  v5 = &OBJC_IVAR___MRUAmbientNowPlayingView__routingButtonSymbolConfiguration;
  v13 = imageCopy;
  if (imageCopy)
  {
    [imageCopy size];
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

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  if (WeakRetained != viewCopy)
  {
    v6 = objc_loadWeakRetained(&self->_backgroundView);
    [v6 removeFromSuperview];

    objc_storeWeak(&self->_backgroundView, viewCopy);
    if (viewCopy)
    {
      if (self->_onScreen)
      {
        [viewCopy setAlpha:0.0];
        [(MRUAmbientNowPlayingView *)self insertSubview:viewCopy atIndex:0];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __46__MRUAmbientNowPlayingView_setBackgroundView___block_invoke;
        v8[3] = &unk_1E7663898;
        v9 = viewCopy;
        [v7 animateWithDuration:327680 delay:v8 options:0 animations:0.5 completion:0.0];
      }

      else
      {
        [(MRUAmbientNowPlayingView *)self insertSubview:viewCopy atIndex:0];
      }
    }
  }
}

- (void)sliderInteractionWillExtend:(id)extend insets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  volumeControlsView = self->_volumeControlsView;
  extendCopy = extend;
  slider = [(MRUAmbientNowPlayingVolumeControlsView *)volumeControlsView slider];

  if (slider == extendCopy)
  {
    traitCollection = [(MRUAmbientNowPlayingView *)self traitCollection];
    if ([traitCollection layoutDirection] != 1)
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
  stylingProvider = [(MRUAmbientNowPlayingView *)self stylingProvider];
  routingButton = self->_routingButton;
  traitCollection = [(MRUAmbientNowPlayingView *)self traitCollection];
  [stylingProvider applyStyle:1 toView:routingButton traitCollection:traitCollection];
}

- (UIView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

@end