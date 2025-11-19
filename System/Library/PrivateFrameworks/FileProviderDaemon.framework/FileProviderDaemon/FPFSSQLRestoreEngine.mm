@interface FPFSSQLRestoreEngine
- (_TtC18FileProviderDaemon20FPFSSQLRestoreEngine)init;
- (_TtC18FileProviderDaemon20FPFSSQLRestoreEngine)initWithUserURL:(id)a3 backupBuild:(id)a4 restoreType:(id)a5;
- (void)restorePurgenciesAndResidencyReasonsWithCompletionHandler:(id)a3;
- (void)restoreWithCleanupOnSuccess:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation FPFSSQLRestoreEngine

- (_TtC18FileProviderDaemon20FPFSSQLRestoreEngine)initWithUserURL:(id)a3 backupBuild:(id)a4 restoreType:(id)a5
{
  v7 = sub_1CF9E5A58();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  if (!a4)
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0;
    return FPFSSQLRestoreEngine.init(userURL:backupBuild:restoreType:)(v10, a4, v12, v13, v15);
  }

  a4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;
  return FPFSSQLRestoreEngine.init(userURL:backupBuild:restoreType:)(v10, a4, v12, v13, v15);
}

- (void)restoreWithCleanupOnSuccess:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1CF1FB4D4(v4, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)restorePurgenciesAndResidencyReasonsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1CF1FCADC(v5, v4);
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