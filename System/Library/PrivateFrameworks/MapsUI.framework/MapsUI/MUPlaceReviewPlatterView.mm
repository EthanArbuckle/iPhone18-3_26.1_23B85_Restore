@interface MUPlaceReviewPlatterView
- (CGSize)intrinsicContentSize;
- (MUPlaceReviewPlatterView)initWithFrame:(CGRect)frame;
- (NSAttributedString)starString;
- (NSAttributedString)userLabelString;
- (id)_attributesWithFont:(id)font color:(id)color;
- (void)_contentSizeDidChange;
- (void)_platterTapped;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)setViewModel:(id)model;
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

  userLabelString = [(MUPlaceReviewPlatterView *)self userLabelString];
  [(MULabelViewProtocol *)self->_userLabel setAttributedText:userLabelString];

  starString = [(MUPlaceReviewPlatterView *)self starString];
  [(UILabel *)self->_starLabel setAttributedText:starString];
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
  [(MUPlaceReviewViewModel *)self->_viewModel normalizedScore];
  v5 = v4;
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  mk_theme = [(MUPlaceReviewPlatterView *)self mk_theme];
  v8 = [v3 ratingAsAttributedString:v6 baseFont:2 style:mk_theme theme:v5];

  return v8;
}

- (NSAttributedString)userLabelString
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc(MEMORY[0x1E696AD40]);
  authorText = [(MUPlaceReviewViewModel *)self->_viewModel authorText];
  v6 = [v4 initWithString:authorText];

  v7 = *MEMORY[0x1E69DDD28];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v9 = +[MUInfoCardStyle textColor];
  v10 = [(MUPlaceReviewPlatterView *)self _attributesWithFont:v8 color:v9];
  authorText2 = [(MUPlaceReviewViewModel *)self->_viewModel authorText];
  [v6 addAttributes:v10 range:{0, objc_msgSend(authorText2, "length")}];

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
  reviewDate = [(MUPlaceReviewViewModel *)self->_viewModel reviewDate];
  v15 = [v13 _mapkit_roundedPastUnitsStringFromDate:reviewDate];

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
  reviewText = [(MUPlaceReviewViewModel *)self->_viewModel reviewText];
  [(MULabelViewProtocol *)self->_reviewTextView setText:reviewText];

  userLabelString = [(MUPlaceReviewPlatterView *)self userLabelString];
  [(MULabelViewProtocol *)self->_userLabel setAttributedText:userLabelString];

  starString = [(MUPlaceReviewPlatterView *)self starString];
  [(UILabel *)self->_starLabel setAttributedText:starString];

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

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUPlaceReviewViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUPlaceReviewPlatterView *)self _updateAppearance];
  }
}

- (void)_platterTapped
{
  actionHandler = [(MUPlaceReviewPlatterView *)self actionHandler];

  if (actionHandler)
  {
    actionHandler2 = [(MUPlaceReviewPlatterView *)self actionHandler];
    actionHandler2[2]();
  }
}

- (void)_setupConstraints
{
  v64[20] = *MEMORY[0x1E69E9840];
  v42 = MEMORY[0x1E696ACD8];
  topAnchor = [(MULabelViewProtocol *)self->_reviewTextView topAnchor];
  topAnchor2 = [(MUPlaceReviewPlatterView *)self topAnchor];
  v61 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
  v64[0] = v61;
  leadingAnchor = [(MULabelViewProtocol *)self->_reviewTextView leadingAnchor];
  leadingAnchor2 = [(MUPlaceReviewPlatterView *)self leadingAnchor];
  v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v64[1] = v58;
  trailingAnchor = [(MULabelViewProtocol *)self->_reviewTextView trailingAnchor];
  trailingAnchor2 = [(MUPlaceReviewPlatterView *)self trailingAnchor];
  v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v64[2] = v55;
  bottomAnchor = [(MULabelViewProtocol *)self->_reviewTextView bottomAnchor];
  topAnchor3 = [(UILayoutGuide *)self->_userLabelLayoutGuide topAnchor];
  v52 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor3 constant:-12.0];
  v64[3] = v52;
  leadingAnchor3 = [(UIImageView *)self->_userAvatarImageView leadingAnchor];
  leadingAnchor4 = [(MUPlaceReviewPlatterView *)self leadingAnchor];
  v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v64[4] = v49;
  topAnchor4 = [(UIImageView *)self->_userAvatarImageView topAnchor];
  bottomAnchor2 = [(MULabelViewProtocol *)self->_reviewTextView bottomAnchor];
  v46 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:16.0];
  v64[5] = v46;
  centerYAnchor = [(UIImageView *)self->_userAvatarImageView centerYAnchor];
  centerYAnchor2 = [(UILayoutGuide *)self->_userLabelLayoutGuide centerYAnchor];
  v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v64[6] = v43;
  bottomAnchor3 = [(UIImageView *)self->_userAvatarImageView bottomAnchor];
  bottomAnchor4 = [(MUPlaceReviewPlatterView *)self bottomAnchor];
  v39 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-14.0];
  v64[7] = v39;
  widthAnchor = [(UIImageView *)self->_userAvatarImageView widthAnchor];
  v37 = [widthAnchor constraintEqualToConstant:36.0];
  v64[8] = v37;
  heightAnchor = [(UIImageView *)self->_userAvatarImageView heightAnchor];
  v35 = [heightAnchor constraintEqualToConstant:36.0];
  v64[9] = v35;
  trailingAnchor3 = [(UIImageView *)self->_userAvatarImageView trailingAnchor];
  leadingAnchor5 = [(UILayoutGuide *)self->_userLabelLayoutGuide leadingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:-8.0];
  v64[10] = v32;
  leadingAnchor6 = [(UILabel *)self->_starLabel leadingAnchor];
  leadingAnchor7 = [(UILayoutGuide *)self->_userLabelLayoutGuide leadingAnchor];
  v29 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v64[11] = v29;
  trailingAnchor4 = [(UILabel *)self->_starLabel trailingAnchor];
  trailingAnchor5 = [(UILayoutGuide *)self->_userLabelLayoutGuide trailingAnchor];
  v26 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v64[12] = v26;
  topAnchor5 = [(UILabel *)self->_starLabel topAnchor];
  topAnchor6 = [(UILayoutGuide *)self->_userLabelLayoutGuide topAnchor];
  v23 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v64[13] = v23;
  leadingAnchor8 = [(MULabelViewProtocol *)self->_userLabel leadingAnchor];
  leadingAnchor9 = [(UILayoutGuide *)self->_userLabelLayoutGuide leadingAnchor];
  v20 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v64[14] = v20;
  trailingAnchor6 = [(MULabelViewProtocol *)self->_userLabel trailingAnchor];
  trailingAnchor7 = [(UILayoutGuide *)self->_userLabelLayoutGuide trailingAnchor];
  v17 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v64[15] = v17;
  topAnchor7 = [(MULabelViewProtocol *)self->_userLabel topAnchor];
  bottomAnchor5 = [(UILabel *)self->_starLabel bottomAnchor];
  v14 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5];
  v64[16] = v14;
  bottomAnchor6 = [(MULabelViewProtocol *)self->_userLabel bottomAnchor];
  bottomAnchor7 = [(UILayoutGuide *)self->_userLabelLayoutGuide bottomAnchor];
  v5 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v64[17] = v5;
  trailingAnchor8 = [(UILayoutGuide *)self->_userLabelLayoutGuide trailingAnchor];
  trailingAnchor9 = [(MUPlaceReviewPlatterView *)self trailingAnchor];
  v8 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-16.0];
  v64[18] = v8;
  bottomAnchor8 = [(UILayoutGuide *)self->_userLabelLayoutGuide bottomAnchor];
  bottomAnchor9 = [(MUPlaceReviewPlatterView *)self bottomAnchor];
  v11 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-14.0];
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
  _mapsui_defaultLabel = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  starLabel = self->_starLabel;
  self->_starLabel = _mapsui_defaultLabel;

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

- (MUPlaceReviewPlatterView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MUPlaceReviewPlatterView;
  v3 = [(MUPlaceReviewPlatterView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceReviewPlatterView *)v3 setAccessibilityIdentifier:@"PlaceReviewPlatter"];
    [(MUPlaceReviewPlatterView *)v4 _setupSubviews];
    [(MUPlaceReviewPlatterView *)v4 _setupConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

@end