@interface CHUISControlPickerViewModel
- (CHUISControlPickerViewModel)initWithIconView:(id)view;
@end

@implementation CHUISControlPickerViewModel

- (CHUISControlPickerViewModel)initWithIconView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CHUISControlPickerViewModel;
  v6 = [(CHUISControlPickerViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_state = 0;
    objc_storeStrong(&v6->_iconView, view);
  }

  return v7;
}

@end