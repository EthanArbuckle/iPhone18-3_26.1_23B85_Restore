@interface EDPersistenceForeignKeyPlaceholder
- (BOOL)resolveToStringForTableNames:(id)names;
- (BOOL)resolveWithSchema:(id)schema;
- (EDPersistenceForeignKeyPlaceholder)initWithColumn:(id)column tableName:(id)name onDelete:(unint64_t)delete onUpdate:(unint64_t)update;
- (id)description;
@end

@implementation EDPersistenceForeignKeyPlaceholder

- (EDPersistenceForeignKeyPlaceholder)initWithColumn:(id)column tableName:(id)name onDelete:(unint64_t)delete onUpdate:(unint64_t)update
{
  columnCopy = column;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = EDPersistenceForeignKeyPlaceholder;
  v13 = [(EDPersistenceForeignKeyPlaceholder *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_column, column);
    v15 = [nameCopy copy];
    tableName = v14->_tableName;
    v14->_tableName = v15;

    v14->_deleteAction = delete;
    v14->_updateAction = update;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = EDPersistenceForeignKeyPlaceholder;
  v4 = [(EDPersistenceForeignKeyPlaceholder *)&v10 description];
  column = [(EDPersistenceForeignKeyPlaceholder *)self column];
  v6 = [column fullNameWithDatabaseName:0];
  tableName = [(EDPersistenceForeignKeyPlaceholder *)self tableName];
  v8 = [v3 initWithFormat:@"%@ %@ -> %@", v4, v6, tableName];

  return v8;
}

- (BOOL)resolveWithSchema:(id)schema
{
  schemaCopy = schema;
  tableName = [(EDPersistenceForeignKeyPlaceholder *)self tableName];
  v6 = [schemaCopy tableForName:tableName];

  if (v6)
  {
    column = [(EDPersistenceForeignKeyPlaceholder *)self column];
    [column setAsForeignKeyForTable:v6 onDelete:-[EDPersistenceForeignKeyPlaceholder deleteAction](self onUpdate:{"deleteAction"), -[EDPersistenceForeignKeyPlaceholder updateAction](self, "updateAction")}];
  }

  return v6 != 0;
}

- (BOOL)resolveToStringForTableNames:(id)names
{
  namesCopy = names;
  tableName = [(EDPersistenceForeignKeyPlaceholder *)self tableName];
  v6 = [namesCopy containsObject:tableName];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v7 initWithFormat:@"%@(%@)", tableName, *MEMORY[0x1E699B768]];
    column = [(EDPersistenceForeignKeyPlaceholder *)self column];
    [column setAsForeignKeyForString:v8 onDelete:-[EDPersistenceForeignKeyPlaceholder deleteAction](self onUpdate:{"deleteAction"), -[EDPersistenceForeignKeyPlaceholder updateAction](self, "updateAction")}];
  }

  return v6;
}

@end