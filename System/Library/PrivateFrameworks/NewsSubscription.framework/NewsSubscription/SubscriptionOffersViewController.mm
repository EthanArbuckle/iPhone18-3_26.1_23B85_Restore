@interface SubscriptionOffersViewController
- (_TtC16NewsSubscription32SubscriptionOffersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SubscriptionOffersViewController

- (_TtC16NewsSubscription32SubscriptionOffersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(SubscriptionOffersViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = sub_1D78B33C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = self;
  v17.super_class = ObjectType;
  selfCopy = self;
  [(SubscriptionOffersViewController *)&v17 viewDidDisappear:disappearCopy];
  v11 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler);
  sub_1D78B33B4();
  v12 = sub_1D78B33A4();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v11[4] = v12;
  v11[5] = v14;

  v15 = v11[16];
  v16 = v11[17];
  __swift_project_boxed_opaque_existential_1(v11 + 13, v15);
  (*(v16 + 16))(v15, v16);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D77863BC();
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  v2 = v12.receiver;
  [(SubscriptionOffersViewController *)&v12 viewWillLayoutSubviews];
  v3 = &v2[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel];
  v4 = *&v2[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel];
  if (v4 && (v5 = *(v3 + 1), v6 = *(v3 + 2), v7 = *(v3 + 3), v8 = *(v3 + 4), v9 = *(v3 + 5), v10 = v3[48], v13 = *&v2[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel], v14 = v5 & 1, v15 = v6, v16 = v7, v17 = v8, v18 = v9, v19 = v10 & 1, (v11 = *&v2[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_tag]) != 0))
  {
    sub_1D7788A84(v4);
    swift_unknownObjectRetain();
    sub_1D7786BC8(&v13, v11);
    swift_unknownObjectRelease();

    sub_1D7788AD0(v4);
  }

  else
  {
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(SubscriptionOffersViewController *)&v3 viewDidLayoutSubviews];
  sub_1D78B4714();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(SubscriptionOffersViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_1D77886C0();
}

@end