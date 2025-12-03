@interface FriendRequestComposeViewController
- (_TtC12GameStoreKit34FriendRequestComposeViewController)initWithCoder:(id)coder;
- (_TtC12GameStoreKit34FriendRequestComposeViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC12GameStoreKit34FriendRequestComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC12GameStoreKit34FriendRequestComposeViewController)initWithRootViewController:(id)controller;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation FriendRequestComposeViewController

- (_TtC12GameStoreKit34FriendRequestComposeViewController)initWithCoder:(id)coder
{
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24F92B7F8();
  selfCopy = self;
  controllerCopy = controller;
  v13 = sub_24F92B7E8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = selfCopy;
  v14[5] = result;
  sub_24EA998B8(0, 0, v9, &unk_24F951648, v14);

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (_TtC12GameStoreKit34FriendRequestComposeViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit34FriendRequestComposeViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit34FriendRequestComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end