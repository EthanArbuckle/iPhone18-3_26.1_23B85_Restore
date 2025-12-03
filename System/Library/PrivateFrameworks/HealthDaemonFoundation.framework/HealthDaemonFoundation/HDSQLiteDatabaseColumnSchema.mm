@interface HDSQLiteDatabaseColumnSchema
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDSQLiteDatabaseColumnSchema

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_type hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_defaultValue hash]^ self->_isAutoincrement;
  v6 = self->_isPrimaryKey ^ self->_isNullable;
  v7 = v6 ^ [(NSString *)self->_foreignKeyTargetTable hash];
  return v5 ^ v7 ^ [(NSString *)self->_foreignKeyTargetColumn hash]^ self->_deletionAction;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  name = self->_name;
  v6 = equalCopy[2];
  if (name != v6 && (!v6 || ![(NSString *)name isEqual:?]))
  {
    goto LABEL_20;
  }

  type = self->_type;
  v8 = equalCopy[3];
  if (type != v8 && (!v8 || ![(NSString *)type isEqual:?]))
  {
    goto LABEL_20;
  }

  if (((defaultValue = self->_defaultValue, v10 = equalCopy[4], defaultValue == v10) || v10 && [(NSString *)defaultValue isEqual:?]) && self->_isAutoincrement == *(equalCopy + 8) && self->_isPrimaryKey == *(equalCopy + 9) && self->_isNullable == *(equalCopy + 10) && ((foreignKeyTargetTable = self->_foreignKeyTargetTable, v12 = equalCopy[5], foreignKeyTargetTable == v12) || v12 && [(NSString *)foreignKeyTargetTable isEqual:?]) && ((foreignKeyTargetColumn = self->_foreignKeyTargetColumn, v14 = equalCopy[6], foreignKeyTargetColumn == v14) || v14 && [(NSString *)foreignKeyTargetColumn isEqual:?]))
  {
    v15 = self->_deletionAction == equalCopy[7];
  }

  else
  {
LABEL_20:
    v15 = 0;
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ %@", self->_name, self->_type];
  v4 = v3;
  if (self->_isPrimaryKey)
  {
    [v3 appendString:@" PRIMARY KEY"];
  }

  if (self->_isAutoincrement)
  {
    [v4 appendString:@" AUTOINCREMENT"];
  }

  if (!self->_isNullable)
  {
    [v4 appendString:@" NOT NULL"];
  }

  foreignKeyTargetTable = self->_foreignKeyTargetTable;
  if (foreignKeyTargetTable)
  {
    foreignKeyTargetColumn = self->_foreignKeyTargetColumn;
    v7 = HDSQLForForeignKeyDeletionAction(self->_deletionAction);
    [v4 appendFormat:@" REFERENCES %@(%@) ON DELETE %@", foreignKeyTargetTable, foreignKeyTargetColumn, v7];
  }

  return v4;
}

@end