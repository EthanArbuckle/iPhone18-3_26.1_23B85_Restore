@interface _HDSQLiteEntityColumn
- (_HDSQLiteEntityColumn)initWithName:(id)name columnType:(id)type keyPathType:(unsigned __int8)pathType foreignKey:(id)key;
- (id)_columnNameAndTypeString;
- (id)creationSQL;
- (id)description;
@end

@implementation _HDSQLiteEntityColumn

- (_HDSQLiteEntityColumn)initWithName:(id)name columnType:(id)type keyPathType:(unsigned __int8)pathType foreignKey:(id)key
{
  pathTypeCopy = pathType;
  nameCopy = name;
  typeCopy = type;
  keyCopy = key;
  HasForeignKey = HDKeyPathTypeHasForeignKey(pathTypeCopy);
  if (!keyCopy && HasForeignKey)
  {
    [_HDSQLiteEntityColumn initWithName:a2 columnType:self keyPathType:? foreignKey:?];
  }

  v21.receiver = self;
  v21.super_class = _HDSQLiteEntityColumn;
  v15 = [(_HDSQLiteEntityColumn *)&v21 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v16;

    v18 = [typeCopy copy];
    columnType = v15->_columnType;
    v15->_columnType = v18;

    v15->_keyPathType = pathTypeCopy;
    objc_storeStrong(&v15->_foreignKey, key);
  }

  return v15;
}

- (id)creationSQL
{
  if (self->_foreignKey)
  {
    v4 = MEMORY[0x277CCACA8];
    _columnNameAndTypeString = [(_HDSQLiteEntityColumn *)self _columnNameAndTypeString];
    creationSQL = [(HDSQLiteEntityForeignKey *)self->_foreignKey creationSQL];
    _columnNameAndTypeString2 = [v4 stringWithFormat:@"%@ %@", _columnNameAndTypeString, creationSQL];
  }

  else
  {
    _columnNameAndTypeString2 = [(_HDSQLiteEntityColumn *)self _columnNameAndTypeString];
  }

  return _columnNameAndTypeString2;
}

- (id)_columnNameAndTypeString
{
  if (self)
  {
    selfCopy = self;
    v3 = MEMORY[0x277CCACA8];
    v4 = *(self + 16);
    v5 = [*(self + 24) length];
    v6 = " ";
    if (!v5)
    {
      v6 = "";
    }

    v7 = *(selfCopy + 24);
    if (!v7)
    {
      v7 = &stru_28637B800;
    }

    self = [v3 stringWithFormat:@"%@%s%@", v4, v6, v7];
    v1 = vars8;
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _columnNameAndTypeString = [(_HDSQLiteEntityColumn *)self _columnNameAndTypeString];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_keyPathType];
  v6 = [v3 stringWithFormat:@"%@ (%@)", _columnNameAndTypeString, v5];

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