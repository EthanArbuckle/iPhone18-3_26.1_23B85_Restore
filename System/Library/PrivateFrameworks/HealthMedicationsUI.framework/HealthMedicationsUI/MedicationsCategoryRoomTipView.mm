@interface MedicationsCategoryRoomTipView
- (UIButton)dismissButton;
- (_TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView)initWithFrame:(CGRect)a3;
- (void)didTapDismiss;
- (void)setDismissButton:(id)a3;
@end

@implementation MedicationsCategoryRoomTipView

- (UIButton)dismissButton
{
  v2 = self;
  v3 = sub_2281FBD64();

  return v3;
}

- (void)setDismissButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton) = a3;
  v3 = a3;
}

- (void)didTapDismiss
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_onDismiss);
  if (v2)
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_onDismiss);
    v4 = self;
    v5 = sub_228176FA8(v2);
    v2(v5);

    sub_228176EC8(v2);
  }
}

- (_TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end