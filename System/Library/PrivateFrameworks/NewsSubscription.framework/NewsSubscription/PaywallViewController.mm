@interface PaywallViewController
- (_TtC16NewsSubscription21PaywallViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4;
- (void)handlePurchaseAddedNotificationWithNotification:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PaywallViewController

- (void)viewDidLoad
{
  v2 = self;
  PaywallViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v4 = v11.receiver;
  [(PaywallViewController *)&v11 viewWillAppear:v3];
  v5 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(v4 + v5, v8);
  v6 = v9;
  v7 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v7 + 48))(v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v8);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  PaywallViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  PaywallViewController.viewDidDisappear(_:)(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v10.receiver;
  [(PaywallViewController *)&v10 traitCollectionDidChange:v4];
  v6 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(v5 + v6, v9);
  v7 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v8 = [v5 traitCollection];
  (*(v7 + 88))();

  __swift_destroy_boxed_opaque_existential_1(v9);
}

- (void)handlePurchaseAddedNotificationWithNotification:(id)a3
{
  v4 = sub_1D78B3024();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3004();
  v8 = self;
  sub_1D77C707C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC16NewsSubscription21PaywallViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4
{
  v4 = self;
  sub_1D78B3AF4();

  return v6;
}

@end