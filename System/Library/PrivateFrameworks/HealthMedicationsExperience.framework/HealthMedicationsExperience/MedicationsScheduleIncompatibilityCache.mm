@interface MedicationsScheduleIncompatibilityCache
- (_TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache)init;
- (void)scheduleControl:(id)control didAddOrModifySchedules:(id)schedules;
@end

@implementation MedicationsScheduleIncompatibilityCache

- (_TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scheduleControl:(id)control didAddOrModifySchedules:(id)schedules
{
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_1D166FD84();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  selfCopy = self;
  sub_1D1632CAC(0, 0, v8, &unk_1D1674250, v10);
}

@end