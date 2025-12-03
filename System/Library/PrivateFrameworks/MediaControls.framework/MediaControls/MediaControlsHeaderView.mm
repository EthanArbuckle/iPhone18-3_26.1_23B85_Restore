@interface MediaControlsHeaderView
- (CGSize)layoutTextInAvailableBounds:(CGRect)bounds setFrames:(BOOL)frames;
- (CGSize)overrideSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MediaControlsHeaderView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_updateRTL;
- (void)_updateStyle;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setButtonType:(int64_t)type;
- (void)setMarqueeEnabled:(BOOL)enabled;
- (void)setOverrideSize:(CGSize)size;
- (void)setPlaceholderString:(id)string;
- (void)setPrimaryString:(id)string;
- (void)setRouting:(BOOL)routing;
- (void)setSecondaryString:(id)string;
- (void)setShowPlaceholderString:(BOOL)string;
- (void)setStyle:(int64_t)style;
- (void)setTransitioning:(BOOL)transitioning;
- (void)setVisualStylingProvider:(id)provider;
- (void)tintColorDidChange;
- (void)updateArtworkStyle;
@end

@implementation MediaControlsHeaderView

- (MediaControlsHeaderView)initWithFrame:(CGRect)frame
{
  v108.receiver = self;
  v108.super_class = MediaControlsHeaderView;
  v3 = [(MediaControlsHeaderView *)&v108 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69AE158] materialViewWithRecipe:4 configuration:4];
    artworkBackground = v3->_artworkBackground;
    v3->_artworkBackground = v4;

    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    artworkView = v3->_artworkView;
    v3->_artworkView = v11;

    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    shadow = v3->_shadow;
    v3->_shadow = v13;

    v15 = [objc_alloc(MEMORY[0x1E6970930]) initWithFrame:{v7, v8, v9, v10}];
    routeLabel = v3->_routeLabel;
    v3->_routeLabel = v15;

    v17 = [objc_alloc(MEMORY[0x1E69AD990]) initWithFrame:{v7, v8, v9, v10}];
    primaryMarqueeView = v3->_primaryMarqueeView;
    v3->_primaryMarqueeView = v17;

    v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    primaryLabel = v3->_primaryLabel;
    v3->_primaryLabel = v19;

    v21 = [objc_alloc(MEMORY[0x1E69AD990]) initWithFrame:{v7, v8, v9, v10}];
    secondaryMarqueeView = v3->_secondaryMarqueeView;
    v3->_secondaryMarqueeView = v21;

    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    secondaryLabel = v3->_secondaryLabel;
    v3->_secondaryLabel = v23;

    v25 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    placeholderLabel = v3->_placeholderLabel;
    v3->_placeholderLabel = v25;

    [(UILabel *)v3->_placeholderLabel setHidden:1];
    v27 = [[MediaControlsRoutingButtonView alloc] initWithFrame:v7, v8, v9, v10];
    routingButton = v3->_routingButton;
    v3->_routingButton = v27;

    v29 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{v7, v8, v9, v10}];
    launchNowPlayingAppButton = v3->_launchNowPlayingAppButton;
    v3->_launchNowPlayingAppButton = v29;

    v31 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    placeholderArtworkView = v3->_placeholderArtworkView;
    v3->_placeholderArtworkView = v31;

    v33 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
    artworkContentView = v3->_artworkContentView;
    v3->_artworkContentView = v33;

    routingButton = [(MediaControlsHeaderView *)v3 routingButton];
    [(MediaControlsHeaderView *)v3 addSubview:routingButton];

    routeLabel = [(MediaControlsHeaderView *)v3 routeLabel];
    [(MediaControlsHeaderView *)v3 addSubview:routeLabel];

    primaryMarqueeView = [(MediaControlsHeaderView *)v3 primaryMarqueeView];
    [(MediaControlsHeaderView *)v3 addSubview:primaryMarqueeView];

    secondaryMarqueeView = [(MediaControlsHeaderView *)v3 secondaryMarqueeView];
    [(MediaControlsHeaderView *)v3 addSubview:secondaryMarqueeView];

    placeholderLabel = [(MediaControlsHeaderView *)v3 placeholderLabel];
    [(MediaControlsHeaderView *)v3 addSubview:placeholderLabel];

    launchNowPlayingAppButton = [(MediaControlsHeaderView *)v3 launchNowPlayingAppButton];
    [(MediaControlsHeaderView *)v3 addSubview:launchNowPlayingAppButton];

    artworkContentView = [(MediaControlsHeaderView *)v3 artworkContentView];
    [(MediaControlsHeaderView *)v3 addSubview:artworkContentView];

    artworkContentView2 = [(MediaControlsHeaderView *)v3 artworkContentView];
    shadow = [(MediaControlsHeaderView *)v3 shadow];
    [artworkContentView2 addSubview:shadow];

    artworkContentView3 = [(MediaControlsHeaderView *)v3 artworkContentView];
    artworkBackground = [(MediaControlsHeaderView *)v3 artworkBackground];
    [artworkContentView3 addSubview:artworkBackground];

    artworkContentView4 = [(MediaControlsHeaderView *)v3 artworkContentView];
    artworkView = [(MediaControlsHeaderView *)v3 artworkView];
    [artworkContentView4 addSubview:artworkView];

    artworkContentView5 = [(MediaControlsHeaderView *)v3 artworkContentView];
    placeholderArtworkView = [(MediaControlsHeaderView *)v3 placeholderArtworkView];
    [artworkContentView5 addSubview:placeholderArtworkView];

    routingButton2 = [(MediaControlsHeaderView *)v3 routingButton];
    [routingButton2 setHitRectInsets:{-24.0, -24.0, -24.0, -24.0}];

    traitCollection = [(MediaControlsHeaderView *)v3 traitCollection];
    [traitCollection displayScale];

    artworkContentView6 = [(MediaControlsHeaderView *)v3 artworkContentView];
    [artworkContentView6 setUserInteractionEnabled:0];

    artworkBackground2 = [(MediaControlsHeaderView *)v3 artworkBackground];
    [artworkBackground2 setClipsToBounds:1];

    UIRoundToScale();
    v55 = v54;
    artworkBackground3 = [(MediaControlsHeaderView *)v3 artworkBackground];
    [artworkBackground3 _setContinuousCornerRadius:v55];

    v57 = *MEMORY[0x1E6979D68];
    artworkView2 = [(MediaControlsHeaderView *)v3 artworkView];
    layer = [artworkView2 layer];
    [layer setMinificationFilter:v57];

    artworkView3 = [(MediaControlsHeaderView *)v3 artworkView];
    [artworkView3 setContentMode:1];

    artworkView4 = [(MediaControlsHeaderView *)v3 artworkView];
    [artworkView4 setClipsToBounds:1];

    UIRoundToScale();
    v63 = v62;
    artworkView5 = [(MediaControlsHeaderView *)v3 artworkView];
    [artworkView5 _setContinuousCornerRadius:v63];

    placeholderArtworkView2 = [(MediaControlsHeaderView *)v3 placeholderArtworkView];
    layer2 = [placeholderArtworkView2 layer];
    [layer2 setMinificationFilter:v57];

    placeholderArtworkView3 = [(MediaControlsHeaderView *)v3 placeholderArtworkView];
    [placeholderArtworkView3 setContentMode:1];

    placeholderArtworkView4 = [(MediaControlsHeaderView *)v3 placeholderArtworkView];
    [placeholderArtworkView4 setClipsToBounds:1];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    shadow2 = [(MediaControlsHeaderView *)v3 shadow];
    layer3 = [shadow2 layer];
    [layer3 setShadowColor:cGColor];

    shadow3 = [(MediaControlsHeaderView *)v3 shadow];
    layer4 = [shadow3 layer];
    [layer4 setShadowOffset:{0.0, 1.0}];

    shadow4 = [(MediaControlsHeaderView *)v3 shadow];
    layer5 = [shadow4 layer];
    [layer5 setShadowRadius:4.0];

    shadow5 = [(MediaControlsHeaderView *)v3 shadow];
    layer6 = [shadow5 layer];
    LODWORD(v79) = 1042536202;
    [layer6 setShadowOpacity:v79];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
    routeLabel2 = [(MediaControlsHeaderView *)v3 routeLabel];
    [routeLabel2 setForcesUppercaseText:1];

    primaryLabel = [(MediaControlsHeaderView *)v3 primaryLabel];
    [primaryLabel setNumberOfLines:1];

    secondaryLabel = [(MediaControlsHeaderView *)v3 secondaryLabel];
    [secondaryLabel setNumberOfLines:1];

    placeholderLabel2 = [(MediaControlsHeaderView *)v3 placeholderLabel];
    [placeholderLabel2 setNumberOfLines:0];

    primaryMarqueeView2 = [(MediaControlsHeaderView *)v3 primaryMarqueeView];
    contentView = [primaryMarqueeView2 contentView];
    primaryLabel2 = [(MediaControlsHeaderView *)v3 primaryLabel];
    [contentView addSubview:primaryLabel2];

    secondaryMarqueeView2 = [(MediaControlsHeaderView *)v3 secondaryMarqueeView];
    contentView2 = [secondaryMarqueeView2 contentView];
    secondaryLabel2 = [(MediaControlsHeaderView *)v3 secondaryLabel];
    [contentView2 addSubview:secondaryLabel2];

    traitCollection2 = [(MediaControlsHeaderView *)v3 traitCollection];
    [traitCollection2 displayScale];
    UIRoundToScale();
    v93 = v92;
    primaryMarqueeView3 = [(MediaControlsHeaderView *)v3 primaryMarqueeView];
    [primaryMarqueeView3 setContentGap:v93];

    traitCollection3 = [(MediaControlsHeaderView *)v3 traitCollection];
    [traitCollection3 displayScale];
    UIRoundToScale();
    v97 = v96;
    secondaryMarqueeView3 = [(MediaControlsHeaderView *)v3 secondaryMarqueeView];
    [secondaryMarqueeView3 setContentGap:v97];

    primaryMarqueeView4 = [(MediaControlsHeaderView *)v3 primaryMarqueeView];
    secondaryMarqueeView4 = [(MediaControlsHeaderView *)v3 secondaryMarqueeView];
    [primaryMarqueeView4 addCoordinatedMarqueeView:secondaryMarqueeView4];

    launchNowPlayingAppButton2 = [(MediaControlsHeaderView *)v3 launchNowPlayingAppButton];
    [launchNowPlayingAppButton2 setHidden:1];

    launchNowPlayingAppButton3 = [(MediaControlsHeaderView *)v3 launchNowPlayingAppButton];
    [launchNowPlayingAppButton3 addTarget:v3 action:sel_launchNowPlayingAppButtonPressed forControlEvents:64];

    [(MediaControlsHeaderView *)v3 _updateStyle];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v105 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
      pointerInteraction = v3->_pointerInteraction;
      v3->_pointerInteraction = v105;

      [(MediaControlsHeaderView *)v3 addInteraction:v3->_pointerInteraction];
    }
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = MediaControlsHeaderView;
  [(MediaControlsHeaderView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v98.receiver = self;
  v98.super_class = MediaControlsHeaderView;
  [(MediaControlsHeaderView *)&v98 layoutSubviews];
  [(MediaControlsHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(MediaControlsHeaderView *)self shouldUseOverrideSize])
  {
    [(MediaControlsHeaderView *)self overrideSize];
    v8 = v11;
  }

  traitCollection = [(MediaControlsHeaderView *)self traitCollection];
  [traitCollection displayScale];

  if (self->_style != 1)
  {
    v4 = v4 + 24.0;
    v6 = v6 + 0.0;
    v8 = v8 - (24.0 + 24.0);
  }

  UIRectIntegralWithScale();
  UIRectCenteredYInRect();
  artworkView = [(MediaControlsHeaderView *)self artworkView];
  [artworkView setContentMode:1];

  v14 = v4 + 60.0;
  v15 = v6 + 0.0;
  if (self->_style != 1)
  {
    v8 = v8 - (60.0 + 0.0);
    v6 = v6 + 0.0;
    v4 = v4 + 60.0;
  }

  v16 = [(MediaControlsHeaderView *)self placeholderArtworkView:v14];
  image = [v16 image];
  [image size];

  placeholderArtworkView = [(MediaControlsHeaderView *)self placeholderArtworkView];
  [placeholderArtworkView setContentMode:1];

  v99.origin.x = v4;
  v99.origin.y = v6;
  v99.size.width = v8;
  v99.size.height = v10;
  CGRectGetMaxX(v99);
  MPFloatRoundForScale();
  MPFloatRoundForScale();
  UIRoundToScale();
  UIRectInset();
  v20 = v19;
  buttonType = [(MediaControlsHeaderView *)self buttonType];
  style = self->_style;
  if (buttonType && (style == 3 || !style))
  {
    v4 = v4 + 0.0;
    v6 = v6 + 0.0;
    v8 = v8 - (v20 + 0.0);
  }

  if (style == 1)
  {
    UIRectInset();
    UIRectInset();
    v97 = v23;
    UIRectInset();
  }

  else
  {
    v97 = 0;
  }

  [(MediaControlsHeaderView *)self layoutTextInAvailableBounds:1 setFrames:v4, v6, v8, v10, v97];
  launchNowPlayingAppButton = [(MediaControlsHeaderView *)self launchNowPlayingAppButton];
  isHidden = [launchNowPlayingAppButton isHidden];

  if ((isHidden & 1) == 0)
  {
    [(MediaControlsHeaderView *)self bounds];
    UIRectInset();
  }

  UIRectIntegralWithScale();
  [(MediaControlsHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  artworkContentView = [(MediaControlsHeaderView *)self artworkContentView];
  [artworkContentView setFrame:{v27, v29, v31, v33}];

  artworkContentView2 = [(MediaControlsHeaderView *)self artworkContentView];
  [artworkContentView2 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  artworkView2 = [(MediaControlsHeaderView *)self artworkView];
  [artworkView2 setFrame:{v37, v39, v41, v43}];

  artworkContentView3 = [(MediaControlsHeaderView *)self artworkContentView];
  [artworkContentView3 bounds];
  UIRectCenteredIntegralRect();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  placeholderArtworkView2 = [(MediaControlsHeaderView *)self placeholderArtworkView];
  [placeholderArtworkView2 setFrame:{v47, v49, v51, v53}];

  artworkContentView4 = [(MediaControlsHeaderView *)self artworkContentView];
  [artworkContentView4 bounds];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  artworkBackground = [(MediaControlsHeaderView *)self artworkBackground];
  [artworkBackground setFrame:{v57, v59, v61, v63}];

  artworkContentView5 = [(MediaControlsHeaderView *)self artworkContentView];
  [artworkContentView5 bounds];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  shadow = [(MediaControlsHeaderView *)self shadow];
  [shadow setFrame:{v67, v69, v71, v73}];

  UIRectIntegralWithScale();
  [(MediaControlsHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  routingButton = [(MediaControlsHeaderView *)self routingButton];
  [routingButton setFrame:{v76, v78, v80, v82}];

  UIRectIntegralWithScale();
  [(MediaControlsHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  launchNowPlayingAppButton2 = [(MediaControlsHeaderView *)self launchNowPlayingAppButton];
  [launchNowPlayingAppButton2 setFrame:{v85, v87, v89, v91}];

  artworkView3 = [(MediaControlsHeaderView *)self artworkView];
  [artworkView3 bounds];
  v94 = CGPathCreateWithRect(v100, MEMORY[0x1E695EFD0]);

  shadow2 = [(MediaControlsHeaderView *)self shadow];
  layer = [shadow2 layer];
  [layer setShadowPath:v94];

  CGPathRelease(v94);
  [(MediaControlsHeaderView *)self _updateStyle];
}

- (CGSize)layoutTextInAvailableBounds:(CGRect)bounds setFrames:(BOOL)frames
{
  framesCopy = frames;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v175[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(MediaControlsHeaderView *)self traitCollection];
  [traitCollection displayScale];

  routeLabel = [(MediaControlsHeaderView *)self routeLabel];
  [routeLabel sizeThatFits:{width, height}];
  v11 = v10;
  v168 = v12;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v15 = *MEMORY[0x1E69DDC58];
  v16 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC58]);

  traitCollection2 = [(MediaControlsHeaderView *)self traitCollection];
  if (v16 == NSOrderedDescending)
  {
    v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v15];

    traitCollection2 = v18;
  }

  v19 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10] compatibleWithTraitCollection:traitCollection2];
  v20 = [v19 fontDescriptorWithSymbolicTraits:2];

  v167 = v20;
  v21 = [MEMORY[0x1E69DB878] fontWithDescriptor:v20 size:0.0];
  v22 = *MEMORY[0x1E69DDCF8];
  v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:traitCollection2];
  v24 = [v23 fontDescriptorWithSymbolicTraits:2];

  v25 = [MEMORY[0x1E69DB878] fontWithDescriptor:v24 size:0.0];
  v165 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v22 compatibleWithTraitCollection:traitCollection2];
  v26 = [MEMORY[0x1E69DB878] fontWithDescriptor:0.0 size:?];
  v27 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v22];
  [v27 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:6.0];
  v29 = v28;

  routeLabel2 = [(MediaControlsHeaderView *)self routeLabel];
  v166 = v21;
  [routeLabel2 setFont:v21];

  primaryLabel = [(MediaControlsHeaderView *)self primaryLabel];
  [primaryLabel setFont:v25];

  placeholderLabel = [(MediaControlsHeaderView *)self placeholderLabel];
  [placeholderLabel setFont:v25];

  secondaryLabel = [(MediaControlsHeaderView *)self secondaryLabel];
  [secondaryLabel setFont:v26];

  primaryString = [(MediaControlsHeaderView *)self primaryString];
  v174 = *MEMORY[0x1E69DB648];
  v35 = v174;
  v175[0] = v25;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v175 forKeys:&v174 count:1];
  [primaryString boundingRectWithSize:1 options:v36 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v171 = v37;
  v160 = v38;

  secondaryString = [(MediaControlsHeaderView *)self secondaryString];
  v172 = v35;
  v173 = v26;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
  [secondaryString boundingRectWithSize:1 options:v40 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v42 = v41;
  v159 = v43;

  v44 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v22];
  [v44 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:20.0];
  v46 = v45;

  style = self->_style;
  if (style != 1)
  {
    primaryString2 = [(MediaControlsHeaderView *)self primaryString];
    if ([primaryString2 length])
    {
      secondaryString2 = [(MediaControlsHeaderView *)self secondaryString];
      v54 = [secondaryString2 length];

      if (v54)
      {
        v51 = v46 + v168 + v46;
        goto LABEL_16;
      }
    }

    else
    {
    }

    primaryString3 = [(MediaControlsHeaderView *)self primaryString];
    if ([primaryString3 length])
    {
      secondaryString3 = [(MediaControlsHeaderView *)self secondaryString];
      v57 = [secondaryString3 length];

      if (!v57)
      {
        v51 = v168 + v46;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  primaryString4 = [(MediaControlsHeaderView *)self primaryString];
  if (![primaryString4 length])
  {

    v170 = v46;
    goto LABEL_17;
  }

  secondaryString4 = [(MediaControlsHeaderView *)self secondaryString];
  v50 = [secondaryString4 length];

  v51 = v46 + v46;
  if (!v50)
  {
    v51 = v46;
  }

LABEL_16:
  v170 = v51;
LABEL_17:
  if (framesCopy)
  {
    v161 = v42;
    traitCollection3 = [(MediaControlsHeaderView *)self traitCollection];
    [traitCollection3 displayScale];
    UIRoundToScale();
    v152 = v59;

    v60 = self->_style;
    v61 = (height - v170) * 0.5;
    if (v61 < 0.0)
    {
      v61 = 0.0;
    }

    v62 = y + v61;
    v63 = y;
    v64 = width + -12.0;
    if (v60 == 1)
    {
      v65 = v63;
    }

    else
    {
      v65 = v62;
    }

    if (v60 == 1)
    {
      v66 = x;
    }

    else
    {
      v66 = x + 0.0;
    }

    v157 = v11;
    if (style != 1)
    {
      routeLabel3 = [(MediaControlsHeaderView *)self routeLabel];
      [routeLabel3 _baselineOffsetFromBottom];
      v66 = v66 + 0.0;
      v65 = v65 + v168 + v29 - v68;
    }

    v69 = self->_style;
    if (v171 <= v64)
    {
      if (v69 == 1)
      {
        v75 = *(MEMORY[0x1E69DDCE0] + 8);
        v158 = *MEMORY[0x1E69DDCE0];
        v77 = *(MEMORY[0x1E69DDCE0] + 16);
        v76 = *(MEMORY[0x1E69DDCE0] + 24);
        primaryMarqueeView = [(MediaControlsHeaderView *)self primaryMarqueeView];
        [primaryMarqueeView setFadeEdgeInsets:{v158, v75, v77, v76}];
      }

      else
      {
        v78 = *MEMORY[0x1E69DDCE0];
        v79 = *(MEMORY[0x1E69DDCE0] + 8);
        v80 = *(MEMORY[0x1E69DDCE0] + 16);
        v81 = *(MEMORY[0x1E69DDCE0] + 24);
        primaryMarqueeView = [(MediaControlsHeaderView *)self primaryMarqueeView];
        [primaryMarqueeView setFadeEdgeInsets:{v78, v79, v80, v81}];
      }
    }

    else if (v69 == 1)
    {
      UIRoundToScale();
      v70 = *MEMORY[0x1E69DDCE0];
      v71 = *(MEMORY[0x1E69DDCE0] + 8);
      v72 = *(MEMORY[0x1E69DDCE0] + 16);
      v73 = *(MEMORY[0x1E69DDCE0] + 24);
      primaryMarqueeView = [(MediaControlsHeaderView *)self primaryMarqueeView];
      [primaryMarqueeView setFadeEdgeInsets:{v70, v71, v72, v73}];
    }

    else
    {
      primaryMarqueeView = [(MediaControlsHeaderView *)self primaryMarqueeView];
      [primaryMarqueeView setFadeEdgeInsets:{0.0, v152, 0.0, v152}];
    }

    v82 = self->_style;
    if (v161 <= v64)
    {
      v153 = v46 + v65;
      v94 = *MEMORY[0x1E69DDCE0];
      v95 = *(MEMORY[0x1E69DDCE0] + 8);
      v96 = *(MEMORY[0x1E69DDCE0] + 16);
      v97 = *(MEMORY[0x1E69DDCE0] + 24);
      if (v82 == 1)
      {
        [(MediaControlsHeaderView *)self secondaryMarqueeView];
      }

      else
      {
        [(MediaControlsHeaderView *)self secondaryMarqueeView];
      }
      v89 = ;
      [v89 setFadeEdgeInsets:{v94, v95, v96, v97}];
    }

    else
    {
      if (v82 == 1)
      {
        UIRoundToScale();
        v152 = v66 + 0.0 + v83;
        v84 = *MEMORY[0x1E69DDCE0];
        v85 = *(MEMORY[0x1E69DDCE0] + 8);
        v86 = *(MEMORY[0x1E69DDCE0] + 16);
        v87 = *(MEMORY[0x1E69DDCE0] + 24);
        secondaryMarqueeView = [(MediaControlsHeaderView *)self secondaryMarqueeView];
        v89 = secondaryMarqueeView;
        v90 = v84;
        v91 = v85;
        v92 = v86;
        v93 = v87;
      }

      else
      {
        secondaryMarqueeView = [(MediaControlsHeaderView *)self secondaryMarqueeView];
        v89 = secondaryMarqueeView;
        v90 = 0.0;
        v92 = 0.0;
        v91 = v152;
        v93 = v152;
      }

      [secondaryMarqueeView setFadeEdgeInsets:{v90, v91, v92, v93, *&v152}];
    }

    [(MediaControlsHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    UIRectIntegralWithScale();
    v169 = v98;
    v155 = v100;
    v156 = v99;
    v154 = v101;
    [(MediaControlsHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;
    primaryMarqueeView2 = [(MediaControlsHeaderView *)self primaryMarqueeView];
    [primaryMarqueeView2 setFrame:{v103, v105, v107, v109}];

    [(MediaControlsHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    secondaryMarqueeView2 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
    [secondaryMarqueeView2 setFrame:{v112, v114, v116, v118}];

    [(MediaControlsHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v127 = v126;
    placeholderLabel2 = [(MediaControlsHeaderView *)self placeholderLabel];
    [placeholderLabel2 setFrame:{v121, v123, v125, v127}];

    primaryMarqueeView3 = [(MediaControlsHeaderView *)self primaryMarqueeView];
    [primaryMarqueeView3 setContentSize:{v171, v160}];

    secondaryMarqueeView3 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
    [secondaryMarqueeView3 setContentSize:{v161, v159}];

    [(MediaControlsHeaderView *)self style];
    UIRectIntegralWithScale();
    v132 = v131;
    v134 = v133;
    v136 = v135;
    v138 = v137;
    UIRectIntegralWithScale();
    v140 = v139;
    v142 = v141;
    v164 = v143;
    v145 = v144;
    routeLabel4 = [(MediaControlsHeaderView *)self routeLabel];
    [routeLabel4 setFrame:{v169, v156, v155, v154}];

    primaryLabel2 = [(MediaControlsHeaderView *)self primaryLabel];
    [primaryLabel2 setFrame:{v132, v134, v136, v138}];

    secondaryLabel2 = [(MediaControlsHeaderView *)self secondaryLabel];
    [secondaryLabel2 setFrame:{v140, v142, v164, v145}];

    v11 = v157;
    v42 = v161;
  }

  v149 = v171;
  if (v11 >= v171)
  {
    v149 = v11;
  }

  if (v149 >= v42)
  {
    v42 = v149;
  }

  v150 = v42;
  v151 = v170;
  result.height = v151;
  result.width = v150;
  return result;
}

- (void)_updateStyle
{
  visualStylingProvider = self->_visualStylingProvider;
  secondaryLabel = [(MediaControlsHeaderView *)self secondaryLabel];
  [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:secondaryLabel];

  v5 = self->_visualStylingProvider;
  secondaryLabel2 = [(MediaControlsHeaderView *)self secondaryLabel];
  [(MTVisualStylingProvider *)v5 automaticallyUpdateView:secondaryLabel2 withStyle:self->_style == 1];

  if ([(MediaControlsHeaderView *)self marqueeEnabled])
  {
    v7 = (self->_style - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v7 = 0;
  }

  primaryMarqueeView = [(MediaControlsHeaderView *)self primaryMarqueeView];
  [primaryMarqueeView setMarqueeEnabled:v7];

  secondaryMarqueeView = [(MediaControlsHeaderView *)self secondaryMarqueeView];
  [secondaryMarqueeView setMarqueeEnabled:v7];

  style = self->_style;
  if (style > 2)
  {
    if ((style - 3) >= 3)
    {
      goto LABEL_12;
    }
  }

  else if (style)
  {
    if (style == 1)
    {
      routingButton = [(MediaControlsHeaderView *)self routingButton];
      [routingButton setAlpha:0.0];

      routeLabel = [(MediaControlsHeaderView *)self routeLabel];
      [routeLabel setAlpha:0.0];

      placeholderArtworkView = [(MediaControlsHeaderView *)self placeholderArtworkView];
      v13 = placeholderArtworkView;
      v14 = 0.0;
      goto LABEL_11;
    }

    if (style != 2)
    {
      goto LABEL_12;
    }

    routingButton2 = [(MediaControlsHeaderView *)self routingButton];
    [routingButton2 setAlpha:0.0];
  }

  placeholderArtworkView = [(MediaControlsHeaderView *)self routeLabel];
  v13 = placeholderArtworkView;
  v14 = 1.0;
LABEL_11:
  [placeholderArtworkView setAlpha:v14];

LABEL_12:
  v15 = self->_style;
  v16 = 0.0;
  if (v15 == 3)
  {
    v16 = 1.0;
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  buttonType = [(MediaControlsHeaderView *)self buttonType];
  if (buttonType == 2)
  {
    routingButton3 = [(MediaControlsHeaderView *)self routingButton];
    [routingButton3 setAlpha:v17];

    routingButton4 = [(MediaControlsHeaderView *)self routingButton];
    [routingButton4 setUserInteractionEnabled:1];

    isRouting = [(MediaControlsHeaderView *)self isRouting];
  }

  else if (buttonType == 1)
  {
    routingButton5 = [(MediaControlsHeaderView *)self routingButton];
    [routingButton5 setAlpha:v17];

    routingButton6 = [(MediaControlsHeaderView *)self routingButton];
    [routingButton6 setUserInteractionEnabled:1];

    isRouting = 2;
  }

  else
  {
    if (buttonType)
    {
      goto LABEL_24;
    }

    routingButton7 = [(MediaControlsHeaderView *)self routingButton];
    [routingButton7 setAlpha:0.0];

    routingButton8 = [(MediaControlsHeaderView *)self routingButton];
    [routingButton8 setUserInteractionEnabled:0];

    isRouting = 0;
  }

  routingButton9 = [(MediaControlsHeaderView *)self routingButton];
  [routingButton9 setCurrentMode:isRouting];

LABEL_24:

  [(MediaControlsHeaderView *)self updateArtworkStyle];
}

- (void)updateArtworkStyle
{
  style = self->_style;
  if (style > 2)
  {
    if ((style - 3) < 2)
    {
      goto LABEL_7;
    }

    if (style != 5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  switch(style)
  {
    case 0:
LABEL_7:
      artworkView = [(MediaControlsHeaderView *)self artworkView];
      image = [artworkView image];
      if (image)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      shadow = [(MediaControlsHeaderView *)self shadow];
      [shadow setAlpha:v6];

      artworkView2 = [(MediaControlsHeaderView *)self artworkView];
      [artworkView2 setAlpha:1.0];

      placeholderArtworkView = [(MediaControlsHeaderView *)self placeholderArtworkView];
      v10 = placeholderArtworkView;
      v11 = 1.0;
      goto LABEL_13;
    case 1:
LABEL_12:
      shadow2 = [(MediaControlsHeaderView *)self shadow];
      [shadow2 setAlpha:0.0];

      placeholderArtworkView = [(MediaControlsHeaderView *)self artworkView];
      v10 = placeholderArtworkView;
      v11 = 0.0;
LABEL_13:
      [placeholderArtworkView setAlpha:v11];

      break;
    case 2:
      goto LABEL_7;
  }

LABEL_14:
  artworkView3 = [(MediaControlsHeaderView *)self artworkView];
  image2 = [artworkView3 image];
  [image2 size];
  v16 = v15;
  artworkView4 = [(MediaControlsHeaderView *)self artworkView];
  image3 = [artworkView4 image];
  [image3 size];
  v20 = v16 - v19;

  v21 = -v20;
  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  if (v21 <= 0.00000011920929)
  {
    artworkView5 = [(MediaControlsHeaderView *)self artworkView];
    [artworkView5 alpha];
    v25 = v24;
    artworkBackground = [(MediaControlsHeaderView *)self artworkBackground];
    [artworkBackground setWeighting:v25];

    artworkView6 = [(MediaControlsHeaderView *)self artworkView];
    [artworkView6 alpha];
    v28 = v27;
    shadow3 = [(MediaControlsHeaderView *)self shadow];
    [shadow3 setAlpha:v28];
  }

  else
  {
    artworkBackground2 = [(MediaControlsHeaderView *)self artworkBackground];
    [artworkBackground2 setWeighting:0.0];

    artworkView6 = [(MediaControlsHeaderView *)self shadow];
    [artworkView6 setAlpha:0.0];
  }
}

- (void)setTransitioning:(BOOL)transitioning
{
  if (self->_transitioning != transitioning)
  {
    transitioningCopy = transitioning;
    self->_transitioning = transitioning;
    if (self->_style == 1)
    {
      shadow = [(MediaControlsHeaderView *)self shadow];
      [shadow setHidden:!transitioningCopy];

      v6 = !self->_transitioning;
      artworkView = [(MediaControlsHeaderView *)self artworkView];
      [artworkView setHidden:v6];

      v8 = !self->_transitioning;
      placeholderArtworkView = [(MediaControlsHeaderView *)self placeholderArtworkView];
      [placeholderArtworkView setHidden:v8];

      v10 = !self->_transitioning;
    }

    else
    {
      shadow2 = [(MediaControlsHeaderView *)self shadow];
      [shadow2 setHidden:0];

      artworkView2 = [(MediaControlsHeaderView *)self artworkView];
      [artworkView2 setHidden:0];

      placeholderArtworkView2 = [(MediaControlsHeaderView *)self placeholderArtworkView];
      [placeholderArtworkView2 setHidden:0];

      v10 = 0;
    }

    routingButton = [(MediaControlsHeaderView *)self routingButton];
    [routingButton setHidden:v10];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(MediaControlsHeaderView *)self layoutTextInAvailableBounds:0 setFrames:0.0, 0.0, fits.width, fits.height];
  if (v4 < 60.0)
  {
    v4 = 60.0;
  }

  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MediaControlsHeaderView;
  [(MediaControlsHeaderView *)&v4 didMoveToWindow];
  window = [(MediaControlsHeaderView *)self window];
  [(MediaControlsHeaderView *)self setMarqueeEnabled:window != 0];

  [(MediaControlsHeaderView *)self _updateStyle];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = MediaControlsHeaderView;
  [(MediaControlsHeaderView *)&v7 tintColorDidChange];
  if (!self->_visualStylingProvider)
  {
    tintColor = [(MediaControlsHeaderView *)self tintColor];
    traitCollection = [(MediaControlsHeaderView *)self traitCollection];
    v5 = [tintColor secondaryColorForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
    routeLabel = [(MediaControlsHeaderView *)self routeLabel];
    [routeLabel setTextColor:v5];
  }

  [(MediaControlsHeaderView *)self _updateStyle];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(MediaControlsHeaderView *)self _updateStyle];

    [(MediaControlsHeaderView *)self setNeedsLayout];
  }
}

- (void)setButtonType:(int64_t)type
{
  if (self->_buttonType != type)
  {
    self->_buttonType = type;
    [(MediaControlsHeaderView *)self _updateStyle];
    [(MediaControlsHeaderView *)self setNeedsLayout];

    [(MediaControlsHeaderView *)self layoutIfNeeded];
  }
}

- (void)setPrimaryString:(id)string
{
  stringCopy = string;
  if (self->_primaryString != stringCopy)
  {
    v8 = stringCopy;
    objc_storeStrong(&self->_primaryString, string);
    primaryString = self->_primaryString;
    primaryLabel = [(MediaControlsHeaderView *)self primaryLabel];
    [primaryLabel setText:primaryString];

    [(MediaControlsHeaderView *)self _updateRTL];
    [(MediaControlsHeaderView *)self setNeedsLayout];
    stringCopy = v8;
  }
}

- (void)setSecondaryString:(id)string
{
  stringCopy = string;
  if (self->_secondaryString != stringCopy)
  {
    v8 = stringCopy;
    objc_storeStrong(&self->_secondaryString, string);
    secondaryString = self->_secondaryString;
    secondaryLabel = [(MediaControlsHeaderView *)self secondaryLabel];
    [secondaryLabel setText:secondaryString];

    [(MediaControlsHeaderView *)self _updateRTL];
    [(MediaControlsHeaderView *)self setNeedsLayout];
    stringCopy = v8;
  }
}

- (void)setPlaceholderString:(id)string
{
  stringCopy = string;
  if (self->_placeholderString != stringCopy)
  {
    v8 = stringCopy;
    objc_storeStrong(&self->_placeholderString, string);
    placeholderString = self->_placeholderString;
    placeholderLabel = [(MediaControlsHeaderView *)self placeholderLabel];
    [placeholderLabel setText:placeholderString];

    [(MediaControlsHeaderView *)self setNeedsLayout];
    stringCopy = v8;
  }
}

- (void)setShowPlaceholderString:(BOOL)string
{
  if (self->_showPlaceholderString != string)
  {
    stringCopy = string;
    self->_showPlaceholderString = string;
    placeholderLabel = [(MediaControlsHeaderView *)self placeholderLabel];
    [placeholderLabel setHidden:!stringCopy];

    showPlaceholderString = self->_showPlaceholderString;
    primaryLabel = [(MediaControlsHeaderView *)self primaryLabel];
    [primaryLabel setHidden:showPlaceholderString];

    v8 = self->_showPlaceholderString;
    secondaryLabel = [(MediaControlsHeaderView *)self secondaryLabel];
    [secondaryLabel setHidden:v8];

    v10 = self->_showPlaceholderString;
    routeLabel = [(MediaControlsHeaderView *)self routeLabel];
    [routeLabel setHidden:v10];
  }
}

- (void)setMarqueeEnabled:(BOOL)enabled
{
  if (self->_marqueeEnabled != enabled)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_marqueeEnabled = enabled;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MediaControlsHeaderView_setMarqueeEnabled___block_invoke;
    v5[3] = &unk_1E7663898;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)setOverrideSize:(CGSize)size
{
  width = size.width;
  self->_overrideSize = size;
  [(MediaControlsHeaderView *)self layoutTextInAvailableBounds:0 setFrames:0.0, 0.0, size.width, size.height];
  if (v5 <= width + -12.0)
  {

    [(MediaControlsHeaderView *)self setShouldUseOverrideSize:0];
  }

  else
  {
    [(MediaControlsHeaderView *)self setShouldUseOverrideSize:1];
    [(MediaControlsHeaderView *)self setNeedsLayout];

    [(MediaControlsHeaderView *)self layoutIfNeeded];
  }
}

- (void)setRouting:(BOOL)routing
{
  if (self->_routing != routing)
  {
    self->_routing = routing;
    [(MediaControlsHeaderView *)self _updateStyle];
  }
}

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v28 = providerCopy;
    routeLabel = [(MediaControlsHeaderView *)self routeLabel];
    titleLabel = [routeLabel titleLabel];
    [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:titleLabel];

    v9 = self->_visualStylingProvider;
    primaryLabel = [(MediaControlsHeaderView *)self primaryLabel];
    [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:primaryLabel];

    v11 = self->_visualStylingProvider;
    secondaryLabel = [(MediaControlsHeaderView *)self secondaryLabel];
    [(MTVisualStylingProvider *)v11 stopAutomaticallyUpdatingView:secondaryLabel];

    v13 = self->_visualStylingProvider;
    placeholderLabel = [(MediaControlsHeaderView *)self placeholderLabel];
    [(MTVisualStylingProvider *)v13 stopAutomaticallyUpdatingView:placeholderLabel];

    v15 = self->_visualStylingProvider;
    placeholderArtworkView = [(MediaControlsHeaderView *)self placeholderArtworkView];
    [(MTVisualStylingProvider *)v15 stopAutomaticallyUpdatingView:placeholderArtworkView];

    objc_storeStrong(&self->_visualStylingProvider, provider);
    v17 = self->_visualStylingProvider;
    routeLabel2 = [(MediaControlsHeaderView *)self routeLabel];
    titleLabel2 = [routeLabel2 titleLabel];
    [(MTVisualStylingProvider *)v17 automaticallyUpdateView:titleLabel2 withStyle:1];

    v20 = self->_visualStylingProvider;
    primaryLabel2 = [(MediaControlsHeaderView *)self primaryLabel];
    [(MTVisualStylingProvider *)v20 automaticallyUpdateView:primaryLabel2 withStyle:0];

    v22 = self->_visualStylingProvider;
    secondaryLabel2 = [(MediaControlsHeaderView *)self secondaryLabel];
    [(MTVisualStylingProvider *)v22 automaticallyUpdateView:secondaryLabel2 withStyle:1];

    v24 = self->_visualStylingProvider;
    placeholderLabel2 = [(MediaControlsHeaderView *)self placeholderLabel];
    [(MTVisualStylingProvider *)v24 automaticallyUpdateView:placeholderLabel2 withStyle:0];

    v26 = self->_visualStylingProvider;
    placeholderArtworkView2 = [(MediaControlsHeaderView *)self placeholderArtworkView];
    [(MTVisualStylingProvider *)v26 automaticallyUpdateView:placeholderArtworkView2 withStyle:0];

    providerCopy = v28;
  }
}

- (void)_updateRTL
{
  primaryLabel = [(MediaControlsHeaderView *)self primaryLabel];
  text = [primaryLabel text];
  _isNaturallyRTL = [text _isNaturallyRTL];

  primaryMarqueeView = [(MediaControlsHeaderView *)self primaryMarqueeView];
  [primaryMarqueeView setAnimationDirection:_isNaturallyRTL];

  primaryMarqueeView2 = [(MediaControlsHeaderView *)self primaryMarqueeView];
  v8 = primaryMarqueeView2;
  if (_isNaturallyRTL)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  [primaryMarqueeView2 setSemanticContentAttribute:v9];

  secondaryLabel = [(MediaControlsHeaderView *)self secondaryLabel];
  text2 = [secondaryLabel text];
  _isNaturallyRTL2 = [text2 _isNaturallyRTL];

  secondaryMarqueeView = [(MediaControlsHeaderView *)self secondaryMarqueeView];
  [secondaryMarqueeView setAnimationDirection:_isNaturallyRTL2];

  secondaryMarqueeView2 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
  v16 = secondaryMarqueeView2;
  if (_isNaturallyRTL2)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  [secondaryMarqueeView2 setSemanticContentAttribute:v15];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  launchNowPlayingAppButton = [(MediaControlsHeaderView *)self launchNowPlayingAppButton];
  if ([launchNowPlayingAppButton isHidden])
  {
    v8 = 0;
LABEL_5:

    goto LABEL_7;
  }

  artworkContentView = [(MediaControlsHeaderView *)self artworkContentView];
  [artworkContentView frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [requestCopy location];
  v24.x = v18;
  v24.y = v19;
  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v15;
  v25.size.height = v17;
  v20 = CGRectContainsPoint(v25, v24);

  if (v20)
  {
    v21 = MEMORY[0x1E69DCDC0];
    launchNowPlayingAppButton = [(MediaControlsHeaderView *)self artworkContentView];
    [launchNowPlayingAppButton frame];
    v8 = [v21 regionWithRect:@"Artwork" identifier:?];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc(MEMORY[0x1E69DD070]);
  artworkContentView = [(MediaControlsHeaderView *)self artworkContentView];
  v7 = [v5 initWithView:artworkContentView];

  v8 = [MEMORY[0x1E69DCDB8] effectWithPreview:v7];
  v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v8 shape:0];

  return v9;
}

- (CGSize)overrideSize
{
  width = self->_overrideSize.width;
  height = self->_overrideSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end