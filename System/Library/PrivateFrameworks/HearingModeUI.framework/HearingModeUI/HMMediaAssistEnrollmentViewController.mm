@interface HMMediaAssistEnrollmentViewController
- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithDeviceAddress:(id)a3 audiogramSample:(id)a4;
- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)mainButtonTapped;
- (void)secondaryButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HMMediaAssistEnrollmentViewController

- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithDeviceAddress:(id)a3 audiogramSample:(id)a4
{
  if (a3)
  {
    v5 = sub_252064724();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return HMMediaAssistEnrollmentViewController.init(deviceAddress:audiogramSample:)(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_252058690();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_252058990(a3);
}

- (void)mainButtonTapped
{
  v2 = self;
  sub_2520598E4();
}

- (void)secondaryButtonTapped
{
  v2 = self;
  sub_252059A50();
}

- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end