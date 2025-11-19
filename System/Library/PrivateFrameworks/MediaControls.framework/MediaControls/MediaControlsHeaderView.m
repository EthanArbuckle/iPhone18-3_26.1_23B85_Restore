@interface MediaControlsHeaderView
- (CGSize)layoutTextInAvailableBounds:(CGRect)a3 setFrames:(BOOL)a4;
- (CGSize)overrideSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MediaControlsHeaderView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_updateRTL;
- (void)_updateStyle;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setButtonType:(int64_t)a3;
- (void)setMarqueeEnabled:(BOOL)a3;
- (void)setOverrideSize:(CGSize)a3;
- (void)setPlaceholderString:(id)a3;
- (void)setPrimaryString:(id)a3;
- (void)setRouting:(BOOL)a3;
- (void)setSecondaryString:(id)a3;
- (void)setShowPlaceholderString:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3;
- (void)tintColorDidChange;
- (void)updateArtworkStyle;
@end

@implementation MediaControlsHeaderView

- (MediaControlsHeaderView)initWithFrame:(CGRect)a3
{
  v108.receiver = self;
  v108.super_class = MediaControlsHeaderView;
  v3 = [(MediaControlsHeaderView *)&v108 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v35 = [(MediaControlsHeaderView *)v3 routingButton];
    [(MediaControlsHeaderView *)v3 addSubview:v35];

    v36 = [(MediaControlsHeaderView *)v3 routeLabel];
    [(MediaControlsHeaderView *)v3 addSubview:v36];

    v37 = [(MediaControlsHeaderView *)v3 primaryMarqueeView];
    [(MediaControlsHeaderView *)v3 addSubview:v37];

    v38 = [(MediaControlsHeaderView *)v3 secondaryMarqueeView];
    [(MediaControlsHeaderView *)v3 addSubview:v38];

    v39 = [(MediaControlsHeaderView *)v3 placeholderLabel];
    [(MediaControlsHeaderView *)v3 addSubview:v39];

    v40 = [(MediaControlsHeaderView *)v3 launchNowPlayingAppButton];
    [(MediaControlsHeaderView *)v3 addSubview:v40];

    v41 = [(MediaControlsHeaderView *)v3 artworkContentView];
    [(MediaControlsHeaderView *)v3 addSubview:v41];

    v42 = [(MediaControlsHeaderView *)v3 artworkContentView];
    v43 = [(MediaControlsHeaderView *)v3 shadow];
    [v42 addSubview:v43];

    v44 = [(MediaControlsHeaderView *)v3 artworkContentView];
    v45 = [(MediaControlsHeaderView *)v3 artworkBackground];
    [v44 addSubview:v45];

    v46 = [(MediaControlsHeaderView *)v3 artworkContentView];
    v47 = [(MediaControlsHeaderView *)v3 artworkView];
    [v46 addSubview:v47];

    v48 = [(MediaControlsHeaderView *)v3 artworkContentView];
    v49 = [(MediaControlsHeaderView *)v3 placeholderArtworkView];
    [v48 addSubview:v49];

    v50 = [(MediaControlsHeaderView *)v3 routingButton];
    [v50 setHitRectInsets:{-24.0, -24.0, -24.0, -24.0}];

    v51 = [(MediaControlsHeaderView *)v3 traitCollection];
    [v51 displayScale];

    v52 = [(MediaControlsHeaderView *)v3 artworkContentView];
    [v52 setUserInteractionEnabled:0];

    v53 = [(MediaControlsHeaderView *)v3 artworkBackground];
    [v53 setClipsToBounds:1];

    UIRoundToScale();
    v55 = v54;
    v56 = [(MediaControlsHeaderView *)v3 artworkBackground];
    [v56 _setContinuousCornerRadius:v55];

    v57 = *MEMORY[0x1E6979D68];
    v58 = [(MediaControlsHeaderView *)v3 artworkView];
    v59 = [v58 layer];
    [v59 setMinificationFilter:v57];

    v60 = [(MediaControlsHeaderView *)v3 artworkView];
    [v60 setContentMode:1];

    v61 = [(MediaControlsHeaderView *)v3 artworkView];
    [v61 setClipsToBounds:1];

    UIRoundToScale();
    v63 = v62;
    v64 = [(MediaControlsHeaderView *)v3 artworkView];
    [v64 _setContinuousCornerRadius:v63];

    v65 = [(MediaControlsHeaderView *)v3 placeholderArtworkView];
    v66 = [v65 layer];
    [v66 setMinificationFilter:v57];

    v67 = [(MediaControlsHeaderView *)v3 placeholderArtworkView];
    [v67 setContentMode:1];

    v68 = [(MediaControlsHeaderView *)v3 placeholderArtworkView];
    [v68 setClipsToBounds:1];

    v69 = [MEMORY[0x1E69DC888] blackColor];
    v70 = [v69 CGColor];
    v71 = [(MediaControlsHeaderView *)v3 shadow];
    v72 = [v71 layer];
    [v72 setShadowColor:v70];

    v73 = [(MediaControlsHeaderView *)v3 shadow];
    v74 = [v73 layer];
    [v74 setShadowOffset:{0.0, 1.0}];

    v75 = [(MediaControlsHeaderView *)v3 shadow];
    v76 = [v75 layer];
    [v76 setShadowRadius:4.0];

    v77 = [(MediaControlsHeaderView *)v3 shadow];
    v78 = [v77 layer];
    LODWORD(v79) = 1042536202;
    [v78 setShadowOpacity:v79];

    v80 = [MEMORY[0x1E696AD88] defaultCenter];
    [v80 addObserver:v3 selector:sel__handleContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
    v81 = [(MediaControlsHeaderView *)v3 routeLabel];
    [v81 setForcesUppercaseText:1];

    v82 = [(MediaControlsHeaderView *)v3 primaryLabel];
    [v82 setNumberOfLines:1];

    v83 = [(MediaControlsHeaderView *)v3 secondaryLabel];
    [v83 setNumberOfLines:1];

    v84 = [(MediaControlsHeaderView *)v3 placeholderLabel];
    [v84 setNumberOfLines:0];

    v85 = [(MediaControlsHeaderView *)v3 primaryMarqueeView];
    v86 = [v85 contentView];
    v87 = [(MediaControlsHeaderView *)v3 primaryLabel];
    [v86 addSubview:v87];

    v88 = [(MediaControlsHeaderView *)v3 secondaryMarqueeView];
    v89 = [v88 contentView];
    v90 = [(MediaControlsHeaderView *)v3 secondaryLabel];
    [v89 addSubview:v90];

    v91 = [(MediaControlsHeaderView *)v3 traitCollection];
    [v91 displayScale];
    UIRoundToScale();
    v93 = v92;
    v94 = [(MediaControlsHeaderView *)v3 primaryMarqueeView];
    [v94 setContentGap:v93];

    v95 = [(MediaControlsHeaderView *)v3 traitCollection];
    [v95 displayScale];
    UIRoundToScale();
    v97 = v96;
    v98 = [(MediaControlsHeaderView *)v3 secondaryMarqueeView];
    [v98 setContentGap:v97];

    v99 = [(MediaControlsHeaderView *)v3 primaryMarqueeView];
    v100 = [(MediaControlsHeaderView *)v3 secondaryMarqueeView];
    [v99 addCoordinatedMarqueeView:v100];

    v101 = [(MediaControlsHeaderView *)v3 launchNowPlayingAppButton];
    [v101 setHidden:1];

    v102 = [(MediaControlsHeaderView *)v3 launchNowPlayingAppButton];
    [v102 addTarget:v3 action:sel_launchNowPlayingAppButtonPressed forControlEvents:64];

    [(MediaControlsHeaderView *)v3 _updateStyle];
    v103 = [MEMORY[0x1E69DC938] currentDevice];
    v104 = [v103 userInterfaceIdiom];

    if (v104 == 1)
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

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

  v12 = [(MediaControlsHeaderView *)self traitCollection];
  [v12 displayScale];

  if (self->_style != 1)
  {
    v4 = v4 + 24.0;
    v6 = v6 + 0.0;
    v8 = v8 - (24.0 + 24.0);
  }

  UIRectIntegralWithScale();
  UIRectCenteredYInRect();
  v13 = [(MediaControlsHeaderView *)self artworkView];
  [v13 setContentMode:1];

  v14 = v4 + 60.0;
  v15 = v6 + 0.0;
  if (self->_style != 1)
  {
    v8 = v8 - (60.0 + 0.0);
    v6 = v6 + 0.0;
    v4 = v4 + 60.0;
  }

  v16 = [(MediaControlsHeaderView *)self placeholderArtworkView:v14];
  v17 = [v16 image];
  [v17 size];

  v18 = [(MediaControlsHeaderView *)self placeholderArtworkView];
  [v18 setContentMode:1];

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
  v21 = [(MediaControlsHeaderView *)self buttonType];
  style = self->_style;
  if (v21 && (style == 3 || !style))
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
  v24 = [(MediaControlsHeaderView *)self launchNowPlayingAppButton];
  v25 = [v24 isHidden];

  if ((v25 & 1) == 0)
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
  v34 = [(MediaControlsHeaderView *)self artworkContentView];
  [v34 setFrame:{v27, v29, v31, v33}];

  v35 = [(MediaControlsHeaderView *)self artworkContentView];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [(MediaControlsHeaderView *)self artworkView];
  [v44 setFrame:{v37, v39, v41, v43}];

  v45 = [(MediaControlsHeaderView *)self artworkContentView];
  [v45 bounds];
  UIRectCenteredIntegralRect();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = [(MediaControlsHeaderView *)self placeholderArtworkView];
  [v54 setFrame:{v47, v49, v51, v53}];

  v55 = [(MediaControlsHeaderView *)self artworkContentView];
  [v55 bounds];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = [(MediaControlsHeaderView *)self artworkBackground];
  [v64 setFrame:{v57, v59, v61, v63}];

  v65 = [(MediaControlsHeaderView *)self artworkContentView];
  [v65 bounds];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = [(MediaControlsHeaderView *)self shadow];
  [v74 setFrame:{v67, v69, v71, v73}];

  UIRectIntegralWithScale();
  [(MediaControlsHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = [(MediaControlsHeaderView *)self routingButton];
  [v83 setFrame:{v76, v78, v80, v82}];

  UIRectIntegralWithScale();
  [(MediaControlsHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = [(MediaControlsHeaderView *)self launchNowPlayingAppButton];
  [v92 setFrame:{v85, v87, v89, v91}];

  v93 = [(MediaControlsHeaderView *)self artworkView];
  [v93 bounds];
  v94 = CGPathCreateWithRect(v100, MEMORY[0x1E695EFD0]);

  v95 = [(MediaControlsHeaderView *)self shadow];
  v96 = [v95 layer];
  [v96 setShadowPath:v94];

  CGPathRelease(v94);
  [(MediaControlsHeaderView *)self _updateStyle];
}

- (CGSize)layoutTextInAvailableBounds:(CGRect)a3 setFrames:(BOOL)a4
{
  v162 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v175[1] = *MEMORY[0x1E69E9840];
  v8 = [(MediaControlsHeaderView *)self traitCollection];
  [v8 displayScale];

  v9 = [(MediaControlsHeaderView *)self routeLabel];
  [v9 sizeThatFits:{width, height}];
  v11 = v10;
  v168 = v12;

  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  v14 = [v13 preferredContentSizeCategory];
  v15 = *MEMORY[0x1E69DDC58];
  v16 = UIContentSizeCategoryCompareToCategory(v14, *MEMORY[0x1E69DDC58]);

  v17 = [(MediaControlsHeaderView *)self traitCollection];
  if (v16 == NSOrderedDescending)
  {
    v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v15];

    v17 = v18;
  }

  v19 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10] compatibleWithTraitCollection:v17];
  v20 = [v19 fontDescriptorWithSymbolicTraits:2];

  v167 = v20;
  v21 = [MEMORY[0x1E69DB878] fontWithDescriptor:v20 size:0.0];
  v22 = *MEMORY[0x1E69DDCF8];
  v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v17];
  v24 = [v23 fontDescriptorWithSymbolicTraits:2];

  v25 = [MEMORY[0x1E69DB878] fontWithDescriptor:v24 size:0.0];
  v165 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v22 compatibleWithTraitCollection:v17];
  v26 = [MEMORY[0x1E69DB878] fontWithDescriptor:0.0 size:?];
  v27 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v22];
  [v27 scaledValueForValue:v17 compatibleWithTraitCollection:6.0];
  v29 = v28;

  v30 = [(MediaControlsHeaderView *)self routeLabel];
  v166 = v21;
  [v30 setFont:v21];

  v31 = [(MediaControlsHeaderView *)self primaryLabel];
  [v31 setFont:v25];

  v32 = [(MediaControlsHeaderView *)self placeholderLabel];
  [v32 setFont:v25];

  v33 = [(MediaControlsHeaderView *)self secondaryLabel];
  [v33 setFont:v26];

  v34 = [(MediaControlsHeaderView *)self primaryString];
  v174 = *MEMORY[0x1E69DB648];
  v35 = v174;
  v175[0] = v25;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v175 forKeys:&v174 count:1];
  [v34 boundingRectWithSize:1 options:v36 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v171 = v37;
  v160 = v38;

  v39 = [(MediaControlsHeaderView *)self secondaryString];
  v172 = v35;
  v173 = v26;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
  [v39 boundingRectWithSize:1 options:v40 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v42 = v41;
  v159 = v43;

  v44 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v22];
  [v44 scaledValueForValue:v17 compatibleWithTraitCollection:20.0];
  v46 = v45;

  style = self->_style;
  if (style != 1)
  {
    v52 = [(MediaControlsHeaderView *)self primaryString];
    if ([v52 length])
    {
      v53 = [(MediaControlsHeaderView *)self secondaryString];
      v54 = [v53 length];

      if (v54)
      {
        v51 = v46 + v168 + v46;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v55 = [(MediaControlsHeaderView *)self primaryString];
    if ([v55 length])
    {
      v56 = [(MediaControlsHeaderView *)self secondaryString];
      v57 = [v56 length];

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

  v48 = [(MediaControlsHeaderView *)self primaryString];
  if (![v48 length])
  {

    v170 = v46;
    goto LABEL_17;
  }

  v49 = [(MediaControlsHeaderView *)self secondaryString];
  v50 = [v49 length];

  v51 = v46 + v46;
  if (!v50)
  {
    v51 = v46;
  }

LABEL_16:
  v170 = v51;
LABEL_17:
  if (v162)
  {
    v161 = v42;
    v58 = [(MediaControlsHeaderView *)self traitCollection];
    [v58 displayScale];
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
      v67 = [(MediaControlsHeaderView *)self routeLabel];
      [v67 _baselineOffsetFromBottom];
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
        v74 = [(MediaControlsHeaderView *)self primaryMarqueeView];
        [v74 setFadeEdgeInsets:{v158, v75, v77, v76}];
      }

      else
      {
        v78 = *MEMORY[0x1E69DDCE0];
        v79 = *(MEMORY[0x1E69DDCE0] + 8);
        v80 = *(MEMORY[0x1E69DDCE0] + 16);
        v81 = *(MEMORY[0x1E69DDCE0] + 24);
        v74 = [(MediaControlsHeaderView *)self primaryMarqueeView];
        [v74 setFadeEdgeInsets:{v78, v79, v80, v81}];
      }
    }

    else if (v69 == 1)
    {
      UIRoundToScale();
      v70 = *MEMORY[0x1E69DDCE0];
      v71 = *(MEMORY[0x1E69DDCE0] + 8);
      v72 = *(MEMORY[0x1E69DDCE0] + 16);
      v73 = *(MEMORY[0x1E69DDCE0] + 24);
      v74 = [(MediaControlsHeaderView *)self primaryMarqueeView];
      [v74 setFadeEdgeInsets:{v70, v71, v72, v73}];
    }

    else
    {
      v74 = [(MediaControlsHeaderView *)self primaryMarqueeView];
      [v74 setFadeEdgeInsets:{0.0, v152, 0.0, v152}];
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
        v88 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
        v89 = v88;
        v90 = v84;
        v91 = v85;
        v92 = v86;
        v93 = v87;
      }

      else
      {
        v88 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
        v89 = v88;
        v90 = 0.0;
        v92 = 0.0;
        v91 = v152;
        v93 = v152;
      }

      [v88 setFadeEdgeInsets:{v90, v91, v92, v93, *&v152}];
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
    v110 = [(MediaControlsHeaderView *)self primaryMarqueeView];
    [v110 setFrame:{v103, v105, v107, v109}];

    [(MediaControlsHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v119 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
    [v119 setFrame:{v112, v114, v116, v118}];

    [(MediaControlsHeaderView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v127 = v126;
    v128 = [(MediaControlsHeaderView *)self placeholderLabel];
    [v128 setFrame:{v121, v123, v125, v127}];

    v129 = [(MediaControlsHeaderView *)self primaryMarqueeView];
    [v129 setContentSize:{v171, v160}];

    v130 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
    [v130 setContentSize:{v161, v159}];

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
    v146 = [(MediaControlsHeaderView *)self routeLabel];
    [v146 setFrame:{v169, v156, v155, v154}];

    v147 = [(MediaControlsHeaderView *)self primaryLabel];
    [v147 setFrame:{v132, v134, v136, v138}];

    v148 = [(MediaControlsHeaderView *)self secondaryLabel];
    [v148 setFrame:{v140, v142, v164, v145}];

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
  v4 = [(MediaControlsHeaderView *)self secondaryLabel];
  [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:v4];

  v5 = self->_visualStylingProvider;
  v6 = [(MediaControlsHeaderView *)self secondaryLabel];
  [(MTVisualStylingProvider *)v5 automaticallyUpdateView:v6 withStyle:self->_style == 1];

  if ([(MediaControlsHeaderView *)self marqueeEnabled])
  {
    v7 = (self->_style - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MediaControlsHeaderView *)self primaryMarqueeView];
  [v8 setMarqueeEnabled:v7];

  v9 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
  [v9 setMarqueeEnabled:v7];

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
      v27 = [(MediaControlsHeaderView *)self routingButton];
      [v27 setAlpha:0.0];

      v28 = [(MediaControlsHeaderView *)self routeLabel];
      [v28 setAlpha:0.0];

      v12 = [(MediaControlsHeaderView *)self placeholderArtworkView];
      v13 = v12;
      v14 = 0.0;
      goto LABEL_11;
    }

    if (style != 2)
    {
      goto LABEL_12;
    }

    v11 = [(MediaControlsHeaderView *)self routingButton];
    [v11 setAlpha:0.0];
  }

  v12 = [(MediaControlsHeaderView *)self routeLabel];
  v13 = v12;
  v14 = 1.0;
LABEL_11:
  [v12 setAlpha:v14];

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

  v18 = [(MediaControlsHeaderView *)self buttonType];
  if (v18 == 2)
  {
    v24 = [(MediaControlsHeaderView *)self routingButton];
    [v24 setAlpha:v17];

    v25 = [(MediaControlsHeaderView *)self routingButton];
    [v25 setUserInteractionEnabled:1];

    v21 = [(MediaControlsHeaderView *)self isRouting];
  }

  else if (v18 == 1)
  {
    v22 = [(MediaControlsHeaderView *)self routingButton];
    [v22 setAlpha:v17];

    v23 = [(MediaControlsHeaderView *)self routingButton];
    [v23 setUserInteractionEnabled:1];

    v21 = 2;
  }

  else
  {
    if (v18)
    {
      goto LABEL_24;
    }

    v19 = [(MediaControlsHeaderView *)self routingButton];
    [v19 setAlpha:0.0];

    v20 = [(MediaControlsHeaderView *)self routingButton];
    [v20 setUserInteractionEnabled:0];

    v21 = 0;
  }

  v26 = [(MediaControlsHeaderView *)self routingButton];
  [v26 setCurrentMode:v21];

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
      v4 = [(MediaControlsHeaderView *)self artworkView];
      v5 = [v4 image];
      if (v5)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      v7 = [(MediaControlsHeaderView *)self shadow];
      [v7 setAlpha:v6];

      v8 = [(MediaControlsHeaderView *)self artworkView];
      [v8 setAlpha:1.0];

      v9 = [(MediaControlsHeaderView *)self placeholderArtworkView];
      v10 = v9;
      v11 = 1.0;
      goto LABEL_13;
    case 1:
LABEL_12:
      v12 = [(MediaControlsHeaderView *)self shadow];
      [v12 setAlpha:0.0];

      v9 = [(MediaControlsHeaderView *)self artworkView];
      v10 = v9;
      v11 = 0.0;
LABEL_13:
      [v9 setAlpha:v11];

      break;
    case 2:
      goto LABEL_7;
  }

LABEL_14:
  v13 = [(MediaControlsHeaderView *)self artworkView];
  v14 = [v13 image];
  [v14 size];
  v16 = v15;
  v17 = [(MediaControlsHeaderView *)self artworkView];
  v18 = [v17 image];
  [v18 size];
  v20 = v16 - v19;

  v21 = -v20;
  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  if (v21 <= 0.00000011920929)
  {
    v23 = [(MediaControlsHeaderView *)self artworkView];
    [v23 alpha];
    v25 = v24;
    v26 = [(MediaControlsHeaderView *)self artworkBackground];
    [v26 setWeighting:v25];

    v30 = [(MediaControlsHeaderView *)self artworkView];
    [v30 alpha];
    v28 = v27;
    v29 = [(MediaControlsHeaderView *)self shadow];
    [v29 setAlpha:v28];
  }

  else
  {
    v22 = [(MediaControlsHeaderView *)self artworkBackground];
    [v22 setWeighting:0.0];

    v30 = [(MediaControlsHeaderView *)self shadow];
    [v30 setAlpha:0.0];
  }
}

- (void)setTransitioning:(BOOL)a3
{
  if (self->_transitioning != a3)
  {
    v3 = a3;
    self->_transitioning = a3;
    if (self->_style == 1)
    {
      v5 = [(MediaControlsHeaderView *)self shadow];
      [v5 setHidden:!v3];

      v6 = !self->_transitioning;
      v7 = [(MediaControlsHeaderView *)self artworkView];
      [v7 setHidden:v6];

      v8 = !self->_transitioning;
      v9 = [(MediaControlsHeaderView *)self placeholderArtworkView];
      [v9 setHidden:v8];

      v10 = !self->_transitioning;
    }

    else
    {
      v11 = [(MediaControlsHeaderView *)self shadow];
      [v11 setHidden:0];

      v12 = [(MediaControlsHeaderView *)self artworkView];
      [v12 setHidden:0];

      v13 = [(MediaControlsHeaderView *)self placeholderArtworkView];
      [v13 setHidden:0];

      v10 = 0;
    }

    v14 = [(MediaControlsHeaderView *)self routingButton];
    [v14 setHidden:v10];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(MediaControlsHeaderView *)self layoutTextInAvailableBounds:0 setFrames:0.0, 0.0, a3.width, a3.height];
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
  v3 = [(MediaControlsHeaderView *)self window];
  [(MediaControlsHeaderView *)self setMarqueeEnabled:v3 != 0];

  [(MediaControlsHeaderView *)self _updateStyle];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = MediaControlsHeaderView;
  [(MediaControlsHeaderView *)&v7 tintColorDidChange];
  if (!self->_visualStylingProvider)
  {
    v3 = [(MediaControlsHeaderView *)self tintColor];
    v4 = [(MediaControlsHeaderView *)self traitCollection];
    v5 = [v3 secondaryColorForInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];
    v6 = [(MediaControlsHeaderView *)self routeLabel];
    [v6 setTextColor:v5];
  }

  [(MediaControlsHeaderView *)self _updateStyle];
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(MediaControlsHeaderView *)self _updateStyle];

    [(MediaControlsHeaderView *)self setNeedsLayout];
  }
}

- (void)setButtonType:(int64_t)a3
{
  if (self->_buttonType != a3)
  {
    self->_buttonType = a3;
    [(MediaControlsHeaderView *)self _updateStyle];
    [(MediaControlsHeaderView *)self setNeedsLayout];

    [(MediaControlsHeaderView *)self layoutIfNeeded];
  }
}

- (void)setPrimaryString:(id)a3
{
  v5 = a3;
  if (self->_primaryString != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_primaryString, a3);
    primaryString = self->_primaryString;
    v7 = [(MediaControlsHeaderView *)self primaryLabel];
    [v7 setText:primaryString];

    [(MediaControlsHeaderView *)self _updateRTL];
    [(MediaControlsHeaderView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setSecondaryString:(id)a3
{
  v5 = a3;
  if (self->_secondaryString != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_secondaryString, a3);
    secondaryString = self->_secondaryString;
    v7 = [(MediaControlsHeaderView *)self secondaryLabel];
    [v7 setText:secondaryString];

    [(MediaControlsHeaderView *)self _updateRTL];
    [(MediaControlsHeaderView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setPlaceholderString:(id)a3
{
  v5 = a3;
  if (self->_placeholderString != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_placeholderString, a3);
    placeholderString = self->_placeholderString;
    v7 = [(MediaControlsHeaderView *)self placeholderLabel];
    [v7 setText:placeholderString];

    [(MediaControlsHeaderView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setShowPlaceholderString:(BOOL)a3
{
  if (self->_showPlaceholderString != a3)
  {
    v3 = a3;
    self->_showPlaceholderString = a3;
    v5 = [(MediaControlsHeaderView *)self placeholderLabel];
    [v5 setHidden:!v3];

    showPlaceholderString = self->_showPlaceholderString;
    v7 = [(MediaControlsHeaderView *)self primaryLabel];
    [v7 setHidden:showPlaceholderString];

    v8 = self->_showPlaceholderString;
    v9 = [(MediaControlsHeaderView *)self secondaryLabel];
    [v9 setHidden:v8];

    v10 = self->_showPlaceholderString;
    v11 = [(MediaControlsHeaderView *)self routeLabel];
    [v11 setHidden:v10];
  }
}

- (void)setMarqueeEnabled:(BOOL)a3
{
  if (self->_marqueeEnabled != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_marqueeEnabled = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MediaControlsHeaderView_setMarqueeEnabled___block_invoke;
    v5[3] = &unk_1E7663898;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)setOverrideSize:(CGSize)a3
{
  width = a3.width;
  self->_overrideSize = a3;
  [(MediaControlsHeaderView *)self layoutTextInAvailableBounds:0 setFrames:0.0, 0.0, a3.width, a3.height];
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

- (void)setRouting:(BOOL)a3
{
  if (self->_routing != a3)
  {
    self->_routing = a3;
    [(MediaControlsHeaderView *)self _updateStyle];
  }
}

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != v5)
  {
    v28 = v5;
    v7 = [(MediaControlsHeaderView *)self routeLabel];
    v8 = [v7 titleLabel];
    [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:v8];

    v9 = self->_visualStylingProvider;
    v10 = [(MediaControlsHeaderView *)self primaryLabel];
    [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:v10];

    v11 = self->_visualStylingProvider;
    v12 = [(MediaControlsHeaderView *)self secondaryLabel];
    [(MTVisualStylingProvider *)v11 stopAutomaticallyUpdatingView:v12];

    v13 = self->_visualStylingProvider;
    v14 = [(MediaControlsHeaderView *)self placeholderLabel];
    [(MTVisualStylingProvider *)v13 stopAutomaticallyUpdatingView:v14];

    v15 = self->_visualStylingProvider;
    v16 = [(MediaControlsHeaderView *)self placeholderArtworkView];
    [(MTVisualStylingProvider *)v15 stopAutomaticallyUpdatingView:v16];

    objc_storeStrong(&self->_visualStylingProvider, a3);
    v17 = self->_visualStylingProvider;
    v18 = [(MediaControlsHeaderView *)self routeLabel];
    v19 = [v18 titleLabel];
    [(MTVisualStylingProvider *)v17 automaticallyUpdateView:v19 withStyle:1];

    v20 = self->_visualStylingProvider;
    v21 = [(MediaControlsHeaderView *)self primaryLabel];
    [(MTVisualStylingProvider *)v20 automaticallyUpdateView:v21 withStyle:0];

    v22 = self->_visualStylingProvider;
    v23 = [(MediaControlsHeaderView *)self secondaryLabel];
    [(MTVisualStylingProvider *)v22 automaticallyUpdateView:v23 withStyle:1];

    v24 = self->_visualStylingProvider;
    v25 = [(MediaControlsHeaderView *)self placeholderLabel];
    [(MTVisualStylingProvider *)v24 automaticallyUpdateView:v25 withStyle:0];

    v26 = self->_visualStylingProvider;
    v27 = [(MediaControlsHeaderView *)self placeholderArtworkView];
    [(MTVisualStylingProvider *)v26 automaticallyUpdateView:v27 withStyle:0];

    v5 = v28;
  }
}

- (void)_updateRTL
{
  v3 = [(MediaControlsHeaderView *)self primaryLabel];
  v4 = [v3 text];
  v5 = [v4 _isNaturallyRTL];

  v6 = [(MediaControlsHeaderView *)self primaryMarqueeView];
  [v6 setAnimationDirection:v5];

  v7 = [(MediaControlsHeaderView *)self primaryMarqueeView];
  v8 = v7;
  if (v5)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  [v7 setSemanticContentAttribute:v9];

  v10 = [(MediaControlsHeaderView *)self secondaryLabel];
  v11 = [v10 text];
  v12 = [v11 _isNaturallyRTL];

  v13 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
  [v13 setAnimationDirection:v12];

  v14 = [(MediaControlsHeaderView *)self secondaryMarqueeView];
  v16 = v14;
  if (v12)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  [v14 setSemanticContentAttribute:v15];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(MediaControlsHeaderView *)self launchNowPlayingAppButton];
  if ([v7 isHidden])
  {
    v8 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v9 = [(MediaControlsHeaderView *)self artworkContentView];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v6 location];
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
    v7 = [(MediaControlsHeaderView *)self artworkContentView];
    [v7 frame];
    v8 = [v21 regionWithRect:@"Artwork" identifier:?];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_alloc(MEMORY[0x1E69DD070]);
  v6 = [(MediaControlsHeaderView *)self artworkContentView];
  v7 = [v5 initWithView:v6];

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