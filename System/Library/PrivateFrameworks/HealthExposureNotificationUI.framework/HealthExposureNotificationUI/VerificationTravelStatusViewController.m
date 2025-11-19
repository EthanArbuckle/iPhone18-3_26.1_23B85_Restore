@interface VerificationTravelStatusViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (void)didTapCancel;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation VerificationTravelStatusViewController

- (void)viewDidLoad
{
  v2 = self;
  VerificationTravelStatusViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(OBTableWelcomeController *)&v3 viewDidLayoutSubviews];
  [*&v2[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton] setEnabled_];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = sub_251702EE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_251702EC4();
  v11 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (v11)
  {
    v12 = self;
    v13 = v11;
    sub_251702FF4();

    v14 = v16;
    if (v16 != 3)
    {

      (*(v6 + 8))(v9, v5);
      return (v14 - 1) < 2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  v11 = a3;
  v12 = self;
  VerificationTravelStatusViewController.tableView(_:didSelectRowAt:)(v11);

  (*(v7 + 8))(v10, v6);
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_2516F3F70(a4);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_2516F40AC(a4);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  v11 = a3;
  v12 = self;
  VerificationTravelStatusViewController.tableView(_:heightForRowAt:)(v11);
  v14 = v13;

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (void)didTapPrimaryButton
{
  v2 = self;
  sub_2516F3480();
}

- (void)didTapSecondaryButton
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow);
  v4 = *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 120);
  v6 = self;
  v5();
}

- (void)didTapCancel
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow);
  v4 = *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 128);
  v6 = self;
  v5();
}

- (_TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end