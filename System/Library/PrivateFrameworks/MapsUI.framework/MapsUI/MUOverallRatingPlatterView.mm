@interface MUOverallRatingPlatterView
- (CGSize)intrinsicContentSize;
- (MUOverallRatingPlatterView)initWithFrame:(CGRect)frame;
- (NSAttributedString)ratingString;
- (NSAttributedString)starString;
- (id)_attributesWithFont:(id)font color:(id)color;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateAttribution;
- (void)addSelectionGestureWithTarget:(id)target action:(SEL)action;
- (void)setViewModel:(id)model;
@end

@implementation MUOverallRatingPlatterView

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = 150.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)_updateAttribution
{
  attributionText = [(MUOverallRatingPlatterViewModel *)self->_viewModel attributionText];
  [(UILabel *)self->_attributionLabel setAttributedText:attributionText];
}

- (void)_contentSizeDidChange
{
  attributionText = [(MUOverallRatingPlatterViewModel *)self->_viewModel attributionText];
  [(UILabel *)self->_attributionLabel setAttributedText:attributionText];

  starString = [(MUOverallRatingPlatterView *)self starString];
  [(UILabel *)self->_starLabel setAttributedText:starString];
}

- (void)_updateAppearance
{
  attributionText = [(MUOverallRatingPlatterViewModel *)self->_viewModel attributionText];
  [(UILabel *)self->_attributionLabel setAttributedText:attributionText];

  starString = [(MUOverallRatingPlatterView *)self starString];
  [(UILabel *)self->_starLabel setAttributedText:starString];

  ratingString = [(MUOverallRatingPlatterView *)self ratingString];
  [(UILabel *)self->_ratingLabel setAttributedText:ratingString];
}

- (id)_attributesWithFont:(id)font color:(id)color
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB650];
  v12[0] = *MEMORY[0x1E69DB648];
  v12[1] = v5;
  v13[0] = font;
  v13[1] = color;
  v6 = MEMORY[0x1E695DF20];
  colorCopy = color;
  fontCopy = font;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSAttributedString)starString
{
  v3 = MEMORY[0x1E696F3B0];
  [(MUOverallRatingPlatterViewModel *)self->_viewModel rating];
  v5 = v4;
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  largeTitleFont = [mEMORY[0x1E696F200] largeTitleFont];
  mk_theme = [(MUOverallRatingPlatterView *)self mk_theme];
  v9 = [v3 ratingAsAttributedString:largeTitleFont baseFont:2 style:mk_theme theme:v5];

  return v9;
}

- (NSAttributedString)ratingString
{
  v37[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v4 = MEMORY[0x1E696AEC0];
  [(MUOverallRatingPlatterViewModel *)self->_viewModel rating];
  v6 = [v4 localizedStringWithFormat:@"%.1f", v5];
  v7 = [v3 initWithString:v6];

  v8 = *MEMORY[0x1E69DDDC0];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v10 = *MEMORY[0x1E69DB958];
  v11 = [v9 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v13 = [(MUOverallRatingPlatterView *)self _attributesWithFont:v11 color:labelColor];
  v33 = v7;
  [v7 addAttributes:v13 range:{0, objc_msgSend(v7, "length")}];

  v36 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MUOverallRatingPlatterViewModel numberOfVotes](self->_viewModel, "numberOfVotes")}];
  v35 = [v36 stringFromNumber:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = _MULocalizedStringFromThisBundle(@"(%@) [Number of Votes]");
  v34 = [v15 stringWithFormat:v16, v35];

  v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v34];
  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v20 = [(MUOverallRatingPlatterView *)self _attributesWithFont:v18 color:secondaryLabelColor];
  [v17 addAttributes:v20 range:{0, objc_msgSend(v17, "length")}];

  v21 = [v7 copy];
  v37[0] = v21;
  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8];
  v24 = [v23 _mapkit_fontWithWeight:v10];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  v26 = [(MUOverallRatingPlatterView *)self _attributesWithFont:v24 color:labelColor2];
  v27 = [v22 initWithString:@" " attributes:v26];
  v37[1] = v27;
  v28 = [v17 copy];
  v37[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  v30 = [MapsUILayout buildAttributedDisplayStringForComponents:v29];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUOverallRatingPlatterViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUOverallRatingPlatterView *)self _updateAppearance];
  }
}

- (void)addSelectionGestureWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  if (self->_tapGestureRecognizer)
  {
    [(MUOverallRatingPlatterView *)self removeGestureRecognizer:?];
  }

  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:targetCopy action:action];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v6;

  [(MUOverallRatingPlatterView *)self addGestureRecognizer:self->_tapGestureRecognizer];
}

- (void)_setupConstraints
{
  v36[10] = *MEMORY[0x1E69E9840];
  v24 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILabel *)self->_attributionLabel topAnchor];
  topAnchor2 = [(MUOverallRatingPlatterView *)self topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v36[0] = v33;
  leadingAnchor = [(UILabel *)self->_attributionLabel leadingAnchor];
  leadingAnchor2 = [(MUOverallRatingPlatterView *)self leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v36[1] = v30;
  trailingAnchor = [(UILabel *)self->_attributionLabel trailingAnchor];
  trailingAnchor2 = [(MUOverallRatingPlatterView *)self trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v36[2] = v27;
  bottomAnchor = [(UILabel *)self->_attributionLabel bottomAnchor];
  topAnchor3 = [(UILabel *)self->_starLabel topAnchor];
  v23 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor3 constant:-8.0];
  v36[3] = v23;
  leadingAnchor3 = [(UILabel *)self->_starLabel leadingAnchor];
  leadingAnchor4 = [(MUOverallRatingPlatterView *)self leadingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v36[4] = v20;
  trailingAnchor3 = [(UILabel *)self->_starLabel trailingAnchor];
  trailingAnchor4 = [(MUOverallRatingPlatterView *)self trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v36[5] = v17;
  bottomAnchor2 = [(UILabel *)self->_starLabel bottomAnchor];
  topAnchor4 = [(UILabel *)self->_ratingLabel topAnchor];
  v14 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4];
  v36[6] = v14;
  leadingAnchor5 = [(UILabel *)self->_ratingLabel leadingAnchor];
  leadingAnchor6 = [(MUOverallRatingPlatterView *)self leadingAnchor];
  v5 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  v36[7] = v5;
  trailingAnchor5 = [(UILabel *)self->_ratingLabel trailingAnchor];
  trailingAnchor6 = [(MUOverallRatingPlatterView *)self trailingAnchor];
  v8 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v36[8] = v8;
  bottomAnchor3 = [(UILabel *)self->_ratingLabel bottomAnchor];
  bottomAnchor4 = [(MUOverallRatingPlatterView *)self bottomAnchor];
  v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
  v36[9] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:10];
  [v24 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v17[1] = *MEMORY[0x1E69E9840];
  _mapsui_defaultLabel = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  attributionLabel = self->_attributionLabel;
  self->_attributionLabel = _mapsui_defaultLabel;

  [(UILabel *)self->_attributionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_attributionLabel set_mapsui_numberOfLines:1];
  [(UILabel *)self->_attributionLabel setAccessibilityIdentifier:@"OverallRatingPlatterAttribution"];
  [(MUOverallRatingPlatterView *)self addSubview:self->_attributionLabel];
  _mapsui_defaultLabel2 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  starLabel = self->_starLabel;
  self->_starLabel = _mapsui_defaultLabel2;

  [(UILabel *)self->_starLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_starLabel set_mapsui_numberOfLines:1];
  [(UILabel *)self->_starLabel setAccessibilityIdentifier:@"OverallRatingPlatterStarLabel"];
  [(MUOverallRatingPlatterView *)self addSubview:self->_starLabel];
  _mapsui_defaultLabel3 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  ratingLabel = self->_ratingLabel;
  self->_ratingLabel = _mapsui_defaultLabel3;

  [(UILabel *)self->_ratingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_ratingLabel set_mapsui_numberOfLines:0];
  [(UILabel *)self->_ratingLabel setAccessibilityIdentifier:@"OverallRatingPlatterRatingLabel"];
  [(MUOverallRatingPlatterView *)self addSubview:self->_ratingLabel];
  v9 = objc_opt_self();
  v17[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = [(MUOverallRatingPlatterView *)self registerForTraitChanges:v10 withAction:sel__contentSizeDidChange];

  v12 = objc_opt_self();
  v16 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v14 = [(MUOverallRatingPlatterView *)self registerForTraitChanges:v13 withAction:sel__updateAttribution];

  v15 = *MEMORY[0x1E69E9840];
}

- (MUOverallRatingPlatterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUOverallRatingPlatterView;
  v3 = [(MUOverallRatingPlatterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUOverallRatingPlatterView *)v3 setAccessibilityIdentifier:@"OverallRatingPlatter"];
    [(MUOverallRatingPlatterView *)v4 _setupSubviews];
    [(MUOverallRatingPlatterView *)v4 _setupConstraints];
  }

  return v4;
}

@end