@interface MockUNUserNotificationCenter
- (_TtC14HealthPlatform28MockUNUserNotificationCenter)initWithBundleIdentifier:(id)a3;
- (_TtC14HealthPlatform28MockUNUserNotificationCenter)initWithBundleIdentifier:(id)a3 queue:(id)a4;
- (id)deliveredNotifications;
- (id)notificationSettings;
- (id)pendingNotificationRequests;
- (void)addNotificationRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)getDeliveredNotificationsWithCompletionHandler:(id)a3;
- (void)getNotificationSettingsWithCompletionHandler:(id)a3;
- (void)getPendingNotificationRequestsWithCompletionHandler:(id)a3;
- (void)removeAllDeliveredNotifications;
- (void)removeAllPendingNotificationRequests;
- (void)requestAuthorizationWithOptions:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation MockUNUserNotificationCenter

- (_TtC14HealthPlatform28MockUNUserNotificationCenter)initWithBundleIdentifier:(id)a3 queue:(id)a4
{
  if (a3)
  {
    v5 = sub_22855D1AC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return sub_228479EF0(v5, v7, a4);
}

- (void)addNotificationRequest:(id)a3 withCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_22847F2DC;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_22847A088(v8, v6, v7);
  sub_228416CF8(v6);
}

- (void)getPendingNotificationRequestsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  v6 = self;
  os_unfair_lock_lock((v5 + 40));
  sub_22847FD58((v5 + 16));
  os_unfair_lock_unlock((v5 + 40));
}

- (id)pendingNotificationRequests
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  v3 = self;
  os_unfair_lock_lock((v2 + 40));
  v4 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 40));

  sub_2283EF310(0, &qword_280DE92E8, 0x277CE1FC0);
  v5 = sub_22855D39C();

  return v5;
}

- (void)getDeliveredNotificationsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  v6 = self;
  os_unfair_lock_lock(v5 + 10);
  sub_22847FD94(&v5[4]);
  os_unfair_lock_unlock(v5 + 10);
}

- (id)deliveredNotifications
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  v3 = self;
  os_unfair_lock_lock((v2 + 40));
  v4 = *(v2 + 24);

  os_unfair_lock_unlock((v2 + 40));

  sub_2283EF310(0, &qword_27D83F918, 0x277CE1F78);
  v5 = sub_22855D39C();

  return v5;
}

- (void)removeAllPendingNotificationRequests
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  v4 = self;
  os_unfair_lock_lock((v2 + 40));
  v3 = *(v2 + 16);

  *(v2 + 16) = MEMORY[0x277D84F90];
  os_unfair_lock_unlock((v2 + 40));
}

- (void)removeAllDeliveredNotifications
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  v4 = self;
  os_unfair_lock_lock((v2 + 40));
  v3 = *(v2 + 24);

  *(v2 + 24) = MEMORY[0x277D84F90];
  os_unfair_lock_unlock((v2 + 40));
}

- (void)getNotificationSettingsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_22847F128(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)notificationSettings
{
  v3 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  if (v4)
  {
    v5 = *(&self->super.super.isa + v3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = type metadata accessor for MockUNUserNotificationCenter();
    v5 = [(MockUNUserNotificationCenter *)&v8 notificationSettings];
    v4 = 0;
  }

  v6 = v4;

  return v5;
}

- (void)requestAuthorizationWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = self + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization;
  swift_beginAccess();
  v9 = *v7;
  v8 = *(v7 + 1);
  v10 = self;

  v11 = v9(a3);
  v13 = v12;

  if (v13)
  {
    v14 = sub_22855BF2C();
  }

  else
  {
    v14 = 0;
  }

  v6[2](v6, v11 & 1, v14);

  _Block_release(v6);
}

- (_TtC14HealthPlatform28MockUNUserNotificationCenter)initWithBundleIdentifier:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end