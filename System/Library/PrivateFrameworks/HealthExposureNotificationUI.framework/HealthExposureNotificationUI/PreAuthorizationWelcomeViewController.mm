@interface PreAuthorizationWelcomeViewController
- (_TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapCancel;
- (void)didTapPrimaryButton;
- (void)viewDidLoad;
@end

@implementation PreAuthorizationWelcomeViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  sub_2516AC1E4();
}

- (void)didTapPrimaryButton
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_flow);
  selfCopy = self;
  sub_2516ACB7C(selfCopy, v2);
}

- (void)didTapCancel
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController_flow) + OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_completionHandler;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 1);
  selfCopy = self;

  v5(0);
}

- (_TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI37PreAuthorizationWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end