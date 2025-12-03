@interface CNContactQuickActionsViewController
- (_TtC12GameStoreKit35CNContactQuickActionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)viewForActionType:(id)type;
- (void)contactQuickActionsController:(id)controller dismissDisambiguationViewController:(id)viewController forActionType:(id)type;
- (void)contactQuickActionsController:(id)controller presentDisambiguationViewController:(id)viewController forActionType:(id)type;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CNContactQuickActionsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24F439D38();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24F43A26C(disappear);
}

- (void)contactQuickActionsController:(id)controller presentDisambiguationViewController:(id)viewController forActionType:(id)type
{
  v8 = sub_24F92B0D8();
  v10 = v9;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_24F43C7E4(viewControllerCopy, v8, v10);
}

- (void)contactQuickActionsController:(id)controller dismissDisambiguationViewController:(id)viewController forActionType:(id)type
{
  selfCopy = self;
  [viewController dismissViewControllerAnimated:1 completion:0];
  v7 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC) = 0;
}

- (id)viewForActionType:(id)type
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_24F43A49C(v4, v6);

  return v8;
}

- (_TtC12GameStoreKit35CNContactQuickActionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end