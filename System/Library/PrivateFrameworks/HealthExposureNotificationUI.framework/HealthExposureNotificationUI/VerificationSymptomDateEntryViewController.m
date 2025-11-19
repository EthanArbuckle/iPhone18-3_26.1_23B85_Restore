@interface VerificationSymptomDateEntryViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (void)datePickerValueChanged:(id)a3;
- (void)didTapCancel;
- (void)didTapSecondaryButton;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSymptomsDateCell:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation VerificationSymptomDateEntryViewController

- (void)didTapSecondaryButton
{
  v1 = a1;
  sub_251687A98();
}

- (void)viewDidLoad
{
  v2 = self;
  VerificationSymptomDateEntryViewController.viewDidLoad()();
}

- (void)updateSymptomsDateCell:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_251686BE4(v4);
}

- (void)datePickerValueChanged:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538C0, &qword_2517090F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = a3;
  v10 = self;
  v11 = [v9 date];
  sub_251702E04();

  v12 = sub_251702E24();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_symptomOnsetDate;
  swift_beginAccess();
  sub_25168A95C(v8, v10 + v13);
  swift_endAccess();
  sub_2516852E0();

  sub_25168B718(v8, &unk_27F4538C0, &qword_2517090F0);
}

- (void)viewDidLayoutSubviews
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4538B0, &unk_2517068C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v8 = self;
  [(OBTableWelcomeController *)&v12 viewDidLayoutSubviews];
  v9 = *(&v8->super.super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_primaryButton);
  sub_251685530(v7);
  v10 = type metadata accessor for SymptomOnset(0);
  v11 = (*(*(v10 - 8) + 48))(v7, 1, v10) != 1;
  sub_25168B718(v7, &unk_27F4538B0, &unk_2517068C0);
  [v9 setEnabled_];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = sub_251702EE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251702EC4();
  v11 = a3;
  v12 = self;
  sub_25168A8AC();
  LOBYTE(self) = v13;

  (*(v7 + 8))(v10, v6);
  return self & 1;
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
  VerificationSymptomDateEntryViewController.tableView(_:didSelectRowAt:)(v11);

  (*(v7 + 8))(v10, v6);
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_25168AA3C(a4);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_25168AB7C(a4);
  v9 = v8;

  return v9;
}

- (void)didTapCancel
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_flow);
  v4 = *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 128);
  v6 = self;
  v5();
}

- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI42VerificationSymptomDateEntryViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end