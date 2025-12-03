@interface PeoplePickerViewController.FakeFooterView
- (BOOL)isHidden;
- (void)setHidden:(BOOL)hidden;
@end

@implementation PeoplePickerViewController.FakeFooterView

- (BOOL)isHidden
{
  selfCopy = self;
  v3 = PeoplePickerViewController.FakeFooterView.isHidden.getter();

  return v3 & 1;
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  PeoplePickerViewController.FakeFooterView.isHidden.setter(hidden);
}

@end