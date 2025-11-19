@interface MUNearestStationRowView
- (MUNearestStationRowView)initWithFrame:(CGRect)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateFonts;
- (void)configureWithNearestStation:(id)a3;
- (void)layoutSubviews;
@end

@implementation MUNearestStationRowView

- (void)_updateFonts
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v4 = [v3 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(UILabel *)self->_titleLabel setFont:v4];

  v5 = *MEMORY[0x1E69DDD80];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_secondaryLabel setFont:v6];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  [(UILabel *)self->_tertiaryLabel setFont:v7];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUNearestStationRowView;
  [(MKViewWithHairline *)&v3 layoutSubviews];
  [(MULoadingOverlayController *)self->_loadingOverlayController updateLayoutForBoundsChange];
}

- (void)_setupConstraints
{
  v35[10] = *MEMORY[0x1E69E9840];
  v24 = MEMORY[0x1E696ACD8];
  v34 = [(UIStackView *)self->_labelStackView leadingAnchor];
  v33 = [(MUNearestStationRowView *)self leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:16.0];
  v35[0] = v32;
  v31 = [(UIStackView *)self->_labelStackView topAnchor];
  v30 = [(MUNearestStationRowView *)self topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:16.0];
  v35[1] = v29;
  v28 = [(UIStackView *)self->_labelStackView bottomAnchor];
  v27 = [(MUNearestStationRowView *)self bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:-16.0];
  v35[2] = v26;
  v25 = [(UIStackView *)self->_labelStackView trailingAnchor];
  v23 = [(UIImageView *)self->_stopImageView leadingAnchor];
  v22 = [v25 constraintEqualToAnchor:v23 constant:-8.0];
  v35[3] = v22;
  v21 = [(UIImageView *)self->_stopImageView topAnchor];
  v20 = [(MUNearestStationRowView *)self topAnchor];
  v19 = [v21 constraintGreaterThanOrEqualToAnchor:v20 constant:16.0];
  v35[4] = v19;
  v18 = [(UIImageView *)self->_stopImageView bottomAnchor];
  v17 = [(MUNearestStationRowView *)self bottomAnchor];
  v16 = [v18 constraintLessThanOrEqualToAnchor:v17 constant:-16.0];
  v35[5] = v16;
  v15 = [(UIImageView *)self->_stopImageView centerYAnchor];
  v14 = [(MUNearestStationRowView *)self centerYAnchor];
  v3 = [v15 constraintEqualToAnchor:v14];
  v35[6] = v3;
  v4 = [(UIImageView *)self->_stopImageView trailingAnchor];
  v5 = [(MUNearestStationRowView *)self trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:-16.0];
  v35[7] = v6;
  v7 = [(UIImageView *)self->_stopImageView widthAnchor];
  v8 = [v7 constraintEqualToConstant:48.0];
  v35[8] = v8;
  v9 = [(UIImageView *)self->_stopImageView heightAnchor];
  v10 = [(UIImageView *)self->_stopImageView widthAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v35[9] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:10];
  [v24 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  stopImageView = self->_stopImageView;
  self->_stopImageView = v8;

  [(UIImageView *)self->_stopImageView setAccessibilityIdentifier:@"StopImageView"];
  [(UIImageView *)self->_stopImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_stopImageView _mapsui_setCardCorner];
  [(MUNearestStationRowView *)self addSubview:self->_stopImageView];
  v10 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v4, v5, v6, v7}];
  labelStackView = self->_labelStackView;
  self->_labelStackView = v10;

  [(UIStackView *)self->_labelStackView setAccessibilityIdentifier:@"LabelStackView"];
  [(UIStackView *)self->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_labelStackView setSpacing:2.0];
  [(UIStackView *)self->_labelStackView setAxis:1];
  [(UIStackView *)self->_labelStackView setDistribution:4];
  v12 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v12;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v14;

  [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_secondaryLabel setTextColor:v16];

  v17 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  tertiaryLabel = self->_tertiaryLabel;
  self->_tertiaryLabel = v17;

  [(UILabel *)self->_tertiaryLabel setAccessibilityIdentifier:@"TertiaryLabel"];
  [(UILabel *)self->_tertiaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_tertiaryLabel setTextColor:v19];

  [(MUNearestStationRowView *)self _updateFonts];
  [(MUNearestStationRowView *)self addSubview:self->_labelStackView];
  v20 = [[MULoadingOverlayController alloc] initWithParentView:self contentView:self];
  loadingOverlayController = self->_loadingOverlayController;
  self->_loadingOverlayController = v20;

  [(MULoadingOverlayController *)self->_loadingOverlayController attachLoadingOverlay];
  v22 = objc_opt_self();
  v26[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v24 = [(MUNearestStationRowView *)self registerForTraitChanges:v23 withAction:sel__updateFonts];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_updateAppearance
{
  v3 = [(MKMapItem *)self->_nearestStation artworkImage];
  [(UIImageView *)self->_stopImageView setImage:v3];

  v4 = [(MKMapItem *)self->_nearestStation stationTitle];
  [(UILabel *)self->_titleLabel setText:v4];

  v5 = [(MKMapItem *)self->_nearestStation stationCategory];
  [(UILabel *)self->_secondaryLabel setText:v5];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v8 addObject:self->_titleLabel];
  [v8 addObject:self->_secondaryLabel];
  [v8 addObject:self->_tertiaryLabel];
  labelStackView = self->_labelStackView;
  v7 = [v8 copy];
  [(UIStackView *)labelStackView _mapsui_setArrangedSubviews:v7];
}

- (void)configureWithNearestStation:(id)a3
{
  v5 = a3;
  if (self->_nearestStation != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_nearestStation, a3);
    [(MUNearestStationRowView *)self _updateAppearance];
    [(MULoadingOverlayController *)self->_loadingOverlayController removeLoadingOverlayAnimated:1 completion:0];
    v5 = v6;
  }
}

- (MUNearestStationRowView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUNearestStationRowView;
  v3 = [(MUPlaceSectionRowView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUNearestStationRowView *)v3 setAccessibilityIdentifier:@"MUNearestStationRowView"];
    [(MUNearestStationRowView *)v4 _setupSubviews];
    [(MUNearestStationRowView *)v4 _setupConstraints];
  }

  return v4;
}

@end