@interface FPFSSQLRestoreEngine
- (_TtC18FileProviderDaemon20FPFSSQLRestoreEngine)init;
- (_TtC18FileProviderDaemon20FPFSSQLRestoreEngine)initWithUserURL:(id)l backupBuild:(id)build restoreType:(id)type;
- (void)restorePurgenciesAndResidencyReasonsWithCompletionHandler:(id)handler;
- (void)restoreWithCleanupOnSuccess:(BOOL)success completionHandler:(id)handler;
@end

@implementation FPFSSQLRestoreEngine

- (_TtC18FileProviderDaemon20FPFSSQLRestoreEngine)initWithUserURL:(id)l backupBuild:(id)build restoreType:(id)type
{
  v7 = sub_1CF9E5A58();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  if (!build)
  {
    v12 = 0;
    if (type)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0;
    return FPFSSQLRestoreEngine.init(userURL:backupBuild:restoreType:)(v10, build, v12, v13, v15);
  }

  build = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  if (!type)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;
  return FPFSSQLRestoreEngine.init(userURL:backupBuild:restoreType:)(v10, build, v12, v13, v15);
}

- (void)restoreWithCleanupOnSuccess:(BOOL)success completionHandler:(id)handler
{
  successCopy = success;
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  selfCopy = self;
  sub_1CF1FB4D4(successCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)restorePurgenciesAndResidencyReasonsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_1CF1FCADC(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC18FileProviderDaemon20FPFSSQLRestoreEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end