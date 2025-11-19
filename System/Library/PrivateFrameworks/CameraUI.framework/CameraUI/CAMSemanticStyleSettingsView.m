@interface CAMSemanticStyleSettingsView
- (CAMSemanticStyleSettingsView)init;
- (CAMSemanticStyleSettingsViewDelegate)delegate;
- (id)_previewImageNameForSemanticStylePreset:(int64_t)a3;
- (void)_handleUseStyleButtonReleased:(id)a3;
- (void)_layoutSemanticStyleMaskedBadgesForContentFrame:(CGRect)a3;
- (void)_updateUIForShowsTitle;
- (void)_updateUIForStyle:(id)a3;
- (void)layoutSubviews;
- (void)semanticStylePickerDidChangeSelectedStyle:(id)a3;
- (void)semanticStylePickerDidScroll:(id)a3;
- (void)setShowsTitle:(BOOL)a3;
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
    v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSemanticStyleSettingsView *)v2 setBackgroundColor:v3];

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
          v28 = [(CAMSemanticStyleMaskedBadge *)v27 badgeView];
          [v28 setDelegate:v2];

          v29 = +[CAMCaptureCapabilities capabilities];
          v30 = [v29 sfCameraFontSupported];
          v31 = [(CAMSemanticStyleMaskedBadge *)v27 badgeView];
          v32 = v30;
          v2 = p_isa;
          [v31 setFontStyle:v32];

          v33 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
          v34 = [(CAMSemanticStyleMaskedBadge *)v27 badgeView];
          [v34 _setFillColor:v33];

          v35 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
          v36 = [(CAMSemanticStyleMaskedBadge *)v27 badgeView];
          [v36 _setContentColor:v35];

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
    v43 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker setMaterialColor:v43];

    [(UIScrollView *)v2->__scrollView addSubview:v2->__semanticStylePicker];
    v44 = objc_alloc_init(CAMSemanticStyleDetailView);
    semanticStyleDetailView = v2->__semanticStyleDetailView;
    v2->__semanticStyleDetailView = v44;

    [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v2->__scrollView addSubview:v2->__semanticStyleDetailView];
    v46 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [v46 setContentInsets:{16.0, 16.0, 16.0, 16.0}];
    v47 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v46 setBaseBackgroundColor:v47];

    v127 = v46;
    [v46 setCornerStyle:3];
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __36__CAMSemanticStyleSettingsView_init__block_invoke;
    v135[3] = &unk_1E76FBBD0;
    v136 = v115;
    obja = v115;
    [v46 setTitleTextAttributesTransformer:v135];
    v48 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v46 primaryAction:0];
    selectButton = v2->__selectButton;
    v2->__selectButton = v48;

    [(UIButton *)v2->__selectButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v2->__selectButton addTarget:v2 action:sel__handleUseStyleButtonReleased_ forControlEvents:64];
    [(UIScrollView *)v2->__scrollView addSubview:v2->__selectButton];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker spacerWidth];
    v51 = v50 + 10.0;
    v91 = MEMORY[0x1E696ACD8];
    v116 = [(UIScrollView *)v2->__scrollView leadingAnchor];
    v114 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v113 = [v116 constraintEqualToAnchor:v114];
    v142[0] = v113;
    v112 = [(UIScrollView *)v2->__scrollView trailingAnchor];
    v111 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v110 = [v112 constraintEqualToAnchor:v111];
    v142[1] = v110;
    v109 = [(UIScrollView *)v2->__scrollView topAnchor];
    v108 = [(CAMSemanticStyleSettingsView *)v2 topAnchor];
    v107 = [v109 constraintEqualToAnchor:v108];
    v142[2] = v107;
    v106 = [(UIScrollView *)v2->__scrollView bottomAnchor];
    v105 = [(CAMSemanticStyleSettingsView *)v2 bottomAnchor];
    v104 = [v106 constraintEqualToAnchor:v105];
    v142[3] = v104;
    v103 = [(UIScrollView *)v2->__scrollView contentLayoutGuide];
    v101 = [v103 heightAnchor];
    v102 = [(CAMSemanticStyleSettingsView *)v2 safeAreaLayoutGuide];
    v100 = [v102 heightAnchor];
    v99 = [v101 constraintGreaterThanOrEqualToAnchor:v100];
    v142[4] = v99;
    v98 = [(UILabel *)v2->__titleLabel leadingAnchor];
    v97 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v96 = [v98 constraintEqualToAnchor:v97 constant:v51];
    v142[5] = v96;
    v95 = [(UILabel *)v2->__titleLabel trailingAnchor];
    v94 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v93 = [v95 constraintEqualToAnchor:v94 constant:-v51];
    v142[6] = v93;
    v117 = [(UILabel *)v2->__titleLabel topAnchor];
    v92 = [(UIScrollView *)v2->__scrollView topAnchor];
    v90 = [v117 constraintEqualToAnchor:v92 constant:v51];
    v142[7] = v90;
    v89 = [(UILabel *)v2->__descriptionLabel leadingAnchor];
    v88 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88 constant:v51];
    v142[8] = v87;
    v86 = [(UILabel *)v2->__descriptionLabel trailingAnchor];
    v85 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v84 = [v86 constraintEqualToAnchor:v85 constant:-v51];
    v142[9] = v84;
    v83 = [(CAMSemanticStylePicker *)v2->__semanticStylePicker leadingAnchor];
    v82 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v81 = [v83 constraintEqualToAnchor:v82];
    v142[10] = v81;
    v80 = [(CAMSemanticStylePicker *)v2->__semanticStylePicker trailingAnchor];
    v79 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v142[11] = v78;
    v77 = [MEMORY[0x1E696ACD8] constraintWithItem:v2->__semanticStylePicker attribute:7 relatedBy:0 toItem:v2->__semanticStylePicker attribute:8 multiplier:1.33333333 constant:0.0];
    v142[12] = v77;
    v76 = [(CAMSemanticStylePicker *)v2->__semanticStylePicker topAnchor];
    v118 = [(UILabel *)v2->__descriptionLabel bottomAnchor];
    v75 = [v76 constraintEqualToAnchor:v118 constant:32.0];
    v142[13] = v75;
    v74 = [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView leadingAnchor];
    v73 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:v51];
    v142[14] = v72;
    v71 = [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView trailingAnchor];
    v70 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70 constant:-v51];
    v142[15] = v69;
    v68 = [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView topAnchor];
    v67 = [(CAMSemanticStylePicker *)v2->__semanticStylePicker bottomAnchor];
    [(CAMSemanticStylePicker *)v2->__semanticStylePicker spacerWidth];
    v66 = [v68 constraintEqualToAnchor:v67 constant:?];
    v142[16] = v66;
    v65 = [(UIButton *)v2->__selectButton leadingAnchor];
    v64 = [(CAMSemanticStyleSettingsView *)v2 leadingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64 constant:v51 + v51];
    v142[17] = v63;
    v52 = [(UIButton *)v2->__selectButton trailingAnchor];
    v53 = [(CAMSemanticStyleSettingsView *)v2 trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:v51 * -2.0];
    v142[18] = v54;
    v55 = [(UIButton *)v2->__selectButton topAnchor];
    v56 = [(CAMSemanticStyleDetailView *)v2->__semanticStyleDetailView bottomAnchor];
    v57 = [v55 constraintGreaterThanOrEqualToAnchor:v56 constant:v51];
    v142[19] = v57;
    v58 = [(UIButton *)v2->__selectButton bottomAnchor];
    v59 = [(UIScrollView *)v2->__scrollView bottomAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:-v51];
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

- (void)setShowsTitle:(BOOL)a3
{
  if (self->_showsTitle != a3)
  {
    self->_showsTitle = a3;
    [(CAMSemanticStyleSettingsView *)self _updateUIForShowsTitle];
  }
}

- (void)_updateUIForShowsTitle
{
  v3 = [(CAMSemanticStyleSettingsView *)self _descriptionLabelTopConstraint];

  if (v3)
  {
    v4 = [(CAMSemanticStyleSettingsView *)self _descriptionLabelTopConstraint];
    [v4 setActive:0];
  }

  v5 = [(CAMSemanticStyleSettingsView *)self showsTitle];
  v11 = [(CAMSemanticStyleSettingsView *)self _titleLabel];
  v6 = [(CAMSemanticStyleSettingsView *)self _descriptionLabel];
  if (v5)
  {
    v7 = [v11 bottomAnchor];
  }

  else
  {
    v8 = [(CAMSemanticStyleSettingsView *)self _scrollView];
    v7 = [v8 topAnchor];
  }

  v9 = [v6 topAnchor];
  v10 = [v9 constraintEqualToAnchor:v7 constant:16.0];

  [v10 setActive:1];
  [(CAMSemanticStyleSettingsView *)self _setDescriptionLabelTopConstraint:v10];
  [v11 setHidden:!v5];
}

- (id)_previewImageNameForSemanticStylePreset:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"CAMSemanticStylePreviewStandard";
  }

  else
  {
    return off_1E76FBBF0[a3 - 1];
  }
}

- (void)_updateUIForStyle:(id)a3
{
  v4 = a3;
  v5 = [(CAMSemanticStyleSettingsView *)self _semanticStyleDetailView];
  [v5 setSemanticStyle:v4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_SETTINGS_USE_STYLE_FORMAT", 0);
  v8 = [v4 displayName];

  v10 = [v6 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v8];

  v9 = [(CAMSemanticStyleSettingsView *)self _selectButton];
  [v9 setTitle:v10 forState:0];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CAMSemanticStyleSettingsView;
  [(CAMSemanticStyleSettingsView *)&v14 layoutSubviews];
  v3 = [(CAMSemanticStyleSettingsView *)self _scrollView];
  [v3 layoutIfNeeded];

  v4 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  [v4 layoutIfNeeded];

  v5 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CAMSemanticStyleSettingsView *)self _layoutSemanticStyleMaskedBadgesForContentFrame:v7, v9, v11, v13];
}

- (void)_layoutSemanticStyleMaskedBadgesForContentFrame:(CGRect)a3
{
  width = a3.size.width;
  r1 = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v4 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  [v4 bounds];
  CGRectGetMaxY(v73);
  v5 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  v6 = [v5 pageControl];
  [v6 frame];
  CGRectGetMinY(v74);

  v7 = [(CAMSemanticStyleSettingsView *)self _semanticStyles];
  v8 = [v7 count];

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
      v67 = [(CAMSemanticStyleSettingsView *)self _semanticStyleBadges];
      if (v9 >= [v67 count])
      {
        break;
      }

      v10 = [(CAMSemanticStyleSettingsView *)self _semanticStyleImageViews];
      v11 = [v10 count];

      if (v9 < v11)
      {
        v12 = [(CAMSemanticStyleSettingsView *)self _semanticStyleBadges];
        v13 = [v12 objectAtIndexedSubscript:v9];

        v14 = [(CAMSemanticStyleSettingsView *)self _semanticStyleImageViews];
        v15 = [v14 objectAtIndexedSubscript:v9];

        v16 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
        [v16 presentatationStyleRectAtIndex:v9];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v25 = [(CAMSemanticStyleSettingsView *)self _scrollView];
        v26 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
        [v25 convertRect:v26 fromView:{v18, v20, v22, v24}];
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
        v48 = [v15 superview];
        [v48 setFrame:{v45, v42, v47, v39}];

        [v15 setFrame:{x - v45, 0.0, width, r1}];
        ++v9;
        v49 = [(CAMSemanticStyleSettingsView *)self _semanticStyles];
        v50 = [v49 count];

        if (v9 < v50)
        {
          continue;
        }
      }

      return;
    }
  }
}

- (void)_handleUseStyleButtonReleased:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  CFPreferencesSetAppValue(@"CAMUserPreferenceSelectedSemanticStyleIndex", [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "selectedStyleIndex")}], @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
  v6 = [(CAMSemanticStyleSettingsView *)self delegate];
  [v6 settingsViewDidDismiss:self];
}

- (void)semanticStylePickerDidChangeSelectedStyle:(id)a3
{
  v4 = a3;
  v5 = [(CAMSemanticStyleSettingsView *)self _semanticStyles];
  v6 = [v4 selectedStyleIndex];

  v8 = [v5 objectAtIndex:v6];

  v7 = v8;
  if (v8)
  {
    [(CAMSemanticStyleSettingsView *)self _updateUIForStyle:v8];
    v7 = v8;
  }
}

- (void)semanticStylePickerDidScroll:(id)a3
{
  v4 = [(CAMSemanticStyleSettingsView *)self _semanticStylePicker];
  [v4 frame];
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