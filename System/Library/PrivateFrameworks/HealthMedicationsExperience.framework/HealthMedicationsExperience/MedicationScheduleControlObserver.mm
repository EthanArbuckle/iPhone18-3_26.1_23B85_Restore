@interface MedicationScheduleControlObserver
- (_TtC27HealthMedicationsExperience33MedicationScheduleControlObserver)init;
- (void)scheduleControl:(id)control didAddOrModifySchedules:(id)schedules;
- (void)scheduleControlDidRescheduleItems;
@end

@implementation MedicationScheduleControlObserver

- (void)scheduleControlDidRescheduleItems
{
  if (*(&self->super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions))
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject);
    sub_1D165A76C();
    sub_1D165A848();
    selfCopy = self;
    sub_1D166F6D4();
  }
}

- (void)scheduleControl:(id)control didAddOrModifySchedules:(id)schedules
{
  if ((*(&self->super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions) & 2) != 0)
  {
    v5 = *(&self->super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject);
    sub_1D165A76C();
    sub_1D165A848();
    selfCopy = self;
    sub_1D166F6D4();
  }
}

- (_TtC27HealthMedicationsExperience33MedicationScheduleControlObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end