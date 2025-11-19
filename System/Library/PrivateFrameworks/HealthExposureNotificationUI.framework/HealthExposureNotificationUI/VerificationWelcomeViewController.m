@interface VerificationWelcomeViewController
- (_TtC28HealthExposureNotificationUI33VerificationWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC28HealthExposureNotificationUI33VerificationWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
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
  v2 = self;
  sub_2516F4FC4();
}

- (void)didTapCancel
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_flow);
  v3 = self;
  sub_25169DC08(v3, v2);
}

- (_TtC28HealthExposureNotificationUI33VerificationWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI33VerificationWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end