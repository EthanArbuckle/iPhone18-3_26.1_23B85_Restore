@interface BaseWebView.Controller
- (_TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller)init;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation BaseWebView.Controller

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1B8C250F8();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v12[4] = sub_1B8B67AA4;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B8B67368;
  v12[3] = &block_descriptor_0;
  v9 = _Block_copy(v12);
  v10 = v5;
  v11 = v6;

  [v10 evaluateJavaScript:v7 completionHandler:v9];

  _Block_release(v9);
}

- (_TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller)init
{
  v3 = self + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent;
  v4 = type metadata accessor for BaseWebView.Controller();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 8) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(BaseWebView.Controller *)&v6 init];
}

@end