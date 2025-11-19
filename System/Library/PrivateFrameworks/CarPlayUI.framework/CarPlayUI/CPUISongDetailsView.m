@interface CPUISongDetailsView
+ (double)maximumHeightForTrackInfoFontStyle:(unint64_t)a3;
+ (double)minimumHeightForTrackInfoFontStyle:(unint64_t)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)maximumTitleViewSize;
- (CPUIModernButton)attributionButton;
- (CPUISongDetailsView)initWithFrame:(CGRect)a3;
- (NSString)attributionName;
- (UIImage)attributionArtwork;
- (id)_attributedTitle;
- (void)_updateFont;
- (void)_updateNumberOfLines;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setAlbumTitle:(id)a3;
- (void)setArtistName:(id)a3;
- (void)setAttributionArtwork:(id)a3;
- (void)setAttributionName:(id)a3;
- (void)setMaximumTitleViewSize:(CGSize)a3;
- (void)setTrackTitle:(id)a3;
@end

@implementation CPUISongDetailsView

- (CPUISongDetailsView)initWithFrame:(CGRect)a3
{
  v56[4] = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = CPUISongDetailsView;
  v3 = [(CPUISongDetailsView *)&v55 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v22 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_artistLabel setTextColor:v22];

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
    v27 = [(CPUIModernButton *)v3->_albumArtistLabelButton titleLabel];
    [v27 setLineBreakMode:4];

    [(CPUIModernButton *)v3->_albumArtistLabelButton setEnabled:0];
    [(CPUIModernButton *)v3->_albumArtistLabelButton setTintAdjustmentMode:1];
    [(CPUIModernButton *)v3->_albumArtistLabelButton setContentEdgeInsets:0.0, 5.0, 0.0, 4.0];
    [(CPUIModernButton *)v3->_albumArtistLabelButton _setContinuousCornerRadius:4.0];
    [(CPUIModernButton *)v3->_albumArtistLabelButton setAccessibilityIdentifier:@"CPNowPlayingSongAlbum"];
    v28 = [(CPUIModernButton *)v3->_albumArtistLabelButton layer];
    [v28 setCompositingFilter:0];

    v29 = [(CPUIModernButton *)v3->_albumArtistLabelButton layer];
    [v29 setAllowsGroupBlending:0];

    v30 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    v31 = [(CPUIModernButton *)v3->_albumArtistLabelButton _titleView];
    v32 = [v31 layer];
    [v32 setCompositingFilter:v30];

    v33 = [[_CPUIAlbumContainer alloc] initWithButton:v3->_albumArtistLabelButton];
    albumContainer = v3->_albumContainer;
    v3->_albumContainer = v33;

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_albumContainer];
    v50 = MEMORY[0x277CCAAD0];
    v54 = [(UIStackView *)v3->_stackView leadingAnchor];
    v53 = [(CPUISongDetailsView *)v3 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v56[0] = v52;
    v51 = [(UIStackView *)v3->_stackView trailingAnchor];
    v35 = [(CPUISongDetailsView *)v3 trailingAnchor];
    v36 = [v51 constraintEqualToAnchor:v35];
    v56[1] = v36;
    v37 = [(UIStackView *)v3->_stackView topAnchor];
    v38 = [(CPUISongDetailsView *)v3 topAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    v56[2] = v39;
    v40 = [(UIStackView *)v3->_stackView bottomAnchor];
    v41 = [(CPUISongDetailsView *)v3 bottomAnchor];
    v42 = [v40 constraintLessThanOrEqualToAnchor:v41];
    v56[3] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [v50 activateConstraints:v43];

    LODWORD(v44) = 1148846080;
    [(CPUISongDetailsView *)v3 setContentHuggingPriority:1 forAxis:v44];
    [(CPUISongDetailsView *)v3 _updateFont];
    v45 = [(CPUISongDetailsView *)v3 layer];
    [v45 setAllowsGroupBlending:0];

    v46 = [(CPUISongDetailsView *)v3 stackView];
    v47 = [v46 layer];
    [v47 setAllowsGroupBlending:0];

    v48 = [MEMORY[0x277CCAB98] defaultCenter];
    [v48 addObserver:v3 selector:sel__updateFont name:*MEMORY[0x277D81C78] object:0];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CPUISongDetailsView *)self stackView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  albumArtistLabelButton = self->_albumArtistLabelButton;

  if (v5 == albumArtistLabelButton)
  {
    v10 = [(CPUIModernButton *)self->_albumArtistLabelButton _titleView];
    v11 = [v10 layer];
    [v11 setCompositingFilter:0];

    v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    v12 = [(_CPUIAlbumContainer *)self->_albumContainer layer];
    [v12 setCompositingFilter:v13];
  }

  else
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    v8 = [(CPUIModernButton *)self->_albumArtistLabelButton _titleView];
    v9 = [v8 layer];
    [v9 setCompositingFilter:v7];

    v13 = [(_CPUIAlbumContainer *)self->_albumContainer layer];
    [v13 setCompositingFilter:0];
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
    v8 = [(CPUISongDetailsView *)self titleView];
    v9 = [v8 font];
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = [v4 initWithString:trackTitle attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setTrackTitle:(id)a3
{
  objc_storeStrong(&self->_trackTitle, a3);
  v4 = [(CPUISongDetailsView *)self _attributedTitle];
  v5 = [(CPUISongDetailsView *)self titleView];
  v6 = [v5 titleLabel];
  [v6 setAttributedText:v4];

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (void)setAlbumTitle:(id)a3
{
  objc_storeStrong(&self->_albumTitle, a3);
  v5 = a3;
  v6 = [(CPUISongDetailsView *)self albumArtistLabelButton];
  [v6 setTitle:v5 forState:0];

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (void)setArtistName:(id)a3
{
  objc_storeStrong(&self->_artistName, a3);
  v5 = a3;
  [(UILabel *)self->_artistLabel setText:v5];

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (void)setMaximumTitleViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CPUISongDetailsView *)self maximumTitleViewSize];
  if (v7 != width || v6 != height)
  {
    self->_maximumTitleViewSize.width = width;
    self->_maximumTitleViewSize.height = height;
    v9 = [(CPUISongDetailsView *)self titleView];
    v10 = [v9 titleLabel];
    [(CPUISongDetailsView *)self maximumTitleViewSize];
    [v10 setPreferredMaxLayoutWidth:?];
  }

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (CPUIModernButton)attributionButton
{
  v2 = [(CPUISongDetailsView *)self attributionView];
  v3 = [v2 button];

  return v3;
}

- (NSString)attributionName
{
  v2 = [(CPUISongDetailsView *)self attributionView];
  v3 = [v2 name];

  return v3;
}

- (void)setAttributionName:(id)a3
{
  v4 = a3;
  v5 = [(CPUISongDetailsView *)self attributionView];
  [v5 setName:v4];

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

- (UIImage)attributionArtwork
{
  v2 = [(CPUISongDetailsView *)self attributionView];
  v3 = [v2 artwork];

  return v3;
}

- (void)setAttributionArtwork:(id)a3
{
  v4 = a3;
  v5 = [(CPUISongDetailsView *)self attributionView];
  [v5 setArtwork:v4];
}

- (void)_updateNumberOfLines
{
  v3 = [(CPUISongDetailsView *)self attributionName];

  v4 = 424;
  v5 = [(UILabel *)self->_artistLabel text];
  v6 = [v5 length] == 0;

  [(UILabel *)self->_artistLabel setHidden:v6];
  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CPUIModernButton *)self->_albumArtistLabelButton titleForState:0];
    v7 = [v8 length] == 0;
  }

  [(_CPUIAlbumContainer *)self->_albumContainer setHidden:v7];
  [(CPUISongAttributionView *)self->_attributionView setHidden:v3 == 0];
  v9 = [(CPUITitleView *)self->_titleView titleLabel];
  [v9 setNumberOfLines:1];

  if (![(NSString *)self->_trackTitle length])
  {
    goto LABEL_28;
  }

  [(CPUISongDetailsView *)self maximumTitleViewSize];
  if (v11 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
  {
    goto LABEL_28;
  }

  v13 = [(CPUISongDetailsView *)self _attributedTitle];
  v14 = [v13 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
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
  [v13 boundingRectWithSize:1 options:0 context:{v19, v18}];
  v43 = CGRectIntegral(v42);
  v22 = CGRectGetHeight(v43) / v21;
  v23 = [(CPUISongDetailsView *)self stackView];
  [v23 spacing];
  v25 = v18 - v24 - v21;
  v26 = [(NSString *)self->_artistName length];
  if (v26)
  {
    v4 = [(UILabel *)self->_artistLabel font];
    [v4 lineHeight];
  }

  else
  {
    v27 = 0.0;
  }

  v28 = v22;
  v29 = v25 - v27;
  if (![(NSString *)self->_albumTitle length])
  {
    if (!v3)
    {
      v33 = 0.0;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v3)
  {
LABEL_19:
    [(CPUISongAttributionView *)self->_attributionView frame];
    Height = CGRectGetHeight(v44);
    [(UIStackView *)self->_stackView customSpacingAfterView:self->_attributionView];
    v33 = Height + v35;
    goto LABEL_20;
  }

  v30 = [(CPUIModernButton *)self->_albumArtistLabelButton titleLabel];
  v31 = [v30 font];
  [v31 lineHeight];
  v33 = v32;

LABEL_20:
  v36 = vcvtps_u32_f32(v28);
  v37 = v29 - v33;
  if (v26)
  {
  }

  if (v36 >= 2 && v37 >= v21 + v21)
  {
    v39 = [(CPUITitleView *)self->_titleView titleLabel];
    [v39 setNumberOfLines:2];
  }

LABEL_28:
  v40 = [(CPUISongDetailsView *)self titleView];
  [v40 invalidateIntrinsicContentSize];

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
  v10 = [(CPUISongDetailsView *)self traitCollection];
  v83 = v7;
  v11 = [v9 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:v10];

  v12 = MEMORY[0x277D74300];
  v13 = [(CPUISongDetailsView *)self traitCollection];
  v14 = [v12 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v13];
  v15 = [v14 fontDescriptor];

  v16 = MEMORY[0x277D74300];
  v17 = [(CPUISongDetailsView *)self traitCollection];
  v84 = v8;
  v18 = [v16 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v17];
  v19 = [v18 fontDescriptor];

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
  v28 = [v15 fontDescriptorByAddingAttributes:v27];

  v85 = v26;
  v86 = v25;
  v82 = v25;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
  v30 = [v19 fontDescriptorByAddingAttributes:v29];

  v31 = v20;
  v32 = [MEMORY[0x277D74300] fontWithDescriptor:v20 size:0.0];
  v33 = [(CPUISongDetailsView *)self titleView];
  [v33 setFont:v32];

  v34 = [MEMORY[0x277D74300] fontWithDescriptor:v30 size:0.0];
  v35 = [(CPUISongDetailsView *)self albumArtistLabelButton];
  v36 = [v35 titleLabel];
  [v36 setFont:v34];

  v37 = [MEMORY[0x277D74300] fontWithDescriptor:v30 size:0.0];
  v38 = [(CPUISongDetailsView *)self attributionView];
  v39 = [v38 button];
  v40 = [v39 titleLabel];
  [v40 setFont:v37];

  v81 = v28;
  v41 = [MEMORY[0x277D74300] fontWithDescriptor:v28 size:0.0];
  v42 = [(CPUISongDetailsView *)self artistLabel];
  [v42 setFont:v41];

  if (_os_feature_enabled_impl())
  {
    v43 = [(CPUISongDetailsView *)self titleView];
    v44 = [v43 titleLabel];
    [v44 setAdjustsFontForContentSizeCategory:1];

    v45 = [MEMORY[0x277D75520] metricsForTextStyle:v83];
    v46 = [(CPUISongDetailsView *)self titleView];
    v47 = [v46 titleLabel];
    v48 = [v47 font];
    v49 = [v45 scaledFontForFont:v48 maximumPointSize:20.0];
    [(CPUISongDetailsView *)self titleView];
    v50 = v80 = v31;
    v51 = [v50 titleLabel];
    [v51 setFont:v49];

    v52 = [(CPUISongDetailsView *)self albumArtistLabelButton];
    v53 = [v52 titleLabel];
    [v53 setAdjustsFontForContentSizeCategory:1];

    v54 = [MEMORY[0x277D75520] metricsForTextStyle:v84];
    v55 = [(CPUISongDetailsView *)self albumArtistLabelButton];
    v56 = [v55 titleLabel];
    v57 = [v56 font];
    v58 = [v54 scaledFontForFont:v57 maximumPointSize:16.0];
    v59 = [(CPUISongDetailsView *)self albumArtistLabelButton];
    v60 = [v59 titleLabel];
    [v60 setFont:v58];

    v61 = [(CPUISongDetailsView *)self attributionView];
    v62 = [v61 button];
    v63 = [v62 titleLabel];
    [v63 setAdjustsFontForContentSizeCategory:1];

    v64 = [MEMORY[0x277D75520] metricsForTextStyle:v84];
    v65 = [(CPUISongDetailsView *)self attributionView];
    v66 = [v65 button];
    v67 = [v66 titleLabel];
    v68 = [v67 font];
    v69 = [v64 scaledFontForFont:v68 maximumPointSize:16.0];
    v70 = [(CPUISongDetailsView *)self attributionView];
    v71 = [v70 button];
    [v71 titleLabel];
    v72 = v79 = v30;
    [v72 setFont:v69];

    v73 = [(CPUISongDetailsView *)self artistLabel];
    [v73 setAdjustsFontForContentSizeCategory:1];

    v74 = [MEMORY[0x277D75520] metricsForTextStyle:v84];
    v75 = [(CPUISongDetailsView *)self artistLabel];
    v76 = [v75 font];
    v77 = [v74 scaledFontForFont:v76 maximumPointSize:16.0];
    v78 = [(CPUISongDetailsView *)self artistLabel];
    [v78 setFont:v77];

    v31 = v80;
    v30 = v79;
  }

  [(CPUISongDetailsView *)self _updateNumberOfLines];
}

+ (double)minimumHeightForTrackInfoFontStyle:(unint64_t)a3
{
  result = 44.0;
  if (a3 == 1)
  {
    return 66.0;
  }

  return result;
}

+ (double)maximumHeightForTrackInfoFontStyle:(unint64_t)a3
{
  result = 72.0;
  if (a3 == 1)
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