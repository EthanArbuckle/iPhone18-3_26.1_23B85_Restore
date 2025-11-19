@interface HKElectrocardiogramInfoView
- (HKElectrocardiogramInfoView)initWithFrame:(CGRect)a3;
- (NSString)bodyText;
- (NSString)heartRateText;
- (id)_bodyView;
- (id)_heartRateView;
- (void)_addSubviews;
- (void)setBodyText:(id)a3;
- (void)setHeartRateText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation HKElectrocardiogramInfoView

- (HKElectrocardiogramInfoView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramInfoView;
  v3 = [(HKElectrocardiogramInfoView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCC10] _hkecg_heartRateLabel];
    heartRateLabel = v3->_heartRateLabel;
    v3->_heartRateLabel = v4;

    v6 = MEMORY[0x1E696AEC0];
    v7 = [(HKElectrocardiogramInfoView *)v3 suffixForElementWithString:@"AvgHR"];
    v8 = [v6 healthAccessibilityIdentifier:1 suffix:v7];
    [(UILabel *)v3->_heartRateLabel setAccessibilityIdentifier:v8];

    v9 = [MEMORY[0x1E69DCC10] _hkecg_bodyLabel];
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v9;

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
  v2 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setHeartRateText:(id)a3
{
  v4 = a3;
  v5 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  [v5 setText:v4];

  v7 = [(HKElectrocardiogramInfoView *)self arrangedSubviews];
  v6 = [v7 objectAtIndexedSubscript:0];
  [v6 setHidden:v4 == 0];
}

- (NSString)bodyText
{
  v2 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setBodyText:(id)a3
{
  v4 = a3;
  v5 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  [v5 setText:v4];

  v7 = [(HKElectrocardiogramInfoView *)self arrangedSubviews];
  v6 = [v7 objectAtIndexedSubscript:1];
  [v6 setHidden:v4 == 0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKElectrocardiogramInfoView;
  [(HKElectrocardiogramInfoView *)&v4 traitCollectionDidChange:a3];
  [(HKElectrocardiogramInfoView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = objc_alloc(MEMORY[0x1E69DCA40]);
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [v3 initForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 scaledValueForValue:10.0];
  v7 = v6;
  v8 = [(HKElectrocardiogramInfoView *)self heartRateLabelLeadingConstraint];
  [v8 setConstant:v7];

  v9 = [(HKElectrocardiogramInfoView *)self heartRateFirstBaselineConstraint];

  if (v9)
  {
    [v5 scaledValueForValue:40.0];
    v11 = v10;
    v12 = [(HKElectrocardiogramInfoView *)self heartRateFirstBaselineConstraint];
    [v12 setConstant:v11];
  }

  v13 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v4];
  [v13 lineHeight];
  v15 = v14;
  v16 = [(HKElectrocardiogramInfoView *)self heartImageViewHeightConstraint];
  [v16 setConstant:v15];

  v17.receiver = self;
  v17.super_class = HKElectrocardiogramInfoView;
  [(HKElectrocardiogramInfoView *)&v17 updateConstraints];
}

- (void)_addSubviews
{
  [(HKElectrocardiogramInfoView *)self setAxis:1];
  [(HKElectrocardiogramInfoView *)self setDistribution:0];
  [(HKElectrocardiogramInfoView *)self setAlignment:0];
  v3 = [(HKElectrocardiogramInfoView *)self _heartRateView];
  [(HKElectrocardiogramInfoView *)self addArrangedSubview:v3];

  v4 = [(HKElectrocardiogramInfoView *)self _bodyView];
  [(HKElectrocardiogramInfoView *)self addArrangedSubview:v4];
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
  v8 = [v47 color];
  [v5 setTintColor:v8];

  [v3 addSubview:v5];
  LODWORD(v9) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v9];
  v10 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  [v3 addSubview:v10];

  v11 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  v12 = [v11 leadingAnchor];
  v13 = [v5 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [(HKElectrocardiogramInfoView *)self setHeartRateLabelLeadingConstraint:v14];

  v15 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  v16 = [v15 firstBaselineAnchor];
  v17 = [v3 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [(HKElectrocardiogramInfoView *)self setHeartRateFirstBaselineConstraint:v18];

  v19 = [v5 heightAnchor];
  [v4 lineHeight];
  v20 = [v19 constraintEqualToConstant:?];
  [(HKElectrocardiogramInfoView *)self setHeartImageViewHeightConstraint:v20];

  v36 = MEMORY[0x1E696ACD8];
  v45 = [(HKElectrocardiogramInfoView *)self heartRateFirstBaselineConstraint];
  v48[0] = v45;
  v44 = [(HKElectrocardiogramInfoView *)self heartImageViewHeightConstraint];
  v48[1] = v44;
  v42 = [v5 centerYAnchor];
  v43 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  v41 = [v43 centerYAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v48[2] = v40;
  v21 = v3;
  v38 = [v3 bottomAnchor];
  v39 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  v37 = [v39 bottomAnchor];
  v35 = [v38 constraintEqualToAnchor:v37 constant:10.0];
  v48[3] = v35;
  v34 = [v5 leadingAnchor];
  v33 = [v3 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v48[4] = v32;
  v31 = [v5 widthAnchor];
  v22 = [v5 heightAnchor];
  v23 = [v31 constraintEqualToAnchor:v22];
  v48[5] = v23;
  v24 = [(HKElectrocardiogramInfoView *)self heartRateLabelLeadingConstraint];
  v48[6] = v24;
  v25 = [v21 trailingAnchor];
  v26 = [(HKElectrocardiogramInfoView *)self heartRateLabel];
  v27 = [v26 trailingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
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
  v5 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  [v3 addSubview:v5];

  v23 = MEMORY[0x1E696ACD8];
  v34 = [v3 topAnchor];
  v33 = [v4 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v35[0] = v32;
  v31 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  v30 = [v31 topAnchor];
  v27 = v4;
  v29 = [v4 bottomAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:10.0];
  v35[1] = v28;
  v25 = [v3 bottomAnchor];
  v26 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  v24 = [v26 bottomAnchor];
  v22 = [v25 constraintEqualToAnchor:v24 constant:10.0];
  v35[2] = v22;
  v21 = [v3 leadingAnchor];
  v20 = [v4 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v35[3] = v19;
  v18 = [v4 trailingAnchor];
  v17 = [v3 trailingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v35[4] = v16;
  v6 = [v3 leadingAnchor];
  v7 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v35[5] = v9;
  v10 = [v3 trailingAnchor];
  v11 = [(HKElectrocardiogramInfoView *)self bodyLabel];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintGreaterThanOrEqualToAnchor:v12];
  v35[6] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:7];
  [v23 activateConstraints:v14];

  [v3 setHidden:1];

  return v3;
}

@end