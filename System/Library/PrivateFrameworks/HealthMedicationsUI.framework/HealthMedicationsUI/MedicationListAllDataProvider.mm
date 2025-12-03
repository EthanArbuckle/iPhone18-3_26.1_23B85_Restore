@interface MedicationListAllDataProvider
- (NSPredicate)defaultQueryPredicate;
- (_TtC19HealthMedicationsUI29MedicationListAllDataProvider)init;
- (_TtC19HealthMedicationsUI29MedicationListAllDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)detailSectionForSample:(id)sample;
- (id)sampleTypes;
- (id)textForObject:(id)object;
- (id)viewControllerForItemAtIndexPath:(id)path;
- (void)setDefaultQueryPredicate:(id)predicate;
@end

@implementation MedicationListAllDataProvider

- (_TtC19HealthMedicationsUI29MedicationListAllDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (NSPredicate)defaultQueryPredicate
{
  selfCopy = self;
  v3 = sub_22838DF40();

  return v3;
}

- (void)setDefaultQueryPredicate:(id)predicate
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate);
  *(&self->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate) = predicate;
  predicateCopy = predicate;
}

- (id)textForObject:(id)object
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_22838E190(v9);
  v6 = v5;

  __swift_destroy_boxed_opaque_existential_0(v9);
  if (v6)
  {
    v7 = sub_228391FC0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sampleTypes
{
  sub_228180ED0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228396260;
  selfCopy = self;
  displayType = [(WDSampleListDataProvider *)selfCopy displayType];
  sampleType = [(HKDisplayType *)displayType sampleType];

  *(v3 + 32) = sampleType;
  sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
  v7 = sub_228392190();

  return v7;
}

- (id)viewControllerForItemAtIndexPath:(id)path
{
  v4 = sub_22838F760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  selfCopy = self;
  v10 = sub_22838E464();

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (id)detailSectionForSample:(id)sample
{
  sampleCopy = sample;
  selfCopy = self;
  displayTypeController = [(WDSampleListDataProvider *)selfCopy displayTypeController];
  unitController = [(WDSampleListDataProvider *)selfCopy unitController];
  v8 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication);
  v9 = type metadata accessor for MedicationDoseEventMetadataDetailSection();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationDoseEventMetadataDetailSection_medication] = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  v11 = v8;
  v12 = [(MedicationListAllDataProvider *)&v14 initWithSample:sampleCopy displayTypeController:displayTypeController unitController:unitController];

  return v12;
}

- (_TtC19HealthMedicationsUI29MedicationListAllDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end