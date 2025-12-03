@interface NavigationBar
- (UnifiedField)textField;
- (double)placeholderHorizontalInset;
- (void)setExpanded:(BOOL)expanded textFieldSelectionRange:(_NSRange)range;
- (void)setTextFieldPlaceHolderColor:(id)color;
@end

@implementation NavigationBar

- (void)setExpanded:(BOOL)expanded textFieldSelectionRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  expandedCopy = expanded;
  if (expanded && ![(_SFNavigationBar *)self isExpanded])
  {
    textField = [(NavigationBar *)self textField];
    [textField setReflectedItem:0];
  }

  v9.receiver = self;
  v9.super_class = NavigationBar;
  [(_SFNavigationBar *)&v9 setExpanded:expandedCopy textFieldSelectionRange:location completionHandler:length, 0];
}

- (double)placeholderHorizontalInset
{
  textField = [(NavigationBar *)self textField];
  [textField placeholderHorizontalInset];
  v4 = v3;

  return v4;
}

- (void)setTextFieldPlaceHolderColor:(id)color
{
  colorCopy = color;
  textField = [(NavigationBar *)self textField];
  [textField setPlaceholderColor:colorCopy];
}

- (UnifiedField)textField
{
  v4.receiver = self;
  v4.super_class = NavigationBar;
  textField = [(_SFNavigationBar *)&v4 textField];

  return textField;
}

@end