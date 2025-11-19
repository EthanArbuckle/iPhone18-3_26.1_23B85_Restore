@interface WebReportViewController
- (_TtC28HealthExposureNotificationUI23WebReportViewController)initWithCoder:(id)a3;
- (_TtC28HealthExposureNotificationUI23WebReportViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation WebReportViewController

- (_TtC28HealthExposureNotificationUI23WebReportViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController____lazy_storage___webView) = 0;
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_statusView;
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = objc_allocWithZone(type metadata accessor for LoadingStatusView());
  *(&self->super.super.super.isa + v4) = LoadingStatusView.init(with:backgroundColor:)(0, 0xE000000000000000, v5);
  result = sub_251703584();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  WebReportViewController.viewDidLoad()();
}

- (_TtC28HealthExposureNotificationUI23WebReportViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_251698EEC(v7);
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_25169935C(v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_25169994C(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_251699B2C(v11);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI23WebReportViewController_statusView);
  v5 = *&v4[OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView];
  v6 = self;
  [v5 stopAnimating];
  [v4 setHidden_];
}

@end