@interface IMDaemonModernCoreSpotlightManager
- (IMDaemonModernCoreSpotlightManager)init;
- (void)registerForCoreSpotlightIndexing;
- (void)registerForCoreSpotlightMigration;
@end

@implementation IMDaemonModernCoreSpotlightManager

- (void)registerForCoreSpotlightIndexing
{
  v2 = self;
  IMDaemonModernCoreSpotlightManager.registerForCoreSpotlightIndexing()();
}

- (void)registerForCoreSpotlightMigration
{
  v2 = self;
  IMDaemonModernCoreSpotlightManager.registerForCoreSpotlightMigration()();
}

- (IMDaemonModernCoreSpotlightManager)init
{
  *(&self->super.super.isa + OBJC_IVAR___IMDaemonModernCoreSpotlightManager_indexingDelegate) = 0;
  v3.receiver = self;
  v3.super_class = IMDaemonModernCoreSpotlightManager;
  return [(IMDaemonModernCoreSpotlightManager *)&v3 init];
}

@end