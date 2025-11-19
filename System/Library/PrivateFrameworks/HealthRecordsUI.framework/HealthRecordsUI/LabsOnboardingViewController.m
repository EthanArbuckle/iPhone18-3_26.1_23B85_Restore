@interface LabsOnboardingViewController
- (_TtC15HealthRecordsUI28LabsOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)viewDidLoad;
@end

@implementation LabsOnboardingViewController

- (_TtC15HealthRecordsUI28LabsOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v4 = objc_allocWithZone(type metadata accessor for LabsOnboardingViewController());
  v5 = sub_1D1268E2C(0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D1269BE8();
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  sub_1D106F934(0, &qword_1EC60E530);
  sub_1D126B444();
  sub_1D13906BC();
  v6 = a4;
  v7 = self;
  v8 = sub_1D13906AC();

  v11.receiver = v7;
  v11.super_class = type metadata accessor for LabsOnboardingViewController();
  [(LabsOnboardingViewController *)&v11 touchesCancelled:v8 withEvent:v6];

  if (*(&v7->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_isPresentingInPopover) == 1)
  {
    v9 = sub_1D1269848();
    v10 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI28LabsOnboardingViewController_accessoryColor);
    [v9 setTextColor_];
  }
}

@end