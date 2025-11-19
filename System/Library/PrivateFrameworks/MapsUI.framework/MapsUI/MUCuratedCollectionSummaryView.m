@interface MUCuratedCollectionSummaryView
- (MUCuratedCollectionSummaryView)initWithFrame:(CGRect)a3;
- (id)_attributesWithFont:(id)a3 color:(id)a4;
- (id)publisherString;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateImageViewForInterfaceStyle;
- (void)setViewModel:(id)a3;
@end

@implementation MUCuratedCollectionSummaryView

- (void)_updateImageViewForInterfaceStyle
{
  viewModel = self->_viewModel;
  v5 = [(MUCuratedCollectionSummaryView *)self traitCollection];
  v4 = -[MUCuratedCollectionSummary publisherIconForIsNightMode:](viewModel, "publisherIconForIsNightMode:", [v5 userInterfaceStyle] != 2);
  [(UIImageView *)self->_imageView setImage:v4];
}

- (id)publisherString
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MUCuratedCollectionSummary *)self->_viewModel publisherName];
  v5 = [v4 length];

  v6 = 0x1E696A000uLL;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E696AD40]);
    v8 = [(MUCuratedCollectionSummary *)self->_viewModel publisherName];
    v9 = [v7 initWithString:v8];

    v10 = *MEMORY[0x1E69DDD28];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v12 = +[MUInfoCardStyle textColor];
    v13 = [(MUCuratedCollectionSummaryView *)self _attributesWithFont:v11 color:v12];
    v14 = [(MUCuratedCollectionSummary *)self->_viewModel publisherName];
    [v9 addAttributes:v13 range:{0, objc_msgSend(v14, "length")}];

    [v3 addObject:v9];
    v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@" · "];
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
    v17 = +[MUInfoCardStyle secondaryTextColor];
    v18 = [(MUCuratedCollectionSummaryView *)self _attributesWithFont:v16 color:v17];
    [v15 addAttributes:v18 range:{0, objc_msgSend(v15, "length")}];

    v6 = 0x1E696A000;
    v19 = [v15 copy];
    [v3 addObject:v19];
  }

  else
  {
    v10 = *MEMORY[0x1E69DDD28];
  }

  v20 = _MULocalizedStringFromThisBundle(@"Number of places [Placecard]");
  v21 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v20 validFormatSpecifiers:@"%lu" error:0, -[MUCuratedCollectionSummary numberOfPlaces](self->_viewModel, "numberOfPlaces")];
  v22 = [objc_alloc(*(v6 + 3392)) initWithString:v21];
  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
  v24 = +[MUInfoCardStyle secondaryTextColor];
  v25 = [(MUCuratedCollectionSummaryView *)self _attributesWithFont:v23 color:v24];
  [v22 addAttributes:v25 range:{0, objc_msgSend(v22, "length")}];

  v26 = [v22 copy];
  [v3 addObject:v26];

  v27 = [v3 copy];
  v28 = [MapsUILayout buildAttributedDisplayStringForComponents:v27 forContainingView:self];

  return v28;
}

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v4 = [v3 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];
  [(UILabel *)self->_titleLabel setFont:v4];

  v5 = [(MUCuratedCollectionSummaryView *)self publisherString];
  [(UILabel *)self->_descriptionLabel setAttributedText:v5];
}

- (id)_attributesWithFont:(id)a3 color:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB650];
  v12[0] = *MEMORY[0x1E69DB648];
  v12[1] = v5;
  v13[0] = a3;
  v13[1] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_updateAppearance
{
  viewModel = self->_viewModel;
  v4 = [(MUCuratedCollectionSummaryView *)self traitCollection];
  v5 = -[MUCuratedCollectionSummary publisherIconForIsNightMode:](viewModel, "publisherIconForIsNightMode:", [v4 userInterfaceStyle] == 1);
  [(UIImageView *)self->_imageView setImage:v5];

  v6 = [(MUCuratedCollectionSummary *)self->_viewModel collectionName];
  [(UILabel *)self->_titleLabel setText:v6];

  v7 = [(MUCuratedCollectionSummaryView *)self publisherString];
  [(UILabel *)self->_descriptionLabel setAttributedText:v7];
}

- (void)_setupConstraints
{
  v58[18] = *MEMORY[0x1E69E9840];
  v38 = MEMORY[0x1E696ACD8];
  v57 = [(UIImageView *)self->_imageView leadingAnchor];
  v56 = [(MUCuratedCollectionSummaryView *)self leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v58[0] = v55;
  v54 = [(UIImageView *)self->_imageView topAnchor];
  v53 = [(MUCuratedCollectionSummaryView *)self topAnchor];
  v52 = [v54 constraintGreaterThanOrEqualToAnchor:v53];
  v58[1] = v52;
  v51 = [(UIImageView *)self->_imageView centerYAnchor];
  v50 = [(MUCuratedCollectionSummaryView *)self centerYAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v58[2] = v49;
  v48 = [(UIImageView *)self->_imageView bottomAnchor];
  v47 = [(MUCuratedCollectionSummaryView *)self bottomAnchor];
  v46 = [v48 constraintLessThanOrEqualToAnchor:v47];
  v58[3] = v46;
  v45 = [(UIImageView *)self->_imageView widthAnchor];
  v44 = [v45 constraintEqualToConstant:36.0];
  v58[4] = v44;
  v43 = [(UIImageView *)self->_imageView heightAnchor];
  v42 = [v43 constraintEqualToConstant:36.0];
  v58[5] = v42;
  v41 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  v40 = [(UIImageView *)self->_imageView trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40 constant:8.0];
  v58[6] = v39;
  v37 = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  v36 = [(MUCuratedCollectionSummaryView *)self topAnchor];
  v35 = [v37 constraintGreaterThanOrEqualToAnchor:v36];
  v58[7] = v35;
  v34 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v33 = [(MUCuratedCollectionSummaryView *)self bottomAnchor];
  v32 = [v34 constraintLessThanOrEqualToAnchor:v33];
  v58[8] = v32;
  v31 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  v30 = [(MUCuratedCollectionSummaryView *)self trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v58[9] = v29;
  v28 = [(UILayoutGuide *)self->_layoutGuide centerYAnchor];
  v27 = [(MUCuratedCollectionSummaryView *)self centerYAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v58[10] = v26;
  v25 = [(UILabel *)self->_titleLabel topAnchor];
  v24 = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v58[11] = v23;
  v22 = [(UILabel *)self->_titleLabel leadingAnchor];
  v21 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v58[12] = v20;
  v19 = [(UILabel *)self->_titleLabel trailingAnchor];
  v18 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v58[13] = v17;
  v16 = [(UILabel *)self->_titleLabel bottomAnchor];
  v15 = [(UILabel *)self->_descriptionLabel topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v58[14] = v14;
  v3 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  v4 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v58[15] = v5;
  v6 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  v7 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v58[16] = v8;
  v9 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  v10 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v58[17] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:18];
  [v38 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v6 = [v5 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];
  [(UILabel *)self->_titleLabel setFont:v6];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"CuratedCollectionSummaryTitle"];
  [(MUCuratedCollectionSummaryView *)self addSubview:self->_titleLabel];
  v7 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v7;

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:1];
  v9 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v9];

  [(UILabel *)self->_descriptionLabel setAccessibilityIdentifier:@"CuratedCollectionSummaryDescription"];
  [(MUCuratedCollectionSummaryView *)self addSubview:self->_descriptionLabel];
  v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  imageView = self->_imageView;
  self->_imageView = v11;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView setClipsToBounds:1];
  [(UIImageView *)self->_imageView _setContinuousCornerRadius:4.0];
  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"CuratedCollectionSummaryImage"];
  [(MUCuratedCollectionSummaryView *)self addSubview:self->_imageView];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  layoutGuide = self->_layoutGuide;
  self->_layoutGuide = v13;

  [(MUCuratedCollectionSummaryView *)self addLayoutGuide:self->_layoutGuide];
  v15 = objc_opt_self();
  v23[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v17 = [(MUCuratedCollectionSummaryView *)self registerForTraitChanges:v16 withAction:sel__updateImageViewForInterfaceStyle];

  v18 = objc_opt_self();
  v22 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v20 = [(MUCuratedCollectionSummaryView *)self registerForTraitChanges:v19 withAction:sel__contentSizeDidChange];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([(MUCuratedCollectionSummary *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MUCuratedCollectionSummaryView *)self _updateAppearance];
  }
}

- (MUCuratedCollectionSummaryView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUCuratedCollectionSummaryView;
  v3 = [(MUCuratedCollectionSummaryView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUCuratedCollectionSummaryView *)v3 setAccessibilityIdentifier:@"CuratedCollectionSummary"];
    [(MUCuratedCollectionSummaryView *)v4 _setupSubviews];
    [(MUCuratedCollectionSummaryView *)v4 _setupConstraints];
  }

  return v4;
}

@end