@interface GKPickerSearchTextField
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
@end

@implementation GKPickerSearchTextField

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = GKPickerSearchTextField;
  v3 = [(GKPickerSearchTextField *)&v8 becomeFirstResponder];
  v4 = [(GKPickerSearchTextField *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(GKPickerSearchTextField *)self delegate];
    [v6 searchTextFieldDidBecomeFirstResponder:self];
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = GKPickerSearchTextField;
  v3 = [(GKPickerSearchTextField *)&v8 resignFirstResponder];
  v4 = [(GKPickerSearchTextField *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(GKPickerSearchTextField *)self delegate];
    [v6 searchTextFieldDidResignFirstResponder:self];
  }

  return v3;
}

@end