@interface GroupIdentityViewController.Coordinator
- (_TtCV7ChatKit27GroupIdentityViewController11Coordinator)init;
- (void)handleAddressBookChanged:(id)changed;
- (void)handleGroupDisplayNameChanged:(id)changed;
- (void)handleGroupPhotoChanged:(id)changed;
- (void)headerViewControllerDidTapActionButton:(id)button;
@end

@implementation GroupIdentityViewController.Coordinator

- (void)handleGroupPhotoChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_190AF1638(changedCopy);
}

- (void)handleGroupDisplayNameChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_190AF1E04(changedCopy);
}

- (void)handleAddressBookChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_190AF2604(changedCopy);
}

- (void)headerViewControllerDidTapActionButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_190AF3714();
}

- (_TtCV7ChatKit27GroupIdentityViewController11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end