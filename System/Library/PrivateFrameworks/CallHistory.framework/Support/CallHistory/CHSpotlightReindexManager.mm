@interface CHSpotlightReindexManager
- (CHSpotlightReindexManager)init;
- (CHSpotlightReindexManager)initWithSpotlightIndexManager:(id)manager;
- (void)handleCallDirectoryIdentitiesChanged;
- (void)handleFaceTimeStatusChanged;
- (void)handleLocaleChanges;
@end

@implementation CHSpotlightReindexManager

- (CHSpotlightReindexManager)initWithSpotlightIndexManager:(id)manager
{
  managerCopy = manager;
  v4 = sub_10002C350();

  return v4;
}

- (void)handleLocaleChanges
{
  selfCopy = self;
  sub_1000295D8();
}

- (void)handleFaceTimeStatusChanged
{
  selfCopy = self;
  sub_1000299B8();
}

- (void)handleCallDirectoryIdentitiesChanged
{
  selfCopy = self;
  sub_100029428();
}

- (CHSpotlightReindexManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end