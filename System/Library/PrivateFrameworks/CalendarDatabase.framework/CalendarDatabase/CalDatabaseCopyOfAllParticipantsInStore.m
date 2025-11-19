@interface CalDatabaseCopyOfAllParticipantsInStore
@end

@implementation CalDatabaseCopyOfAllParticipantsInStore

uint64_t ___CalDatabaseCopyOfAllParticipantsInStore_block_invoke_2(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  v4 = *(a2 + 8);
  v5 = *(a1 + 32);
  ID = CPRecordGetID();

  return sqlite3_bind_int(v4, 2, ID);
}

@end