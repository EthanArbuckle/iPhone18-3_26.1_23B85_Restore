@interface MUPlaceTileContentView
+ (CGSize)_preferredSizeForViewModel:(id)model cellConfiguration:(id)configuration maximumMeasurements:(id)measurements;
+ (CGSize)preferredSizeForViewModels:(id)models cellConfiguration:(id)configuration usingMeasurements:(id)measurements;
- (CGSize)intrinsicContentSize;
- (MUPlaceTileContentView)initWithCellConfiguration:(id)configuration;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateFonts;
- (void)setViewModel:(id)model;
@end

@implementation MUPlaceTileContentView

- (CGSize)intrinsicContentSize
{
  +[MUPlaceTileContentView preferredWidth];
  v3 = *MEMORY[0x1E69DE788];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateFonts
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v4 = [v3 _mapkit_fontWithSymbolicTraits:0x8000];
  v5 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(MULabelViewProtocol *)self->_titleLabel setFont:v5];

  viewModel = self->_viewModel;
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v8 = [(MUPlaceTileViewModel *)viewModel subtitleAttributedStringForFont:v7];
  [(MULabelViewProtocol *)self->_subtitleLabel setAttributedText:v8];

  v9 = self->_viewModel;
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v10 = [v12 _mapkit_fontWithSymbolicTraits:0x8000];
  v11 = [(MUPlaceTileViewModel *)v9 footerAttributedStringForFont:v10];
  [(MULabelViewProtocol *)self->_footerLabel setAttributedText:v11];
}

- (void)_updateAppearance
{
  [(MUImageView *)self->_contentImageView setImage:0];
  [(UIImageView *)self->_badgeImageView setImage:0];
  [(UIImageView *)self->_badgeImageView setHidden:1];
  tileName = [(MUPlaceTileViewModel *)self->_viewModel tileName];
  [(MULabelViewProtocol *)self->_titleLabel setText:tileName];

  viewModel = self->_viewModel;
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v6 = [(MUPlaceTileViewModel *)viewModel subtitleAttributedStringForFont:v5];
  [(MULabelViewProtocol *)self->_subtitleLabel setAttributedText:v6];

  attributedText = [(MULabelViewProtocol *)self->_subtitleLabel attributedText];
  v8 = [attributedText length];

  [(MUStackLayout *)self->_titleStackLayout setSpacing:2.0];
  v9 = 8.0;
  if (!v8)
  {
    v9 = 6.0;
  }

  [(MUStackLayout *)self->_textStackLayout setSpacing:v9];
  [(MULabelViewProtocol *)self->_footerLabel setNumberOfLines:[(MUPlaceTileViewModel *)self->_viewModel expectedNumberOfFooterLines]];
  v10 = self->_viewModel;
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v12 = [v11 _mapkit_fontWithSymbolicTraits:0x8000];
  v13 = [(MUPlaceTileViewModel *)v10 footerAttributedStringForFont:v12];
  [(MULabelViewProtocol *)self->_footerLabel setAttributedText:v13];

  v14 = self->_viewModel;
  objc_initWeak(&location, self);
  v15 = self->_viewModel;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__MUPlaceTileContentView__updateAppearance__block_invoke;
  v26[3] = &unk_1E82196F8;
  objc_copyWeak(&v28, &location);
  v16 = v14;
  v27 = v16;
  [(MUPlaceTileViewModel *)v15 fetchFallbackIconWithCompletion:v26];
  if ([(MUPlaceTileCellConfiguration *)self->_configuration showIcon])
  {
    v17 = self->_viewModel;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __43__MUPlaceTileContentView__updateAppearance__block_invoke_2;
    v23[3] = &unk_1E82196F8;
    objc_copyWeak(&v25, &location);
    v24 = v16;
    [(MUPlaceTileViewModel *)v17 fetchBadgeIconWithCompletion:v23];

    objc_destroyWeak(&v25);
  }

  v18 = self->_viewModel;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43__MUPlaceTileContentView__updateAppearance__block_invoke_3;
  v20[3] = &unk_1E82196F8;
  objc_copyWeak(&v22, &location);
  v19 = v16;
  v21 = v19;
  [(MUPlaceTileViewModel *)v18 fetchImageTilewWithSize:v20 completion:150.0, 112.0];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __43__MUPlaceTileContentView__updateAppearance__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (WeakRetained[61] == *(a1 + 32))
    {
      [WeakRetained[54] setFallbackImage:v4];
    }
  }
}

void __43__MUPlaceTileContentView__updateAppearance__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (WeakRetained[61] == *(a1 + 32))
    {
      [WeakRetained[55] setImage:v4];
    }
  }
}

void __43__MUPlaceTileContentView__updateAppearance__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (*(WeakRetained + 61) == *(a1 + 32))
    {
      v7 = *(WeakRetained + 54);
      if (v8)
      {
        [v7 setImage:v8 animated:a4 ^ 1u];
      }

      else
      {
        [v7 setImage:0];
      }

      [*(WeakRetained + 55) setHidden:v8 == 0];
    }
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUPlaceTileViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUPlaceTileContentView *)self _updateAppearance];
  }
}

- (void)_setupConstraints
{
  v24[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [[MUSizeLayout alloc] initWithItem:self->_contentImageView size:150.0, 112.0];
  [array addObject:v4];
  v5 = [[MUStackLayout alloc] initWithContainer:self->_titleLayoutGuide axis:1];
  titleStackLayout = self->_titleStackLayout;
  self->_titleStackLayout = v5;

  subtitleLabel = self->_subtitleLabel;
  v24[0] = self->_titleLabel;
  v24[1] = subtitleLabel;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [(MUStackLayout *)self->_titleStackLayout setArrangedLayoutItems:v8];

  [array addObject:self->_titleStackLayout];
  v9 = [[MUStackLayout alloc] initWithContainer:self->_textLayoutGuide axis:1];
  textStackLayout = self->_textStackLayout;
  self->_textStackLayout = v9;

  footerLabel = self->_footerLabel;
  v23[0] = self->_titleLayoutGuide;
  v23[1] = footerLabel;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [(MUStackLayout *)self->_textStackLayout setArrangedLayoutItems:v12];

  [(MUStackLayout *)self->_textStackLayout setDistribution:5];
  [(MUStackLayout *)self->_textStackLayout setInsets:16.0, 16.0, 16.0, 16.0];
  [array addObject:self->_textStackLayout];
  v13 = [[MUStackLayout alloc] initWithContainer:self axis:1];
  textLayoutGuide = self->_textLayoutGuide;
  v22[0] = self->_contentImageView;
  v22[1] = textLayoutGuide;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  [(MUStackLayout *)v13 setArrangedLayoutItems:v15];

  [(MUStackLayout *)v13 setDistribution:2];
  LODWORD(v16) = 1112276992;
  [(MUStackLayout *)v13 setDistributionFittingSizePriority:v16];
  [array addObject:v13];
  if ([(MUPlaceTileCellConfiguration *)self->_configuration showIcon])
  {
    v17 = [[MUSizeLayout alloc] initWithItem:self->_badgeImageView size:24.0, 24.0];
    [array addObject:v17];
    v18 = [[MUBoxLayout alloc] initWithContainer:self->_contentImageView];
    badgeImageView = self->_badgeImageView;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&badgeImageView count:1];
    [(MUBoxLayout *)v18 setArrangedLayoutItems:v19];

    [(MUBoxLayout *)v18 setHorizontalAlignment:1];
    [(MUBoxLayout *)v18 setVerticalAlignment:3];
    [(MUBoxLayout *)v18 setOffset:self->_badgeImageView forArrangedLayoutItem:8.0, 12.0];
    [array addObject:v18];
  }

  [MEMORY[0x1E696ACD8] _mapsui_activateLayouts:array];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = _createTitleLabel();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(MULabelViewProtocol *)self->_titleLabel setAccessibilityIdentifier:@"PlaceTileTitle"];
  [(MUPlaceTileContentView *)self addSubview:self->_titleLabel];
  v5 = _createSecondaryLabel();
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v5;

  [(MULabelViewProtocol *)self->_subtitleLabel setAccessibilityIdentifier:@"PlaceTileSubtitle"];
  [(MUPlaceTileContentView *)self addSubview:self->_subtitleLabel];
  v7 = _createFooterLabel();
  footerLabel = self->_footerLabel;
  self->_footerLabel = v7;

  [(MULabelViewProtocol *)self->_footerLabel setAccessibilityIdentifier:@"PlaceTileFooter"];
  [(MUPlaceTileContentView *)self addSubview:self->_footerLabel];
  v9 = [MUImageView alloc];
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [(MUImageView *)v9 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
  contentImageView = self->_contentImageView;
  self->_contentImageView = v14;

  v16 = +[MUInfoCardStyle imageTileBackgroundColor];
  [(MUImageView *)self->_contentImageView setBackgroundColor:v16];

  [(MUImageView *)self->_contentImageView setClipsToBounds:1];
  [(MUImageView *)self->_contentImageView setAccessibilityIdentifier:@"PlaceTileImage"];
  [(MUPlaceTileContentView *)self addSubview:self->_contentImageView];
  v17 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  titleLayoutGuide = self->_titleLayoutGuide;
  self->_titleLayoutGuide = v17;

  [(MUPlaceTileContentView *)self addLayoutGuide:self->_titleLayoutGuide];
  v19 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  textLayoutGuide = self->_textLayoutGuide;
  self->_textLayoutGuide = v19;

  [(MUPlaceTileContentView *)self addLayoutGuide:self->_textLayoutGuide];
  if ([(MUPlaceTileCellConfiguration *)self->_configuration showIcon])
  {
    v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v10, v11, v12, v13}];
    badgeImageView = self->_badgeImageView;
    self->_badgeImageView = v21;

    [(UIImageView *)self->_badgeImageView _setCornerRadius:12.0];
    layer = [(UIImageView *)self->_badgeImageView layer];
    [layer setBorderWidth:1.0];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    cGColor = [whiteColor CGColor];
    layer2 = [(UIImageView *)self->_badgeImageView layer];
    [layer2 setBorderColor:cGColor];

    [(UIImageView *)self->_badgeImageView setAccessibilityIdentifier:@"PlaceTileBadge"];
    [(MUPlaceTileContentView *)self addSubview:self->_badgeImageView];
  }

  v27 = objc_opt_self();
  v31[0] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v29 = [(MUPlaceTileContentView *)self registerForTraitChanges:v28 withAction:sel__updateFonts];

  v30 = *MEMORY[0x1E69E9840];
}

- (MUPlaceTileContentView)initWithCellConfiguration:(id)configuration
{
  v14[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = MUPlaceTileContentView;
  v6 = [(MUPlaceTileContentView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    [(MUPlaceTileContentView *)v7 setAccessibilityIdentifier:@"PlaceTileContent"];
    [(MUPlaceTileContentView *)v7 _setupSubviews];
    [(MUPlaceTileContentView *)v7 _setupConstraints];
    [(UIView *)v7 _mapsui_setCardCorner];
    v8 = objc_opt_self();
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [(MUPlaceTileContentView *)v7 registerForTraitChanges:v9 withAction:sel__updateAppearance];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (CGSize)_preferredSizeForViewModel:(id)model cellConfiguration:(id)configuration maximumMeasurements:(id)measurements
{
  v52[2] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  measurementsCopy = measurements;
  [measurementsCopy tileWidth];
  v9 = v8 + -32.0;
  tileName = [modelCopy tileName];
  v11 = [tileName length];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    LODWORD(v13) = 1.0;
    [v12 setHyphenationFactor:v13];
    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    tileName2 = [modelCopy tileName];
    v51[0] = *MEMORY[0x1E69DB648];
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    v17 = [v16 _mapkit_fontWithSymbolicTraits:0x8000];
    v18 = [v17 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
    v51[1] = *MEMORY[0x1E69DB688];
    v52[0] = v18;
    v52[1] = v12;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v20 = [v14 initWithString:tileName2 attributes:v19];

    v54.origin.x = _calculateBoundingRectForAttributedStringWithHeight(v20, v9);
    Height = CGRectGetHeight(v54);
    [measurementsCopy maxTitleHeight];
    v23 = fmin(Height, v22) + 128.0;
  }

  else
  {
    v23 = 128.0;
  }

  v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v25 = [modelCopy subtitleAttributedStringForFont:v24];

  if ([v25 length])
  {
    v55.origin.x = _calculateBoundingRectForAttributedStringWithHeight(v25, v9);
    v26 = CGRectGetHeight(v55);
    [measurementsCopy maxSubtitleHeight];
    v28 = fmin(v26, v27);
    v29 = v28 > 0.0;
    v23 = v28 + v23;
  }

  else
  {
    v29 = 0;
  }

  v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v31 = [v30 _mapkit_fontWithSymbolicTraits:0x8000];
  v32 = [modelCopy footerAttributedStringForFont:v31];
  v33 = _calculateBoundingRectForAttributedStringWithHeight(v32, v9);
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v56.origin.x = v33;
  v56.origin.y = v35;
  v56.size.width = v37;
  v56.size.height = v39;
  v40 = CGRectGetHeight(v56) <= 0.0;
  v41 = v23 + 10.0;
  if (v40)
  {
    v41 = v23 + 2.0;
  }

  if (v29)
  {
    v42 = v41;
  }

  else
  {
    v42 = v23 + 8.0;
  }

  v57.origin.x = v33;
  v57.origin.y = v35;
  v57.size.width = v37;
  v57.size.height = v39;
  v43 = CGRectGetHeight(v57);
  [measurementsCopy maxFooterHeight];
  v45 = v44;
  [measurementsCopy tileWidth];
  v47 = v46;

  v48 = *MEMORY[0x1E69E9840];
  v49 = v42 + 16.0 + fmin(v43, v45);
  v50 = v47;
  result.height = v49;
  result.width = v50;
  return result;
}

+ (CGSize)preferredSizeForViewModels:(id)models cellConfiguration:(id)configuration usingMeasurements:(id)measurements
{
  v28 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  configurationCopy = configuration;
  measurementsCopy = measurements;
  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [modelsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      v17 = v12;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(modelsCopy);
        }

        [self _preferredSizeForViewModel:*(*(&v23 + 1) + 8 * v16) cellConfiguration:configurationCopy maximumMeasurements:measurementsCopy];
        v12 = fmax(v19, v17);
        if (v19 > v17)
        {
          v11 = v18;
        }

        ++v16;
        v17 = v12;
      }

      while (v14 != v16);
      v14 = [modelsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];
  v21 = v11;
  v22 = v12;
  result.height = v22;
  result.width = v21;
  return result;
}

@end