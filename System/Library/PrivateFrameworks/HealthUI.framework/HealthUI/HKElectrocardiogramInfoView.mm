@interface HKElectrocardiogramInfoView
- (HKElectrocardiogramInfoView)initWithFrame:(CGRect)frame;
- (NSString)bodyText;
- (NSString)heartRateText;
- (id)_bodyView;
- (id)_heartRateView;
- (void)_addSubviews;
- (void)setBodyText:(id)text;
- (void)setHeartRateText:(id)text;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation HKElectrocardiogramInfoView

- (HKElectrocardiogramInfoView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramInfoView;
  v3 = [(HKElectrocardiogramInfoView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    _hkecg_heartRateLabel = [MEMORY[0x1E69DCC10] _hkecg_heartRateLabel];
    heartRateLabel = v3->_heartRateLabel;
    v3->_heartRateLabel = _hkecg_heartRateLabel;

    v6 = MEMORY[0x1E696AEC0];
    v7 = [(HKElectrocardiogramInfoView *)v3 suffixForElementWithString:@"AvgHR"];
    v8 = [v6 healthAccessibilityIdentifier:1 suffix:v7];
    [(UILabel *)v3->_heartRateLabel setAccessibilityIdentifier:v8];

    _hkecg_bodyLabel = [MEMORY[0x1E69DCC10] _hkecg_bodyLabel];
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = _hkecg_bodyLabel;

    v11 = MEMORY[0x1E696AEC0];
    v12 = [(HKElectrocardiogramInfoView *)v3 suffixForElementWithString:@"Classification.Description"];
    v13 = [v11 healthAccessibilityIdentifier:1 suffix:v12];
    [(UILabel *)v3->_bodyLabel setAccessibilityIdentifier:v13];

    [(HKElectrocardiogramInfoView *)v3 _addSubviews];
  }

  return v3;
}

- (NSString)heartRateText
{
  heartRateLabel = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  text = [heartRateLabel text];

  return text;
}

- (void)setHeartRateText:(id)text
{
  textCopy = text;
  heartRateLabel = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  [heartRateLabel setText:textCopy];

  arrangedSubviews = [(HKElectrocardiogramInfoView *)self arrangedSubviews];
  v6 = [arrangedSubviews objectAtIndexedSubscript:0];
  [v6 setHidden:textCopy == 0];
}

- (NSString)bodyText
{
  bodyLabel = [(HKElectrocardiogramInfoView *)self bodyLabel];
  text = [bodyLabel text];

  return text;
}

- (void)setBodyText:(id)text
{
  textCopy = text;
  bodyLabel = [(HKElectrocardiogramInfoView *)self bodyLabel];
  [bodyLabel setText:textCopy];

  arrangedSubviews = [(HKElectrocardiogramInfoView *)self arrangedSubviews];
  v6 = [arrangedSubviews objectAtIndexedSubscript:1];
  [v6 setHidden:textCopy == 0];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HKElectrocardiogramInfoView;
  [(HKElectrocardiogramInfoView *)&v4 traitCollectionDidChange:change];
  [(HKElectrocardiogramInfoView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = objc_alloc(MEMORY[0x1E69DCA40]);
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [v3 initForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 scaledValueForValue:10.0];
  v7 = v6;
  heartRateLabelLeadingConstraint = [(HKElectrocardiogramInfoView *)self heartRateLabelLeadingConstraint];
  [heartRateLabelLeadingConstraint setConstant:v7];

  heartRateFirstBaselineConstraint = [(HKElectrocardiogramInfoView *)self heartRateFirstBaselineConstraint];

  if (heartRateFirstBaselineConstraint)
  {
    [v5 scaledValueForValue:40.0];
    v11 = v10;
    heartRateFirstBaselineConstraint2 = [(HKElectrocardiogramInfoView *)self heartRateFirstBaselineConstraint];
    [heartRateFirstBaselineConstraint2 setConstant:v11];
  }

  v13 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v4];
  [v13 lineHeight];
  v15 = v14;
  heartImageViewHeightConstraint = [(HKElectrocardiogramInfoView *)self heartImageViewHeightConstraint];
  [heartImageViewHeightConstraint setConstant:v15];

  v17.receiver = self;
  v17.super_class = HKElectrocardiogramInfoView;
  [(HKElectrocardiogramInfoView *)&v17 updateConstraints];
}

- (void)_addSubviews
{
  [(HKElectrocardiogramInfoView *)self setAxis:1];
  [(HKElectrocardiogramInfoView *)self setDistribution:0];
  [(HKElectrocardiogramInfoView *)self setAlignment:0];
  _heartRateView = [(HKElectrocardiogramInfoView *)self _heartRateView];
  [(HKElectrocardiogramInfoView *)self addArrangedSubview:_heartRateView];

  _bodyView = [(HKElectrocardiogramInfoView *)self _bodyView];
  [(HKElectrocardiogramInfoView *)self addArrangedSubview:_bodyView];
}

- (id)_heartRateView
{
  v48[8] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v46 = v4;
  v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:v4];
  [v5 setPreferredSymbolConfiguration:v6];

  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.fill"];
  [v5 setImage:v7];

  [v5 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setContentMode:1];
  v47 = [HKDisplayCategory categoryWithID:11];
  color = [v47 color];
  [v5 setTintColor:color];

  [v3 addSubview:v5];
  LODWORD(v9) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v9];
  heartRateLabel = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  [v3 addSubview:heartRateLabel];

  heartRateLabel2 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  leadingAnchor = [heartRateLabel2 leadingAnchor];
  trailingAnchor = [v5 trailingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
  [(HKElectrocardiogramInfoView *)self setHeartRateLabelLeadingConstraint:v14];

  heartRateLabel3 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  firstBaselineAnchor = [heartRateLabel3 firstBaselineAnchor];
  topAnchor = [v3 topAnchor];
  v18 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  [(HKElectrocardiogramInfoView *)self setHeartRateFirstBaselineConstraint:v18];

  heightAnchor = [v5 heightAnchor];
  [v4 lineHeight];
  v20 = [heightAnchor constraintEqualToConstant:?];
  [(HKElectrocardiogramInfoView *)self setHeartImageViewHeightConstraint:v20];

  v36 = MEMORY[0x1E696ACD8];
  heartRateFirstBaselineConstraint = [(HKElectrocardiogramInfoView *)self heartRateFirstBaselineConstraint];
  v48[0] = heartRateFirstBaselineConstraint;
  heartImageViewHeightConstraint = [(HKElectrocardiogramInfoView *)self heartImageViewHeightConstraint];
  v48[1] = heartImageViewHeightConstraint;
  centerYAnchor = [v5 centerYAnchor];
  heartRateLabel4 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  centerYAnchor2 = [heartRateLabel4 centerYAnchor];
  v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v48[2] = v40;
  v21 = v3;
  bottomAnchor = [v3 bottomAnchor];
  heartRateLabel5 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  bottomAnchor2 = [heartRateLabel5 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  v48[3] = v35;
  leadingAnchor2 = [v5 leadingAnchor];
  leadingAnchor3 = [v3 leadingAnchor];
  v32 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v48[4] = v32;
  widthAnchor = [v5 widthAnchor];
  heightAnchor2 = [v5 heightAnchor];
  v23 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v48[5] = v23;
  heartRateLabelLeadingConstraint = [(HKElectrocardiogramInfoView *)self heartRateLabelLeadingConstraint];
  v48[6] = heartRateLabelLeadingConstraint;
  trailingAnchor2 = [v21 trailingAnchor];
  heartRateLabel6 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  trailingAnchor3 = [heartRateLabel6 trailingAnchor];
  v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v48[7] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:8];
  [v36 activateConstraints:v29];

  [v21 setHidden:1];

  return v21;
}

- (id)_bodyView
{
  v35[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[HKSeparatorLineView _hkecg_separatorView];
  [v3 addSubview:?];
  bodyLabel = [(HKElectrocardiogramInfoView *)self bodyLabel];
  [v3 addSubview:bodyLabel];

  v23 = MEMORY[0x1E696ACD8];
  topAnchor = [v3 topAnchor];
  topAnchor2 = [v4 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v35[0] = v32;
  bodyLabel2 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  topAnchor3 = [bodyLabel2 topAnchor];
  v27 = v4;
  bottomAnchor = [v4 bottomAnchor];
  v28 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
  v35[1] = v28;
  bottomAnchor2 = [v3 bottomAnchor];
  bodyLabel3 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  bottomAnchor3 = [bodyLabel3 bottomAnchor];
  v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:10.0];
  v35[2] = v22;
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v35[3] = v19;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [v3 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v35[4] = v16;
  leadingAnchor3 = [v3 leadingAnchor];
  bodyLabel4 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  leadingAnchor4 = [bodyLabel4 leadingAnchor];
  v9 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v35[5] = v9;
  trailingAnchor3 = [v3 trailingAnchor];
  bodyLabel5 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  trailingAnchor4 = [bodyLabel5 trailingAnchor];
  v13 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
  v35[6] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:7];
  [v23 activateConstraints:v14];

  [v3 setHidden:1];

  return v3;
}

@end