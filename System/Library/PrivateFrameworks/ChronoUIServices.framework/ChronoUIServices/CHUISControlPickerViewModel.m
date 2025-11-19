@interface CHUISControlPickerViewModel
- (CHUISControlPickerViewModel)initWithIconView:(id)a3;
@end

@implementation CHUISControlPickerViewModel

- (CHUISControlPickerViewModel)initWithIconView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHUISControlPickerViewModel;
  v6 = [(CHUISControlPickerViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_state = 0;
    objc_storeStrong(&v6->_iconView, a3);
  }

  return v7;
}

@end