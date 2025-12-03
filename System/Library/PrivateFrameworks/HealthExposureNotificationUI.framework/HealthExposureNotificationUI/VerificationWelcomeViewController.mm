@interface VerificationWelcomeViewController
- (_TtC28HealthExposureNotificationUI33VerificationWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI33VerificationWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapCancel;
- (void)didTapPrimaryButton;
- (void)viewDidLoad;
@end

@implementation VerificationWelcomeViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  sub_2516F4A2C();
}

- (void)didTapPrimaryButton
{
  selfCopy = self;
  sub_2516F4FC4();
}

- (void)didTapCancel
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_flow);
  selfCopy = self;
  sub_25169DC08(selfCopy, v2);
}

- (_TtC28HealthExposureNotificationUI33VerificationWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI33VerificationWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end