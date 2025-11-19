@interface FileIndexerSpotlightDaemonClient
- (_TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient)init;
- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5;
- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6;
@end

@implementation FileIndexerSpotlightDaemonClient

- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_resetScanningState);
  v7 = *&self->indexHandler[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_resetScanningState];
  v9 = self;
  v8();
  v6[2](v6);

  _Block_release(v6);
}

- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_24ABABFFC();
  _Block_copy(v7);
  v9 = self;
  sub_24AB8118C(v8, v9, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v8 = _Block_copy(a8);
  v10 = FPNotSupportedError();
  if (v10)
  {
    v9 = sub_24ABABB4C();
  }

  else
  {
    v9 = 0;
  }

  v8[2](v8, 0, v9);

  _Block_release(v8);
}

- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v9 = _Block_copy(a8);
  v10 = sub_24ABABEBC();
  v12 = v11;
  _Block_copy(v9);
  v13 = self;
  sub_24AB81820(v10, v12, v13, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (_TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end