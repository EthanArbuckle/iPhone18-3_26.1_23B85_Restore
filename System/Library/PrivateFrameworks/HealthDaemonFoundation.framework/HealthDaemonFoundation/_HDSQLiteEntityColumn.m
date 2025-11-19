@interface _HDSQLiteEntityColumn
- (_HDSQLiteEntityColumn)initWithName:(id)a3 columnType:(id)a4 keyPathType:(unsigned __int8)a5 foreignKey:(id)a6;
- (id)_columnNameAndTypeString;
- (id)creationSQL;
- (id)description;
@end

@implementation _HDSQLiteEntityColumn

- (_HDSQLiteEntityColumn)initWithName:(id)a3 columnType:(id)a4 keyPathType:(unsigned __int8)a5 foreignKey:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  HasForeignKey = HDKeyPathTypeHasForeignKey(v7);
  if (!v13 && HasForeignKey)
  {
    [_HDSQLiteEntityColumn initWithName:a2 columnType:self keyPathType:? foreignKey:?];
  }

  v21.receiver = self;
  v21.super_class = _HDSQLiteEntityColumn;
  v15 = [(_HDSQLiteEntityColumn *)&v21 init];
  if (v15)
  {
    v16 = [v11 copy];
    name = v15->_name;
    v15->_name = v16;

    v18 = [v12 copy];
    columnType = v15->_columnType;
    v15->_columnType = v18;

    v15->_keyPathType = v7;
    objc_storeStrong(&v15->_foreignKey, a6);
  }

  return v15;
}

- (id)creationSQL
{
  if (self->_foreignKey)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(_HDSQLiteEntityColumn *)self _columnNameAndTypeString];
    v6 = [(HDSQLiteEntityForeignKey *)self->_foreignKey creationSQL];
    v3 = [v4 stringWithFormat:@"%@ %@", v5, v6];
  }

  else
  {
    v3 = [(_HDSQLiteEntityColumn *)self _columnNameAndTypeString];
  }

  return v3;
}

- (id)_columnNameAndTypeString
{
  if (a1)
  {
    v2 = a1;
    v3 = MEMORY[0x277CCACA8];
    v4 = *(a1 + 16);
    v5 = [*(a1 + 24) length];
    v6 = " ";
    if (!v5)
    {
      v6 = "";
    }

    v7 = *(v2 + 24);
    if (!v7)
    {
      v7 = &stru_28637B800;
    }

    a1 = [v3 stringWithFormat:@"%@%s%@", v4, v6, v7];
    v1 = vars8;
  }

  return a1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_HDSQLiteEntityColumn *)self _columnNameAndTypeString];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_keyPathType];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (void)initWithName:(uint64_t)a1 columnType:(uint64_t)a2 keyPathType:foreignKey:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSQLiteEntityColumn.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"foreignKey != nil"}];
}

- (void)initWithName:(uint64_t)a1 columnType:(uint64_t)a2 keyPathType:targetEntityClass:targetProperty:deletionAction:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSQLiteEntityColumn.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"targetProperty != nil"}];
}

@end