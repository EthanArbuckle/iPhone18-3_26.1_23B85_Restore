@interface FAFamilySettingsDaemonListener
+ (id)createAndReturnError:(id *)a3;
- (FAFamilySettingsDaemonListener)init;
- (void)dealloc;
@end

@implementation FAFamilySettingsDaemonListener

+ (id)createAndReturnError:(id *)a3
{
  v3 = sub_10005CFDC(sub_10005A0C8, 0, sub_100026A9C, 0);

  return v3;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___FAFamilySettingsDaemonListener_listener);
  v3 = self;
  dispatch thunk of XPCListener.cancel()();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for FamilySettingsDaemonListener();
  [(FAFamilySettingsDaemonListener *)&v4 dealloc];
}

- (FAFamilySettingsDaemonListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end