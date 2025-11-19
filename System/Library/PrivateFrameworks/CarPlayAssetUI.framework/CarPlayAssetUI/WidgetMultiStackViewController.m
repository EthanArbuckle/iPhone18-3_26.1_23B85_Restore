@interface WidgetMultiStackViewController
- (BOOL)widgetStackViewController:(id)a3 isDataSourceBlockedForScreenTimeExpiration:(id)a4;
- (_TtC14CarPlayAssetUI30WidgetMultiStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)widgetStackViewController:(id)a3 containerApplicationNameForDataSource:(id)a4;
- (id)widgetStackViewController:(id)a3 containerBundleIdentifierForDataSource:(id)a4;
- (id)widgetStackViewController:(id)a3 viewControllerForDataSource:(id)a4;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)widgetHostViewController:(id)a3 receivedTouchEvent:(id)a4;
- (void)widgetHostViewController:(id)a3 requestsLaunch:(id)a4;
- (void)widgetStackViewController:(id)a3 didActivateDataSource:(id)a4 fromUserInteraction:(BOOL)a5;
- (void)widgetStackViewController:(id)a3 didRemoveViewController:(id)a4;
@end

@implementation WidgetMultiStackViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_242ECB1E0();
}

- (void)updateViewConstraints
{
  v2 = self;
  sub_242ECB5F0();
}

- (_TtC14CarPlayAssetUI30WidgetMultiStackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)widgetStackViewController:(id)a3 viewControllerForDataSource:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = WidgetMultiStackViewController.widgetStackViewController(_:viewControllerFor:)(v5);

  swift_unknownObjectRelease();

  return v7;
}

- (id)widgetStackViewController:(id)a3 containerApplicationNameForDataSource:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_242ED11C4();
  v8 = v7;

  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = sub_242F04F00();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)widgetStackViewController:(id)a3 containerBundleIdentifierForDataSource:(id)a4
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a3;
    swift_unknownObjectRetain();
    v9 = self;
    v10 = [v7 containerBundleIdentifier];
    if (v10)
    {
      v11 = v10;
      sub_242F04F30();

      swift_unknownObjectRelease();
      v12 = sub_242F04F00();

      v6 = v12;
    }

    else
    {

      swift_unknownObjectRelease();
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)widgetStackViewController:(id)a3 isDataSourceBlockedForScreenTimeExpiration:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_242ED12D8();

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (void)widgetStackViewController:(id)a3 didActivateDataSource:(id)a4 fromUserInteraction:(BOOL)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  sub_242ED13EC(a4, a5);

  swift_unknownObjectRelease();
}

- (void)widgetStackViewController:(id)a3 didRemoveViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_242ED1DD0(v7);
}

- (void)widgetHostViewController:(id)a3 requestsLaunch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  WidgetMultiStackViewController.widgetHostViewController(_:requestsLaunch:)(v6, v7);
}

- (void)widgetHostViewController:(id)a3 receivedTouchEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s14CarPlayAssetUI30WidgetMultiStackViewControllerC010widgetHosthI0_18receivedTouchEventySo011CHUISWidgetkhI0C_So010CHUISTouchN0CtF_0(v6);
}

@end