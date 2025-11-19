@interface HDSQLiteDatabaseTriggerSchema
- (BOOL)isEqual:(id)a3;
@end

@implementation HDSQLiteDatabaseTriggerSchema

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  tableName = self->_tableName;
  v6 = v4[2];
  if (tableName != v6 && (!v6 || ![(NSString *)tableName isEqual:?]))
  {
    goto LABEL_7;
  }

  sql = self->_sql;
  v8 = v4[3];
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