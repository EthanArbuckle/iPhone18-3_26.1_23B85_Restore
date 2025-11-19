@interface BABookletMigrationInfo
- (id)createInfo;
@end

@implementation BABookletMigrationInfo

- (id)createInfo
{
  v2 = [[BLBookletMigrationInfo alloc] initWithStoreID:-[BABookletMigrationInfo storeID](self migrationState:{"storeID"), -[BABookletMigrationInfo migrationState](self, "migrationState")}];

  return v2;
}

@end