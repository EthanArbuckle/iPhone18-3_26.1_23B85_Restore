@interface PeoplePickerViewController.FakeFooterView
- (BOOL)isHidden;
- (void)setHidden:(BOOL)a3;
@end

@implementation PeoplePickerViewController.FakeFooterView

- (BOOL)isHidden
{
  v2 = self;
  v3 = PeoplePickerViewController.FakeFooterView.isHidden.getter();

  return v3 & 1;
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  PeoplePickerViewController.FakeFooterView.isHidden.setter(a3);
}

@end