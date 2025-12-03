@interface NDDelayedNotificationScheduler
- (NDDelayedNotificationScheduler)init;
- (void)activate;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
@end

@implementation NDDelayedNotificationScheduler

- (void)activate
{
  v3 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_100018090(0, 0, v6, &unk_10005AC50, v8);
}

- (NDDelayedNotificationScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = FCNotificationsLog;
  centerCopy = center;
  settingsCopy = settings;
  selfCopy = self;
  v15 = v11;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = selfCopy;
  v18 = selfCopy;
  sub_100018090(0, 0, v10, &unk_10005AC08, v17);
}

@end