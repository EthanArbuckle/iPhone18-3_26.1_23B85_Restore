@interface CalDatabaseCopyNotificationWithUUID
@end

@implementation CalDatabaseCopyNotificationWithUUID

uint64_t ___CalDatabaseCopyNotificationWithUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  sqlite3_bind_text(v4, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  v6 = *(a2 + 8);
  v7 = *(a1 + 40);

  return sqlite3_bind_int(v6, 2, v7);
}

@end