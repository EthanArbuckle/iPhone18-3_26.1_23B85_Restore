@interface GKPickerSearchTextField
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
@end

@implementation GKPickerSearchTextField

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = GKPickerSearchTextField;
  becomeFirstResponder = [(GKPickerSearchTextField *)&v8 becomeFirstResponder];
  delegate = [(GKPickerSearchTextField *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(GKPickerSearchTextField *)self delegate];
    [delegate2 searchTextFieldDidBecomeFirstResponder:self];
  }

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = GKPickerSearchTextField;
  resignFirstResponder = [(GKPickerSearchTextField *)&v8 resignFirstResponder];
  delegate = [(GKPickerSearchTextField *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(GKPickerSearchTextField *)self delegate];
    [delegate2 searchTextFieldDidResignFirstResponder:self];
  }

  return resignFirstResponder;
}

@end