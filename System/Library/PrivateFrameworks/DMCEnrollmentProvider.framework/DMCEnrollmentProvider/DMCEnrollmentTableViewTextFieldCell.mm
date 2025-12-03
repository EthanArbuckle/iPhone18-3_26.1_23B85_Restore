@interface DMCEnrollmentTableViewTextFieldCell
- (DMCEnrollmentTableViewTextFieldCell)initWithType:(unint64_t)type;
- (double)cellHeight;
- (id)_placeHolderStringForType:(unint64_t)type;
- (void)layoutSubviews;
@end

@implementation DMCEnrollmentTableViewTextFieldCell

- (DMCEnrollmentTableViewTextFieldCell)initWithType:(unint64_t)type
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v14.receiver = self;
  v14.super_class = DMCEnrollmentTableViewTextFieldCell;
  v7 = [(DMCEnrollmentTableViewTextFieldCell *)&v14 initWithStyle:1000 reuseIdentifier:v6];

  if (v7)
  {
    [(DMCEnrollmentTableViewTextFieldCell *)v7 setSelectionStyle:0];
    tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [(DMCEnrollmentTableViewTextFieldCell *)v7 setBackgroundColor:tertiarySystemFillColor];

    editableTextField = [(DMCEnrollmentTableViewTextFieldCell *)v7 editableTextField];
    v10 = [(DMCEnrollmentTableViewTextFieldCell *)v7 _placeHolderStringForType:type];
    [editableTextField setPlaceholder:v10];

    [editableTextField setAutocorrectionType:1];
    [editableTextField setAutocapitalizationType:0];
    if (type)
    {
      [editableTextField setSecureTextEntry:1];
    }

    else
    {
      [editableTextField setKeyboardType:7];
    }

    [editableTextField setEnablesReturnKeyAutomatically:1];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [editableTextField setFont:v11];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [editableTextField setTextColor:labelColor];

    [(DMCEnrollmentTableViewTextFieldCell *)v7 setSeparatorStyle:1];
  }

  return v7;
}

- (id)_placeHolderStringForType:(unint64_t)type
{
  if (type <= 1)
  {
    self = DMCLocalizedString();
  }

  return self;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = DMCEnrollmentTableViewTextFieldCell;
  [(DMCEnrollmentTableViewTextFieldCell *)&v20 layoutSubviews];
  [(DMCEnrollmentTableViewTextFieldCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  textField = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [textField setFrame:{v4, v6, v8, v10}];

  v12 = objc_alloc(MEMORY[0x277D75D18]);
  textField2 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [textField2 bounds];
  v14 = [v12 initWithFrame:{0.0, 0.0, 15.0, CGRectGetHeight(v21)}];

  textField3 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [textField3 setLeftView:v14];

  textField4 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [textField4 setRightView:v14];

  textField5 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [textField5 setLeftViewMode:3];

  textField6 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [textField6 setRightViewMode:3];

  textField7 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [textField7 setContentVerticalAlignment:0];
}

- (double)cellHeight
{
  textField = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [textField sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v4 = v3;

  result = v4 * 1.2 + 15.0;
  if (result < 50.0)
  {
    return 50.0;
  }

  return result;
}

@end