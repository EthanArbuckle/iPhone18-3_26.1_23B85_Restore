@interface WidgetMultiStackViewController
- (BOOL)widgetStackViewController:(id)controller isDataSourceBlockedForScreenTimeExpiration:(id)expiration;
- (_TtC14CarPlayAssetUI30WidgetMultiStackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)widgetStackViewController:(id)controller containerApplicationNameForDataSource:(id)source;
- (id)widgetStackViewController:(id)controller containerBundleIdentifierForDataSource:(id)source;
- (id)widgetStackViewController:(id)controller viewControllerForDataSource:(id)source;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)widgetHostViewController:(id)controller receivedTouchEvent:(id)event;
- (void)widgetHostViewController:(id)controller requestsLaunch:(id)launch;
- (void)widgetStackViewController:(id)controller didActivateDataSource:(id)source fromUserInteraction:(BOOL)interaction;
- (void)widgetStackViewController:(id)controller didRemoveViewController:(id)viewController;
@end

@implementation WidgetMultiStackViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_242ECB1E0();
}

- (void)updateViewConstraints
{
  selfCopy = self;
  sub_242ECB5F0();
}

- (_TtC14CarPlayAssetUI30WidgetMultiStackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)widgetStackViewController:(id)controller viewControllerForDataSource:(id)source
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = WidgetMultiStackViewController.widgetStackViewController(_:viewControllerFor:)(controllerCopy);

  swift_unknownObjectRelease();

  return v7;
}

- (id)widgetStackViewController:(id)controller containerApplicationNameForDataSource:(id)source
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (id)widgetStackViewController:(id)controller containerBundleIdentifierForDataSource:(id)source
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    controllerCopy = controller;
    swift_unknownObjectRetain();
    selfCopy = self;
    containerBundleIdentifier = [v7 containerBundleIdentifier];
    if (containerBundleIdentifier)
    {
      v11 = containerBundleIdentifier;
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

- (BOOL)widgetStackViewController:(id)controller isDataSourceBlockedForScreenTimeExpiration:(id)expiration
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_242ED12D8();

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (void)widgetStackViewController:(id)controller didActivateDataSource:(id)source fromUserInteraction:(BOOL)interaction
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_242ED13EC(source, interaction);

  swift_unknownObjectRelease();
}

- (void)widgetStackViewController:(id)controller didRemoveViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_242ED1DD0(viewControllerCopy);
}

- (void)widgetHostViewController:(id)controller requestsLaunch:(id)launch
{
  controllerCopy = controller;
  launchCopy = launch;
  selfCopy = self;
  WidgetMultiStackViewController.widgetHostViewController(_:requestsLaunch:)(controllerCopy, launchCopy);
}

- (void)widgetHostViewController:(id)controller receivedTouchEvent:(id)event
{
  controllerCopy = controller;
  eventCopy = event;
  selfCopy = self;
  _s14CarPlayAssetUI30WidgetMultiStackViewControllerC010widgetHosthI0_18receivedTouchEventySo011CHUISWidgetkhI0C_So010CHUISTouchN0CtF_0(controllerCopy);
}

@end