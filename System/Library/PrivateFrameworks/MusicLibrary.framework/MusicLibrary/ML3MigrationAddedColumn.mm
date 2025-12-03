@interface ML3MigrationAddedColumn
- (ML3MigrationAddedColumn)initWithName:(id)name foreignTable:(id)table foreignColumn:(id)column joinColumn:(id)joinColumn;
@end

@implementation ML3MigrationAddedColumn

- (ML3MigrationAddedColumn)initWithName:(id)name foreignTable:(id)table foreignColumn:(id)column joinColumn:(id)joinColumn
{
  nameCopy = name;
  tableCopy = table;
  columnCopy = column;
  joinColumnCopy = joinColumn;
  v18.receiver = self;
  v18.super_class = ML3MigrationAddedColumn;
  v15 = [(ML3MigrationAddedColumn *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_columnName, name);
    objc_storeStrong(&v16->_foreignTableName, table);
    objc_storeStrong(&v16->_foreignColumnName, column);
    objc_storeStrong(&v16->_joinColumnName, joinColumn);
  }

  return v16;
}

@end