@interface EDPersistenceForeignKeyPlaceholder
- (BOOL)resolveToStringForTableNames:(id)a3;
- (BOOL)resolveWithSchema:(id)a3;
- (EDPersistenceForeignKeyPlaceholder)initWithColumn:(id)a3 tableName:(id)a4 onDelete:(unint64_t)a5 onUpdate:(unint64_t)a6;
- (id)description;
@end

@implementation EDPersistenceForeignKeyPlaceholder

- (EDPersistenceForeignKeyPlaceholder)initWithColumn:(id)a3 tableName:(id)a4 onDelete:(unint64_t)a5 onUpdate:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = EDPersistenceForeignKeyPlaceholder;
  v13 = [(EDPersistenceForeignKeyPlaceholder *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_column, a3);
    v15 = [v12 copy];
    tableName = v14->_tableName;
    v14->_tableName = v15;

    v14->_deleteAction = a5;
    v14->_updateAction = a6;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = EDPersistenceForeignKeyPlaceholder;
  v4 = [(EDPersistenceForeignKeyPlaceholder *)&v10 description];
  v5 = [(EDPersistenceForeignKeyPlaceholder *)self column];
  v6 = [v5 fullNameWithDatabaseName:0];
  v7 = [(EDPersistenceForeignKeyPlaceholder *)self tableName];
  v8 = [v3 initWithFormat:@"%@ %@ -> %@", v4, v6, v7];

  return v8;
}

- (BOOL)resolveWithSchema:(id)a3
{
  v4 = a3;
  v5 = [(EDPersistenceForeignKeyPlaceholder *)self tableName];
  v6 = [v4 tableForName:v5];

  if (v6)
  {
    v7 = [(EDPersistenceForeignKeyPlaceholder *)self column];
    [v7 setAsForeignKeyForTable:v6 onDelete:-[EDPersistenceForeignKeyPlaceholder deleteAction](self onUpdate:{"deleteAction"), -[EDPersistenceForeignKeyPlaceholder updateAction](self, "updateAction")}];
  }

  return v6 != 0;
}

- (BOOL)resolveToStringForTableNames:(id)a3
{
  v4 = a3;
  v5 = [(EDPersistenceForeignKeyPlaceholder *)self tableName];
  v6 = [v4 containsObject:v5];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v7 initWithFormat:@"%@(%@)", v5, *MEMORY[0x1E699B768]];
    v9 = [(EDPersistenceForeignKeyPlaceholder *)self column];
    [v9 setAsForeignKeyForString:v8 onDelete:-[EDPersistenceForeignKeyPlaceholder deleteAction](self onUpdate:{"deleteAction"), -[EDPersistenceForeignKeyPlaceholder updateAction](self, "updateAction")}];
  }

  return v6;
}

@end