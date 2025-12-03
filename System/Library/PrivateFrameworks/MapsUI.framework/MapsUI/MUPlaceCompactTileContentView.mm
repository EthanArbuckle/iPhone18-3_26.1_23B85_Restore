@interface MUPlaceCompactTileContentView
+ (CGSize)_preferredSizeForViewModel:(id)model cellConfiguration:(id)configuration maximumMeasurements:(id)measurements;
+ (CGSize)preferredSizeForViewModels:(id)models cellConfiguration:(id)configuration usingMeasurements:(id)measurements;
- (MUPlaceCompactTileContentView)initWithCellConfiguration:(id)configuration;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateFonts;
- (void)setViewModel:(id)model;
@end

@implementation MUPlaceCompactTileContentView

- (void)_updateFonts
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v4 = [v3 _mapkit_fontWithSymbolicTraits:0x8000];
  v5 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(MULabelViewProtocol *)self->_primaryLabel setFont:v5];

  viewModel = self->_viewModel;
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v7 = [v9 _mapkit_fontWithSymbolicTraits:0x8000];
  v8 = [(MUPlaceTileViewModel *)viewModel footerAttributedStringForFont:v7];
  [(MULabelViewProtocol *)self->_secondaryLabel setAttributedText:v8];
}

- (void)_updateAppearance
{
  if ([(MUPlaceTileCellConfiguration *)self->_configuration showIcon])
  {
    v3 = self->_viewModel;
    objc_initWeak(&location, self);
    viewModel = self->_viewModel;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__MUPlaceCompactTileContentView__updateAppearance__block_invoke;
    v11[3] = &unk_1E82196F8;
    objc_copyWeak(&v13, &location);
    v5 = v3;
    v12 = v5;
    [(MUPlaceTileViewModel *)viewModel fetchBadgeIconWithCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  tileName = [(MUPlaceTileViewModel *)self->_viewModel tileName];
  [(MULabelViewProtocol *)self->_primaryLabel setText:tileName];

  [(MULabelViewProtocol *)self->_secondaryLabel setNumberOfLines:[(MUPlaceTileViewModel *)self->_viewModel expectedNumberOfFooterLines]];
  v7 = self->_viewModel;
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v9 = [v8 _mapkit_fontWithSymbolicTraits:0x8000];
  v10 = [(MUPlaceTileViewModel *)v7 footerAttributedStringForFont:v9];
  [(MULabelViewProtocol *)self->_secondaryLabel setAttributedText:v10];
}

void __50__MUPlaceCompactTileContentView__updateAppearance__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (WeakRetained[55] == *(a1 + 32))
    {
      [WeakRetained[51] setImage:v4];
    }
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUPlaceTileViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUPlaceCompactTileContentView *)self _updateAppearance];
  }
}

- (void)_setupConstraints
{
  v21[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if ([(MUPlaceTileCellConfiguration *)self->_configuration showIcon])
  {
    v4 = [[MUSizeLayout alloc] initWithItem:self->_iconView size:24.0, 24.0];
    [array addObject:v4];
    v5 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:1];
    primaryLabel = self->_primaryLabel;
    v21[0] = self->_iconView;
    v21[1] = primaryLabel;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [(MUCompositionalStackLayoutGroup *)v5 setArrangedLayoutItems:v7];

    [(MUCompositionalStackLayoutGroup *)v5 setSpacing:4.0];
    [(MUCompositionalStackLayoutGroup *)v5 setAlignment:1 forArrangedLayoutItem:self->_iconView];
    secondaryLabel = self->_secondaryLabel;
    v20[0] = v5;
    v20[1] = secondaryLabel;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  }

  else
  {
    v10 = self->_secondaryLabel;
    v19[0] = self->_primaryLabel;
    v19[1] = v10;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  }

  v11 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:1];
  [(MUCompositionalStackLayoutGroup *)v11 setArrangedLayoutItems:v9];
  [(MUCompositionalStackLayoutGroup *)v11 setDistribution:5];
  LODWORD(v12) = 1112276992;
  [(MUCompositionalStackLayoutGroup *)v11 setDistributionFittingSizePriority:v12];
  [(MUCompositionalStackLayoutGroup *)v11 setInsets:16.0, 16.0, 16.0, 16.0];
  [(MUCompositionalStackLayoutGroup *)v11 setSpacing:8.0];
  v13 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:1];
  v18 = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [(MUCompositionalStackLayoutGroup *)v13 setArrangedLayoutItems:v14];

  [(MUCompositionalStackLayoutGroup *)v13 setDistribution:2];
  LODWORD(v15) = 1112539136;
  [(MUCompositionalStackLayoutGroup *)v13 setDistributionFittingSizePriority:v15];
  v16 = [[MUCompositionalStackLayout alloc] initWithContainer:self group:v13];
  [array addObject:v16];
  [MEMORY[0x1E696ACD8] _mapsui_activateLayouts:array];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(MUPlaceTileCellConfiguration *)self->_configuration showIcon])
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    iconView = self->_iconView;
    self->_iconView = v4;

    [(UIImageView *)self->_iconView setAccessibilityIdentifier:@"PlaceCompactTileIcon"];
    [(MUPlaceCompactTileContentView *)self addSubview:self->_iconView];
  }

  v6 = _createTitleLabel();
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v6;

  [(MULabelViewProtocol *)self->_primaryLabel setAccessibilityIdentifier:@"PlaceCompactTilePrimaryLabel"];
  [(MUPlaceCompactTileContentView *)self addSubview:self->_primaryLabel];
  v8 = _createFooterLabel();
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v8;

  [(MULabelViewProtocol *)self->_secondaryLabel setAccessibilityIdentifier:@"PlaceCompactTileSecondaryLabel"];
  [(MUPlaceCompactTileContentView *)self addSubview:self->_secondaryLabel];
  v10 = objc_opt_self();
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(MUPlaceCompactTileContentView *)self registerForTraitChanges:v11 withAction:sel__updateFonts];

  v13 = *MEMORY[0x1E69E9840];
}

- (MUPlaceCompactTileContentView)initWithCellConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = MUPlaceCompactTileContentView;
  v6 = [(MUPlaceCompactTileContentView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    [(MUPlaceCompactTileContentView *)v7 setAccessibilityIdentifier:@"PlaceCompactTileContent"];
    [(MUPlaceCompactTileContentView *)v7 _setupSubviews];
    [(MUPlaceCompactTileContentView *)v7 _setupConstraints];
  }

  return v7;
}

+ (CGSize)_preferredSizeForViewModel:(id)model cellConfiguration:(id)configuration maximumMeasurements:(id)measurements
{
  v34[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  measurementsCopy = measurements;
  configurationCopy = configuration;
  [measurementsCopy tileWidth];
  v11 = v10;
  showIcon = [configurationCopy showIcon];

  if (showIcon)
  {
    v13 = 44.0;
  }

  else
  {
    v13 = 16.0;
  }

  tileName = [modelCopy tileName];
  v15 = [tileName length];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x1E696AAB0]);
    tileName2 = [modelCopy tileName];
    v33 = *MEMORY[0x1E69DB648];
    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    v19 = [v18 _mapkit_fontWithSymbolicTraits:0x8000];
    v20 = [v19 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
    v34[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v22 = [v16 initWithString:tileName2 attributes:v21];

    v36.origin.x = _calculateBoundingRectForAttributedStringWithHeight(v22, v11 + -32.0);
    Height = CGRectGetHeight(v36);
    [measurementsCopy maxTitleHeight];
    v13 = fmin(Height, v24) + v13;
  }

  v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v26 = [v25 _mapkit_fontWithSymbolicTraits:0x8000];
  v27 = [modelCopy footerAttributedStringForFont:v26];

  if ([v27 length])
  {
    v37.origin.x = _calculateBoundingRectForAttributedStringWithHeight(v27, 1000.0);
    v13 = v13 + 8.0 + CGRectGetHeight(v37);
  }

  [measurementsCopy tileWidth];
  v29 = v28;

  v30 = *MEMORY[0x1E69E9840];
  v31 = v13 + 16.0;
  v32 = v29;
  result.height = v31;
  result.width = v32;
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