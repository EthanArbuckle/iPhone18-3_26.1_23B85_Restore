@interface WDProfileEditableTableViewCell
- (BOOL)becomeFirstResponder;
- (WDProfileEditableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation WDProfileEditableTableViewCell

- (WDProfileEditableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = WDProfileEditableTableViewCell;
  v4 = [(WDProfileTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(WDProfileTableViewCell *)v4 displayValueTextField];
    [v6 addTarget:v5 action:sel__textFieldDidChange_ forControlEvents:0x20000];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(WDProfileTableViewCell *)self displayValueTextField];
  [v3 setUserInteractionEnabled:1];

  v4 = [(WDProfileTableViewCell *)self displayValueTextField];
  LOBYTE(v3) = [v4 becomeFirstResponder];

  return v3;
}

- (void)_textFieldDidChange:(id)a3
{
  v5 = [(WDProfileTableViewCell *)self displayValueTextField];
  v4 = [v5 text];
  [(WDProfileTableViewCell *)self setDisplayValue:v4];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v3 = [(WDProfileTableViewCell *)self displayValueTextField];
  [v3 setUserInteractionEnabled:1];
}

@end