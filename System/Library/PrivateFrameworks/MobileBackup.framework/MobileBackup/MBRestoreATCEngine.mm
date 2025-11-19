@interface MBRestoreATCEngine
- (BOOL)fetcher:(id)a3 didReceiveAsset:(id)a4 path:(id)a5 error:(id *)a6;
- (BOOL)runWithError:(id *)a3;
- (MBAssetFetchSummary)assetFetchSummary;
- (MBPersona)persona;
- (_TtC7backupd18MBRestoreATCEngine)initWithRootPath:(id)a3 policy:(id)a4 depot:(id)a5 fetcher:(id)a6 decrypter:(id)a7 plan:(id)a8 progress:(id)a9 verifier:(id)a10 logger:(id)a11 error:(id *)a12;
- (_TtC7backupd18MBRestoreATCEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5;
- (void)cleanUpOnceAfterError:(id)a3;
- (void)fetcher:(id)a3 failedFetchingAsset:(id)a4 withFetchError:(id)a5;
@end

@implementation MBRestoreATCEngine

- (_TtC7backupd18MBRestoreATCEngine)initWithRootPath:(id)a3 policy:(id)a4 depot:(id)a5 fetcher:(id)a6 decrypter:(id)a7 plan:(id)a8 progress:(id)a9 verifier:(id)a10 logger:(id)a11 error:(id *)a12
{
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = a4;
  v21 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = a9;
  v23 = a10;
  v24 = a11;
  return sub_10001E004(v17, v19, v20, v21, a6, a7, a8, a9, a10, a11);
}

- (MBPersona)persona
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__policy) persona];

  return v2;
}

- (MBAssetFetchSummary)assetFetchSummary
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher) fetchSummary];

  return v2;
}

- (BOOL)runWithError:(id *)a3
{
  v3 = self;
  sub_10001EA50();

  return 1;
}

- (void)cleanUpOnceAfterError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_10002133C(a3);
}

- (BOOL)fetcher:(id)a3 didReceiveAsset:(id)a4 path:(id)a5 error:(id *)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = self;
  sub_100022998(v11, v8, v10);

  swift_unknownObjectRelease();
  return 1;
}

- (void)fetcher:(id)a3 failedFetchingAsset:(id)a4 withFetchError:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v10 = a5;
  v9 = self;
  sub_100022E54(v8, v10);
  swift_unknownObjectRelease();
}

- (_TtC7backupd18MBRestoreATCEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end