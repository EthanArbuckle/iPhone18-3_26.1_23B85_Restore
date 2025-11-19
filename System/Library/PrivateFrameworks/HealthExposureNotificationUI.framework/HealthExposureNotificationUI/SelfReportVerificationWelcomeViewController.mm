@interface SelfReportVerificationWelcomeViewController
- (_TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SelfReportVerificationWelcomeViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SelfReportVerificationWelcomeViewController();
  v2 = v3.receiver;
  [(SelfReportVerificationWelcomeViewController *)&v3 viewDidLoad];
  sub_25169B868();
}

- (void)viewWillLayoutSubviews
{
  v6 = self;
  v2 = [(SelfReportVerificationWelcomeViewController *)v6 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setLayoutMargins_];

  v4 = [(SelfReportVerificationWelcomeViewController *)v6 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutMarginsDidChange];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_25169B548();
}

- (_TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v8 = self;
  sub_25169B730();
  v5 = [v4 panGestureRecognizer];
  [v5 velocityInView_];
  v7 = v6;

  sub_25169CBA8(fabs(v7) < 300.0);
}

@end