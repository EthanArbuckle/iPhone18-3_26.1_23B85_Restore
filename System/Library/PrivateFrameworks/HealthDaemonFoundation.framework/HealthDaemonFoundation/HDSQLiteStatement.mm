@interface HDSQLiteStatement
- (HDSQLiteStatement)initWithSQL:(id)l database:(id)database;
@end

@implementation HDSQLiteStatement

- (HDSQLiteStatement)initWithSQL:(id)l database:(id)database
{
  lCopy = l;
  databaseCopy = database;
  v13.receiver = self;
  v13.super_class = HDSQLiteStatement;
  v8 = [(HDSQLiteStatement *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_database, database);
    v10 = [lCopy copy];
    sql = v9->_sql;
    v9->_sql = v10;
  }

  return v9;
}

@end