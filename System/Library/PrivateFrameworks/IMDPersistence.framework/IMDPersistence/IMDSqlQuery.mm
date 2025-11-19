@interface IMDSqlQuery
+ (id)databaseQuery:(id)a3;
- (IMDSqlQuery)initWithTableName:(id)a3;
- (id)createQueryString;
- (void)dealloc;
@end

@implementation IMDSqlQuery

- (IMDSqlQuery)initWithTableName:(id)a3
{
  v8.receiver = self;
  v8.super_class = IMDSqlQuery;
  v6 = [(IMDSqlQuery *)&v8 init];
  if (v6)
  {
    v6->_tableName = objc_msgSend_copy(a3, v4, v5);
  }

  return v6;
}

+ (id)databaseQuery:(id)a3
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithTableName_(v4, v5, a3);

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDSqlQuery;
  [(IMDSqlQuery *)&v3 dealloc];
}

- (id)createQueryString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = IMFileLocationTrimFileName();
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"Use one of the subclasses");
  v7 = objc_msgSend_stringWithFormat_(v2, v6, @"Failure in %s at %s:%d. %@", "[IMDSqlQuery createQueryString]", v3, 40, v5, 0x1B7D22539, 0, "[IMDSqlQuery createQueryString]", "[IMDSqlQuery createQueryString]");
  v8 = IMGetAssertionFailureHandler();
  if (v8)
  {
    v8(v7);
  }

  else
  {
    v11 = objc_msgSend_warning(MEMORY[0x1E69A6138], v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC540(v7, v11);
    }
  }

  return 0;
}

@end