@interface IMDSqlSelectQuery
+ (id)selectQueryForTable:(id)a3 withColumns:(id)a4;
+ (id)selectQueryForTable:(id)a3 withColumns:(id)a4 where:(id)a5;
- (IMDSqlSelectQuery)initWithTableName:(id)a3;
- (id)createQueryString;
@end

@implementation IMDSqlSelectQuery

- (IMDSqlSelectQuery)initWithTableName:(id)a3
{
  v7.receiver = self;
  v7.super_class = IMDSqlSelectQuery;
  v3 = [(IMDSqlQuery *)&v7 initWithTableName:a3];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_setColumns_(v3, v4, @"*");
  }

  return v5;
}

- (id)createQueryString
{
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_msgSend_columns(self, a2, v2);
  v8 = objc_msgSend_tableName(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"SELECT %@ FROM %@", v5, v8);
  v13 = objc_msgSend_where(self, v11, v12);
  if (v13)
  {
    objc_msgSend_appendFormat_(v10, v14, @" WHERE %@", v13);
  }

  if (objc_msgSend_limit(self, v14, v15))
  {
    v18 = objc_msgSend_limit(self, v16, v17);
    objc_msgSend_appendFormat_(v10, v19, @" LIMIT %lld", v18);
  }

  objc_msgSend_appendString_(v10, v16, @";");
  return v10;
}

+ (id)selectQueryForTable:(id)a3 withColumns:(id)a4
{
  v5 = objc_msgSend_selectQueryForTable_(a1, a2, a3);
  objc_msgSend_setColumns_(v5, v6, a4);
  return v5;
}

+ (id)selectQueryForTable:(id)a3 withColumns:(id)a4 where:(id)a5
{
  v7 = objc_msgSend_selectQueryForTable_(a1, a2, a3);
  objc_msgSend_setColumns_(v7, v8, a4);
  objc_msgSend_setWhere_(v7, v9, a5);
  return v7;
}

@end