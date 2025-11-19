@interface CHSpotlightReindexManager
- (CHSpotlightReindexManager)init;
- (CHSpotlightReindexManager)initWithSpotlightIndexManager:(id)a3;
- (void)handleCallDirectoryIdentitiesChanged;
- (void)handleFaceTimeStatusChanged;
- (void)handleLocaleChanges;
@end

@implementation CHSpotlightReindexManager

- (CHSpotlightReindexManager)initWithSpotlightIndexManager:(id)a3
{
  v3 = a3;
  v4 = sub_10002C350();

  return v4;
}

- (void)handleLocaleChanges
{
  v2 = self;
  sub_1000295D8();
}

- (void)handleFaceTimeStatusChanged
{
  v2 = self;
  sub_1000299B8();
}

- (void)handleCallDirectoryIdentitiesChanged
{
  v2 = self;
  sub_100029428();
}

- (CHSpotlightReindexManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end