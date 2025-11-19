@interface ML3MigrationAddedColumn
- (ML3MigrationAddedColumn)initWithName:(id)a3 foreignTable:(id)a4 foreignColumn:(id)a5 joinColumn:(id)a6;
@end

@implementation ML3MigrationAddedColumn

- (ML3MigrationAddedColumn)initWithName:(id)a3 foreignTable:(id)a4 foreignColumn:(id)a5 joinColumn:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ML3MigrationAddedColumn;
  v15 = [(ML3MigrationAddedColumn *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_columnName, a3);
    objc_storeStrong(&v16->_foreignTableName, a4);
    objc_storeStrong(&v16->_foreignColumnName, a5);
    objc_storeStrong(&v16->_joinColumnName, a6);
  }

  return v16;
}

@end