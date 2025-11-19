@interface MUPlaceReviewPlatterView
- (CGSize)intrinsicContentSize;
- (MUPlaceReviewPlatterView)initWithFrame:(CGRect)a3;
- (NSAttributedString)starString;
- (NSAttributedString)userLabelString;
- (id)_attributesWithFont:(id)a3 color:(id)a4;
- (void)_contentSizeDidChange;
- (void)_platterTapped;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)setViewModel:(id)a3;
@end

@implementation MUPlaceReviewPlatterView

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = 307.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MULabelViewProtocol *)self->_reviewTextView setFont:v3];

  v4 = [(MUPlaceReviewPlatterView *)self userLabelString];
  [(MULabelViewProtocol *)self->_userLabel setAttributedText:v4];

  v5 = [(MUPlaceReviewPlatterView *)self starString];
  [(UILabel *)self->_starLabel setAttributedText:v5];
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

- (NSAttributedString)starString
{
  v3 = MEMORY[0x1E696F3B0];
  [(MUPlaceReviewViewModel *)self->_viewModel normalizedScore];
  v5 = v4;
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v7 = [(MUPlaceReviewPlatterView *)self mk_theme];
  v8 = [v3 ratingAsAttributedString:v6 baseFont:2 style:v7 theme:v5];

  return v8;
}

- (NSAttributedString)userLabelString
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc(MEMORY[0x1E696AD40]);
  v5 = [(MUPlaceReviewViewModel *)self->_viewModel authorText];
  v6 = [v4 initWithString:v5];

  v7 = *MEMORY[0x1E69DDD28];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v9 = +[MUInfoCardStyle textColor];
  v10 = [(MUPlaceReviewPlatterView *)self _attributesWithFont:v8 color:v9];
  v11 = [(MUPlaceReviewViewModel *)self->_viewModel authorText];
  [v6 addAttributes:v10 range:{0, objc_msgSend(v11, "length")}];

  if ([v6 length])
  {
    v12 = [v6 copy];
    [v3 addObject:v12];
  }

  if (userLabelString_onceToken != -1)
  {
    dispatch_once(&userLabelString_onceToken, &__block_literal_global_5465);
  }

  v13 = userLabelString_dateFormatter;
  v14 = [(MUPlaceReviewViewModel *)self->_viewModel reviewDate];
  v15 = [v13 _mapkit_roundedPastUnitsStringFromDate:v14];

  v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v15];
  v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.470588237 alpha:1.0];
  v19 = [(MUPlaceReviewPlatterView *)self _attributesWithFont:v17 color:v18];
  [v16 addAttributes:v19 range:{0, objc_msgSend(v15, "length")}];

  if ([v3 count] && objc_msgSend(v15, "length"))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@" · "];
    v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
    v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.470588237 alpha:1.0];
    v23 = [(MUPlaceReviewPlatterView *)self _attributesWithFont:v21 color:v22];
    [v20 addAttributes:v23 range:{0, objc_msgSend(v20, "length")}];

    [v3 addObject:v20];
  }

  if ([v15 length])
  {
    v24 = [v16 copy];
    [v3 addObject:v24];
  }

  v25 = [v3 copy];
  v26 = [MapsUILayout buildAttributedDisplayStringForComponents:v25 forContainingView:self->_userLabel];

  return v26;
}

void __43__MUPlaceReviewPlatterView_userLabelString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = userLabelString_dateFormatter;
  userLabelString_dateFormatter = v0;

  [userLabelString_dateFormatter setTimeStyle:0];
  [userLabelString_dateFormatter setDateStyle:1];
  [userLabelString_dateFormatter setDoesRelativeDateFormatting:1];
  v2 = userLabelString_dateFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

- (void)_updateAppearance
{
  v3 = [(MUPlaceReviewViewModel *)self->_viewModel reviewText];
  [(MULabelViewProtocol *)self->_reviewTextView setText:v3];

  v4 = [(MUPlaceReviewPlatterView *)self userLabelString];
  [(MULabelViewProtocol *)self->_userLabel setAttributedText:v4];

  v5 = [(MUPlaceReviewPlatterView *)self starString];
  [(UILabel *)self->_starLabel setAttributedText:v5];

  objc_initWeak(&location, self);
  viewModel = self->_viewModel;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MUPlaceReviewPlatterView__updateAppearance__block_invoke;
  v7[3] = &unk_1E8218E90;
  objc_copyWeak(&v8, &location);
  [(MUPlaceReviewViewModel *)viewModel loadUserIconWithPointSize:v7 completion:36.0, 36.0];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __45__MUPlaceReviewPlatterView__updateAppearance__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 54);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__MUPlaceReviewPlatterView__updateAppearance__block_invoke_2;
    v7[3] = &unk_1E821A870;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 _mapsui_performImageLoadingTransitionWithAnimations:v7 completion:0];
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([(MUPlaceReviewViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MUPlaceReviewPlatterView *)self _updateAppearance];
  }
}

- (void)_platterTapped
{
  v3 = [(MUPlaceReviewPlatterView *)self actionHandler];

  if (v3)
  {
    v4 = [(MUPlaceReviewPlatterView *)self actionHandler];
    v4[2]();
  }
}

- (void)_setupConstraints
{
  v64[20] = *MEMORY[0x1E69E9840];
  v42 = MEMORY[0x1E696ACD8];
  v63 = [(MULabelViewProtocol *)self->_reviewTextView topAnchor];
  v62 = [(MUPlaceReviewPlatterView *)self topAnchor];
  v61 = [v63 constraintEqualToAnchor:v62 constant:14.0];
  v64[0] = v61;
  v60 = [(MULabelViewProtocol *)self->_reviewTextView leadingAnchor];
  v59 = [(MUPlaceReviewPlatterView *)self leadingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:16.0];
  v64[1] = v58;
  v57 = [(MULabelViewProtocol *)self->_reviewTextView trailingAnchor];
  v56 = [(MUPlaceReviewPlatterView *)self trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:-16.0];
  v64[2] = v55;
  v54 = [(MULabelViewProtocol *)self->_reviewTextView bottomAnchor];
  v53 = [(UILayoutGuide *)self->_userLabelLayoutGuide topAnchor];
  v52 = [v54 constraintLessThanOrEqualToAnchor:v53 constant:-12.0];
  v64[3] = v52;
  v51 = [(UIImageView *)self->_userAvatarImageView leadingAnchor];
  v50 = [(MUPlaceReviewPlatterView *)self leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:16.0];
  v64[4] = v49;
  v48 = [(UIImageView *)self->_userAvatarImageView topAnchor];
  v47 = [(MULabelViewProtocol *)self->_reviewTextView bottomAnchor];
  v46 = [v48 constraintGreaterThanOrEqualToAnchor:v47 constant:16.0];
  v64[5] = v46;
  v45 = [(UIImageView *)self->_userAvatarImageView centerYAnchor];
  v44 = [(UILayoutGuide *)self->_userLabelLayoutGuide centerYAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v64[6] = v43;
  v41 = [(UIImageView *)self->_userAvatarImageView bottomAnchor];
  v40 = [(MUPlaceReviewPlatterView *)self bottomAnchor];
  v39 = [v41 constraintLessThanOrEqualToAnchor:v40 constant:-14.0];
  v64[7] = v39;
  v38 = [(UIImageView *)self->_userAvatarImageView widthAnchor];
  v37 = [v38 constraintEqualToConstant:36.0];
  v64[8] = v37;
  v36 = [(UIImageView *)self->_userAvatarImageView heightAnchor];
  v35 = [v36 constraintEqualToConstant:36.0];
  v64[9] = v35;
  v34 = [(UIImageView *)self->_userAvatarImageView trailingAnchor];
  v33 = [(UILayoutGuide *)self->_userLabelLayoutGuide leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:-8.0];
  v64[10] = v32;
  v31 = [(UILabel *)self->_starLabel leadingAnchor];
  v30 = [(UILayoutGuide *)self->_userLabelLayoutGuide leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v64[11] = v29;
  v28 = [(UILabel *)self->_starLabel trailingAnchor];
  v27 = [(UILayoutGuide *)self->_userLabelLayoutGuide trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v64[12] = v26;
  v25 = [(UILabel *)self->_starLabel topAnchor];
  v24 = [(UILayoutGuide *)self->_userLabelLayoutGuide topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v64[13] = v23;
  v22 = [(MULabelViewProtocol *)self->_userLabel leadingAnchor];
  v21 = [(UILayoutGuide *)self->_userLabelLayoutGuide leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v64[14] = v20;
  v19 = [(MULabelViewProtocol *)self->_userLabel trailingAnchor];
  v18 = [(UILayoutGuide *)self->_userLabelLayoutGuide trailingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v64[15] = v17;
  v16 = [(MULabelViewProtocol *)self->_userLabel topAnchor];
  v15 = [(UILabel *)self->_starLabel bottomAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v64[16] = v14;
  v3 = [(MULabelViewProtocol *)self->_userLabel bottomAnchor];
  v4 = [(UILayoutGuide *)self->_userLabelLayoutGuide bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v64[17] = v5;
  v6 = [(UILayoutGuide *)self->_userLabelLayoutGuide trailingAnchor];
  v7 = [(MUPlaceReviewPlatterView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-16.0];
  v64[18] = v8;
  v9 = [(UILayoutGuide *)self->_userLabelLayoutGuide bottomAnchor];
  v10 = [(MUPlaceReviewPlatterView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-14.0];
  v64[19] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:20];
  [v42 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v3 = [MUInfoCardStyle labelForProminence:0];
  reviewTextView = self->_reviewTextView;
  self->_reviewTextView = v3;

  [(MULabelViewProtocol *)self->_reviewTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_reviewTextView setNumberOfLines:4];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(MULabelViewProtocol *)self->_reviewTextView setFont:v5];

  [(MULabelViewProtocol *)self->_reviewTextView setAccessibilityIdentifier:@"PlaceReviewPlatterReviewText"];
  [(MUPlaceReviewPlatterView *)self addSubview:self->_reviewTextView];
  v6 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  starLabel = self->_starLabel;
  self->_starLabel = v6;

  [(UILabel *)self->_starLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_starLabel set_mapsui_numberOfLines:1];
  [(UILabel *)self->_starLabel setAccessibilityIdentifier:@"PlaceReviewPlatterStarLabel"];
  [(MUPlaceReviewPlatterView *)self addSubview:self->_starLabel];
  v8 = [MUInfoCardStyle labelForProminence:1];
  userLabel = self->_userLabel;
  self->_userLabel = v8;

  [(MULabelViewProtocol *)self->_userLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_userLabel setNumberOfLines:1];
  [(MULabelViewProtocol *)self->_userLabel setAccessibilityIdentifier:@"PlaceReviewPlatterUserLabel"];
  [(MUPlaceReviewPlatterView *)self addSubview:self->_userLabel];
  v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  userAvatarImageView = self->_userAvatarImageView;
  self->_userAvatarImageView = v11;

  [(UIImageView *)self->_userAvatarImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_userAvatarImageView setAccessibilityIgnoresInvertColors:1];
  [(UIImageView *)self->_userAvatarImageView setContentMode:2];
  [(UIImageView *)self->_userAvatarImageView setClipsToBounds:1];
  [(UIImageView *)self->_userAvatarImageView _setCornerRadius:18.0];
  [(UIImageView *)self->_userAvatarImageView setAccessibilityIdentifier:@"PlaceReviewPlatterUserAvatar"];
  [(MUPlaceReviewPlatterView *)self addSubview:self->_userAvatarImageView];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  userLabelLayoutGuide = self->_userLabelLayoutGuide;
  self->_userLabelLayoutGuide = v13;

  [(MUPlaceReviewPlatterView *)self addLayoutGuide:self->_userLabelLayoutGuide];
  v15 = objc_alloc_init(MEMORY[0x1E69DD060]);
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v15;

  [(MUPlaceReviewPlatterView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer addTarget:self action:sel__platterTapped];

  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel__platterTapped];
}

- (MUPlaceReviewPlatterView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MUPlaceReviewPlatterView;
  v3 = [(MUPlaceReviewPlatterView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceReviewPlatterView *)v3 setAccessibilityIdentifier:@"PlaceReviewPlatter"];
    [(MUPlaceReviewPlatterView *)v4 _setupSubviews];
    [(MUPlaceReviewPlatterView *)v4 _setupConstraints];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

@end