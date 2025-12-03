@interface OnboardingInfoViewController
- (_TtC28HealthExposureNotificationUI28OnboardingInfoViewController)initWithCoder:(id)coder;
- (_TtC28HealthExposureNotificationUI28OnboardingInfoViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (_TtC28HealthExposureNotificationUI28OnboardingInfoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_251703164();
    name = v8;
  }

  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView;
  v10 = objc_allocWithZone(MEMORY[0x277D759D8]);
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v9) = [v10 init];
  if (name)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(OnboardingInfoViewController *)&v15 initWithNibName:v12 bundle:bundleCopy];

  return v13;
}

- (_TtC28HealthExposureNotificationUI28OnboardingInfoViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI28OnboardingInfoViewController_scrollView;
  v7 = objc_allocWithZone(MEMORY[0x277D759D8]);
  coderCopy = coder;
  *(&self->super.super.super.isa + v6) = [v7 init];
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(OnboardingInfoViewController *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end