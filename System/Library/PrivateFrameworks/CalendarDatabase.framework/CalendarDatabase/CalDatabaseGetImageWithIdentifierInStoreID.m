@interface CalDatabaseGetImageWithIdentifierInStoreID
@end

@implementation CalDatabaseGetImageWithIdentifierInStoreID

uint64_t ___CalDatabaseGetImageWithIdentifierInStoreID_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int64(*(a2 + 8), 1, *(a1 + 32));
  v4 = *(a2 + 8);
  v5 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(v4, 2, v5, -1, 0);
}

@end