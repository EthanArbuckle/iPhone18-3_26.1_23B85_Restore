@interface CalDatabaseCopyOfAllAttachmentsInStore
@end

@implementation CalDatabaseCopyOfAllAttachmentsInStore

uint64_t ___CalDatabaseCopyOfAllAttachmentsInStore_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 32);
  ID = CPRecordGetID();

  return sqlite3_bind_int(v2, 1, ID);
}

@end