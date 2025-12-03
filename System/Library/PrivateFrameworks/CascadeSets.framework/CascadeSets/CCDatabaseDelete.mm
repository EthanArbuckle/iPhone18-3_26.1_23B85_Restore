@interface CCDatabaseDelete
+ (id)builderWithTableName:(id)name;
@end

@implementation CCDatabaseDelete

+ (id)builderWithTableName:(id)name
{
  nameCopy = name;
  v4 = [(CCDatabaseCommandBuilder *)[CCDatabaseDeleteBuilder alloc] initWithTableName:nameCopy];

  return v4;
}

@end