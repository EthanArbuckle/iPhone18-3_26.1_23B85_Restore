@interface HKPrescriptionPickerCell
- (HKPrescriptionPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HKPrescriptionPickerCellDelegate)delegate;
- (void)_didTapShowDetailsButton;
- (void)_didToggleSwitch:(id)switch;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)prepareForReuse;
- (void)setPrescription:(id)prescription;
@end

@implementation HKPrescriptionPickerCell

- (HKPrescriptionPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKPrescriptionPickerCell;
  v4 = [(HKPrescriptionPickerCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKPrescriptionPickerCell *)v4 _setupSubviews];
    [(HKPrescriptionPickerCell *)v5 _setupConstraints];
  }

  return v5;
}

- (void)_setupSubviews
{
  v48[3] = *MEMORY[0x1E69E9840];
  [(HKPrescriptionPickerCell *)self _setContinuousCornerRadius:10.0];
  [(HKPrescriptionPickerCell *)self setSelectionStyle:0];
  traitCollection = [(HKPrescriptionPickerCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(HKPrescriptionPickerCell *)self setBackgroundColor:secondarySystemBackgroundColor];
  }

  v6 = objc_alloc(MEMORY[0x1E69DCC10]);
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v11;

  [(UILabel *)self->_primaryLabel setAdjustsFontForContentSizeCategory:1];
  v13 = *MEMORY[0x1E69DDCF8];
  v14 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  [(UILabel *)self->_primaryLabel setFont:v14];

  [(UILabel *)self->_primaryLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:labelColor];

  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v16;

  [(UILabel *)self->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v13];
  [(UILabel *)self->_secondaryLabel setFont:v18];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:labelColor2];

  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v43 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v21 = [MEMORY[0x1E69DCAD8] configurationWithFont:v43];
  v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.text" withConfiguration:v21];
  [plainButtonConfiguration setImage:v22];

  v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v24 = [v23 localizedStringForKey:@"VIEW_PRESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
  [plainButtonConfiguration setTitle:v24];

  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [plainButtonConfiguration setImagePadding:3.0];
  objc_initWeak(&location, self);
  v25 = MEMORY[0x1E69DC628];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __42__HKPrescriptionPickerCell__setupSubviews__block_invoke;
  v44[3] = &unk_1E81B6A10;
  objc_copyWeak(&v45, &location);
  v26 = [v25 actionWithHandler:v44];
  v27 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v26];
  showDetailsButton = self->_showDetailsButton;
  self->_showDetailsButton = v27;

  [(UIButton *)self->_showDetailsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = objc_alloc(MEMORY[0x1E69DCF90]);
  v30 = self->_secondaryLabel;
  v48[0] = self->_primaryLabel;
  v48[1] = v30;
  v48[2] = self->_showDetailsButton;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  v32 = [v29 initWithArrangedSubviews:v31];
  sampleInfoStackView = self->_sampleInfoStackView;
  self->_sampleInfoStackView = v32;

  [(UIStackView *)self->_sampleInfoStackView setAlignment:1];
  [(UIStackView *)self->_sampleInfoStackView setAxis:1];
  [(UIStackView *)self->_sampleInfoStackView setDistribution:0];
  [(UIStackView *)self->_sampleInfoStackView setSpacing:6.0];
  [(UIStackView *)self->_sampleInfoStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  toggleView = self->_toggleView;
  self->_toggleView = v34;

  [(UISwitch *)self->_toggleView addTarget:self action:sel__didToggleSwitch_ forControlEvents:4096];
  [(UISwitch *)self->_toggleView setContentMode:1];
  [(UISwitch *)self->_toggleView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v36) = 1148846080;
  [(UISwitch *)self->_toggleView setContentCompressionResistancePriority:0 forAxis:v36];
  v37 = objc_alloc(MEMORY[0x1E69DCF90]);
  v38 = self->_toggleView;
  v47[0] = self->_sampleInfoStackView;
  v47[1] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v40 = [v37 initWithArrangedSubviews:v39];
  contentStackView = self->_contentStackView;
  self->_contentStackView = v40;

  [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_contentStackView setAlignment:3];
  [(UIStackView *)self->_contentStackView setAxis:0];
  [(UIStackView *)self->_contentStackView setDistribution:0];
  [(UIStackView *)self->_contentStackView setSpacing:5.0];
  [(UIStackView *)self->_contentStackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_contentStackView setDirectionalLayoutMargins:16.0, 16.0, 16.0, 16.0];
  contentView = [(HKPrescriptionPickerCell *)self contentView];
  [contentView addSubview:self->_contentStackView];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);
}

void __42__HKPrescriptionPickerCell__setupSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapShowDetailsButton];
}

- (void)_setupConstraints
{
  contentStackView = self->_contentStackView;
  contentView = [(HKPrescriptionPickerCell *)self contentView];
  [(UIStackView *)contentStackView hk_alignConstraintsWithView:contentView];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HKPrescriptionPickerCell;
  [(HKPrescriptionPickerCell *)&v4 prepareForReuse];
  [(UILabel *)self->_primaryLabel setText:0];
  [(UILabel *)self->_secondaryLabel setText:0];
  [(UISwitch *)self->_toggleView setOn:0];
  prescription = self->_prescription;
  self->_prescription = 0;

  objc_storeWeak(&self->_delegate, 0);
}

- (void)_didTapShowDetailsButton
{
  objc_copyWeak(&to, &self->_delegate);
  v3 = objc_loadWeakRetained(&to);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 didTapShowDetailsButtonForCell:self];
  }

  objc_destroyWeak(&to);
}

- (void)_didToggleSwitch:(id)switch
{
  switchCopy = switch;
  objc_copyWeak(&to, &self->_delegate);
  v5 = objc_loadWeakRetained(&to);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&to);
    [v7 didToggleSwitchForCell:self isOn:{-[UISwitch isOn](self->_toggleView, "isOn")}];
  }

  objc_destroyWeak(&to);
}

- (void)setPrescription:(id)prescription
{
  prescriptionCopy = prescription;
  objc_storeStrong(&self->_prescription, prescription);
  v5 = prescriptionCopy;
  if (prescriptionCopy)
  {
    v6 = HKVisionPrescriptionTypeDetailedLongLocalizedString(prescriptionCopy);
    [(UILabel *)self->_primaryLabel setText:v6];

    dateIssued = [prescriptionCopy dateIssued];
    v8 = HKLocalizedStringForDateAndTemplate(dateIssued, 10);
    [(UILabel *)self->_secondaryLabel setText:v8];

    prescriptionType = [(HKVisionPrescription *)self->_prescription prescriptionType];
    v10 = @"UIA.Health.Contacts";
    if (prescriptionType == HKVisionPrescriptionTypeGlasses)
    {
      v10 = @"UIA.Health.Glasses";
    }

    v11 = v10;
    v12 = HKVisionPrescriptionRawDescription(prescriptionCopy);
    if (v12)
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v14 = [v12 hk_stringByRemovingCharactersInSet:whitespaceAndNewlineCharacterSet];

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v11, v12];

      v11 = v15;
    }

    v16 = [(__CFString *)v11 stringByAppendingString:@".Cell.StaticText"];
    [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:v16];

    v17 = [(__CFString *)v11 stringByAppendingString:@".Cell.Switch"];
    [(UISwitch *)self->_toggleView setAccessibilityIdentifier:v17];

    v18 = [(__CFString *)v11 stringByAppendingString:@".ViewPrescription.Button"];
    [(UIButton *)self->_showDetailsButton setAccessibilityIdentifier:v18];

    v5 = prescriptionCopy;
  }
}

- (HKPrescriptionPickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end