@interface DefaultLSAppsSettingsProvider.CallCapabilitiesMonitor
- (_TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor)init;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
@end

@implementation DefaultLSAppsSettingsProvider.CallCapabilitiesMonitor

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  v4 = sub_21C55C5B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C55C594();
  v10 = *(&self->super.isa + OBJC_IVAR____TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor_notify);
  v9 = *&self->notify[OBJC_IVAR____TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor_notify];
  selfCopy = self;

  v10(v12);

  (*(v5 + 8))(v8, v4);
}

- (_TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end