@interface WDProfileEditableTableViewCell
- (BOOL)becomeFirstResponder;
- (WDProfileEditableTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_textFieldDidChange:(id)change;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation WDProfileEditableTableViewCell

- (WDProfileEditableTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = WDProfileEditableTableViewCell;
  v4 = [(WDProfileTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    displayValueTextField = [(WDProfileTableViewCell *)v4 displayValueTextField];
    [displayValueTextField addTarget:v5 action:sel__textFieldDidChange_ forControlEvents:0x20000];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  displayValueTextField = [(WDProfileTableViewCell *)self displayValueTextField];
  [displayValueTextField setUserInteractionEnabled:1];

  displayValueTextField2 = [(WDProfileTableViewCell *)self displayValueTextField];
  LOBYTE(displayValueTextField) = [displayValueTextField2 becomeFirstResponder];

  return displayValueTextField;
}

- (void)_textFieldDidChange:(id)change
{
  displayValueTextField = [(WDProfileTableViewCell *)self displayValueTextField];
  text = [displayValueTextField text];
  [(WDProfileTableViewCell *)self setDisplayValue:text];
}

- (void)textFieldDidEndEditing:(id)editing
{
  displayValueTextField = [(WDProfileTableViewCell *)self displayValueTextField];
  [displayValueTextField setUserInteractionEnabled:1];
}

@end