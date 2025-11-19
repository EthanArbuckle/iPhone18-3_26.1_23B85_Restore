@interface GroupIdentityViewController.Coordinator
- (_TtCV7ChatKit27GroupIdentityViewController11Coordinator)init;
- (void)handleAddressBookChanged:(id)a3;
- (void)handleGroupDisplayNameChanged:(id)a3;
- (void)handleGroupPhotoChanged:(id)a3;
- (void)headerViewControllerDidTapActionButton:(id)a3;
@end

@implementation GroupIdentityViewController.Coordinator

- (void)handleGroupPhotoChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AF1638(v4);
}

- (void)handleGroupDisplayNameChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AF1E04(v4);
}

- (void)handleAddressBookChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AF2604(v4);
}

- (void)headerViewControllerDidTapActionButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AF3714();
}

- (_TtCV7ChatKit27GroupIdentityViewController11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end