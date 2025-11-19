@interface MUWebPlacecardBridge
- (_TtC6MapsUI20MUWebPlacecardBridge)init;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
@end

@implementation MUWebPlacecardBridge

- (_TtC6MapsUI20MUWebPlacecardBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation);
  *(&self->super.isa + OBJC_IVAR____TtC6MapsUI20MUWebPlacecardBridge_currentNavigation) = a4;
  v4 = a4;
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s6MapsUI20MUWebPlacecardBridgeC7webView_9didFinishySo05WKWebG0C_So12WKNavigationCSgtF_0(v6);
}

@end