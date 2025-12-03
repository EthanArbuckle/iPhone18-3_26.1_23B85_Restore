@interface PurchasingSpinnerViewController
- (_TtC16NewsSubscription31PurchasingSpinnerViewController)initWithCoder:(id)coder;
- (_TtC16NewsSubscription31PurchasingSpinnerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PurchasingSpinnerViewController

- (_TtC16NewsSubscription31PurchasingSpinnerViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinnerView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for PurchasingSpinnerView()) init];
  result = sub_1D78B6524();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(PurchasingSpinnerViewController *)&v6 viewDidAppear:appearCopy];
  PurchasingSpinner.label.getter();
  v5 = sub_1D78B5C44();

  MEMORY[0x1DA703C70](v5);
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(PurchasingSpinnerViewController *)&v10 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;

    traitCollection = [v2 traitCollection];
    sub_1D78136B8(traitCollection, v6, v8);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC16NewsSubscription31PurchasingSpinnerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end