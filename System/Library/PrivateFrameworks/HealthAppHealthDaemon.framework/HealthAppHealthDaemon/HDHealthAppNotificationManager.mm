@interface HDHealthAppNotificationManager
- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)init;
- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)initWithProfile:(id)profile;
- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)initWithProfile:(id)profile userNotificationCenter:(id)center;
- (id)createSharingReminderNotificationAndReturnError:(id *)error;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)removeNotificationsWithIdentifiers:(id)identifiers;
@end

@implementation HDHealthAppNotificationManager

- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)initWithProfile:(id)profile
{
  v5 = *MEMORY[0x277CCE3A8];
  v6 = objc_allocWithZone(MEMORY[0x277CE2028]);
  profileCopy = profile;
  initWithBundleIdentifier_ = [v6 initWithBundleIdentifier_];
  v9 = [(HDHealthAppNotificationManager *)self initWithProfile:profileCopy userNotificationCenter:initWithBundleIdentifier_];

  return v9;
}

- (_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager)initWithProfile:(id)profile userNotificationCenter:(id)center
{
  v7 = objc_allocWithZone(MEMORY[0x277D108C8]);
  profileCopy = profile;
  centerCopy = center;
  initWithProfile_ = [v7 initWithProfile_];
  *(&self->super.isa + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_summarySharingEntryManager) = initWithProfile_;
  *(&self->super.isa + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter) = centerCopy;
  v13.receiver = self;
  v13.super_class = type metadata accessor for HDHealthAppNotificationManager();
  v11 = [(HDHealthAppNotificationManager *)&v13 init];

  return v11;
}

- (id)createSharingReminderNotificationAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_2293ABD64();

  return v4;
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  v4 = sub_2293C0570();
  v6 = v5;
  selfCopy = self;
  sub_2293ABFF0(v4, v6);
}

- (void)removeNotificationsWithIdentifiers:(id)identifiers
{
  v4 = OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter);
  identifiersCopy = identifiers;
  selfCopy = self;
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