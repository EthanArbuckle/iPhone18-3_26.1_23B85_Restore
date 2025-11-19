@interface EFSQLColumnSchema
+ (id)stringForColumnType:(unint64_t)a3;
+ (unint64_t)columnTypeForString:(id)a3;
- (EFSQLColumnExpression)columnExpression;
- (EFSQLColumnExpression)columnExpressionWithFullName;
- (EFSQLColumnSchema)initWithName:(id)a3 isPrimaryKey:(BOOL)a4 isAutoincrementing:(BOOL)a5 type:(unint64_t)a6 collation:(unint64_t)a7 nullable:(BOOL)a8 defaultValue:(id)a9;
- (EFSQLTableSchema)associatedTable;
- (EFSQLTableSchema)foreignKeyTarget;
- (EFSQLTableSchema)table;
- (NSString)definition;
- (id)_stringForForeignKeyAction:(unint64_t)a3;
- (id)debugDescription;
- (id)description;
- (id)fullNameWithDatabaseName:(id)a3;
- (void)associateWithTable:(id)a3;
- (void)setAsForeignKeyForString:(id)a3 onDelete:(unint64_t)a4 onUpdate:(unint64_t)a5;
- (void)setAsForeignKeyForTable:(id)a3 onDelete:(unint64_t)a4 onUpdate:(unint64_t)a5;
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
  v4 = [(EFSQLColumnSchema *)self name];
  v5 = [(EFSQLColumnSchema *)self table];
  v6 = [v5 name];
  v7 = [(EFSQLColumnExpression *)v3 initWithName:v4 table:v6];

  return v7;
}

+ (id)stringForColumnType:(unint64_t)a3
{
  if (a3 - 2 > 2)
  {
    return @"INTEGER";
  }

  else
  {
    return off_1E8249BC8[a3 - 2];
  }
}

+ (unint64_t)columnTypeForString:(id)a3
{
  v3 = a3;
  if (columnTypeForString__onceToken != -1)
  {
    +[EFSQLColumnSchema columnTypeForString:];
  }

  v4 = columnTypeForString__sColumnTypeMap;
  v5 = [v3 uppercaseString];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 unsignedIntegerValue];

  if (!v7)
  {
    if ([v3 length])
    {
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }
  }

  return v7;
}

void __41__EFSQLColumnSchema_columnTypeForString___block_invoke()
{
  v0 = columnTypeForString__sColumnTypeMap;
  columnTypeForString__sColumnTypeMap = &unk_1F45AD100;
}

- (EFSQLColumnSchema)initWithName:(id)a3 isPrimaryKey:(BOOL)a4 isAutoincrementing:(BOOL)a5 type:(unint64_t)a6 collation:(unint64_t)a7 nullable:(BOOL)a8 defaultValue:(id)a9
{
  v12 = a4;
  v16 = a3;
  v17 = a9;
  if (!v16 && !v12)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"name || isPrimaryKey"}];
  }

  v23.receiver = self;
  v23.super_class = EFSQLColumnSchema;
  v18 = [(EFSQLColumnSchema *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, a3);
    if (!v16 && v12)
    {
      objc_storeStrong(&v19->_name, @"ROWID");
    }

    v19->_isPrimaryKey = v12;
    v19->_isAutoincrementing = a5;
    v19->_type = a6;
    v19->_collation = a7;
    v19->_nullable = a8;
    objc_storeStrong(&v19->_defaultValue, a9);
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = EFSQLColumnSchema;
  v4 = [(EFSQLColumnSchema *)&v8 description];
  v5 = [(EFSQLColumnSchema *)self name];
  v6 = [v3 initWithFormat:@"%@ %@", v4, v5];

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
    v6 = [(EFSQLColumnSchema *)self isAutoincrementing];
    v7 = @" PRIMARY KEY";
    if (v6)
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

    v13 = [(EFSQLColumnSchema *)self nullable];
    v14 = @" NOT NULL";
    if (v13)
    {
      v14 = &stru_1F459BF68;
    }

    v9 = v14;
    v15 = [(EFSQLColumnSchema *)self defaultValue];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 ef_quotedSQLEscapedString];

        v15 = v16;
      }

      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" DEFAULT %@", v15];

      v8 = &stru_1F459BF68;
    }

    else
    {
      v8 = &stru_1F459BF68;
      v10 = &stru_1F459BF68;
    }
  }

  v17 = [(EFSQLColumnSchema *)self foreignKeyTargetString];
  if (v17)
  {
    goto LABEL_19;
  }

  v21 = [(EFSQLColumnSchema *)self foreignKeyTarget];
  if (!v21)
  {
    v17 = 0;
LABEL_29:
    v29 = &stru_1F459BF68;
    goto LABEL_30;
  }

  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
  v23 = [v21 name];
  v24 = [v21 rowIDColumn];
  v25 = [v24 name];
  v17 = [v22 initWithFormat:@"%@(%@)", v23, v25];

  if (!v17)
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

  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" REFERENCES %@%@%@", v17, v20, v26];

LABEL_30:
  v30 = objc_alloc(MEMORY[0x1E696AEC0]);
  v31 = [(EFSQLColumnSchema *)self name];
  v32 = [v30 initWithFormat:@"%@%@%@%@%@%@%@", v31, v34, v8, v5, v9, v10, v29];

  return v32;
}

- (id)_stringForForeignKeyAction:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"NO ACTION";
  }

  else
  {
    return off_1E8249BE0[a3 - 1];
  }
}

- (id)fullNameWithDatabaseName:(id)a3
{
  v4 = a3;
  v5 = [(EFSQLColumnSchema *)self table];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [v5 fullNameWithDatabaseName:v4];
    v8 = [(EFSQLColumnSchema *)self name];
    v9 = [v6 initWithFormat:@"%@.%@", v7, v8];
  }

  else
  {
    v9 = [(EFSQLColumnSchema *)self name];
  }

  return v9;
}

- (void)setAsForeignKeyForTable:(id)a3 onDelete:(unint64_t)a4 onUpdate:(unint64_t)a5
{
  v14 = a3;
  v9 = [v14 rowIDColumn];

  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"table.rowIDColumn"}];
  }

  v10 = [(EFSQLColumnSchema *)self associatedTable];
  if (v10)
  {
  }

  else
  {
    v11 = [(EFSQLColumnSchema *)self foreignKeyTargetString];

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:212 description:@"Cannot set association for table that already has a foreign key target or associated table"];

LABEL_6:
  [(EFSQLColumnSchema *)self setForeignKeyTarget:v14];
  [(EFSQLColumnSchema *)self setForeignKeyDeleteAction:a4];
  [(EFSQLColumnSchema *)self setForeignKeyUpdateAction:a5];
  [v14 addForeignKeyReference:self];
}

- (void)setAsForeignKeyForString:(id)a3 onDelete:(unint64_t)a4 onUpdate:(unint64_t)a5
{
  v12 = a3;
  v9 = [(EFSQLColumnSchema *)self foreignKeyTarget];
  if (v9)
  {
  }

  else
  {
    v10 = [(EFSQLColumnSchema *)self associatedTable];

    if (!v10)
    {
      goto LABEL_4;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:221 description:@"Cannot set association for table that already has a foreign key target or associated table"];

LABEL_4:
  [(EFSQLColumnSchema *)self setForeignKeyTargetString:v12];
  [(EFSQLColumnSchema *)self setForeignKeyDeleteAction:a4];
  [(EFSQLColumnSchema *)self setForeignKeyUpdateAction:a5];
}

- (void)associateWithTable:(id)a3
{
  v10 = a3;
  v5 = [v10 rowIDColumn];

  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"table.rowIDColumn"}];
  }

  v6 = [(EFSQLColumnSchema *)self foreignKeyTarget];
  if (v6)
  {
  }

  else
  {
    v7 = [(EFSQLColumnSchema *)self foreignKeyTargetString];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"EFSQLColumnSchema.m" lineNumber:229 description:@"Cannot set association for table that already has a foreign key target"];

LABEL_6:
  [(EFSQLColumnSchema *)self setAssociatedTable:v10];
  [v10 addAssociatedColumn:self];
}

- (EFSQLColumnExpression)columnExpression
{
  v3 = [EFSQLColumnExpression alloc];
  v4 = [(EFSQLColumnSchema *)self name];
  v5 = [(EFSQLColumnExpression *)v3 initWithName:v4];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EFSQLColumnSchema *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p> column name:%@", v4, self, v5];

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