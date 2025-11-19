@interface CNContactQuickActionsViewController
- (_TtC12GameStoreKit35CNContactQuickActionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)viewForActionType:(id)a3;
- (void)contactQuickActionsController:(id)a3 dismissDisambiguationViewController:(id)a4 forActionType:(id)a5;
- (void)contactQuickActionsController:(id)a3 presentDisambiguationViewController:(id)a4 forActionType:(id)a5;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CNContactQuickActionsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24F439D38();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24F43A26C(a3);
}

- (void)contactQuickActionsController:(id)a3 presentDisambiguationViewController:(id)a4 forActionType:(id)a5
{
  v8 = sub_24F92B0D8();
  v10 = v9;
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_24F43C7E4(v12, v8, v10);
}

- (void)contactQuickActionsController:(id)a3 dismissDisambiguationViewController:(id)a4 forActionType:(id)a5
{
  v6 = self;
  [a4 dismissViewControllerAnimated:1 completion:0];
  v7 = *(&v6->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC);
  *(&v6->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC) = 0;
}

- (id)viewForActionType:(id)a3
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  v7 = self;
  v8 = sub_24F43A49C(v4, v6);

  return v8;
}

- (_TtC12GameStoreKit35CNContactQuickActionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end