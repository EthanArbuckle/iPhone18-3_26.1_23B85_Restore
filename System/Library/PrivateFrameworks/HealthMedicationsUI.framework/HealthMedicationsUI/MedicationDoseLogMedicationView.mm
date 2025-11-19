@interface MedicationDoseLogMedicationView
- (void)didTapUnitTime:(id)a3;
- (void)layoutSubviews;
@end

@implementation MedicationDoseLogMedicationView

- (void)layoutSubviews
{
  v2 = self;
  sub_2281D1390();
}

- (void)didTapUnitTime:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_228392F90();
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel);

    sub_2282D2868(v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v7);
}

@end