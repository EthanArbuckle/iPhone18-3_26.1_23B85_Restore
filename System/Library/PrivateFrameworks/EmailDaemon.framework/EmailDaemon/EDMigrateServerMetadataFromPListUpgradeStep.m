@interface EDMigrateServerMetadataFromPListUpgradeStep
+ (int)runWithConnection:(id)a3;
- (EDMigrateServerMetadataFromPListUpgradeStep)init;
@end

@implementation EDMigrateServerMetadataFromPListUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  sub_1C6417E38(v3);

  return 0;
}

- (EDMigrateServerMetadataFromPListUpgradeStep)init
{
  v3.receiver = self;
  v3.super_class = EDMigrateServerMetadataFromPListUpgradeStep;
  return [(EDMigrateServerMetadataFromPListUpgradeStep *)&v3 init];
}

@end