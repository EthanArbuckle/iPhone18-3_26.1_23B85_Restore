@interface NavigationBar
- (UnifiedField)textField;
- (double)placeholderHorizontalInset;
- (void)setExpanded:(BOOL)a3 textFieldSelectionRange:(_NSRange)a4;
- (void)setTextFieldPlaceHolderColor:(id)a3;
@end

@implementation NavigationBar

- (void)setExpanded:(BOOL)a3 textFieldSelectionRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  if (a3 && ![(_SFNavigationBar *)self isExpanded])
  {
    v8 = [(NavigationBar *)self textField];
    [v8 setReflectedItem:0];
  }

  v9.receiver = self;
  v9.super_class = NavigationBar;
  [(_SFNavigationBar *)&v9 setExpanded:v6 textFieldSelectionRange:location completionHandler:length, 0];
}

- (double)placeholderHorizontalInset
{
  v2 = [(NavigationBar *)self textField];
  [v2 placeholderHorizontalInset];
  v4 = v3;

  return v4;
}

- (void)setTextFieldPlaceHolderColor:(id)a3
{
  v4 = a3;
  v5 = [(NavigationBar *)self textField];
  [v5 setPlaceholderColor:v4];
}

- (UnifiedField)textField
{
  v4.receiver = self;
  v4.super_class = NavigationBar;
  v2 = [(_SFNavigationBar *)&v4 textField];

  return v2;
}

@end