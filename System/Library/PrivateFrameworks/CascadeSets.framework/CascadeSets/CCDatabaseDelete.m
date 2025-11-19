@interface CCDatabaseDelete
+ (id)builderWithTableName:(id)a3;
@end

@implementation CCDatabaseDelete

+ (id)builderWithTableName:(id)a3
{
  v3 = a3;
  v4 = [(CCDatabaseCommandBuilder *)[CCDatabaseDeleteBuilder alloc] initWithTableName:v3];

  return v4;
}

@end