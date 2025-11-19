@interface MedicationListItemCell
- (UILabel)primaryLabel;
- (UIStackView)itemsStackView;
- (UIStackView)medicationDetailStackView;
- (UIStackView)metaScheduleStackView;
- (UIStackView)scheduleStackView;
- (_TtC27HealthMedicationsExperience14MedicationView)pillImageView;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)setItemsStackView:(id)a3;
- (void)setMedicationDetailStackView:(id)a3;
- (void)setMetaScheduleStackView:(id)a3;
- (void)setPillImageView:(id)a3;
- (void)setPrimaryLabel:(id)a3;
- (void)setScheduleStackView:(id)a3;
@end

@implementation MedicationListItemCell

- (UILabel)primaryLabel
{
  v2 = self;
  v3 = sub_22821B974();

  return v3;
}

- (void)setPrimaryLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel) = a3;
  v3 = a3;
}

- (_TtC27HealthMedicationsExperience14MedicationView)pillImageView
{
  v2 = self;
  v3 = sub_22821BD64();

  return v3;
}

- (void)setPillImageView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView) = a3;
  v3 = a3;
}

- (UIStackView)medicationDetailStackView
{
  v2 = self;
  v3 = sub_22821BEA4();

  return v3;
}

- (void)setMedicationDetailStackView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView) = a3;
  v3 = a3;
}

- (UIStackView)scheduleStackView
{
  v2 = self;
  v3 = sub_22821BF40();

  return v3;
}

- (void)setScheduleStackView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView) = a3;
  v3 = a3;
}

- (UIStackView)metaScheduleStackView
{
  v2 = self;
  v3 = sub_22821BFDC();

  return v3;
}

- (void)setMetaScheduleStackView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView) = a3;
  v3 = a3;
}

- (UIStackView)itemsStackView
{
  v2 = self;
  v3 = sub_22821C144();

  return v3;
}

- (void)setItemsStackView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView) = a3;
  v3 = a3;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  v9 = self;
  sub_22821D4A0();

  (*(v5 + 8))(v8, v4);
}

@end