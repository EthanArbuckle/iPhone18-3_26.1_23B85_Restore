@interface MUPlaceAppLockupView
+ (CGSize)appIconSize;
- (MUPlaceAppLockupView)initWithFrame:(CGRect)a3;
- (MUPlaceAppLockupViewDelegate)delegate;
- (double)scaledHeight;
- (void)_punchOutButtonSelected;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateHeightConstraint;
- (void)setViewModel:(id)a3;
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
  v3 = [(MUAppLockupViewModel *)self->_viewModel titleText];
  [(UILabel *)self->_titleLabel setText:v3];

  v4 = [(MUAppLockupViewModel *)self->_viewModel subtitleText];
  [(UILabel *)self->_subtitleLabel setText:v4];

  punchoutButton = self->_punchoutButton;
  v6 = [(MUAppLockupViewModel *)self->_viewModel actionButtonText];
  [(UIButton *)punchoutButton setTitle:v6 forState:0];

  v7 = [(MUPlaceAppLockupView *)self window];
  v8 = [v7 screen];
  if (v8)
  {
    v9 = [(MUPlaceAppLockupView *)self window];
    v10 = [v9 screen];
    [v10 scale];
    v12 = v11;
  }

  else
  {
    v9 = [MEMORY[0x1E696F3B8] sharedInstance];
    [v9 screenScale];
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

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(MUPlaceAppLockupView *)self _updateAppearance];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  v75[23] = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceAppLockupView *)self heightAnchor];
  [(MUPlaceAppLockupView *)self scaledHeight];
  v4 = [v3 constraintEqualToConstant:?];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v4;

  v51 = MEMORY[0x1E696ACD8];
  v74 = [(UIImageView *)self->_appLockupImageView heightAnchor];
  v73 = [v74 constraintEqualToConstant:48.0];
  v75[0] = v73;
  v72 = [(UIImageView *)self->_appLockupImageView widthAnchor];
  v71 = [(UIImageView *)self->_appLockupImageView heightAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v75[1] = v70;
  v69 = [(UIImageView *)self->_appLockupImageView leadingAnchor];
  v68 = [(MUPlaceAppLockupView *)self leadingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68 constant:16.0];
  v75[2] = v67;
  v66 = [(UIImageView *)self->_appLockupImageView trailingAnchor];
  v65 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide leadingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65 constant:-10.0];
  v75[3] = v64;
  v63 = [(UIImageView *)self->_appLockupImageView topAnchor];
  v62 = [(MUPlaceAppLockupView *)self topAnchor];
  v61 = [v63 constraintGreaterThanOrEqualToAnchor:v62 constant:14.0];
  v75[4] = v61;
  v60 = [(UIImageView *)self->_appLockupImageView bottomAnchor];
  v59 = [(MUPlaceAppLockupView *)self bottomAnchor];
  v58 = [v60 constraintLessThanOrEqualToAnchor:v59 constant:-14.0];
  v75[5] = v58;
  v57 = [(UILabel *)self->_titleLabel leadingAnchor];
  v56 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v75[6] = v55;
  v54 = [(UILabel *)self->_titleLabel trailingAnchor];
  v53 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v75[7] = v52;
  v50 = [(UILabel *)self->_titleLabel topAnchor];
  v49 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide topAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v75[8] = v48;
  v47 = [(UILabel *)self->_titleLabel bottomAnchor];
  v46 = [(UILabel *)self->_subtitleLabel topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v75[9] = v45;
  v44 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v43 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v75[10] = v42;
  v41 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v40 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v75[11] = v39;
  v38 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v37 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide bottomAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v75[12] = v36;
  v35 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide topAnchor];
  v34 = [(MUPlaceAppLockupView *)self topAnchor];
  v33 = [v35 constraintGreaterThanOrEqualToAnchor:v34 constant:14.0];
  v75[13] = v33;
  v32 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide bottomAnchor];
  v31 = [(MUPlaceAppLockupView *)self bottomAnchor];
  v30 = [v32 constraintLessThanOrEqualToAnchor:v31 constant:-14.0];
  v75[14] = v30;
  v29 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide trailingAnchor];
  v28 = [(UIButton *)self->_punchoutButton leadingAnchor];
  v27 = [v29 constraintLessThanOrEqualToAnchor:v28 constant:-16.0];
  v75[15] = v27;
  v26 = [(UIButton *)self->_punchoutButton trailingAnchor];
  v25 = [(MUPlaceAppLockupView *)self trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:-16.0];
  v75[16] = v24;
  v23 = [(UIButton *)self->_punchoutButton topAnchor];
  v22 = [(MUPlaceAppLockupView *)self topAnchor];
  v21 = [v23 constraintGreaterThanOrEqualToAnchor:v22 constant:24.0];
  v75[17] = v21;
  v20 = [(UIButton *)self->_punchoutButton bottomAnchor];
  v19 = [(MUPlaceAppLockupView *)self bottomAnchor];
  v18 = [v20 constraintLessThanOrEqualToAnchor:v19 constant:-24.0];
  v75[18] = v18;
  v6 = [(UIImageView *)self->_appLockupImageView centerYAnchor];
  v7 = [(MUPlaceAppLockupView *)self centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v75[19] = v8;
  v9 = [(UILayoutGuide *)self->_titleSubtitleLayoutGuide centerYAnchor];
  v10 = [(MUPlaceAppLockupView *)self centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v75[20] = v11;
  v12 = [(UIButton *)self->_punchoutButton centerYAnchor];
  v13 = [(MUPlaceAppLockupView *)self centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
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
  v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v18];

  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_subtitleLabel setFont:v19];

  [(UILabel *)self->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"PlaceAppLockupSubtitle"];
  [(MUPlaceAppLockupView *)self addSubview:self->_subtitleLabel];
  v20 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v21 = +[MUInfoCardStyle tokenBackgroundColor];
  v22 = [v20 background];
  [v22 setBackgroundColor:v21];

  [v20 setCornerStyle:4];
  [v20 setTitleTextAttributesTransformer:&__block_literal_global_324];
  v23 = [MEMORY[0x1E69DC738] buttonWithType:0];
  punchoutButton = self->_punchoutButton;
  self->_punchoutButton = v23;

  [(UIButton *)self->_punchoutButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_punchoutButton setConfiguration:v20];
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

- (MUPlaceAppLockupView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUPlaceAppLockupView;
  v3 = [(MUPlaceAppLockupView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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