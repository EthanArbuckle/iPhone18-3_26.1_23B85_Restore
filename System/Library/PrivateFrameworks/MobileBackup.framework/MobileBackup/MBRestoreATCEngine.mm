@interface MBRestoreATCEngine
- (BOOL)fetcher:(id)fetcher didReceiveAsset:(id)asset path:(id)path error:(id *)error;
- (BOOL)runWithError:(id *)error;
- (MBAssetFetchSummary)assetFetchSummary;
- (MBPersona)persona;
- (_TtC7backupd18MBRestoreATCEngine)initWithRootPath:(id)path policy:(id)policy depot:(id)depot fetcher:(id)fetcher decrypter:(id)decrypter plan:(id)plan progress:(id)progress verifier:(id)self0 logger:(id)self1 error:(id *)self2;
- (_TtC7backupd18MBRestoreATCEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager;
- (void)cleanUpOnceAfterError:(id)error;
- (void)fetcher:(id)fetcher failedFetchingAsset:(id)asset withFetchError:(id)error;
@end

@implementation MBRestoreATCEngine

- (_TtC7backupd18MBRestoreATCEngine)initWithRootPath:(id)path policy:(id)policy depot:(id)depot fetcher:(id)fetcher decrypter:(id)decrypter plan:(id)plan progress:(id)progress verifier:(id)self0 logger:(id)self1 error:(id *)self2
{
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  policyCopy = policy;
  depotCopy = depot;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  progressCopy = progress;
  verifierCopy = verifier;
  loggerCopy = logger;
  return sub_10001E004(v17, v19, policyCopy, depotCopy, fetcher, decrypter, plan, progress, verifier, logger);
}

- (MBPersona)persona
{
  persona = [*(&self->super.super.super.isa + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__policy) persona];

  return persona;
}

- (MBAssetFetchSummary)assetFetchSummary
{
  fetchSummary = [*(&self->super.super.super.isa + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher) fetchSummary];

  return fetchSummary;
}

- (BOOL)runWithError:(id *)error
{
  selfCopy = self;
  sub_10001EA50();

  return 1;
}

- (void)cleanUpOnceAfterError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_10002133C(error);
}

- (BOOL)fetcher:(id)fetcher didReceiveAsset:(id)asset path:(id)path error:(id *)error
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  swift_unknownObjectRetain();
  assetCopy = asset;
  selfCopy = self;
  sub_100022998(assetCopy, v8, v10);

  swift_unknownObjectRelease();
  return 1;
}

- (void)fetcher:(id)fetcher failedFetchingAsset:(id)asset withFetchError:(id)error
{
  swift_unknownObjectRetain();
  assetCopy = asset;
  errorCopy = error;
  selfCopy = self;
  sub_100022E54(assetCopy, errorCopy);
  swift_unknownObjectRelease();
}

- (_TtC7backupd18MBRestoreATCEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end