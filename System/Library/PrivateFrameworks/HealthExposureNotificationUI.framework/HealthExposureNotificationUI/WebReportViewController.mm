@interface WebReportViewController
- (_TtC28HealthExposureNotificationUI23WebReportViewController)initWithCoder:(id)coder;
- (_TtC28HealthExposureNotificationUI23WebReportViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation WebReportViewController

- (_TtC28HealthExposureNotificationUI23WebReportViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController____lazy_storage___webView) = 0;
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_statusView;
  systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
  v6 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *(&self->super.super.super.isa + v4) = LoadingStatusView.init(with:backgroundColor:)(0, 0xE000000000000000, systemBackgroundColor);
  result = sub_251703584();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  WebReportViewController.viewDidLoad()();
}

- (_TtC28HealthExposureNotificationUI23WebReportViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  controllerCopy = controller;
  messageCopy = message;
  selfCopy = self;
  sub_251698EEC(messageCopy);
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_25169935C(actionCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  viewCopy = view;
  responseCopy = response;
  selfCopy = self;
  sub_25169994C(responseCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_251699B2C(errorCopy);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_statusView);
  v5 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView];
  selfCopy = self;
  [v5 stopAnimating];
  [v4 setHidden_];
}

@end