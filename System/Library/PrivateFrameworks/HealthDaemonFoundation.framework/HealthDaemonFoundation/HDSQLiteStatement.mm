@interface HDSQLiteStatement
- (HDSQLiteStatement)initWithSQL:(id)a3 database:(id)a4;
@end

@implementation HDSQLiteStatement

- (HDSQLiteStatement)initWithSQL:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HDSQLiteStatement;
  v8 = [(HDSQLiteStatement *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_database, a4);
    v10 = [v6 copy];
    sql = v9->_sql;
    v9->_sql = v10;
  }

  return v9;
}

@end