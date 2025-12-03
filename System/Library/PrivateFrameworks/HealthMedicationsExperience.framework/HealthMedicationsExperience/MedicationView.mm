@interface MedicationView
- (void)layoutSubviews;
- (void)setNeedsUpdateConstraints;
@end

@implementation MedicationView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MedicationView(0);
  v2 = v5.receiver;
  [(MedicationView *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    layer = [v2 layer];
    [v2 bounds];
    [layer setCornerRadius_];
  }
}

- (void)setNeedsUpdateConstraints
{
  selfCopy = self;
  sub_1D15F0018();
}

@end