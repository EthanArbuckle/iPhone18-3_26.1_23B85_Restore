@interface FPFSSQLBackupEngine
- (_TtC18FileProviderDaemon19FPFSSQLBackupEngine)init;
- (_TtC18FileProviderDaemon19FPFSSQLBackupEngine)initWithUserURL:(id)a3 outputUserURL:(id)a4;
- (void)backUpWithCompletionHandler:(id)a3;
@end

@implementation FPFSSQLBackupEngine

- (_TtC18FileProviderDaemon19FPFSSQLBackupEngine)initWithUserURL:(id)a3 outputUserURL:(id)a4
{
  v4 = sub_1CF9E5A58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  return FPFSSQLBackupEngine.init(userURL:outputUserURL:)(v10, v7);
}

- (void)backUpWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1CF33E3F0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC18FileProviderDaemon19FPFSSQLBackupEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end