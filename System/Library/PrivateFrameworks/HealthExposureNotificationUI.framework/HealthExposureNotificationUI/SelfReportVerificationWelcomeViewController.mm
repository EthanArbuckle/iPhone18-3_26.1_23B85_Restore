@interface SelfReportVerificationWelcomeViewController
- (_TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewDidScroll:(id)scroll;
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
  selfCopy = self;
  view = [(SelfReportVerificationWelcomeViewController *)selfCopy view];
  if (!view)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = view;
  [view setLayoutMargins_];

  view2 = [(SelfReportVerificationWelcomeViewController *)selfCopy view];
  if (!view2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = view2;
  [view2 layoutMarginsDidChange];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_25169B548();
}

- (_TtC28HealthExposureNotificationUI43SelfReportVerificationWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_25169B730();
  panGestureRecognizer = [scrollCopy panGestureRecognizer];
  [panGestureRecognizer velocityInView_];
  v7 = v6;

  sub_25169CBA8(fabs(v7) < 300.0);
}

@end