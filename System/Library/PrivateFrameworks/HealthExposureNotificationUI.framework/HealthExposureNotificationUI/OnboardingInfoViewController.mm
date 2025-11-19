@interface OnboardingInfoViewController
- (_TtC28HealthExposureNotificationUI28OnboardingInfoViewController)initWithCoder:(id)a3;
- (_TtC28HealthExposureNotificationUI28OnboardingInfoViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation OnboardingInfoViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(OnboardingInfoViewController *)&v3 viewDidLoad];
  sub_2516AE9EC();
}

- (_TtC28HealthExposureNotificationUI28OnboardingInfoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_251703164();
    a3 = v8;
  }

  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView;
  v10 = objc_allocWithZone(MEMORY[0x277D759D8]);
  v11 = a4;
  *(&self->super.super.super.isa + v9) = [v10 init];
  if (a3)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(OnboardingInfoViewController *)&v15 initWithNibName:v12 bundle:v11];

  return v13;
}

- (_TtC28HealthExposureNotificationUI28OnboardingInfoViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView;
  v7 = objc_allocWithZone(MEMORY[0x277D759D8]);
  v8 = a3;
  *(&self->super.super.super.isa + v6) = [v7 init];
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(OnboardingInfoViewController *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end