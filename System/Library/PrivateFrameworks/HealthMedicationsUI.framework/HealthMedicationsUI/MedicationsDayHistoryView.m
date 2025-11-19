@interface MedicationsDayHistoryView
- (void)dealloc;
@end

@implementation MedicationsDayHistoryView

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_timer);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for MedicationsDayHistoryView();
  [(MedicationsDayHistoryView *)&v5 dealloc];
}

@end