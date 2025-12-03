@interface HDSQLiteDatabaseIndexSchema
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation HDSQLiteDatabaseIndexSchema

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  columns = self->_columns;
  v6 = equalCopy[3];
  v7 = (columns == v6 || v6 && [(NSArray *)columns isEqual:?]) && self->_isUnique == *(equalCopy + 8);

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCAB68];
  if (self->_isUnique)
  {
    v3 = @"UNIQUE";
  }

  else
  {
    v3 = @"INDEX";
  }

  v4 = [(NSArray *)self->_columns componentsJoinedByString:@", "];
  v5 = [v2 stringWithFormat:@"%@ (%@)", v3, v4];

  return v5;
}

@end