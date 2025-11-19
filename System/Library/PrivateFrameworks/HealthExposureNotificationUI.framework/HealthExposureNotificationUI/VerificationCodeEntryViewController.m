@interface VerificationCodeEntryViewController
- (_TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)didTapCancel;
- (void)didTapHelpButton;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation VerificationCodeEntryViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver_];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(VerificationCodeEntryViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  VerificationCodeEntryViewController.viewDidLoad()();
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  VerificationCodeEntryViewController.viewSafeAreaInsetsDidChange()();
}

- (void)keyboardWillChangeFrame:(id)a3
{
  v4 = sub_251702C84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702C64();
  v9 = self;
  sub_2516D5214();

  (*(v5 + 8))(v8, v4);
}

- (void)didTapHelpButton
{
  v2 = self;
  sub_2516D5594();
}

- (void)didTapCancel
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController_flow);
  v3 = self;
  sub_25169D808(v3, v2);
}

- (_TtC28HealthExposureNotificationUI35VerificationCodeEntryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end