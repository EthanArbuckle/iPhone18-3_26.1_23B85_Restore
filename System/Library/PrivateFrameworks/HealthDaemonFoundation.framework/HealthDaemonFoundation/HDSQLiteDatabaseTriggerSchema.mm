@interface HDSQLiteDatabaseTriggerSchema
- (BOOL)isEqual:(id)equal;
@end

@implementation HDSQLiteDatabaseTriggerSchema

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  tableName = self->_tableName;
  v6 = equalCopy[2];
  if (tableName != v6 && (!v6 || ![(NSString *)tableName isEqual:?]))
  {
    goto LABEL_7;
  }

  sql = self->_sql;
  v8 = equalCopy[3];
  if (sql == v8)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (v8)
  {
    v9 = [(NSString *)sql isEqual:?];
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

@end