@interface IMSyncedSettingsManager_Impl
- (BOOL)settingExplicitlySetForKey:(int64_t)a3;
- (IMSyncedSettingsManager_Impl)init;
- (IMSyncedSettingsManager_Impl)initWithDaemonController:(id)a3 connection:(id)a4 notificationCenter:(id)a5;
- (void)addObserver:(id)a3 selector:(SEL)a4 key:(int64_t)a5;
- (void)dealloc;
- (void)didUpdateSettingsKeys:(id)a3;
- (void)removeObserver:(id)a3 key:(int64_t)a4;
- (void)setSettingValue:(id)a3 forKey:(int64_t)a4;
- (void)settingValueForKey:(int64_t)a3 reply:(id)a4;
@end

@implementation IMSyncedSettingsManager_Impl

- (IMSyncedSettingsManager_Impl)initWithDaemonController:(id)a3 connection:(id)a4 notificationCenter:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  return SyncedSettingsManager.init(daemonController:connection:notificationCenter:)(v7, a4, a5);
}

- (void)didUpdateSettingsKeys:(id)a3
{
  v4 = sub_1A84E5FFC();
  v5 = self;
  sub_1A845EFB4(v4);
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMSyncedSettingsManager_Impl_daemonController);
  v3 = self;
  v4 = [v2 listener];
  [v4 removeHandler_];

  v5.receiver = v3;
  v5.super_class = type metadata accessor for SyncedSettingsManager();
  [(IMSyncedSettingsManager_Impl *)&v5 dealloc];
}

- (void)settingValueForKey:(int64_t)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1A8462160(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)setSettingValue:(id)a3 forKey:(int64_t)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1A84E63AC();
  swift_unknownObjectRelease();
  sub_1A845FCDC(v7, a4);

  sub_1A8244788(v7);
}

- (void)addObserver:(id)a3 selector:(SEL)a4 key:(int64_t)a5
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1A84E63AC();
  swift_unknownObjectRelease();
  v8 = *(&v7->super.isa + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  sub_1A82471E0(v11, v11[3]);
  v9 = sub_1A84E679C();
  v10 = sub_1A84E62DC();
  [v8 addObserver:v9 selector:a4 name:v10 object:0];

  swift_unknownObjectRelease();
  sub_1A8244788(v11);
}

- (void)removeObserver:(id)a3 key:(int64_t)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1A84E63AC();
  swift_unknownObjectRelease();
  v6 = *(&v5->super.isa + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  sub_1A82471E0(v9, v9[3]);
  v7 = sub_1A84E679C();
  v8 = sub_1A84E62DC();
  [v6 removeObserver:v7 name:v8 object:0];

  swift_unknownObjectRelease();
  sub_1A8244788(v9);
}

- (BOOL)settingExplicitlySetForKey:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1A846024C(a3);

  return a3 & 1;
}

- (IMSyncedSettingsManager_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end