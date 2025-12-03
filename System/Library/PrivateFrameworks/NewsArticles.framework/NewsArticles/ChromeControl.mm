@interface ChromeControl
- (_TtC12NewsArticles13ChromeControl)init;
- (void)prefersChromeHidden:(BOOL)hidden fromViewController:(id)controller;
@end

@implementation ChromeControl

- (void)prefersChromeHidden:(BOOL)hidden fromViewController:(id)controller
{
  hiddenCopy = hidden;
  swift_getObjectType();
  controllerCopy = controller;
  selfCopy = self;
  sub_1D7D2AAEC();
  splitViewController = [controllerCopy splitViewController];
  if (!splitViewController)
  {
    presentingViewController = [controllerCopy presentingViewController];
    splitViewController2 = [presentingViewController splitViewController];

    splitViewController = splitViewController2;
  }

  v12 = splitViewController;
  [splitViewController ts:!hiddenCopy columnSeparatorsExtendToTitlebar:?];
}

- (_TtC12NewsArticles13ChromeControl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end