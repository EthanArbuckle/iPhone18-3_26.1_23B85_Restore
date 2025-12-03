@interface BMSQLJSONColumn
- (BOOL)setSQLiteValueFromRow:(id)row sqliteContext:(sqlite3_context *)context error:(id *)error;
@end

@implementation BMSQLJSONColumn

- (BOOL)setSQLiteValueFromRow:(id)row sqliteContext:(sqlite3_context *)context error:(id *)error
{
  v6 = (*(self->_jsonExtractBlock + 2))();
  v7 = v6;
  if (v6)
  {
    sqlite3_result_text(context, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_result_null(context);
  }

  return 1;
}

@end