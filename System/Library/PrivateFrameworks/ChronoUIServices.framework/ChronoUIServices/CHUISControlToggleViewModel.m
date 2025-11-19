@interface CHUISControlToggleViewModel
- (CHUISControlToggleViewModel)initWithIconView:(id)a3;
@end

@implementation CHUISControlToggleViewModel

- (CHUISControlToggleViewModel)initWithIconView:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CHUISControlToggleViewModel;
  v6 = [(CHUISControlToggleViewModel *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_state = 0;
    objc_storeStrong(&v6->_iconView, a3);
    v8 = objc_alloc_init(CHUISControlToggleOption);
    onOption = v7->_onOption;
    v7->_onOption = v8;

    v10 = objc_alloc_init(CHUISControlToggleOption);
    offOption = v7->_offOption;
    v7->_offOption = v10;
  }

  return v7;
}

@end