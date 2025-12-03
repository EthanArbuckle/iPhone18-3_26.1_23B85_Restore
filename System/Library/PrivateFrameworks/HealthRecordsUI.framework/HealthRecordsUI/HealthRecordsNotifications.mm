@interface HealthRecordsNotifications
- (_TtC15HealthRecordsUI26HealthRecordsNotifications)init;
- (void)notificationAlertIfNecessaryWithCompletion:(id)completion;
@end

@implementation HealthRecordsNotifications

- (_TtC15HealthRecordsUI26HealthRecordsNotifications)init
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D13910DC())
  {
    v3 = sub_1D1265DD4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI26HealthRecordsNotifications_cancellables) = v3;
  sub_1D138D90C();
  *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI26HealthRecordsNotifications_notificationManager) = sub_1D138D8FC();
  v5.receiver = self;
  v5.super_class = type metadata accessor for HealthRecordsNotifications();
  return [(HealthRecordsNotifications *)&v5 init];
}

- (void)notificationAlertIfNecessaryWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D1264228(sub_1D1116948, v5);
}

@end