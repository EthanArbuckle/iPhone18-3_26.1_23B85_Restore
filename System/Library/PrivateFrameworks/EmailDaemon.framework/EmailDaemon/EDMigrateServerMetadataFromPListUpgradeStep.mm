@interface EDMigrateServerMetadataFromPListUpgradeStep
+ (int)runWithConnection:(id)connection;
- (EDMigrateServerMetadataFromPListUpgradeStep)init;
@end

@implementation EDMigrateServerMetadataFromPListUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  sub_1C6417E38(connectionCopy);

  return 0;
}

- (EDMigrateServerMetadataFromPListUpgradeStep)init
{
  v3.receiver = self;
  v3.super_class = EDMigrateServerMetadataFromPListUpgradeStep;
  return [(EDMigrateServerMetadataFromPListUpgradeStep *)&v3 init];
}

@end