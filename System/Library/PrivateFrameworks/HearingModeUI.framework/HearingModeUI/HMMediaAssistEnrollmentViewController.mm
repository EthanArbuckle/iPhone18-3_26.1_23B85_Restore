@interface HMMediaAssistEnrollmentViewController
- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithDeviceAddress:(id)address audiogramSample:(id)sample;
- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)mainButtonTapped;
- (void)secondaryButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HMMediaAssistEnrollmentViewController

- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithDeviceAddress:(id)address audiogramSample:(id)sample
{
  if (address)
  {
    v5 = sub_252064724();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sampleCopy = sample;
  return HMMediaAssistEnrollmentViewController.init(deviceAddress:audiogramSample:)(v5, v7, sample);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_252058690();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_252058990(appear);
}

- (void)mainButtonTapped
{
  selfCopy = self;
  sub_2520598E4();
}

- (void)secondaryButtonTapped
{
  selfCopy = self;
  sub_252059A50();
}

- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI37HMMediaAssistEnrollmentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end