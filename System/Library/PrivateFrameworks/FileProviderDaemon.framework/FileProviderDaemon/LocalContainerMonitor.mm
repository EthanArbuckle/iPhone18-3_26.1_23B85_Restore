@interface LocalContainerMonitor
- (_TtC18FileProviderDaemon21LocalContainerMonitor)init;
- (void)appRegistry:(id)registry didRemoveAppsWithBundleIDs:(id)ds;
- (void)appRegistry:(id)registry didUpdateApps:(id)apps;
@end

@implementation LocalContainerMonitor

- (void)appRegistry:(id)registry didUpdateApps:(id)apps
{
  sub_1CEFD57E0(0, &qword_1EDEA36F8, 0x1E69672B0);
  v6 = sub_1CF9E6D48();
  registryCopy = registry;
  selfCopy = self;
  sub_1CF4F0C40(v6);
}

- (void)appRegistry:(id)registry didRemoveAppsWithBundleIDs:(id)ds
{
  v6 = sub_1CF9E6D48();
  registryCopy = registry;
  selfCopy = self;
  sub_1CF4F0E30(v6);
}

- (_TtC18FileProviderDaemon21LocalContainerMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end