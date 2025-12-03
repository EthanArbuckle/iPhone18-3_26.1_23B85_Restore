@interface CAMSemanticStyleSettingsView
- (CAMSemanticStyleSettingsView)init;
- (CAMSemanticStyleSettingsViewDelegate)delegate;
- (id)_previewImageNameForSemanticStylePreset:(int64_t)preset;
- (void)_handleUseStyleButtonReleased:(id)released;
- (void)_layoutSemanticStyleMaskedBadgesForContentFrame:(CGRect)frame;
- (void)_updateUIForShowsTitle;
- (void)_updateUIForStyle:(id)style;
- (void)layoutSubviews;
- (void)semanticStylePickerDidChangeSelectedStyle:(id)style;
- (void)semanticStylePickerDidScroll:(id)scroll;
- (void)setShowsTitle:(BOOL)title;
@end

@implementation CAMSemanticStyleSettingsView

- (CAMSemanticStyleSettingsView)init
{
  v144 = *MEMORY[0x1E69E9840];
  v141.receiver = self;
  v141.super_class = CAMSemanticStyleSettingsView;
  v2 = [(CAMSemanticStyleSettingsView *)&v141 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSemanticStyleSettingsView *)v2 setBackgroundColor:systemBackgroundColor];

    v4 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v2->__scrollView;
    v2->__scrollView = v4;

    [(UIScrollView *)v2->__scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v2->__scrollView setShowsVerticalScrollIndicator:1];
    [(UIScrollView *)v2->__scrollView setShowsHorizontalScrollIndicator:0];
    [(CAMSemanticStyleSettingsView *)v2 addSubview:v2->__scrollView];
    v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB0] addingSymbolicTraits:32770 options:0];
    v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:0];
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] addingSymbolicTraits:0 options:0];
    v123 = v6;
    v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
    v122 = v7;
    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];
    v121 = v8;
    v115 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v2->__titleLabel;
    v2->__titleLabel = v11;

    [(UILabel *)v2->__titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_SETTINGS_TITLE", 0);
    [(UILabel *)v2->__titleLabel setText:v13];

    [(UILabel *)v2->__titleLabel setTextAlignment:1];
    [(UILabel *)v2->__titleLabel setAdjustsFontSizeToFitWidth:1];
    v120 = v9;
    [(UILabel *)v2->__titleLabel setFont:v9];
    [(UIScrollView *)v2->__scrollView addSubview:v2->__titleLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    descriptionLabel = v2->__descriptionLabel;
    v2->__descriptionLabel = v14;

    [(UILabel *)v2->__descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_SETTINGS_DESCRIPTION", 0);
    [(UILabel *)v2->__descriptionLabel setText:v16];

    [(UILabel *)v2->__descriptionLabel setTextAlignment:1];
    [(UILabel *)v2->__descriptionLabel setNumberOfLines:0];
    [(UILabel *)v2->__descriptionLabel setLineBreakMode:0];
    v119 = v10;
    [(UILabel *)v2->__descriptionLabel setFont:v10];
    [(UIScrollView *)v2->__scrollView addSubview:v2->__descriptionLabel];
    v17 = +[CAMSemanticStyle defaultStyles];
    semanticStyles = v2->__semanticStyles;
    v2->__semanticStyles = v17;

    v128 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v130 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    obj = v2->__semanticStyles;
    p_isa = &v2->super.super.super.isa;
    v133 = [(NSArray *)obj countByEnumeratingWithState:&v137 objects:v143 count:16];
    if (v133)
    {
      v126 = *v138;
      do
      {
        for (i = 0; i != v133; ++i)
        {
          if (*v138 != v126)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v137 + 1) + 8 * i);
          v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
          [v21 setClipsToBounds:1];
          v22 = MEMORY[0x1E69DCAB8];
          v23 = -[CAMSemanticStyleSettingsView _previewImageNameForSemanticStylePreset:](v2, "_previewImageNameForSemanticStylePreset:", [v20 presetType]);
          v24 = CAMCameraUIFrameworkBundle();
          v25 = [v22 imageNamed:v23 inBundle:v24];

          v26 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v25];
          [v26 setContentMode:2];
          [(NSArray *)v130 addObject:v26];
          [v21 addSubview:v26];
          [(UIScrollView *)v2->__scrollView addSubview:v21];
          v27 = objc_alloc_init(CAMSemanticStyleMaskedBadge);
          [(CAMSemanticStyleMaskedBadge *)v27 setSemanticStyle:v20];
          badgeView = [(CAMSemanticStyleMaskedBadge *)v27 badgeView];
          [badgeView setDelegate:v2];

          v29 = +[CAMCaptureCapabilities capabilities];
          sfCameraFontSupported = [v29 sfCameraFontSupported];
          badgeView2 = [(CAMSemanticStyleMaskedBadge *)v27 badgeView];
          v32 = sfCameraFontSupported;
          v2 = p_isa;
          [badgeView2 setFontStyle:v32];

          v33 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
          badgeView3 = [(CAMSemanticStyleMaskedBadge *)v27 badgeView];
          [badgeView3 _setFillColor:v33];

          v35 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
          badgeView4 = [(CAMSemanticStyleMaskedBadge *)v27 badgeView];
          [badgeView4 _setContentColor:v35];

          [(NSArray *)v128 addObject:v27];
          [p_isa[53] addSubview:v27];
        }

        v133 = [(NSArray *)obj countByEnumeratingWithState:&v137 objects:v143 count:16];
      }

      while (v133);
    }

    semanticStyleBadges = v2->__semanticStyleBadges;
    v2->__semanticStyleBadges = v128;
    v134 = v128;

    semanticStyleImageViews = v2->__semanticStyleImageViews;
    v2->__semanticStyleImageViews = v130;
    v131 = v130;

    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceSelectedSemanticStyleIndex", @"com.apple.camera", 0);
    v40 = [(NSArray *)v2->__semanticStyles count];
    if (AppIntegerValue >= v40 - 1)
    {
      AppIntegerValue = v40 - 1;
    }

    v129 = [(NSArray *)v2->__semanticStyles objectAtIndex:AppIntegerValue];
    v41 = objc_alloc_init(CAMSemanticStylePicker);
    semanticStylePicker = v2->__semanticStylePicker;
    v2->__semanticStylePicker = v41;

    [(CAMSemanticStylePicker *)v2->__semanticStylePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker setDelegate:v2];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker setNumberOfStyles:[(NSArray *)v2->__semanticStyles count]];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker setSelectedStyleIndex:AppIntegerValue];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker setExpanded:1];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker setMaterial:4];
    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker setMaterialColor:systemBackgroundColor2];

    [(UIScrollView *)v2->__scrollView addSubview:v2->__semanticStylePicker];
    v44 = objc_alloc_init(CAMSemanticStyleDetailView);
    semanticStyleDetailView = v2->__semanticStyleDetailView;
    v2->__semanticStyleDetailView = v44;

    [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v2->__scrollView addSubview:v2->__semanticStyleDetailView];
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setContentInsets:{16.0, 16.0, 16.0, 16.0}];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [filledButtonConfiguration setBaseBackgroundColor:systemBlueColor];

    v127 = filledButtonConfiguration;
    [filledButtonConfiguration setCornerStyle:3];
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __36__CAMSemanticStyleSettingsView_init__block_invoke;
    v135[3] = &unk_1E76FBBD0;
    v136 = v115;
    obja = v115;
    [filledButtonConfiguration setTitleTextAttributesTransformer:v135];
    v48 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
    selectButton = v2->__selectButton;
    v2->__selectButton = v48;

    [(UIButton *)v2->__selectButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v2->__selectButton addTarget:v2 action:sel__handleUseStyleButtonReleased_ forControlEvents:64];
    [(UIScrollView *)v2->__scrollView addSubview:v2->__selectButton];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker spacerWidth];
    v51 = v50 + 10.0;
    v91 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIScrollView *)v2->__scrollView leadingAnchor];
    leadingAnchor2 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v113 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v142[0] = v113;
    trailingAnchor = [(UIScrollView *)v2->__scrollView trailingAnchor];
    trailingAnchor2 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v110 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v142[1] = v110;
    topAnchor = [(UIScrollView *)v2->__scrollView topAnchor];
    topAnchor2 = [(CAMSemanticStyleSettingsView *)v2 topAnchor];
    v107 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v142[2] = v107;
    bottomAnchor = [(UIScrollView *)v2->__scrollView bottomAnchor];
    bottomAnchor2 = [(CAMSemanticStyleSettingsView *)v2 bottomAnchor];
    v104 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v142[3] = v104;
    contentLayoutGuide = [(UIScrollView *)v2->__scrollView contentLayoutGuide];
    heightAnchor = [contentLayoutGuide heightAnchor];
    safeAreaLayoutGuide = [(CAMSemanticStyleSettingsView *)v2 safeAreaLayoutGuide];
    heightAnchor2 = [safeAreaLayoutGuide heightAnchor];
    v99 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
    v142[4] = v99;
    leadingAnchor3 = [(UILabel *)v2->__titleLabel leadingAnchor];
    leadingAnchor4 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v96 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v51];
    v142[5] = v96;
    trailingAnchor3 = [(UILabel *)v2->__titleLabel trailingAnchor];
    trailingAnchor4 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v93 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v51];
    v142[6] = v93;
    topAnchor3 = [(UILabel *)v2->__titleLabel topAnchor];
    topAnchor4 = [(UIScrollView *)v2->__scrollView topAnchor];
    v90 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v51];
    v142[7] = v90;
    leadingAnchor5 = [(UILabel *)v2->__descriptionLabel leadingAnchor];
    leadingAnchor6 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v87 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v51];
    v142[8] = v87;
    trailingAnchor5 = [(UILabel *)v2->__descriptionLabel trailingAnchor];
    trailingAnchor6 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v84 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v51];
    v142[9] = v84;
    leadingAnchor7 = [(CAMSemanticStylePicker *)v2->__semanticStylePicker leadingAnchor];
    leadingAnchor8 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v81 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v142[10] = v81;
    trailingAnchor7 = [(CAMSemanticStylePicker *)v2->__semanticStylePicker trailingAnchor];
    trailingAnchor8 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v78 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v142[11] = v78;
    v77 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->__semanticStylePicker attribute:7 relatedBy:0 toItem:v2->__semanticStylePicker attribute:8 multiplier:1.33333333 constant:0.0];
    v142[12] = v77;
    topAnchor5 = [(CAMSemanticStylePicker *)v2->__semanticStylePicker topAnchor];
    bottomAnchor3 = [(UILabel *)v2->__descriptionLabel bottomAnchor];
    v75 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:32.0];
    v142[13] = v75;
    leadingAnchor9 = [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView leadingAnchor];
    leadingAnchor10 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v72 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:v51];
    v142[14] = v72;
    trailingAnchor9 = [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView trailingAnchor];
    trailingAnchor10 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v69 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-v51];
    v142[15] = v69;
    topAnchor6 = [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView topAnchor];
    bottomAnchor4 = [(CAMSemanticStylePicker *)v2->__semanticStylePicker bottomAnchor];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker spacerWidth];
    v66 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:?];
    v142[16] = v66;
    leadingAnchor11 = [(UIButton *)v2->__selectButton leadingAnchor];
    leadingAnchor12 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v63 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:v51 + v51];
    v142[17] = v63;
    trailingAnchor11 = [(UIButton *)v2->__selectButton trailingAnchor];
    trailingAnchor12 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v54 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:v51 * -2.0];
    v142[18] = v54;
    topAnchor7 = [(UIButton *)v2->__selectButton topAnchor];
    bottomAnchor5 = [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView bottomAnchor];
    v57 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor5 constant:v51];
    v142[19] = v57;
    bottomAnchor6 = [(UIButton *)v2->__selectButton bottomAnchor];
    bottomAnchor7 = [(UIScrollView *)v2->__scrollView bottomAnchor];
    v60 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-v51];
    v142[20] = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:21];
    [v91 activateConstraints:v61];

    v2 = p_isa;
    [p_isa _updateUIForStyle:v129];
    [p_isa _updateUIForShowsTitle];
  }

  return v2;
}

id __36__CAMSemanticStyleSettingsView_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

- (void)setShowsTitle:(BOOL)title
{
  if (self->_showsTitle != title)
  {
    self->_showsTitle = title;
    [(CAMSemanticStyleSettingsView *)self _updateUIForShowsTitle];
  }
}

- (void)_updateUIForShowsTitle
{
  _descriptionLabelTopConstraint = [(CAMSemanticStyleSettingsView *)self _descriptionLabelTopConstraint];

  if (_descriptionLabelTopConstraint)
  {
    _descriptionLabelTopConstraint2 = [(CAMSemanticStyleSettingsView *)self _descriptionLabelTopConstraint];
    [_descriptionLabelTopConstraint2 setActive:0];
  }

  showsTitle = [(CAMSemanticStyleSettingsView *)self showsTitle];
  _titleLabel = [(CAMSemanticStyleSettingsView *)self _titleLabel];
  _descriptionLabel = [(CAMSemanticStyleSettingsView *)self _descriptionLabel];
  if (showsTitle)
  {
    bottomAnchor = [_titleLabel bottomAnchor];
  }

  else
  {
    _scrollView = [(CAMSemanticStyleSettingsView *)self _scrollView];
    bottomAnchor = [_scrollView topAnchor];
  }

  topAnchor = [_descriptionLabel topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:16.0];

  [v10 setActive:1];
  [(CAMSemanticStyleSettingsView *)self _setDescriptionLabelTopConstraint:v10];
  [_titleLabel setHidden:!showsTitle];
}

- (id)_previewImageNameForSemanticStylePreset:(int64_t)preset
{
  if ((preset - 1) > 3)
  {
    return @"CAMSemanticStylePreviewStandard";
  }

  else
  {
    return off_1E76FBBF0[preset - 1];
  }
}

- (void)_updateUIForStyle:(id)style
{
  styleCopy = style;
  _semanticStyleDetailView = [(CAMSemanticStyleSettingsView *)self _semanticStyleDetailView];
  [_semanticStyleDetailView setSemanticStyle:styleCopy];

  v6 = MEMORY[0x1E696AEC0];
  v7 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_SETTINGS_USE_STYLE_FORMAT", 0);
  displayName = [styleCopy displayName];

  v10 = [v6 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, displayName];

  _selectButton = [(CAMSemanticStyleSettingsView *)self _selectButton];
  [_selectButton setTitle:v10 forState:0];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CAMSemanticStyleSettingsView;
  [(CAMSemanticStyleSettingsView *)&v14 layoutSubviews];
  _scrollView = [(CAMSemanticStyleSettingsView *)self _scrollView];
  [_scrollView layoutIfNeeded];

  _semanticStylePicker = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  [_semanticStylePicker layoutIfNeeded];

  _semanticStylePicker2 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  [_semanticStylePicker2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CAMSemanticStyleSettingsView *)self _layoutSemanticStyleMaskedBadgesForContentFrame:v7, v9, v11, v13];
}

- (void)_layoutSemanticStyleMaskedBadgesForContentFrame:(CGRect)frame
{
  width = frame.size.width;
  r1 = frame.size.height;
  y = frame.origin.y;
  x = frame.origin.x;
  _semanticStylePicker = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  [_semanticStylePicker bounds];
  CGRectGetMaxY(v73);
  _semanticStylePicker2 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  pageControl = [_semanticStylePicker2 pageControl];
  [pageControl frame];
  CGRectGetMinY(v74);

  _semanticStyles = [(CAMSemanticStyleSettingsView *)self _semanticStyles];
  v8 = [_semanticStyles count];

  if (v8)
  {
    v9 = 0;
    v55 = *(MEMORY[0x1E695F060] + 8);
    v56 = *MEMORY[0x1E695F060];
    v53 = *(MEMORY[0x1E695F058] + 8);
    v54 = *MEMORY[0x1E695F058];
    v51 = *(MEMORY[0x1E695F058] + 24);
    v52 = *(MEMORY[0x1E695F058] + 16);
    while (1)
    {
      _semanticStyleBadges = [(CAMSemanticStyleSettingsView *)self _semanticStyleBadges];
      if (v9 >= [_semanticStyleBadges count])
      {
        break;
      }

      _semanticStyleImageViews = [(CAMSemanticStyleSettingsView *)self _semanticStyleImageViews];
      v11 = [_semanticStyleImageViews count];

      if (v9 < v11)
      {
        _semanticStyleBadges2 = [(CAMSemanticStyleSettingsView *)self _semanticStyleBadges];
        v13 = [_semanticStyleBadges2 objectAtIndexedSubscript:v9];

        _semanticStyleImageViews2 = [(CAMSemanticStyleSettingsView *)self _semanticStyleImageViews];
        v15 = [_semanticStyleImageViews2 objectAtIndexedSubscript:v9];

        _semanticStylePicker3 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
        [_semanticStylePicker3 presentatationStyleRectAtIndex:v9];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        _scrollView = [(CAMSemanticStyleSettingsView *)self _scrollView];
        _semanticStylePicker4 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
        [_scrollView convertRect:_semanticStylePicker4 fromView:{v18, v20, v22, v24}];
        v63 = v28;
        v65 = v27;
        v30 = v29;
        v32 = v31;

        [v13 sizeThatFits:{v56, v55}];
        UIRectGetCenter();
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = r1;
        CGRectGetMaxY(v75);
        UIRectCenteredAboutPointScale();
        v68 = v76.origin.x;
        v80.origin.x = v65;
        v80.origin.y = v63;
        v80.size.width = v30;
        v80.size.height = v32;
        v77 = CGRectIntersection(v76, v80);
        v33 = v77.origin.x;
        v61 = v77.origin.y;
        v34 = v77.size.width;
        height = v77.size.height;
        v77.origin.x = x;
        v77.size.width = width;
        v77.origin.y = y;
        v77.size.height = r1;
        v81.origin.x = v65;
        v81.origin.y = v63;
        v81.size.width = v30;
        v81.size.height = v32;
        v78 = CGRectIntersection(v77, v81);
        v64 = v78.origin.x;
        v36 = v78.origin.y;
        v60 = v78.size.width;
        v37 = v78.size.height;
        v78.origin.x = v33;
        v78.origin.y = v61;
        v78.size.width = v34;
        v78.size.height = height;
        IsNull = CGRectIsNull(v78);
        v39 = v51;
        v40 = IsNull ? v51 : height;
        v66 = v40;
        v41 = IsNull ? v52 : v34;
        v59 = v41;
        v42 = v53;
        v43 = IsNull ? v53 : v61;
        v62 = v43;
        v44 = IsNull ? v54 : v33;
        v58 = v44;
        v45 = v64;
        v79.origin.x = v64;
        v79.origin.y = v36;
        v79.size.width = v60;
        v79.size.height = v37;
        v46 = CGRectIsNull(v79);
        if (v46)
        {
          v45 = v54;
        }

        else
        {
          v42 = v36;
        }

        v47 = v46 ? v52 : v60;
        if (!v46)
        {
          v39 = v37;
        }

        [v13 setFrame:{v58, v62, v59, v66}];
        [v13 setBadgeLeftInset:v68 - v58];
        superview = [v15 superview];
        [superview setFrame:{v45, v42, v47, v39}];

        [v15 setFrame:{x - v45, 0.0, width, r1}];
        ++v9;
        _semanticStyles2 = [(CAMSemanticStyleSettingsView *)self _semanticStyles];
        v50 = [_semanticStyles2 count];

        if (v9 < v50)
        {
          continue;
        }
      }

      return;
    }
  }
}

- (void)_handleUseStyleButtonReleased:(id)released
{
  v4 = MEMORY[0x1E696AD98];
  _semanticStylePicker = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  CFPreferencesSetAppValue(@"CAMUserPreferenceSelectedSemanticStyleIndex", [v4 numberWithUnsignedInteger:{objc_msgSend(_semanticStylePicker, "selectedStyleIndex")}], @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
  delegate = [(CAMSemanticStyleSettingsView *)self delegate];
  [delegate settingsViewDidDismiss:self];
}

- (void)semanticStylePickerDidChangeSelectedStyle:(id)style
{
  styleCopy = style;
  _semanticStyles = [(CAMSemanticStyleSettingsView *)self _semanticStyles];
  selectedStyleIndex = [styleCopy selectedStyleIndex];

  v8 = [_semanticStyles objectAtIndex:selectedStyleIndex];

  v7 = v8;
  if (v8)
  {
    [(CAMSemanticStyleSettingsView *)self _updateUIForStyle:v8];
    v7 = v8;
  }
}

- (void)semanticStylePickerDidScroll:(id)scroll
{
  _semanticStylePicker = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  [_semanticStylePicker frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CAMSemanticStyleSettingsView *)self _layoutSemanticStyleMaskedBadgesForContentFrame:v6, v8, v10, v12];
}

- (CAMSemanticStyleSettingsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end