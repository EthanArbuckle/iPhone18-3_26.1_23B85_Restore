@interface CPUISongDetailsView
+ (double)maximumHeightForTrackInfoFontStyle:(unint64_t)style;
+ (double)minimumHeightForTrackInfoFontStyle:(unint64_t)style;
- (CGSize)intrinsicContentSize;
- (CGSize)maximumTitleViewSize;
- (CPUIModernButton)attributionButton;
- (CPUISongDetailsView)initWithFrame:(CGRect)frame;
- (NSString)attributionName;
- (UIImage)attributionArtwork;
- (id)_attributedTitle;
- (void)_updateFont;
- (void)_updateNumberOfLines;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setAlbumTitle:(id)title;
- (void)setArtistName:(id)name;
- (void)setAttributionArtwork:(id)artwork;
- (void)setAttributionName:(id)name;
- (void)setMaximumTitleViewSize:(CGSize)size;
- (void)setTrackTitle:(id)title;
@end

@implementation CPUISongDetailsView

- (CPUISongDetailsView)initWithFrame:(CGRect)frame
{
  v56[4] = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = CPUISongDetailsView;
  v3 = [(CPUISongDetailsView *)&v55 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75A68]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    stackView = v3->_stackView;
    v3->_stackView = v9;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAxis:1];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setSpacing:0.0];
    LODWORD(v11) = 1148846080;
    [(UIStackView *)v3->_stackView setContentHuggingPriority:1 forAxis:v11];
    [(UIStackView *)v3->_stackView setAccessibilityIdentifier:@"CPNowPlayingSongDetailsView"];
    [(CPUISongDetailsView *)v3 addSubview:v3->_stackView];
    v12 = [[CPUISongAttributionView alloc] initWithFrame:v5, v6, v7, v8];
    attributionView = v3->_attributionView;
    v3->_attributionView = v12;

    [(CPUISongAttributionView *)v3->_attributionView setHidden:1];
    LODWORD(v14) = 1144750080;
    [(CPUISongAttributionView *)v3->_attributionView setContentCompressionResistancePriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(CPUISongAttributionView *)v3->_attributionView setContentHuggingPriority:1 forAxis:v15];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_attributionView];
    [(UIStackView *)v3->_stackView setCustomSpacing:v3->_attributionView afterView:3.0];
    v16 = [[CPUITitleView alloc] initWithFrame:v5, v6, v7, v8];
    titleView = v3->_titleView;
    v3->_titleView = v16;

    LODWORD(v18) = 1144750080;
    [(CPUITitleView *)v3->_titleView setContentCompressionResistancePriority:1 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(CPUITitleView *)v3->_titleView setContentHuggingPriority:1 forAxis:v19];
    [(CPUITitleView *)v3->_titleView setAccessibilityIdentifier:@"CPNowPlayingSongTitle"];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_titleView];
    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    artistLabel = v3->_artistLabel;
    v3->_artistLabel = v20;

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_artistLabel setTextColor:labelColor];

    LODWORD(v23) = 1144750080;
    [(UILabel *)v3->_artistLabel setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UILabel *)v3->_artistLabel setContentHuggingPriority:1 forAxis:v24];
    [(UILabel *)v3->_artistLabel setAccessibilityIdentifier:@"CPNowPlayingSongArtist"];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_artistLabel];
    v25 = objc_opt_new();
    albumArtistLabelButton = v3->_albumArtistLabelButton;
    v3->_albumArtistLabelButton = v25;

    [(CPUIModernButton *)v3->_albumArtistLabelButton setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(CPUIModernButton *)v3->_albumArtistLabelButton titleLabel];
    [titleLabel setLineBreakMode:4];

    [(CPUIModernButton *)v3->_albumArtistLabelButton setEnabled:0];
    [(CPUIModernButton *)v3->_albumArtistLabelButton setTintAdjustmentMode:1];
    [(CPUIModernButton *)v3->_albumArtistLabelButton setContentEdgeInsets:0.0, 5.0, 0.0, 4.0];
    [(CPUIModernButton *)v3->_albumArtistLabelButton _setContinuousCornerRadius:4.0];
    [(CPUIModernButton *)v3->_albumArtistLabelButton setAccessibilityIdentifier:@"CPNowPlayingSongAlbum"];
    layer = [(CPUIModernButton *)v3->_albumArtistLabelButton layer];
    [layer setCompositingFilter:0];

    layer2 = [(CPUIModernButton *)v3->_albumArtistLabelButton layer];
    [layer2 setAllowsGroupBlending:0];

    v30 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    _titleView = [(CPUIModernButton *)v3->_albumArtistLabelButton _titleView];
    layer3 = [_titleView layer];
    [layer3 setCompositingFilter:v30];

    v33 = [[_CPUIAlbumContainer alloc] initWithButton:v3->_albumArtistLabelButton];
    albumContainer = v3->_albumContainer;
    v3->_albumContainer = v33;

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_albumContainer];
    v50 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIStackView *)v3->_stackView leadingAnchor];
    leadingAnchor2 = [(CPUISongDetailsView *)v3 leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v56[0] = v52;
    trailingAnchor = [(UIStackView *)v3->_stackView trailingAnchor];
    trailingAnchor2 = [(CPUISongDetailsView *)v3 trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v56[1] = v36;
    topAnchor = [(UIStackView *)v3->_stackView topAnchor];
    topAnchor2 = [(CPUISongDetailsView *)v3 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v56[2] = v39;
    bottomAnchor = [(UIStackView *)v3->_stackView bottomAnchor];
    bottomAnchor2 = [(CPUISongDetailsView *)v3 bottomAnchor];
    v42 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v56[3] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [v50 activateConstraints:v43];

    LODWORD(v44) = 1148846080;
    [(CPUISongDetailsView *)v3 setContentHuggingPriority:1 forAxis:v44];
    [(CPUISongDetailsView *)v3 _updateFont];
    layer4 = [(CPUISongDetailsView *)v3 layer];
    [layer4 setAllowsGroupBlending:0];

    stackView = [(CPUISongDetailsView *)v3 stackView];
    layer5 = [stackView layer];
    [layer5 setAllowsGroupBlending:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__updateFont name:*MEMORY[0x277D81C78] object:0];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  stackView = [(CPUISongDetailsView *)self stackView];
  [stackView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  albumArtistLabelButton = self->_albumArtistLabelButton;

  if (nextFocusedItem == albumArtistLabelButton)
  {
    _titleView = [(CPUIModernButton *)self->_albumArtistLabelButton _titleView];
    layer = [_titleView layer];
    [layer setCompositingFilter:0];

    layer4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    layer2 = [(_CPUIAlbumContainer *)self->_albumContainer layer];
    [layer2 setCompositingFilter:layer4];
  }

  else
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    _titleView2 = [(CPUIModernButton *)self->_albumArtistLabelButton _titleView];
    layer3 = [_titleView2 layer];
    [layer3 setCompositingFilter:v7];

    layer4 = [(_CPUIAlbumContainer *)self->_albumContainer layer];
    [layer4 setCompositingFilter:0];
  }
}

- (id)_attributedTitle
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_trackTitle length])
  {
    v3 = objc_opt_new();
    [v3 setAlignment:1];
    [v3 setLineBreakMode:4];
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    trackTitle = self->_trackTitle;
    v6 = *MEMORY[0x277D74118];
    v14[0] = v3;
    v7 = *MEMORY[0x277D740A8];
    v13[0] = v6;
    v13[1] = v7;
    titleView = [(CPUISongDetailsView *)self titleView];
    font = [titleView font];
    v14[1] = font;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = [v4 initWithString:trackTitle attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setTrackTitle:(id)title
{
  objc_storeStrong(&self->_trackTitle, title);
  _attributedTitle = [(CPUISongDetailsView *)self _attributedTitle];
  titleView = [(CPUISongDetailsView *)self titleView];
  titleLabel = [titleView titleLabel];
  [titleLabel setAttributedText:_attributedTitle];

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (void)setAlbumTitle:(id)title
{
  objc_storeStrong(&self->_albumTitle, title);
  titleCopy = title;
  albumArtistLabelButton = [(CPUISongDetailsView *)self albumArtistLabelButton];
  [albumArtistLabelButton setTitle:titleCopy forState:0];

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (void)setArtistName:(id)name
{
  objc_storeStrong(&self->_artistName, name);
  nameCopy = name;
  [(UILabel *)self->_artistLabel setText:nameCopy];

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (void)setMaximumTitleViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CPUISongDetailsView *)self maximumTitleViewSize];
  if (v7 != width || v6 != height)
  {
    self->_maximumTitleViewSize.width = width;
    self->_maximumTitleViewSize.height = height;
    titleView = [(CPUISongDetailsView *)self titleView];
    titleLabel = [titleView titleLabel];
    [(CPUISongDetailsView *)self maximumTitleViewSize];
    [titleLabel setPreferredMaxLayoutWidth:?];
  }

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (CPUIModernButton)attributionButton
{
  attributionView = [(CPUISongDetailsView *)self attributionView];
  button = [attributionView button];

  return button;
}

- (NSString)attributionName
{
  attributionView = [(CPUISongDetailsView *)self attributionView];
  name = [attributionView name];

  return name;
}

- (void)setAttributionName:(id)name
{
  nameCopy = name;
  attributionView = [(CPUISongDetailsView *)self attributionView];
  [attributionView setName:nameCopy];

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (UIImage)attributionArtwork
{
  attributionView = [(CPUISongDetailsView *)self attributionView];
  artwork = [attributionView artwork];

  return artwork;
}

- (void)setAttributionArtwork:(id)artwork
{
  artworkCopy = artwork;
  attributionView = [(CPUISongDetailsView *)self attributionView];
  [attributionView setArtwork:artworkCopy];
}

- (void)_updateNumberOfLines
{
  attributionName = [(CPUISongDetailsView *)self attributionName];

  font = 424;
  text = [(UILabel *)self->_artistLabel text];
  v6 = [text length] == 0;

  [(UILabel *)self->_artistLabel setHidden:v6];
  if (attributionName)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CPUIModernButton *)self->_albumArtistLabelButton titleForState:0];
    v7 = [v8 length] == 0;
  }

  [(_CPUIAlbumContainer *)self->_albumContainer setHidden:v7];
  [(CPUISongAttributionView *)self->_attributionView setHidden:attributionName == 0];
  titleLabel = [(CPUITitleView *)self->_titleView titleLabel];
  [titleLabel setNumberOfLines:1];

  if (![(NSString *)self->_trackTitle length])
  {
    goto LABEL_28;
  }

  [(CPUISongDetailsView *)self maximumTitleViewSize];
  if (v11 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
  {
    goto LABEL_28;
  }

  _attributedTitle = [(CPUISongDetailsView *)self _attributedTitle];
  v14 = [_attributedTitle attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
  [(CPUISongDetailsView *)self maximumTitleViewSize];
  v16 = v15;
  v18 = v17;
  if ([(CPUITitleView *)self->_titleView isExplicitTrack])
  {
    v19 = v16 + -20.0;
  }

  else
  {
    v19 = v16;
  }

  [v14 lineHeight];
  v21 = v20;
  [_attributedTitle boundingRectWithSize:1 options:0 context:{v19, v18}];
  v43 = CGRectIntegral(v42);
  v22 = CGRectGetHeight(v43) / v21;
  stackView = [(CPUISongDetailsView *)self stackView];
  [stackView spacing];
  v25 = v18 - v24 - v21;
  v26 = [(NSString *)self->_artistName length];
  if (v26)
  {
    font = [(UILabel *)self->_artistLabel font];
    [font lineHeight];
  }

  else
  {
    v27 = 0.0;
  }

  v28 = v22;
  v29 = v25 - v27;
  if (![(NSString *)self->_albumTitle length])
  {
    if (!attributionName)
    {
      v33 = 0.0;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (attributionName)
  {
LABEL_19:
    [(CPUISongAttributionView *)self->_attributionView frame];
    Height = CGRectGetHeight(v44);
    [(UIStackView *)self->_stackView customSpacingAfterView:self->_attributionView];
    v33 = Height + v35;
    goto LABEL_20;
  }

  titleLabel2 = [(CPUIModernButton *)self->_albumArtistLabelButton titleLabel];
  font2 = [titleLabel2 font];
  [font2 lineHeight];
  v33 = v32;

LABEL_20:
  v36 = vcvtps_u32_f32(v28);
  v37 = v29 - v33;
  if (v26)
  {
  }

  if (v36 >= 2 && v37 >= v21 + v21)
  {
    titleLabel3 = [(CPUITitleView *)self->_titleView titleLabel];
    [titleLabel3 setNumberOfLines:2];
  }

LABEL_28:
  titleView = [(CPUISongDetailsView *)self titleView];
  [titleView invalidateIntrinsicContentSize];

  [(CPUISongDetailsView *)self setNeedsLayout];
}

- (void)_updateFont
{
  v90[1] = *MEMORY[0x277D85DE8];
  fontStyle = self->_fontStyle;
  v4 = fontStyle == 1;
  if (fontStyle == 1)
  {
    v5 = *MEMORY[0x277D76A28];
  }

  else
  {
    v5 = *MEMORY[0x277D76920];
  }

  if (v4)
  {
    v6 = *MEMORY[0x277D76920];
  }

  else
  {
    v6 = *MEMORY[0x277D76938];
  }

  v7 = v5;
  v8 = v6;
  v9 = MEMORY[0x277D74310];
  traitCollection = [(CPUISongDetailsView *)self traitCollection];
  v83 = v7;
  v11 = [v9 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:traitCollection];

  v12 = MEMORY[0x277D74300];
  traitCollection2 = [(CPUISongDetailsView *)self traitCollection];
  v14 = [v12 preferredFontForTextStyle:v8 compatibleWithTraitCollection:traitCollection2];
  fontDescriptor = [v14 fontDescriptor];

  v16 = MEMORY[0x277D74300];
  traitCollection3 = [(CPUISongDetailsView *)self traitCollection];
  v84 = v8;
  v18 = [v16 preferredFontForTextStyle:v8 compatibleWithTraitCollection:traitCollection3];
  fontDescriptor2 = [v18 fontDescriptor];

  v20 = [v11 fontDescriptorWithSymbolicTraits:{objc_msgSend(v11, "symbolicTraits") | 0x8002}];

  v21 = _AXSCarPlayEnhanceTextLegibilityEnabled();
  v22 = MEMORY[0x277D743F8];
  if (!v21)
  {
    v22 = MEMORY[0x277D74418];
  }

  v23 = *v22;
  v89 = *MEMORY[0x277D74430];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  v90[0] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];

  v87 = *MEMORY[0x277D74380];
  v26 = v87;
  v88 = v25;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
  v28 = [fontDescriptor fontDescriptorByAddingAttributes:v27];

  v85 = v26;
  v86 = v25;
  v82 = v25;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
  v30 = [fontDescriptor2 fontDescriptorByAddingAttributes:v29];

  v31 = v20;
  v32 = [MEMORY[0x277D74300] fontWithDescriptor:v20 size:0.0];
  titleView = [(CPUISongDetailsView *)self titleView];
  [titleView setFont:v32];

  v34 = [MEMORY[0x277D74300] fontWithDescriptor:v30 size:0.0];
  albumArtistLabelButton = [(CPUISongDetailsView *)self albumArtistLabelButton];
  titleLabel = [albumArtistLabelButton titleLabel];
  [titleLabel setFont:v34];

  v37 = [MEMORY[0x277D74300] fontWithDescriptor:v30 size:0.0];
  attributionView = [(CPUISongDetailsView *)self attributionView];
  button = [attributionView button];
  titleLabel2 = [button titleLabel];
  [titleLabel2 setFont:v37];

  v81 = v28;
  v41 = [MEMORY[0x277D74300] fontWithDescriptor:v28 size:0.0];
  artistLabel = [(CPUISongDetailsView *)self artistLabel];
  [artistLabel setFont:v41];

  if (_os_feature_enabled_impl())
  {
    titleView2 = [(CPUISongDetailsView *)self titleView];
    titleLabel3 = [titleView2 titleLabel];
    [titleLabel3 setAdjustsFontForContentSizeCategory:1];

    v45 = [MEMORY[0x277D75520] metricsForTextStyle:v83];
    titleView3 = [(CPUISongDetailsView *)self titleView];
    titleLabel4 = [titleView3 titleLabel];
    font = [titleLabel4 font];
    v49 = [v45 scaledFontForFont:font maximumPointSize:20.0];
    [(CPUISongDetailsView *)self titleView];
    v50 = v80 = v31;
    titleLabel5 = [v50 titleLabel];
    [titleLabel5 setFont:v49];

    albumArtistLabelButton2 = [(CPUISongDetailsView *)self albumArtistLabelButton];
    titleLabel6 = [albumArtistLabelButton2 titleLabel];
    [titleLabel6 setAdjustsFontForContentSizeCategory:1];

    v54 = [MEMORY[0x277D75520] metricsForTextStyle:v84];
    albumArtistLabelButton3 = [(CPUISongDetailsView *)self albumArtistLabelButton];
    titleLabel7 = [albumArtistLabelButton3 titleLabel];
    font2 = [titleLabel7 font];
    v58 = [v54 scaledFontForFont:font2 maximumPointSize:16.0];
    albumArtistLabelButton4 = [(CPUISongDetailsView *)self albumArtistLabelButton];
    titleLabel8 = [albumArtistLabelButton4 titleLabel];
    [titleLabel8 setFont:v58];

    attributionView2 = [(CPUISongDetailsView *)self attributionView];
    button2 = [attributionView2 button];
    titleLabel9 = [button2 titleLabel];
    [titleLabel9 setAdjustsFontForContentSizeCategory:1];

    v64 = [MEMORY[0x277D75520] metricsForTextStyle:v84];
    attributionView3 = [(CPUISongDetailsView *)self attributionView];
    button3 = [attributionView3 button];
    titleLabel10 = [button3 titleLabel];
    font3 = [titleLabel10 font];
    v69 = [v64 scaledFontForFont:font3 maximumPointSize:16.0];
    attributionView4 = [(CPUISongDetailsView *)self attributionView];
    button4 = [attributionView4 button];
    [button4 titleLabel];
    v72 = v79 = v30;
    [v72 setFont:v69];

    artistLabel2 = [(CPUISongDetailsView *)self artistLabel];
    [artistLabel2 setAdjustsFontForContentSizeCategory:1];

    v74 = [MEMORY[0x277D75520] metricsForTextStyle:v84];
    artistLabel3 = [(CPUISongDetailsView *)self artistLabel];
    font4 = [artistLabel3 font];
    v77 = [v74 scaledFontForFont:font4 maximumPointSize:16.0];
    artistLabel4 = [(CPUISongDetailsView *)self artistLabel];
    [artistLabel4 setFont:v77];

    v31 = v80;
    v30 = v79;
  }

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

+ (double)minimumHeightForTrackInfoFontStyle:(unint64_t)style
{
  result = 44.0;
  if (style == 1)
  {
    return 66.0;
  }

  return result;
}

+ (double)maximumHeightForTrackInfoFontStyle:(unint64_t)style
{
  result = 72.0;
  if (style == 1)
  {
    return 106.0;
  }

  return result;
}

- (CGSize)maximumTitleViewSize
{
  width = self->_maximumTitleViewSize.width;
  height = self->_maximumTitleViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end