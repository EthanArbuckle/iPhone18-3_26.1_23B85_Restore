@interface MUPlaceAppLockupView
+ (CGSize)appIconSize;
- (MUPlaceAppLockupView)initWithFrame:(CGRect)frame;
- (MUPlaceAppLockupViewDelegate)delegate;
- (double)scaledHeight;
- (void)_punchOutButtonSelected;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateHeightConstraint;
- (void)setViewModel:(id)model;
@end

@implementation MUPlaceAppLockupView

- (MUPlaceAppLockupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateHeightConstraint
{
  [(MUPlaceAppLockupView *)self scaledHeight];
  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:?];
}

- (void)_punchOutButtonSelected
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appLockupViewDidSelectPunchOutButton:self];
}

- (double)scaledHeight
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [v3 _scaledValueForValue:76.0];
  v5 = v4;

  return v5;
}

- (void)_updateAppearance
{
  titleText = [(MUAppLockupViewModel *)self->_viewModel titleText];
  [(UILabel *)self->_titleLabel setText:titleText];

  subtitleText = [(MUAppLockupViewModel *)self->_viewModel subtitleText];
  [(UILabel *)self->_subtitleLabel setText:subtitleText];

  punchoutButton = self->_punchoutButton;
  actionButtonText = [(MUAppLockupViewModel *)self->_viewModel actionButtonText];
  [(UIButton *)punchoutButton setTitle:actionButtonText forState:0];

  window = [(MUPlaceAppLockupView *)self window];
  screen = [window screen];
  if (screen)
  {
    window2 = [(MUPlaceAppLockupView *)self window];
    screen2 = [window2 screen];
    [screen2 scale];
    v12 = v11;
  }

  else
  {
    window2 = [MEMORY[0x1E696F3B8] sharedInstance];
    [window2 screenScale];
    v12 = v13;
  }

  [objc_opt_class() appIconSize];
  v15 = v14;
  v17 = v16;
  objc_initWeak(&location, self);
  viewModel = self->_viewModel;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__MUPlaceAppLockupView__updateAppearance__block_invoke;
  v19[3] = &unk_1E82182F8;
  objc_copyWeak(&v20, &location);
  v19[4] = self;
  [(MUAppLockupViewModel *)viewModel loadAppArtworkWithScale:v19 size:v12 completion:v15, v17];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __41__MUPlaceAppLockupView__updateAppearance__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__MUPlaceAppLockupView__updateAppearance__block_invoke_2;
    v7[3] = &unk_1E821A870;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 _mapsui_performImageLoadingTransitionWithAnimations:v7 completion:0];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(MUPlaceAppLockupView *)self _updateAppearance];
    modelCopy = v6;
  }
}

- (void)_setupConstraints
{
  v75[23] = *MEMORY[0x1E69E9840];
  heightAnchor = [(MUPlaceAppLockupView *)self heightAnchor];
  [(MUPlaceAppLockupView *)self scaledHeight];
  v4 = [heightAnchor constraintEqualToConstant:?];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v4;

  v51 = MEMORY[0x1E696ACD8];
  heightAnchor2 = [(UIImageView *)self->_appLockupImageView heightAnchor];
  v73 = [heightAnchor2 constraintEqualToConstant:48.0];
  v75[0] = v73;
  widthAnchor = [(UIImageView *)self->_appLockupImageView widthAnchor];
  heightAnchor3 = [(UIImageView *)self->_appLockupImageView heightAnchor];
  v70 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
  v75[1] = v70;
  leadingAnchor = [(UIImageView *)self->_appLockupImageView leadingAnchor];
  leadingAnchor2 = [(MUPlaceAppLockupView *)self leadingAnchor];
  v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v75[2] = v67;
  trailingAnchor = [(UIImageView *)self->_appLockupImageView trailingAnchor];
  leadingAnchor3 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide leadingAnchor];
  v64 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-10.0];
  v75[3] = v64;
  topAnchor = [(UIImageView *)self->_appLockupImageView topAnchor];
  topAnchor2 = [(MUPlaceAppLockupView *)self topAnchor];
  v61 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:14.0];
  v75[4] = v61;
  bottomAnchor = [(UIImageView *)self->_appLockupImageView bottomAnchor];
  bottomAnchor2 = [(MUPlaceAppLockupView *)self bottomAnchor];
  v58 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-14.0];
  v75[5] = v58;
  leadingAnchor4 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor5 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide leadingAnchor];
  v55 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v75[6] = v55;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor3 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide trailingAnchor];
  v52 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v75[7] = v52;
  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor4 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide topAnchor];
  v48 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v75[8] = v48;
  bottomAnchor3 = [(UILabel *)self->_titleLabel bottomAnchor];
  topAnchor5 = [(UILabel *)self->_subtitleLabel topAnchor];
  v45 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  v75[9] = v45;
  leadingAnchor6 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor7 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide leadingAnchor];
  v42 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v75[10] = v42;
  trailingAnchor4 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor5 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide trailingAnchor];
  v39 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v75[11] = v39;
  bottomAnchor4 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  bottomAnchor5 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide bottomAnchor];
  v36 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v75[12] = v36;
  topAnchor6 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide topAnchor];
  topAnchor7 = [(MUPlaceAppLockupView *)self topAnchor];
  v33 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:topAnchor7 constant:14.0];
  v75[13] = v33;
  bottomAnchor6 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide bottomAnchor];
  bottomAnchor7 = [(MUPlaceAppLockupView *)self bottomAnchor];
  v30 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7 constant:-14.0];
  v75[14] = v30;
  trailingAnchor6 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide trailingAnchor];
  leadingAnchor8 = [(UIButton *)self->_punchoutButton leadingAnchor];
  v27 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:-16.0];
  v75[15] = v27;
  trailingAnchor7 = [(UIButton *)self->_punchoutButton trailingAnchor];
  trailingAnchor8 = [(MUPlaceAppLockupView *)self trailingAnchor];
  v24 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-16.0];
  v75[16] = v24;
  topAnchor8 = [(UIButton *)self->_punchoutButton topAnchor];
  topAnchor9 = [(MUPlaceAppLockupView *)self topAnchor];
  v21 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:topAnchor9 constant:24.0];
  v75[17] = v21;
  bottomAnchor8 = [(UIButton *)self->_punchoutButton bottomAnchor];
  bottomAnchor9 = [(MUPlaceAppLockupView *)self bottomAnchor];
  v18 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:bottomAnchor9 constant:-24.0];
  v75[18] = v18;
  centerYAnchor = [(UIImageView *)self->_appLockupImageView centerYAnchor];
  centerYAnchor2 = [(MUPlaceAppLockupView *)self centerYAnchor];
  v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v75[19] = v8;
  centerYAnchor3 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide centerYAnchor];
  centerYAnchor4 = [(MUPlaceAppLockupView *)self centerYAnchor];
  v11 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v75[20] = v11;
  centerYAnchor5 = [(UIButton *)self->_punchoutButton centerYAnchor];
  centerYAnchor6 = [(MUPlaceAppLockupView *)self centerYAnchor];
  v14 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v15 = self->_heightConstraint;
  v75[21] = v14;
  v75[22] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:23];
  [v51 activateConstraints:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  titleSubtitleLayoutGuide = self->_titleSubtitleLayoutGuide;
  self->_titleSubtitleLayoutGuide = v3;

  [(MUPlaceAppLockupView *)self addLayoutGuide:self->_titleSubtitleLayoutGuide];
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  appLockupImageView = self->_appLockupImageView;
  self->_appLockupImageView = v10;

  [(UIImageView *)self->_appLockupImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_appLockupImageView setAccessibilityIdentifier:@"PlaceAppLockupImage"];
  [(UIImageView *)self->_appLockupImageView setClipsToBounds:1];
  [(MUPlaceAppLockupView *)self addSubview:self->_appLockupImageView];
  v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v12;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v15 = [v14 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(UILabel *)self->_titleLabel setFont:v15];

  [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"PlaceAppLockupTitle"];
  [(MUPlaceAppLockupView *)self addSubview:self->_titleLabel];
  v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v16;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:secondaryLabelColor];

  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_subtitleLabel setFont:v19];

  [(UILabel *)self->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"PlaceAppLockupSubtitle"];
  [(MUPlaceAppLockupView *)self addSubview:self->_subtitleLabel];
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v21 = +[MUInfoCardStyle tokenBackgroundColor];
  background = [filledButtonConfiguration background];
  [background setBackgroundColor:v21];

  [filledButtonConfiguration setCornerStyle:4];
  [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_324];
  v23 = [MEMORY[0x1E69DC738] buttonWithType:0];
  punchoutButton = self->_punchoutButton;
  self->_punchoutButton = v23;

  [(UIButton *)self->_punchoutButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_punchoutButton setConfiguration:filledButtonConfiguration];
  LODWORD(v25) = 1148846080;
  [(UIButton *)self->_punchoutButton setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [(UIButton *)self->_punchoutButton setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [(UIButton *)self->_punchoutButton setContentHuggingPriority:0 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [(UIButton *)self->_punchoutButton setContentHuggingPriority:1 forAxis:v28];
  [(UIButton *)self->_punchoutButton addTarget:self action:sel__punchOutButtonSelected forControlEvents:64];
  [(UIButton *)self->_punchoutButton setAccessibilityIdentifier:@"PlaceAppLockupPunchoutButton"];
  [(MUPlaceAppLockupView *)self addSubview:self->_punchoutButton];
  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel__punchOutButtonSelected];
  v29 = objc_opt_self();
  v33[0] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v31 = [(MUPlaceAppLockupView *)self registerForTraitChanges:v30 withAction:sel__updateHeightConstraint];

  v32 = *MEMORY[0x1E69E9840];
}

id __38__MUPlaceAppLockupView__setupSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v4 = [v3 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  v5 = +[MUInfoCardStyle tintColor];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v6 = [v2 copy];

  return v6;
}

- (MUPlaceAppLockupView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPlaceAppLockupView;
  v3 = [(MUPlaceAppLockupView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceAppLockupView *)v3 setAccessibilityIdentifier:@"PlaceAppLockup"];
    [(MUPlaceAppLockupView *)v4 _setupSubviews];
    [(MUPlaceAppLockupView *)v4 _setupConstraints];
  }

  return v4;
}

+ (CGSize)appIconSize
{
  v2 = 48.0;
  v3 = 48.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end