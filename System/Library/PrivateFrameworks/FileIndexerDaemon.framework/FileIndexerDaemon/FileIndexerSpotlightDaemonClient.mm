@interface FileIndexerSpotlightDaemonClient
- (_TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient)init;
- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
@end

@implementation FileIndexerSpotlightDaemonClient

- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_resetScanningState);
  v7 = *&self->indexHandler[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_resetScanningState];
  selfCopy = self;
  v8();
  v6[2](v6);

  _Block_release(v6);
}

- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_24ABABFFC();
  _Block_copy(v7);
  selfCopy = self;
  sub_24AB8118C(v8, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
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

- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_24ABABEBC();
  v12 = v11;
  _Block_copy(v9);
  selfCopy = self;
  sub_24AB81820(v10, v12, selfCopy, v9);
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