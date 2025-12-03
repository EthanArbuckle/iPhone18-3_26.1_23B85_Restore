@interface MUWebPlacecardBridge
- (_TtC6MapsUI20MUWebPlacecardBridge)init;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation MUWebPlacecardBridge

- (_TtC6MapsUI20MUWebPlacecardBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation);
  *(&self->super.isa + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation) = navigation;
  navigationCopy = navigation;
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  _s6MapsUI20MUWebPlacecardBridgeC7webView_9didFinishySo05WKWebG0C_So12WKNavigationCSgtF_0(viewCopy);
}

@end