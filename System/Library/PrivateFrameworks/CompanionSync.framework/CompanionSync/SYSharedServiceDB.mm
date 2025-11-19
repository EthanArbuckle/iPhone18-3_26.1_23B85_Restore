@interface SYSharedServiceDB
@end

@implementation SYSharedServiceDB

const char *__46___SYSharedServiceDB_UnitTestHelpers___dbPath__block_invoke(uint64_t a1, sqlite3 *db)
{
  result = sqlite3_db_filename(db, "main");
  if (result)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:result];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

@end