@interface BMSQLJSONColumn
- (BOOL)setSQLiteValueFromRow:(id)a3 sqliteContext:(sqlite3_context *)a4 error:(id *)a5;
@end

@implementation BMSQLJSONColumn

- (BOOL)setSQLiteValueFromRow:(id)a3 sqliteContext:(sqlite3_context *)a4 error:(id *)a5
{
  v6 = (*(self->_jsonExtractBlock + 2))();
  v7 = v6;
  if (v6)
  {
    sqlite3_result_text(a4, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_result_null(a4);
  }

  return 1;
}

@end