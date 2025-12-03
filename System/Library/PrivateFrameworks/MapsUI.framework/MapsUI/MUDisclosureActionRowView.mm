@interface MUDisclosureActionRowView
- (MUDisclosureActionRowView)initWithFrame:(CGRect)frame;
- (double)_imageWidth;
- (void)_buttonCellTapped;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)setViewModel:(id)model;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation MUDisclosureActionRowView

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUDisclosureActionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesCancelled:cancelled withEvent:event];
  [(MUPlaceSectionRowView *)self setSelected:0];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUDisclosureActionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesEnded:ended withEvent:event];
  [(MUPlaceSectionRowView *)self setSelected:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUDisclosureActionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesBegan:began withEvent:event];
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
  actionBlock = [(MUDisclosureActionViewModelProviding *)self->_viewModel actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(MUDisclosureActionViewModelProviding *)self->_viewModel actionBlock];
    actionBlock2[2](actionBlock2, self);
  }
}

- (void)_updateAppearance
{
  titleString = [(MUDisclosureActionViewModelProviding *)self->_viewModel titleString];
  [(UILabel *)self->_titleLabel set_mapsui_text:titleString];

  image = [(MUDisclosureActionViewModelProviding *)self->_viewModel image];
  [(UIImageView *)self->_imageView setImage:image];

  imageTintColor = [(MUDisclosureActionViewModelProviding *)self->_viewModel imageTintColor];
  [(UIImageView *)self->_imageView setTintColor:imageTintColor];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(MUDisclosureActionRowView *)self _updateAppearance];
    modelCopy = v6;
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
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  [(MUDisclosureActionRowView *)self _imageWidth];
  v4 = [widthAnchor constraintEqualToConstant:?];
  imageWidthConstraint = self->_imageWidthConstraint;
  self->_imageWidthConstraint = v4;

  v33 = MEMORY[0x1E696ACD8];
  v48[0] = self->_imageWidthConstraint;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_imageView widthAnchor];
  v45 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v48[1] = v45;
  leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(MUDisclosureActionRowView *)self leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v48[2] = v42;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [(UILayoutGuide *)self->_titleValueLayoutGuide centerYAnchor];
  v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v48[3] = v39;
  leadingAnchor3 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v48[4] = v36;
  topAnchor = [(UILayoutGuide *)self->_titleValueLayoutGuide topAnchor];
  topAnchor2 = [(MUDisclosureActionRowView *)self topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v48[5] = v32;
  bottomAnchor = [(UILayoutGuide *)self->_titleValueLayoutGuide bottomAnchor];
  bottomAnchor2 = [(MUDisclosureActionRowView *)self bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  v48[6] = v29;
  leadingAnchor4 = [(UIImageView *)self->_disclosureView leadingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v26 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:8.0];
  v48[7] = v26;
  trailingAnchor3 = [(UIImageView *)self->_disclosureView trailingAnchor];
  trailingAnchor4 = [(MUDisclosureActionRowView *)self trailingAnchor];
  v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v48[8] = v23;
  centerYAnchor3 = [(UIImageView *)self->_disclosureView centerYAnchor];
  centerYAnchor4 = [(UILayoutGuide *)self->_titleValueLayoutGuide centerYAnchor];
  v20 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v48[9] = v20;
  leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor6 = [(UILayoutGuide *)self->_titleValueLayoutGuide leadingAnchor];
  v17 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v48[10] = v17;
  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor4 = [(UILayoutGuide *)self->_titleValueLayoutGuide topAnchor];
  v8 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v48[11] = v8;
  trailingAnchor5 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor6 = [(UILayoutGuide *)self->_titleValueLayoutGuide trailingAnchor];
  v11 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v48[12] = v11;
  bottomAnchor3 = [(UILabel *)self->_titleLabel bottomAnchor];
  bottomAnchor4 = [(UILayoutGuide *)self->_titleValueLayoutGuide bottomAnchor];
  v14 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
  _mapsui_defaultLabel = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = _mapsui_defaultLabel;

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UIImageView *)self->_imageView setBackgroundColor:clearColor];

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
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)self->_disclosureView setTintColor:tertiaryLabelColor];

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

- (MUDisclosureActionRowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MUDisclosureActionRowView;
  v3 = [(MUPlaceSectionRowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUDisclosureActionRowView *)v3 _setupSubviews];
    [(MUDisclosureActionRowView *)v4 _setupConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

@end