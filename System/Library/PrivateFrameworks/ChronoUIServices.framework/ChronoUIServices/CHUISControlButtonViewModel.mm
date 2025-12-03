@interface CHUISControlButtonViewModel
- (CHUISControlButtonViewModel)initWithIconView:(id)view;
@end

@implementation CHUISControlButtonViewModel

- (CHUISControlButtonViewModel)initWithIconView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CHUISControlButtonViewModel;
  v6 = [(CHUISControlButtonViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconView, view);
  }

  return v7;
}

@end