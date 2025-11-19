@interface LocalContainerMonitor
- (_TtC18FileProviderDaemon21LocalContainerMonitor)init;
- (void)appRegistry:(id)a3 didRemoveAppsWithBundleIDs:(id)a4;
- (void)appRegistry:(id)a3 didUpdateApps:(id)a4;
@end

@implementation LocalContainerMonitor

- (void)appRegistry:(id)a3 didUpdateApps:(id)a4
{
  sub_1CEFD57E0(0, &qword_1EDEA36F8, 0x1E69672B0);
  v6 = sub_1CF9E6D48();
  v7 = a3;
  v8 = self;
  sub_1CF4F0C40(v6);
}

- (void)appRegistry:(id)a3 didRemoveAppsWithBundleIDs:(id)a4
{
  v6 = sub_1CF9E6D48();
  v7 = a3;
  v8 = self;
  sub_1CF4F0E30(v6);
}

- (_TtC18FileProviderDaemon21LocalContainerMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end