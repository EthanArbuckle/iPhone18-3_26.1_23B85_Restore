@interface PaywallViewController
- (_TtC16NewsSubscription21PaywallViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection;
- (void)handlePurchaseAddedNotificationWithNotification:(id)notification;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PaywallViewController

- (void)viewDidLoad
{
  selfCopy = self;
  PaywallViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v4 = v11.receiver;
  [(PaywallViewController *)&v11 viewWillAppear:appearCopy];
  v5 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(v4 + v5, v8);
  v6 = v9;
  v7 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v7 + 48))(v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v8);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  PaywallViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  PaywallViewController.viewDidDisappear(_:)(disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v10.receiver;
  [(PaywallViewController *)&v10 traitCollectionDidChange:changeCopy];
  v6 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(v5 + v6, v9);
  v7 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  traitCollection = [v5 traitCollection];
  (*(v7 + 88))();

  __swift_destroy_boxed_opaque_existential_1(v9);
}

- (void)handlePurchaseAddedNotificationWithNotification:(id)notification
{
  v4 = sub_1D78B3024();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3004();
  selfCopy = self;
  sub_1D77C707C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC16NewsSubscription21PaywallViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)sectionItemHeightForSize:(CGSize)size traitCollection:(id)collection
{
  selfCopy = self;
  sub_1D78B3AF4();

  return v6;
}

@end