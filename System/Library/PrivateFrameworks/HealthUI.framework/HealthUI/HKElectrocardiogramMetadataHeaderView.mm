@interface HKElectrocardiogramMetadataHeaderView
- (HKElectrocardiogramMetadataHeaderView)initWithText:(id)text date:(id)date;
- (void)_setupUIWithText:(id)text date:(id)date;
@end

@implementation HKElectrocardiogramMetadataHeaderView

- (HKElectrocardiogramMetadataHeaderView)initWithText:(id)text date:(id)date
{
  textCopy = text;
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = HKElectrocardiogramMetadataHeaderView;
  v8 = [(HKElectrocardiogramMetadataHeaderView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(HKElectrocardiogramMetadataHeaderView *)v8 _setupUIWithText:textCopy date:dateCopy];
  }

  return v9;
}

- (void)_setupUIWithText:(id)text date:(id)date
{
  v6 = MEMORY[0x1E696AEC0];
  dateCopy = date;
  textCopy = text;
  v56 = [v6 healthAccessibilityIdentifier:1 suffix:@"SessionDetails"];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setText:textCopy];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v9 setTextColor:labelColor];

  [v9 setAdjustsFontForContentSizeCategory:1];
  [v9 setTextAlignment:4];
  [v9 setNumberOfLines:0];
  v11 = [MEMORY[0x1E69DB878] hk_preferredRoundedFontForTextStyle:*MEMORY[0x1E69DDDB8] additionalSymbolicTraits:2];
  [v9 setFont:v11];

  v12 = [v56 stringByAppendingString:@".Title"];
  [v9 setAccessibilityIdentifier:v12];

  [(HKElectrocardiogramMetadataHeaderView *)self addSubview:v9];
  topAnchor = [v9 topAnchor];
  topAnchor2 = [(HKElectrocardiogramMetadataHeaderView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 setActive:1];

  leadingAnchor = [v9 leadingAnchor];
  leadingAnchor2 = [(HKElectrocardiogramMetadataHeaderView *)self leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v18 setActive:1];

  v19 = [MEMORY[0x1E69DC738] buttonWithType:2];
  detailButton = self->_detailButton;
  self->_detailButton = v19;

  [(UIButton *)self->_detailButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_detailButton setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v21 = [v56 stringByAppendingString:@".InfoButton"];
  [(UIButton *)self->_detailButton setAccessibilityIdentifier:v21];

  [(HKElectrocardiogramMetadataHeaderView *)self addSubview:self->_detailButton];
  centerYAnchor = [(UIButton *)self->_detailButton centerYAnchor];
  topAnchor3 = [v9 topAnchor];
  font = [v9 font];
  [font lineHeight];
  v26 = [centerYAnchor constraintEqualToAnchor:topAnchor3 constant:v25 * 0.5];
  [v26 setActive:1];

  leadingAnchor3 = [(UIButton *)self->_detailButton leadingAnchor];
  trailingAnchor = [v9 trailingAnchor];
  v29 = [leadingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
  [v29 setActive:1];

  heightAnchor = [(UIButton *)self->_detailButton heightAnchor];
  widthAnchor = [(UIButton *)self->_detailButton widthAnchor];
  v32 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  [v32 setActive:1];

  trailingAnchor2 = [(HKElectrocardiogramMetadataHeaderView *)self trailingAnchor];
  trailingAnchor3 = [(UIButton *)self->_detailButton trailingAnchor];
  v35 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v35 setActive:1];

  v36 = HKDateFormatterFromTemplate(33);
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v36 setTimeZone:localTimeZone];

  v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = [v36 stringFromDate:dateCopy];

  [v38 setText:v39];
  [v38 setAdjustsFontForContentSizeCategory:1];
  [v38 setTextAlignment:4];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v38 setTextColor:secondaryLabelColor];

  [v38 setNumberOfLines:0];
  v41 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
  v42 = [MEMORY[0x1E69DB878] fontWithDescriptor:v41 size:0.0];
  [v38 setFont:v42];

  v43 = [v56 stringByAppendingString:@".Date"];
  [v38 setAccessibilityIdentifier:v43];

  [(HKElectrocardiogramMetadataHeaderView *)self addSubview:v38];
  topAnchor4 = [v38 topAnchor];
  bottomAnchor = [v9 bottomAnchor];
  v46 = [topAnchor4 constraintEqualToAnchor:bottomAnchor constant:2.0];
  [v46 setActive:1];

  bottomAnchor2 = [v38 bottomAnchor];
  bottomAnchor3 = [(HKElectrocardiogramMetadataHeaderView *)self bottomAnchor];
  v49 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v49 setActive:1];

  leadingAnchor4 = [v38 leadingAnchor];
  leadingAnchor5 = [(HKElectrocardiogramMetadataHeaderView *)self leadingAnchor];
  v52 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  [v52 setActive:1];

  trailingAnchor4 = [v38 trailingAnchor];
  trailingAnchor5 = [(HKElectrocardiogramMetadataHeaderView *)self trailingAnchor];
  v55 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [v55 setActive:1];
}

@end