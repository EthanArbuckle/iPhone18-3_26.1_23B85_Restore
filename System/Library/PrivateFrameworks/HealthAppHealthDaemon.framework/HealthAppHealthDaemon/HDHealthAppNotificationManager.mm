@interface HDHealthAppNotificationManager
- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)init;
- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)initWithProfile:(id)a3;
- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)initWithProfile:(id)a3 userNotificationCenter:(id)a4;
- (id)createSharingReminderNotificationAndReturnError:(id *)a3;
- (void)removeNotificationWithIdentifier:(id)a3;
- (void)removeNotificationsWithIdentifiers:(id)a3;
@end

@implementation HDHealthAppNotificationManager

- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)initWithProfile:(id)a3
{
  v5 = *MEMORY[0x277CCE3A8];
  v6 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v7 = a3;
  v8 = [v6 initWithBundleIdentifier_];
  v9 = [(HDHealthAppNotificationManager *)self initWithProfile:v7 userNotificationCenter:v8];

  return v9;
}

- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)initWithProfile:(id)a3 userNotificationCenter:(id)a4
{
  v7 = objc_allocWithZone(MEMORY[0x277D108C8]);
  v8 = a3;
  v9 = a4;
  v10 = [v7 initWithProfile_];
  *(&self->super.isa + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_summarySharingEntryManager) = v10;
  *(&self->super.isa + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter) = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for HDHealthAppNotificationManager();
  v11 = [(HDHealthAppNotificationManager *)&v13 init];

  return v11;
}

- (id)createSharingReminderNotificationAndReturnError:(id *)a3
{
  v3 = self;
  v4 = sub_2293ABD64();

  return v4;
}

- (void)removeNotificationWithIdentifier:(id)a3
{
  v4 = sub_2293C0570();
  v6 = v5;
  v7 = self;
  sub_2293ABFF0(v4, v6);
}

- (void)removeNotificationsWithIdentifiers:(id)a3
{
  v4 = OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter);
  v6 = a3;
  v8 = self;
  [v5 removePendingNotificationRequestsWithIdentifiers_];
  v7 = *(&self->super.isa + v4);
  [v7 removeDeliveredNotificationsWithIdentifiers_];
}

- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end