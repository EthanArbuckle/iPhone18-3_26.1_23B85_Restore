@interface HKExportPDFControl
- (HKExportPDFControl)initWithText:(id)text layoutMargins:(UIEdgeInsets)margins accessibilityIdentifierPrefix:(id)prefix;
- (void)_setupUIWithText:(id)text layoutMargins:(UIEdgeInsets)margins accessibilityIdentifier:(id)identifier;
@end

@implementation HKExportPDFControl

- (HKExportPDFControl)initWithText:(id)text layoutMargins:(UIEdgeInsets)margins accessibilityIdentifierPrefix:(id)prefix
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  textCopy = text;
  prefixCopy = prefix;
  v16.receiver = self;
  v16.super_class = HKExportPDFControl;
  v13 = [(HKExportPDFControl *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v13)
  {
    v14 = [prefixCopy stringByAppendingString:@".exportPDFButton"];
    [(HKExportPDFControl *)v13 _setupUIWithText:textCopy layoutMargins:v14 accessibilityIdentifier:top, left, bottom, right];
  }

  return v13;
}

- (void)_setupUIWithText:(id)text layoutMargins:(UIEdgeInsets)margins accessibilityIdentifier:(id)identifier
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  identifierCopy = identifier;
  textCopy = text;
  [(HKExportPDFControl *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [(HKExportPDFControl *)self heightAnchor];
  v14 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
  [v14 setActive:1];

  v43 = objc_alloc_init(HKSeparatorLineView);
  [(HKSeparatorLineView *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  [(HKSeparatorLineView *)v43 setColor:opaqueSeparatorColor];

  [(HKSeparatorLineView *)v43 setSeparatorThickness:HKUIFloorToScreenScale(0.5)];
  [(HKExportPDFControl *)self addSubview:v43];
  v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setText:textCopy];

  hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
  [v16 setTextColor:hk_appKeyColor];

  [v16 setAdjustsFontSizeToFitWidth:1];
  [v16 setTextAlignment:4];
  [v16 setNumberOfLines:0];
  [v16 setAccessibilityIdentifier:identifierCopy];

  v18 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v19 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:0.0];
  [v16 setFont:v19];

  [(HKExportPDFControl *)self addSubview:v16];
  leadingAnchor = [v16 leadingAnchor];
  layoutMarginsGuide = [(HKExportPDFControl *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:left];
  [v23 setActive:1];

  layoutMarginsGuide2 = [(HKExportPDFControl *)self layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
  trailingAnchor2 = [v16 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:right];
  [v27 setActive:1];

  topAnchor = [v16 topAnchor];
  topAnchor2 = [(HKExportPDFControl *)self topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
  [v30 setActive:1];

  bottomAnchor = [(HKExportPDFControl *)self bottomAnchor];
  bottomAnchor2 = [v16 bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom];
  [v33 setActive:1];

  leadingAnchor3 = [(HKSeparatorLineView *)v43 leadingAnchor];
  leadingAnchor4 = [v16 leadingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v36 setActive:1];

  trailingAnchor3 = [(HKSeparatorLineView *)v43 trailingAnchor];
  trailingAnchor4 = [(HKExportPDFControl *)self trailingAnchor];
  v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v39 setActive:1];

  topAnchor3 = [(HKSeparatorLineView *)v43 topAnchor];
  topAnchor4 = [(HKExportPDFControl *)self topAnchor];
  v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v42 setActive:1];
}

@end