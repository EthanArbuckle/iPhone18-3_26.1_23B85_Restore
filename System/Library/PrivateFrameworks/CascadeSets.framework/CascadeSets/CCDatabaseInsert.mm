@interface CCDatabaseInsert
+ (id)builderWithTableName:(id)name columnNames:(id)names;
@end

@implementation CCDatabaseInsert

+ (id)builderWithTableName:(id)name columnNames:(id)names
{
  namesCopy = names;
  nameCopy = name;
  v7 = [[CCDatabaseInsertBuilder alloc] initWithTableName:nameCopy columnNames:namesCopy];

  return v7;
}

@end