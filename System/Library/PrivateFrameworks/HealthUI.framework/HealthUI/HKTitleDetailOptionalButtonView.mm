@interface HKTitleDetailOptionalButtonView
- (HKTitleDetailOptionalButtonView)init;
- (id)_buttonConfigurationWithButtonTitle:(id)title;
- (void)populateWithTitle:(id)title detail:(id)detail buttonText:(id)text buttonAction:(id)action;
- (void)setUp;
@end

@implementation HKTitleDetailOptionalButtonView

- (HKTitleDetailOptionalButtonView)init
{
  v5.receiver = self;
  v5.super_class = HKTitleDetailOptionalButtonView;
  v2 = [(HKTitleDetailOptionalButtonView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(HKTitleDetailOptionalButtonView *)v2 setUp];
  }

  return v3;
}

- (void)setUp
{
  v55[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] variant:1024];
  [(UILabel *)self->_titleLabel setFont:v5];

  [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(HKTitleDetailOptionalButtonView *)self addSubview:self->_titleLabel];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  detailLabel = self->_detailLabel;
  self->_detailLabel = v6;

  [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_detailLabel setFont:v8];

  [(UILabel *)self->_detailLabel setAdjustsFontForContentSizeCategory:1];
  [(HKTitleDetailOptionalButtonView *)self addSubview:self->_detailLabel];
  v9 = [MEMORY[0x1E69DC738] buttonWithType:1];
  button = self->_button;
  self->_button = v9;

  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_button setRole:1];
  [(UIButton *)self->_button addTarget:self action:sel_buttonTapped forControlEvents:64];
  [(HKTitleDetailOptionalButtonView *)self addSubview:self->_button];
  topAnchor = [(UIButton *)self->_button topAnchor];
  bottomAnchor = [(UILabel *)self->_detailLabel bottomAnchor];
  v47 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:17.0];
  v55[0] = v47;
  leadingAnchor = [(UIButton *)self->_button leadingAnchor];
  leadingAnchor2 = [(HKTitleDetailOptionalButtonView *)self leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v55[1] = v41;
  trailingAnchor = [(UIButton *)self->_button trailingAnchor];
  trailingAnchor2 = [(HKTitleDetailOptionalButtonView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v55[2] = v12;
  bottomAnchor2 = [(UIButton *)self->_button bottomAnchor];
  bottomAnchor3 = [(HKTitleDetailOptionalButtonView *)self bottomAnchor];
  v15 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-16.0];
  v55[3] = v15;
  heightAnchor = [(UIButton *)self->_button heightAnchor];
  v17 = [heightAnchor constraintGreaterThanOrEqualToConstant:50.0];
  v55[4] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
  buttonPresentConstraints = self->_buttonPresentConstraints;
  self->_buttonPresentConstraints = v18;

  bottomAnchor4 = [(UILabel *)self->_detailLabel bottomAnchor];
  bottomAnchor5 = [(HKTitleDetailOptionalButtonView *)self bottomAnchor];
  v22 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-16.0];
  v54 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  buttonOmittedConstraints = self->_buttonOmittedConstraints;
  self->_buttonOmittedConstraints = v23;

  v39 = MEMORY[0x1E696ACD8];
  topAnchor2 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor3 = [(HKTitleDetailOptionalButtonView *)self topAnchor];
  v48 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:20.0];
  v53[0] = v48;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [(HKTitleDetailOptionalButtonView *)self leadingAnchor];
  v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v53[1] = v42;
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor4 = [(HKTitleDetailOptionalButtonView *)self trailingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v53[2] = v36;
  topAnchor4 = [(UILabel *)self->_detailLabel topAnchor];
  bottomAnchor6 = [(UILabel *)self->_titleLabel bottomAnchor];
  v26 = [topAnchor4 constraintEqualToAnchor:bottomAnchor6 constant:4.0];
  v53[3] = v26;
  leadingAnchor5 = [(UILabel *)self->_detailLabel leadingAnchor];
  leadingAnchor6 = [(HKTitleDetailOptionalButtonView *)self leadingAnchor];
  v29 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  v53[4] = v29;
  trailingAnchor5 = [(UILabel *)self->_detailLabel trailingAnchor];
  trailingAnchor6 = [(HKTitleDetailOptionalButtonView *)self trailingAnchor];
  v32 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v53[5] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:6];
  v34 = [v33 arrayByAddingObjectsFromArray:self->_buttonOmittedConstraints];
  [v39 activateConstraints:v34];
}

- (void)populateWithTitle:(id)title detail:(id)detail buttonText:(id)text buttonAction:(id)action
{
  titleLabel = self->_titleLabel;
  actionCopy = action;
  textCopy = text;
  detailCopy = detail;
  [(UILabel *)titleLabel setText:title];
  [(UILabel *)self->_detailLabel setText:detailCopy];

  buttonAction = self->_buttonAction;
  v15 = _Block_copy(actionCopy);

  v16 = self->_buttonAction;
  self->_buttonAction = v15;

  button = self->_button;
  v18 = [(HKTitleDetailOptionalButtonView *)self _buttonConfigurationWithButtonTitle:textCopy];

  [(UIButton *)button setConfiguration:v18];
  [(UIButton *)self->_button setHidden:actionCopy == 0];
  if (!actionCopy || buttonAction)
  {
    if (actionCopy || !buttonAction)
    {
      return;
    }

    v19 = &OBJC_IVAR___HKTitleDetailOptionalButtonView__buttonOmittedConstraints;
    v20 = &OBJC_IVAR___HKTitleDetailOptionalButtonView__buttonPresentConstraints;
  }

  else
  {
    v19 = &OBJC_IVAR___HKTitleDetailOptionalButtonView__buttonPresentConstraints;
    v20 = &OBJC_IVAR___HKTitleDetailOptionalButtonView__buttonOmittedConstraints;
  }

  [MEMORY[0x1E696ACD8] deactivateConstraints:*(&self->super.super.super.isa + *v20)];
  v21 = MEMORY[0x1E696ACD8];
  v22 = *(&self->super.super.super.isa + *v19);

  [v21 activateConstraints:v22];
}

- (id)_buttonConfigurationWithButtonTitle:(id)title
{
  v3 = MEMORY[0x1E69DC740];
  titleCopy = title;
  grayButtonConfiguration = [v3 grayButtonConfiguration];
  [grayButtonConfiguration setTitle:titleCopy];

  [grayButtonConfiguration setCornerStyle:3];

  return grayButtonConfiguration;
}

@end