@interface PurchasingSpinnerViewController
- (_TtC16NewsSubscription31PurchasingSpinnerViewController)initWithCoder:(id)a3;
- (_TtC16NewsSubscription31PurchasingSpinnerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PurchasingSpinnerViewController

- (_TtC16NewsSubscription31PurchasingSpinnerViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinnerView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for PurchasingSpinnerView()) init];
  result = sub_1D78B6524();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(PurchasingSpinnerViewController *)&v6 viewDidAppear:v3];
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
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;

    v9 = [v2 traitCollection];
    sub_1D78136B8(v9, v6, v8);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC16NewsSubscription31PurchasingSpinnerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end