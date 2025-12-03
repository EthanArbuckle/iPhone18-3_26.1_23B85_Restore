@interface VerificationFinishedViewController
- (_TtC28HealthExposureNotificationUI34VerificationFinishedViewController)initWithRegionDisplayName:(id)name;
- (_TtC28HealthExposureNotificationUI34VerificationFinishedViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI34VerificationFinishedViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapPrimaryButton;
- (void)viewDidLoad;
@end

@implementation VerificationFinishedViewController

- (_TtC28HealthExposureNotificationUI34VerificationFinishedViewController)initWithRegionDisplayName:(id)name
{
  if (name)
  {
    v3 = sub_251703164();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return VerificationFinishedViewController.init(regionDisplayName:)(v3, v4);
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_2516D98C8();
  navigationItem = [v2 navigationItem];
  [navigationItem setHidesBackButton_];
}

- (void)didTapPrimaryButton
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_flow))
  {
    v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_flow);
    v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI34VerificationFinishedViewController_flow);
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 120);
    selfCopy = self;
    swift_unknownObjectRetain();
    v6(selfCopy, &protocol witness table for VerificationFinishedViewController, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {

    [(VerificationFinishedViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC28HealthExposureNotificationUI34VerificationFinishedViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI34VerificationFinishedViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end