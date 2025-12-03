@interface EFSQLColumnSchema
+ (id)stringForColumnType:(unint64_t)type;
+ (unint64_t)columnTypeForString:(id)string;
- (EFSQLColumnExpression)columnExpression;
- (EFSQLColumnExpression)columnExpressionWithFullName;
- (EFSQLColumnSchema)initWithName:(id)name isPrimaryKey:(BOOL)key isAutoincrementing:(BOOL)autoincrementing type:(unint64_t)type collation:(unint64_t)collation nullable:(BOOL)nullable defaultValue:(id)value;
- (EFSQLTableSchema)associatedTable;
- (EFSQLTableSchema)foreignKeyTarget;
- (EFSQLTableSchema)table;
- (NSString)definition;
- (id)_stringForForeignKeyAction:(unint64_t)action;
- (id)debugDescription;
- (id)description;
- (id)fullNameWithDatabaseName:(id)name;
- (void)associateWithTable:(id)table;
- (void)setAsForeignKeyForString:(id)string onDelete:(unint64_t)delete onUpdate:(unint64_t)update;
- (void)setAsForeignKeyForTable:(id)table onDelete:(unint64_t)delete onUpdate:(unint64_t)update;
@end

@implementation EFSQLColumnSchema

- (EFSQLTableSchema)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

- (EFSQLColumnExpression)columnExpressionWithFullName
{
  v3 = [EFSQLColumnExpression alloc];
  name = [(EFSQLColumnSchema *)self name];
  table = [(EFSQLColumnSchema *)self table];
  name2 = [table name];
  v7 = [(EFSQLColumnExpression *)v3 initWithName:name table:name2];

  return v7;
}

+ (id)stringForColumnType:(unint64_t)type
{
  if (type - 2 > 2)
  {
    return @"INTEGER";
  }

  else
  {
    return off_1E8249BC8[type - 2];
  }
}

+ (unint64_t)columnTypeForString:(id)string
{
  stringCopy = string;
  if (columnTypeForString__onceToken != -1)
  {
    +[EFSQLColumnSchema columnTypeForString:];
  }

  v4 = columnTypeForString__sColumnTypeMap;
  uppercaseString = [stringCopy uppercaseString];
  v6 = [v4 objectForKeyedSubscript:uppercaseString];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    if ([stringCopy length])
    {
      unsignedIntegerValue = 1;
    }

    else
    {
      unsignedIntegerValue = 4;
    }
  }

  return unsignedIntegerValue;
}

void __41__EFSQLColumnSchema_columnTypeForString___block_invoke()
{
  v0 = columnTypeForString__sColumnTypeMap;
  columnTypeForString__sColumnTypeMap = &unk_1F45AD100;
}

- (EFSQLColumnSchema)initWithName:(id)name isPrimaryKey:(BOOL)key isAutoincrementing:(BOOL)autoincrementing type:(unint64_t)type collation:(unint64_t)collation nullable:(BOOL)nullable defaultValue:(id)value
{
  keyCopy = key;
  nameCopy = name;
  valueCopy = value;
  if (!nameCopy && !keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"name || isPrimaryKey"}];
  }

  v23.receiver = self;
  v23.super_class = EFSQLColumnSchema;
  v18 = [(EFSQLColumnSchema *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, name);
    if (!nameCopy && keyCopy)
    {
      objc_storeStrong(&v19->_name, @"ROWID");
    }

    v19->_isPrimaryKey = keyCopy;
    v19->_isAutoincrementing = autoincrementing;
    v19->_type = type;
    v19->_collation = collation;
    v19->_nullable = nullable;
    objc_storeStrong(&v19->_defaultValue, value);
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = EFSQLColumnSchema;
  v4 = [(EFSQLColumnSchema *)&v8 description];
  name = [(EFSQLColumnSchema *)self name];
  v6 = [v3 initWithFormat:@"%@ %@", v4, name];

  return v6;
}

- (NSString)definition
{
  v3 = [EFSQLColumnSchema stringForColumnType:[(EFSQLColumnSchema *)self type]];
  if ([v3 length])
  {
    v4 = [@" " stringByAppendingString:v3];

    v34 = v4;
  }

  else
  {
    v34 = v3;
  }

  v5 = &stru_1F459BF68;
  if ([(EFSQLColumnSchema *)self isPrimaryKey])
  {
    isAutoincrementing = [(EFSQLColumnSchema *)self isAutoincrementing];
    v7 = @" PRIMARY KEY";
    if (isAutoincrementing)
    {
      v7 = @" PRIMARY KEY AUTOINCREMENT";
    }

    v8 = v7;
    v9 = &stru_1F459BF68;
    v10 = &stru_1F459BF68;
  }

  else
  {
    v11 = EFSQLStringForCollation([(EFSQLColumnSchema *)self collation]);
    if ([(__CFString *)v11 length])
    {
      v12 = [@" " stringByAppendingString:v11];

      v5 = v12;
    }

    else
    {
      v5 = v11;
    }

    nullable = [(EFSQLColumnSchema *)self nullable];
    v14 = @" NOT NULL";
    if (nullable)
    {
      v14 = &stru_1F459BF68;
    }

    v9 = v14;
    defaultValue = [(EFSQLColumnSchema *)self defaultValue];
    if (defaultValue)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ef_quotedSQLEscapedString = [defaultValue ef_quotedSQLEscapedString];

        defaultValue = ef_quotedSQLEscapedString;
      }

      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" DEFAULT %@", defaultValue];

      v8 = &stru_1F459BF68;
    }

    else
    {
      v8 = &stru_1F459BF68;
      v10 = &stru_1F459BF68;
    }
  }

  foreignKeyTargetString = [(EFSQLColumnSchema *)self foreignKeyTargetString];
  if (foreignKeyTargetString)
  {
    goto LABEL_19;
  }

  foreignKeyTarget = [(EFSQLColumnSchema *)self foreignKeyTarget];
  if (!foreignKeyTarget)
  {
    foreignKeyTargetString = 0;
LABEL_29:
    v29 = &stru_1F459BF68;
    goto LABEL_30;
  }

  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [foreignKeyTarget name];
  rowIDColumn = [foreignKeyTarget rowIDColumn];
  name2 = [rowIDColumn name];
  foreignKeyTargetString = [v22 initWithFormat:@"%@(%@)", name, name2];

  if (!foreignKeyTargetString)
  {
    goto LABEL_29;
  }

LABEL_19:
  if ([(EFSQLColumnSchema *)self foreignKeyDeleteAction])
  {
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = [(EFSQLColumnSchema *)self _stringForForeignKeyAction:[(EFSQLColumnSchema *)self foreignKeyDeleteAction]];
    v20 = [v18 initWithFormat:@" ON DELETE %@", v19];
  }

  else
  {
    v20 = &stru_1F459BF68;
  }

  v26 = &stru_1F459BF68;
  if ([(EFSQLColumnSchema *)self foreignKeyUpdateAction])
  {
    v27 = objc_alloc(MEMORY[0x1E696AEC0]);
    v28 = [(EFSQLColumnSchema *)self _stringForForeignKeyAction:[(EFSQLColumnSchema *)self foreignKeyUpdateAction]];
    v26 = [v27 initWithFormat:@" ON UPDATE %@", v28];
  }

  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" REFERENCES %@%@%@", foreignKeyTargetString, v20, v26];

LABEL_30:
  v30 = objc_alloc(MEMORY[0x1E696AEC0]);
  name3 = [(EFSQLColumnSchema *)self name];
  v32 = [v30 initWithFormat:@"%@%@%@%@%@%@%@", name3, v34, v8, v5, v9, v10, v29];

  return v32;
}

- (id)_stringForForeignKeyAction:(unint64_t)action
{
  if (action - 1 > 3)
  {
    return @"NO ACTION";
  }

  else
  {
    return off_1E8249BE0[action - 1];
  }
}

- (id)fullNameWithDatabaseName:(id)name
{
  nameCopy = name;
  table = [(EFSQLColumnSchema *)self table];
  if (table)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [table fullNameWithDatabaseName:nameCopy];
    name = [(EFSQLColumnSchema *)self name];
    name2 = [v6 initWithFormat:@"%@.%@", v7, name];
  }

  else
  {
    name2 = [(EFSQLColumnSchema *)self name];
  }

  return name2;
}

- (void)setAsForeignKeyForTable:(id)table onDelete:(unint64_t)delete onUpdate:(unint64_t)update
{
  tableCopy = table;
  rowIDColumn = [tableCopy rowIDColumn];

  if (!rowIDColumn)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"table.rowIDColumn"}];
  }

  associatedTable = [(EFSQLColumnSchema *)self associatedTable];
  if (associatedTable)
  {
  }

  else
  {
    foreignKeyTargetString = [(EFSQLColumnSchema *)self foreignKeyTargetString];

    if (!foreignKeyTargetString)
    {
      goto LABEL_6;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:212 description:@"Cannot set association for table that already has a foreign key target or associated table"];

LABEL_6:
  [(EFSQLColumnSchema *)self setForeignKeyTarget:tableCopy];
  [(EFSQLColumnSchema *)self setForeignKeyDeleteAction:delete];
  [(EFSQLColumnSchema *)self setForeignKeyUpdateAction:update];
  [tableCopy addForeignKeyReference:self];
}

- (void)setAsForeignKeyForString:(id)string onDelete:(unint64_t)delete onUpdate:(unint64_t)update
{
  stringCopy = string;
  foreignKeyTarget = [(EFSQLColumnSchema *)self foreignKeyTarget];
  if (foreignKeyTarget)
  {
  }

  else
  {
    associatedTable = [(EFSQLColumnSchema *)self associatedTable];

    if (!associatedTable)
    {
      goto LABEL_4;
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:221 description:@"Cannot set association for table that already has a foreign key target or associated table"];

LABEL_4:
  [(EFSQLColumnSchema *)self setForeignKeyTargetString:stringCopy];
  [(EFSQLColumnSchema *)self setForeignKeyDeleteAction:delete];
  [(EFSQLColumnSchema *)self setForeignKeyUpdateAction:update];
}

- (void)associateWithTable:(id)table
{
  tableCopy = table;
  rowIDColumn = [tableCopy rowIDColumn];

  if (!rowIDColumn)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"table.rowIDColumn"}];
  }

  foreignKeyTarget = [(EFSQLColumnSchema *)self foreignKeyTarget];
  if (foreignKeyTarget)
  {
  }

  else
  {
    foreignKeyTargetString = [(EFSQLColumnSchema *)self foreignKeyTargetString];

    if (!foreignKeyTargetString)
    {
      goto LABEL_6;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:229 description:@"Cannot set association for table that already has a foreign key target"];

LABEL_6:
  [(EFSQLColumnSchema *)self setAssociatedTable:tableCopy];
  [tableCopy addAssociatedColumn:self];
}

- (EFSQLColumnExpression)columnExpression
{
  v3 = [EFSQLColumnExpression alloc];
  name = [(EFSQLColumnSchema *)self name];
  v5 = [(EFSQLColumnExpression *)v3 initWithName:name];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(EFSQLColumnSchema *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p> column name:%@", v4, self, name];

  return v6;
}

- (EFSQLTableSchema)foreignKeyTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_foreignKeyTarget);

  return WeakRetained;
}

- (EFSQLTableSchema)associatedTable
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedTable);

  return WeakRetained;
}

@end