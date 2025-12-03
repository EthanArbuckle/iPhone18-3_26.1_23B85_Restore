@interface EDPersistenceAssociationPlaceholder
- (BOOL)resolveWithSchema:(id)schema;
- (EDPersistenceAssociationPlaceholder)initWithColumn:(id)column tableName:(id)name;
- (id)description;
@end

@implementation EDPersistenceAssociationPlaceholder

- (EDPersistenceAssociationPlaceholder)initWithColumn:(id)column tableName:(id)name
{
  columnCopy = column;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = EDPersistenceAssociationPlaceholder;
  v9 = [(EDPersistenceAssociationPlaceholder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_column, column);
    v11 = [nameCopy copy];
    tableName = v10->_tableName;
    v10->_tableName = v11;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = EDPersistenceAssociationPlaceholder;
  v4 = [(EDPersistenceAssociationPlaceholder *)&v10 description];
  column = [(EDPersistenceAssociationPlaceholder *)self column];
  v6 = [column fullNameWithDatabaseName:0];
  tableName = [(EDPersistenceAssociationPlaceholder *)self tableName];
  v8 = [v3 initWithFormat:@"%@ %@ -> %@", v4, v6, tableName];

  return v8;
}

- (BOOL)resolveWithSchema:(id)schema
{
  schemaCopy = schema;
  tableName = [(EDPersistenceAssociationPlaceholder *)self tableName];
  v6 = [schemaCopy tableForName:tableName];

  if (v6)
  {
    column = [(EDPersistenceAssociationPlaceholder *)self column];
    [column associateWithTable:v6];
  }

  return v6 != 0;
}

@end