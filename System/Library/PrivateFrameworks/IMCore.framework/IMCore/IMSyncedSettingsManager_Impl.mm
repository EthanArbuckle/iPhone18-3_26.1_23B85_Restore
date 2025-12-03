@interface IMSyncedSettingsManager_Impl
- (BOOL)settingExplicitlySetForKey:(int64_t)key;
- (IMSyncedSettingsManager_Impl)init;
- (IMSyncedSettingsManager_Impl)initWithDaemonController:(id)controller connection:(id)connection notificationCenter:(id)center;
- (void)addObserver:(id)observer selector:(SEL)selector key:(int64_t)key;
- (void)dealloc;
- (void)didUpdateSettingsKeys:(id)keys;
- (void)removeObserver:(id)observer key:(int64_t)key;
- (void)setSettingValue:(id)value forKey:(int64_t)key;
- (void)settingValueForKey:(int64_t)key reply:(id)reply;
@end

@implementation IMSyncedSettingsManager_Impl

- (IMSyncedSettingsManager_Impl)initWithDaemonController:(id)controller connection:(id)connection notificationCenter:(id)center
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  return SyncedSettingsManager.init(daemonController:connection:notificationCenter:)(controllerCopy, connection, center);
}

- (void)didUpdateSettingsKeys:(id)keys
{
  v4 = sub_1A84E5FFC();
  selfCopy = self;
  sub_1A845EFB4(v4);
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMSyncedSettingsManager_Impl_daemonController);
  selfCopy = self;
  listener = [v2 listener];
  [listener removeHandler_];

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for SyncedSettingsManager();
  [(IMSyncedSettingsManager_Impl *)&v5 dealloc];
}

- (void)settingValueForKey:(int64_t)key reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  selfCopy = self;
  sub_1A8462160(key, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)setSettingValue:(id)value forKey:(int64_t)key
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A84E63AC();
  swift_unknownObjectRelease();
  sub_1A845FCDC(v7, key);

  sub_1A8244788(v7);
}

- (void)addObserver:(id)observer selector:(SEL)selector key:(int64_t)key
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A84E63AC();
  swift_unknownObjectRelease();
  v8 = *(&selfCopy->super.isa + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  sub_1A82471E0(v11, v11[3]);
  v9 = sub_1A84E679C();
  v10 = sub_1A84E62DC();
  [v8 addObserver:v9 selector:selector name:v10 object:0];

  swift_unknownObjectRelease();
  sub_1A8244788(v11);
}

- (void)removeObserver:(id)observer key:(int64_t)key
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A84E63AC();
  swift_unknownObjectRelease();
  v6 = *(&selfCopy->super.isa + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  sub_1A82471E0(v9, v9[3]);
  v7 = sub_1A84E679C();
  v8 = sub_1A84E62DC();
  [v6 removeObserver:v7 name:v8 object:0];

  swift_unknownObjectRelease();
  sub_1A8244788(v9);
}

- (BOOL)settingExplicitlySetForKey:(int64_t)key
{
  selfCopy = self;
  LOBYTE(key) = sub_1A846024C(key);

  return key & 1;
}

- (IMSyncedSettingsManager_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end