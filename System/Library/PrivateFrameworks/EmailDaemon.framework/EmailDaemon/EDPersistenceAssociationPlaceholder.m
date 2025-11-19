@interface EDPersistenceAssociationPlaceholder
- (BOOL)resolveWithSchema:(id)a3;
- (EDPersistenceAssociationPlaceholder)initWithColumn:(id)a3 tableName:(id)a4;
- (id)description;
@end

@implementation EDPersistenceAssociationPlaceholder

- (EDPersistenceAssociationPlaceholder)initWithColumn:(id)a3 tableName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EDPersistenceAssociationPlaceholder;
  v9 = [(EDPersistenceAssociationPlaceholder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_column, a3);
    v11 = [v8 copy];
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
  v5 = [(EDPersistenceAssociationPlaceholder *)self column];
  v6 = [v5 fullNameWithDatabaseName:0];
  v7 = [(EDPersistenceAssociationPlaceholder *)self tableName];
  v8 = [v3 initWithFormat:@"%@ %@ -> %@", v4, v6, v7];

  return v8;
}

- (BOOL)resolveWithSchema:(id)a3
{
  v4 = a3;
  v5 = [(EDPersistenceAssociationPlaceholder *)self tableName];
  v6 = [v4 tableForName:v5];

  if (v6)
  {
    v7 = [(EDPersistenceAssociationPlaceholder *)self column];
    [v7 associateWithTable:v6];
  }

  return v6 != 0;
}

@end