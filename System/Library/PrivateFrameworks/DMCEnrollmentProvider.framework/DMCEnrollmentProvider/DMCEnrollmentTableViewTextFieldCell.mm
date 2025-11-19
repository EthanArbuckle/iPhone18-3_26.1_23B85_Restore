@interface DMCEnrollmentTableViewTextFieldCell
- (DMCEnrollmentTableViewTextFieldCell)initWithType:(unint64_t)a3;
- (double)cellHeight;
- (id)_placeHolderStringForType:(unint64_t)a3;
- (void)layoutSubviews;
@end

@implementation DMCEnrollmentTableViewTextFieldCell

- (DMCEnrollmentTableViewTextFieldCell)initWithType:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v14.receiver = self;
  v14.super_class = DMCEnrollmentTableViewTextFieldCell;
  v7 = [(DMCEnrollmentTableViewTextFieldCell *)&v14 initWithStyle:1000 reuseIdentifier:v6];

  if (v7)
  {
    [(DMCEnrollmentTableViewTextFieldCell *)v7 setSelectionStyle:0];
    v8 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [(DMCEnrollmentTableViewTextFieldCell *)v7 setBackgroundColor:v8];

    v9 = [(DMCEnrollmentTableViewTextFieldCell *)v7 editableTextField];
    v10 = [(DMCEnrollmentTableViewTextFieldCell *)v7 _placeHolderStringForType:a3];
    [v9 setPlaceholder:v10];

    [v9 setAutocorrectionType:1];
    [v9 setAutocapitalizationType:0];
    if (a3)
    {
      [v9 setSecureTextEntry:1];
    }

    else
    {
      [v9 setKeyboardType:7];
    }

    [v9 setEnablesReturnKeyAutomatically:1];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v9 setFont:v11];

    v12 = [MEMORY[0x277D75348] labelColor];
    [v9 setTextColor:v12];

    [(DMCEnrollmentTableViewTextFieldCell *)v7 setSeparatorStyle:1];
  }

  return v7;
}

- (id)_placeHolderStringForType:(unint64_t)a3
{
  if (a3 <= 1)
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
  v11 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = objc_alloc(MEMORY[0x277D75D18]);
  v13 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [v13 bounds];
  v14 = [v12 initWithFrame:{0.0, 0.0, 15.0, CGRectGetHeight(v21)}];

  v15 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [v15 setLeftView:v14];

  v16 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [v16 setRightView:v14];

  v17 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [v17 setLeftViewMode:3];

  v18 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [v18 setRightViewMode:3];

  v19 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [v19 setContentVerticalAlignment:0];
}

- (double)cellHeight
{
  v2 = [(DMCEnrollmentTableViewTextFieldCell *)self textField];
  [v2 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v4 = v3;

  result = v4 * 1.2 + 15.0;
  if (result < 50.0)
  {
    return 50.0;
  }

  return result;
}

@end