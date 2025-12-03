@interface MUPlaceTileListContentView
- (MUPlaceTileListContentView)initWithFrame:(CGRect)frame;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateAppearance;
- (void)_updateFonts;
- (void)setViewModel:(id)model;
@end

@implementation MUPlaceTileListContentView

- (void)_updateFonts
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v4 = [v3 _mapkit_fontWithSymbolicTraits:0x8000];
  v5 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(MULabelViewProtocol *)self->_titleLabel setFont:v5];

  viewModel = self->_viewModel;
  v7 = *MEMORY[0x1E69DDD80];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v9 = [(MUPlaceTileViewModel *)viewModel subtitleAttributedStringForFont:v8];
  [(MULabelViewProtocol *)self->_secondaryLabel setAttributedText:v9];

  v10 = self->_viewModel;
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  v11 = [(MUPlaceTileViewModel *)v10 footerAttributedStringForFont:v12];
  [(MULabelViewProtocol *)self->_tertiaryLabel setAttributedText:v11];
}

- (void)_updateAppearance
{
  [(MUImageView *)self->_stopImageView setImage:0];
  tileName = [(MUPlaceTileViewModel *)self->_viewModel tileName];
  [(MULabelViewProtocol *)self->_titleLabel setText:tileName];

  viewModel = self->_viewModel;
  v5 = *MEMORY[0x1E69DDD80];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v7 = [(MUPlaceTileViewModel *)viewModel subtitleAttributedStringForFont:v6];
  [(MULabelViewProtocol *)self->_secondaryLabel setAttributedText:v7];

  [(MULabelViewProtocol *)self->_tertiaryLabel setNumberOfLines:[(MUPlaceTileViewModel *)self->_viewModel expectedNumberOfFooterLines]];
  v8 = self->_viewModel;
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  v10 = [(MUPlaceTileViewModel *)v8 footerAttributedStringForFont:v9];
  [(MULabelViewProtocol *)self->_tertiaryLabel setAttributedText:v10];

  objc_initWeak(&location, self);
  v11 = self->_viewModel;
  v12 = self->_viewModel;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__MUPlaceTileListContentView__updateAppearance__block_invoke;
  v19[3] = &unk_1E82196F8;
  objc_copyWeak(&v21, &location);
  v13 = v11;
  v20 = v13;
  [(MUPlaceTileViewModel *)v12 fetchFallbackIconWithCompletion:v19];
  v14 = self->_viewModel;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__MUPlaceTileListContentView__updateAppearance__block_invoke_2;
  v16[3] = &unk_1E82196F8;
  objc_copyWeak(&v18, &location);
  v15 = v13;
  v17 = v15;
  [(MUPlaceTileViewModel *)v14 fetchImageTilewWithSize:v16 completion:150.0, 112.0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
}

void __47__MUPlaceTileListContentView__updateAppearance__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (WeakRetained[63] == *(a1 + 32))
    {
      [WeakRetained[61] setFallbackImage:v4];
    }
  }
}

void __47__MUPlaceTileListContentView__updateAppearance__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (WeakRetained[63] == *(a1 + 32))
    {
      v7 = WeakRetained[61];
      if (v8)
      {
        [v7 setImage:v8 animated:a4 ^ 1u];
      }

      else
      {
        [v7 setImage:?];
      }
    }
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUPlaceTileViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUPlaceTileListContentView *)self _updateAppearance];
  }
}

- (void)_setupConstraints
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = [[MUSizeLayout alloc] initWithItem:self->_stopImageView size:48.0, 48.0];
  v4 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:1];
  secondaryLabel = self->_secondaryLabel;
  v17[0] = self->_titleLabel;
  v17[1] = secondaryLabel;
  v17[2] = self->_tertiaryLabel;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  [(MUCompositionalStackLayoutGroup *)v4 setArrangedLayoutItems:v6];

  v7 = [[MUCompositionalStackLayoutGroup alloc] initWithAxis:0];
  stopImageView = self->_stopImageView;
  v16[0] = v4;
  v16[1] = stopImageView;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [(MUCompositionalStackLayoutGroup *)v7 setArrangedLayoutItems:v9];

  [(MUCompositionalStackLayoutGroup *)v7 setDistribution:5];
  [(MUCompositionalStackLayoutGroup *)v7 setAlignment:2];
  [(MUCompositionalStackLayoutGroup *)v7 setAlignmentBoundsContent:1];
  LODWORD(v10) = 1112276992;
  [(MUCompositionalStackLayoutGroup *)v7 setAlignmentFittingSizePriority:v10];
  [(MUCompositionalStackLayoutGroup *)v7 setInsets:16.0, 16.0, 16.0, 16.0];
  [(MUCompositionalStackLayoutGroup *)v7 setSpacing:8.0];
  v11 = [[MUCompositionalStackLayout alloc] initWithContainer:self group:v7];
  v12 = MEMORY[0x1E696ACD8];
  v15[0] = v3;
  v15[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v12 _mapsui_activateLayouts:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setupViews
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = _createTitleLabel();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(MULabelViewProtocol *)self->_titleLabel setAccessibilityIdentifier:@"PlaceTileListTitle"];
  [(MUPlaceTileListContentView *)self addSubview:self->_titleLabel];
  v5 = _createSecondaryLabel();
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v5;

  [(MULabelViewProtocol *)self->_secondaryLabel setAccessibilityIdentifier:@"PlaceTileListSecondaryLabel"];
  [(MUPlaceTileListContentView *)self addSubview:self->_secondaryLabel];
  v7 = _createSecondaryLabel();
  tertiaryLabel = self->_tertiaryLabel;
  self->_tertiaryLabel = v7;

  [(MULabelViewProtocol *)self->_tertiaryLabel setAccessibilityIdentifier:@"PlaceTileListTertiaryLabel"];
  [(MUPlaceTileListContentView *)self addSubview:self->_tertiaryLabel];
  v9 = [MUImageView alloc];
  v10 = [(MUImageView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  stopImageView = self->_stopImageView;
  self->_stopImageView = v10;

  v12 = +[MUInfoCardStyle imageTileBackgroundColor];
  [(MUImageView *)self->_stopImageView setBackgroundColor:v12];

  [(UIView *)self->_stopImageView _mapsui_setCardCorner];
  [(MUImageView *)self->_stopImageView setAccessibilityIdentifier:@"PlaceTileListImage"];
  [(MUPlaceTileListContentView *)self addSubview:self->_stopImageView];
  v13 = objc_opt_self();
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(MUPlaceTileListContentView *)self registerForTraitChanges:v14 withAction:sel__updateFonts];

  v16 = *MEMORY[0x1E69E9840];
}

- (MUPlaceTileListContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPlaceTileListContentView;
  v3 = [(MUPlaceSectionRowView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceTileListContentView *)v3 setAccessibilityIdentifier:@"PlaceTileListContent"];
    [(MUPlaceTileListContentView *)v4 _setupViews];
    [(MUPlaceTileListContentView *)v4 _setupConstraints];
  }

  return v4;
}

@end