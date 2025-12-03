@interface MUPunchoutView
- (CGSize)intrinsicContentSize;
- (MUPunchoutView)initWithFrame:(CGRect)frame;
- (id)_attributedStringFromSymbol;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateLabelsWithAlpha:(double)alpha;
- (void)beginAnimatingActivityIndicator;
- (void)endAnimatingActivityIndicatorWithError:(id)error;
- (void)setViewModel:(id)model;
@end

@implementation MUPunchoutView

- (void)_updateAppearance
{
  _attributedStringFromSymbol = [(MUPunchoutView *)self _attributedStringFromSymbol];
  [(MULabelViewProtocol *)self->_moreOnLabel setAttributedText:_attributedStringFromSymbol];

  punchoutText = [(MUPunchoutViewModel *)self->_viewModel punchoutText];
  [(UILabel *)self->_vendorNameLabel setText:punchoutText];

  menu = [(MUPunchoutViewModel *)self->_viewModel menu];
  [(UIButton *)self->_menuButton setMenu:menu];

  menu2 = [(MUPunchoutViewModel *)self->_viewModel menu];
  [(UIButton *)self->_menuButton setHidden:menu2 == 0];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(MUPunchoutView *)self _updateAppearance];
    modelCopy = v6;
  }
}

- (void)_updateLabelsWithAlpha:(double)alpha
{
  [(MULabelViewProtocol *)self->_moreOnLabel setAlpha:?];
  vendorNameLabel = self->_vendorNameLabel;

  [(UILabel *)vendorNameLabel setAlpha:alpha];
}

- (void)endAnimatingActivityIndicatorWithError:(id)error
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];

  [(MUPunchoutView *)self _updateLabelsWithAlpha:1.0];
}

- (void)beginAnimatingActivityIndicator
{
  v12[2] = *MEMORY[0x1E69E9840];
  [(MUPunchoutView *)self _updateLabelsWithAlpha:0.0];
  [(MUPunchoutView *)self addSubview:self->_spinner];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  v3 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  centerXAnchor2 = [(MUPunchoutView *)self centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v12[0] = v6;
  centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  centerYAnchor2 = [(MUPunchoutView *)self centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v3 activateConstraints:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (CGSize)intrinsicContentSize
{
  [objc_opt_class() _intrinsicWidth];
  v3 = *MEMORY[0x1E69DE788];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_attributedStringFromSymbol
{
  v18[1] = *MEMORY[0x1E69E9840];
  symbolName = [(MUPunchoutViewModel *)self->_viewModel symbolName];
  v4 = [symbolName length];

  if (v4)
  {
    symbolName2 = [(MUPunchoutViewModel *)self->_viewModel symbolName];
  }

  else
  {
    symbolName2 = @"arrow.up.forward.fill";
  }

  v6 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:symbolName2];
  v7 = [v6 imageWithRenderingMode:2];

  v8 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v8 setImage:v7];
  v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
  v10 = [v9 mutableCopy];

  v17 = *MEMORY[0x1E69DB648];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v12 = [v11 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v10 addAttributes:v13 range:{0, objc_msgSend(v10, "length")}];

  v14 = [v10 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_setupConstraints
{
  v45[1] = *MEMORY[0x1E69E9840];
  v30 = MEMORY[0x1E696ACD8];
  v42 = [[MUEdgeLayout alloc] initWithItem:self->_menuButton container:self];
  v45[0] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  centerYAnchor = [(UILayoutGuide *)self->_layoutGuide centerYAnchor];
  centerYAnchor2 = [(MUPunchoutView *)self centerYAnchor];
  v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v44[0] = v39;
  leadingAnchor = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  leadingAnchor2 = [(MUPunchoutView *)self leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v44[1] = v36;
  trailingAnchor = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  trailingAnchor2 = [(MUPunchoutView *)self trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v44[2] = v33;
  topAnchor = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  topAnchor2 = [(MUPunchoutView *)self topAnchor];
  v29 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v44[3] = v29;
  bottomAnchor = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  bottomAnchor2 = [(MUPunchoutView *)self bottomAnchor];
  v26 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v44[4] = v26;
  leadingAnchor3 = [(MULabelViewProtocol *)self->_moreOnLabel leadingAnchor];
  leadingAnchor4 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v44[5] = v23;
  topAnchor3 = [(MULabelViewProtocol *)self->_moreOnLabel topAnchor];
  topAnchor4 = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v44[6] = v20;
  trailingAnchor3 = [(MULabelViewProtocol *)self->_moreOnLabel trailingAnchor];
  trailingAnchor4 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v44[7] = v17;
  bottomAnchor3 = [(MULabelViewProtocol *)self->_moreOnLabel bottomAnchor];
  topAnchor5 = [(UILabel *)self->_vendorNameLabel topAnchor];
  v14 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:-5.0];
  v44[8] = v14;
  leadingAnchor5 = [(UILabel *)self->_vendorNameLabel leadingAnchor];
  leadingAnchor6 = [(MULabelViewProtocol *)self->_moreOnLabel leadingAnchor];
  v5 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v44[9] = v5;
  trailingAnchor5 = [(UILabel *)self->_vendorNameLabel trailingAnchor];
  trailingAnchor6 = [(MULabelViewProtocol *)self->_moreOnLabel trailingAnchor];
  v8 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v44[10] = v8;
  bottomAnchor4 = [(UILabel *)self->_vendorNameLabel bottomAnchor];
  bottomAnchor5 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v11 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v44[11] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:12];
  [v30 _mapsui_activateLayouts:v43 constraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v3 = [MUInfoCardStyle labelForProminence:1];
  moreOnLabel = self->_moreOnLabel;
  self->_moreOnLabel = v3;

  [(MULabelViewProtocol *)self->_moreOnLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[MUInfoCardStyle tintColor];
  [(MULabelViewProtocol *)self->_moreOnLabel setTextColor:v5];

  [(MULabelViewProtocol *)self->_moreOnLabel setTextAlignment:1];
  [(MULabelViewProtocol *)self->_moreOnLabel setAccessibilityIdentifier:@"ActionLabel"];
  [(MUPunchoutView *)self addSubview:self->_moreOnLabel];
  _mapsui_defaultLabel = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
  vendorNameLabel = self->_vendorNameLabel;
  self->_vendorNameLabel = _mapsui_defaultLabel;

  [(UILabel *)self->_vendorNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_vendorNameLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_vendorNameLabel setNumberOfLines:0];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v9 = [v8 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];
  [(UILabel *)self->_vendorNameLabel setFont:v9];

  v10 = +[MUInfoCardStyle tintColor];
  [(UILabel *)self->_vendorNameLabel setTextColor:v10];

  [(UILabel *)self->_vendorNameLabel setTextAlignment:1];
  [(UILabel *)self->_vendorNameLabel setAccessibilityIdentifier:@"TitleLabel"];
  [(MUPunchoutView *)self addSubview:self->_vendorNameLabel];
  v11 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  layoutGuide = self->_layoutGuide;
  self->_layoutGuide = v11;

  [(MUPunchoutView *)self addLayoutGuide:self->_layoutGuide];
  v13 = +[MUInfoCardStyle punchoutButtonPlatterColor];
  [(MUPunchoutView *)self setBackgroundColor:v13];

  v14 = objc_alloc(MEMORY[0x1E69DC638]);
  v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  spinner = self->_spinner;
  self->_spinner = v15;

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
  menuButton = self->_menuButton;
  self->_menuButton = v17;

  [(UIButton *)self->_menuButton setShowsMenuAsPrimaryAction:1];
  [(UIButton *)self->_menuButton setPreferredMenuElementOrder:2];
  [(UIButton *)self->_menuButton setHidden:1];
  [(UIButton *)self->_menuButton setAccessibilityIdentifier:@"MenuButton"];
  v19 = self->_menuButton;

  [(MUPunchoutView *)self addSubview:v19];
}

- (MUPunchoutView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPunchoutView;
  v3 = [(MUPunchoutView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPunchoutView *)v3 setAccessibilityIdentifier:@"PunchoutView"];
    [(MUPunchoutView *)v4 _setupSubviews];
    [(MUPunchoutView *)v4 _setupConstraints];
  }

  return v4;
}

@end