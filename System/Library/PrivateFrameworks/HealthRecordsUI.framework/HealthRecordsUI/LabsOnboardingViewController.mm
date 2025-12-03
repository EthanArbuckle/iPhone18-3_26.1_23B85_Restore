@interface LabsOnboardingViewController
- (_TtC15HealthRecordsUI28LabsOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation LabsOnboardingViewController

- (_TtC15HealthRecordsUI28LabsOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v4 = objc_allocWithZone(type metadata accessor for LabsOnboardingViewController());
  v5 = sub_1D1268E2C(0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D1269BE8();
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  sub_1D106F934(0, &qword_1EC60E530);
  sub_1D126B444();
  sub_1D13906BC();
  eventCopy = event;
  selfCopy = self;
  v8 = sub_1D13906AC();

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for LabsOnboardingViewController();
  [(LabsOnboardingViewController *)&v11 touchesCancelled:v8 withEvent:eventCopy];

  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover) == 1)
  {
    v9 = sub_1D1269848();
    v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_accessoryColor);
    [v9 setTextColor_];
  }
}

@end