@interface MedicationListItemCell
- (UILabel)primaryLabel;
- (UIStackView)itemsStackView;
- (UIStackView)medicationDetailStackView;
- (UIStackView)metaScheduleStackView;
- (UIStackView)scheduleStackView;
- (_TtC27HealthMedicationsExperience14MedicationView)pillImageView;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setItemsStackView:(id)view;
- (void)setMedicationDetailStackView:(id)view;
- (void)setMetaScheduleStackView:(id)view;
- (void)setPillImageView:(id)view;
- (void)setPrimaryLabel:(id)label;
- (void)setScheduleStackView:(id)view;
@end

@implementation MedicationListItemCell

- (UILabel)primaryLabel
{
  selfCopy = self;
  v3 = sub_22821B974();

  return v3;
}

- (void)setPrimaryLabel:(id)label
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel) = label;
  labelCopy = label;
}

- (_TtC27HealthMedicationsExperience14MedicationView)pillImageView
{
  selfCopy = self;
  v3 = sub_22821BD64();

  return v3;
}

- (void)setPillImageView:(id)view
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView) = view;
  viewCopy = view;
}

- (UIStackView)medicationDetailStackView
{
  selfCopy = self;
  v3 = sub_22821BEA4();

  return v3;
}

- (void)setMedicationDetailStackView:(id)view
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView) = view;
  viewCopy = view;
}

- (UIStackView)scheduleStackView
{
  selfCopy = self;
  v3 = sub_22821BF40();

  return v3;
}

- (void)setScheduleStackView:(id)view
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView) = view;
  viewCopy = view;
}

- (UIStackView)metaScheduleStackView
{
  selfCopy = self;
  v3 = sub_22821BFDC();

  return v3;
}

- (void)setMetaScheduleStackView:(id)view
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView) = view;
  viewCopy = view;
}

- (UIStackView)itemsStackView
{
  selfCopy = self;
  v3 = sub_22821C144();

  return v3;
}

- (void)setItemsStackView:(id)view
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView) = view;
  viewCopy = view;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  selfCopy = self;
  sub_22821D4A0();

  (*(v5 + 8))(v8, v4);
}

@end