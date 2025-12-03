@interface MedicationDoseDaySummaryProvider
- (NSString)debugDescription;
- (_TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider)init;
- (void)dealloc;
- (void)scheduleControlDidRescheduleItems;
@end

@implementation MedicationDoseDaySummaryProvider

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery);
  if (v3)
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore);
    selfCopy = self;
    [v4 stopQuery_];
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MedicationDoseDaySummaryProvider();
  [(MedicationDoseDaySummaryProvider *)&v7 dealloc];
}

- (NSString)debugDescription
{
  swift_getObjectType();
  selfCopy = self;
  v4 = sub_1D1670754();
  MEMORY[0x1D388CCF0](v4);

  MEMORY[0x1D388CCF0](58, 0xE100000000000000);
  sub_1D1670414();

  v5 = sub_1D166F9C4();

  return v5;
}

- (_TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scheduleControlDidRescheduleItems
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1D166FD84();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_1D1617D5C(0, 0, v6, &unk_1D16732F0, v8);

  sub_1D161DF10(v6);
}

@end