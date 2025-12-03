@interface CCDatabaseUpdate
+ (id)builderWithTableName:(id)name;
@end

@implementation CCDatabaseUpdate

+ (id)builderWithTableName:(id)name
{
  nameCopy = name;
  v4 = [[CCDatabaseUpdateBuilder alloc] initWithTableName:nameCopy];

  return v4;
}

@end