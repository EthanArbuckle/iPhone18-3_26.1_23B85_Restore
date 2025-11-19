@interface MUDisclosureActionRowView
- (MUDisclosureActionRowView)initWithFrame:(CGRect)a3;
- (double)_imageWidth;
- (void)_buttonCellTapped;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)setViewModel:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation MUDisclosureActionRowView

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUDisclosureActionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesCancelled:a3 withEvent:a4];
  [(MUPlaceSectionRowView *)self setSelected:0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUDisclosureActionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesEnded:a3 withEvent:a4];
  [(MUPlaceSectionRowView *)self setSelected:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUDisclosureActionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesBegan:a3 withEvent:a4];
  [(MUPlaceSectionRowView *)self setSelected:1];
}

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_titleLabel setFont:v3];

  [(MUDisclosureActionRowView *)self _imageWidth];
  imageWidthConstraint = self->_imageWidthConstraint;

  [(NSLayoutConstraint *)imageWidthConstraint setConstant:?];
}

- (void)_buttonCellTapped
{
  v3 = [(MUDisclosureActionViewModelProviding *)self->_viewModel actionBlock];

  if (v3)
  {
    v4 = [(MUDisclosureActionViewModelProviding *)self->_viewModel actionBlock];
    v4[2](v4, self);
  }
}

- (void)_updateAppearance
{
  v3 = [(MUDisclosureActionViewModelProviding *)self->_viewModel titleString];
  [(UILabel *)self->_titleLabel set_mapsui_text:v3];

  v4 = [(MUDisclosureActionViewModelProviding *)self->_viewModel image];
  [(UIImageView *)self->_imageView setImage:v4];

  v5 = [(MUDisclosureActionViewModelProviding *)self->_viewModel imageTintColor];
  [(UIImageView *)self->_imageView setTintColor:v5];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(MUDisclosureActionRowView *)self _updateAppearance];
    v5 = v6;
  }
}

- (double)_imageWidth
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v2 _scaledValueForValue:30.0];
  v4 = v3;

  return v4;
}

- (void)_setupConstraints
{
  v48[14] = *MEMORY[0x1E69E9840];
  v3 = [(UIImageView *)self->_imageView widthAnchor];
  [(MUDisclosureActionRowView *)self _imageWidth];
  v4 = [v3 constraintEqualToConstant:?];
  imageWidthConstraint = self->_imageWidthConstraint;
  self->_imageWidthConstraint = v4;

  v33 = MEMORY[0x1E696ACD8];
  v48[0] = self->_imageWidthConstraint;
  v47 = [(UIImageView *)self->_imageView heightAnchor];
  v46 = [(UIImageView *)self->_imageView widthAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v48[1] = v45;
  v44 = [(UIImageView *)self->_imageView leadingAnchor];
  v43 = [(MUDisclosureActionRowView *)self leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:16.0];
  v48[2] = v42;
  v41 = [(UIImageView *)self->_imageView centerYAnchor];
  v40 = [(UILayoutGuide *)self->_titleValueLayoutGuide centerYAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v48[3] = v39;
  v38 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  v37 = [(UIImageView *)self->_imageView trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:10.0];
  v48[4] = v36;
  v35 = [(UILayoutGuide *)self->_titleValueLayoutGuide topAnchor];
  v34 = [(MUDisclosureActionRowView *)self topAnchor];
  v32 = [v35 constraintEqualToAnchor:v34 constant:16.0];
  v48[5] = v32;
  v31 = [(UILayoutGuide *)self->_titleValueLayoutGuide bottomAnchor];
  v30 = [(MUDisclosureActionRowView *)self bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:-16.0];
  v48[6] = v29;
  v28 = [(UIImageView *)self->_disclosureView leadingAnchor];
  v27 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:8.0];
  v48[7] = v26;
  v25 = [(UIImageView *)self->_disclosureView trailingAnchor];
  v24 = [(MUDisclosureActionRowView *)self trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:-16.0];
  v48[8] = v23;
  v22 = [(UIImageView *)self->_disclosureView centerYAnchor];
  v21 = [(UILayoutGuide *)self->_titleValueLayoutGuide centerYAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v48[9] = v20;
  v19 = [(UILabel *)self->_titleLabel leadingAnchor];
  v18 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v48[10] = v17;
  v6 = [(UILabel *)self->_titleLabel topAnchor];
  v7 = [(UILayoutGuide *)self->_titleValueLayoutGuide topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v48[11] = v8;
  v9 = [(UILabel *)self->_titleLabel trailingAnchor];
  v10 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v48[12] = v11;
  v12 = [(UILabel *)self->_titleLabel bottomAnchor];
  v13 = [(UILayoutGuide *)self->_titleValueLayoutGuide bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v48[13] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:14];
  [v33 activateConstraints:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  titleValueLayoutGuide = self->_titleValueLayoutGuide;
  self->_titleValueLayoutGuide = v3;

  [(MUDisclosureActionRowView *)self addLayoutGuide:self->_titleValueLayoutGuide];
  v5 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_titleLabel setFont:v8];

  v9 = +[MUInfoCardStyle textColor];
  [(UILabel *)self->_titleLabel setTextColor:v9];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(MUDisclosureActionRowView *)self addSubview:self->_titleLabel];
  v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  imageView = self->_imageView;
  self->_imageView = v11;

  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"ImageView"];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [(UIImageView *)self->_imageView setBackgroundColor:v13];

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUDisclosureActionRowView *)self addSubview:self->_imageView];
  v14 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v7];
  v15 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v14];
  v17 = [v15 initWithImage:v16];
  disclosureView = self->_disclosureView;
  self->_disclosureView = v17;

  [(UIImageView *)self->_disclosureView setAccessibilityIdentifier:@"DisclosureView"];
  [(UIImageView *)self->_disclosureView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)self->_disclosureView setTintColor:v19];

  LODWORD(v20) = 1148846080;
  [(UIImageView *)self->_disclosureView setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [(UIImageView *)self->_disclosureView setContentHuggingPriority:1 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [(UIImageView *)self->_disclosureView setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [(UIImageView *)self->_disclosureView setContentCompressionResistancePriority:1 forAxis:v23];
  [(MUDisclosureActionRowView *)self addSubview:self->_disclosureView];
  [(MKViewWithHairline *)self setLeftHairlineInset:56.0];
  v24 = objc_alloc_init(MEMORY[0x1E69DD060]);
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v24;

  [(MUDisclosureActionRowView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer addTarget:self action:sel__buttonCellTapped];
  [(UIView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:sel__buttonCellTapped];
  v26 = objc_opt_self();
  v30[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v28 = [(MUDisclosureActionRowView *)self registerForTraitChanges:v27 withAction:sel__updateForPlatterAvailability];

  v29 = *MEMORY[0x1E69E9840];
}

- (MUDisclosureActionRowView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MUDisclosureActionRowView;
  v3 = [(MUPlaceSectionRowView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUDisclosureActionRowView *)v3 _setupSubviews];
    [(MUDisclosureActionRowView *)v4 _setupConstraints];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

@end