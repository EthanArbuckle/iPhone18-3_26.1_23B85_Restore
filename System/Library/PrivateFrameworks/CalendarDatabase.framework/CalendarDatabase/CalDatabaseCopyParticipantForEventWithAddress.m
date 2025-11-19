@interface CalDatabaseCopyParticipantForEventWithAddress
@end

@implementation CalDatabaseCopyParticipantForEventWithAddress

uint64_t ___CalDatabaseCopyParticipantForEventWithAddress_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  v4 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  v6 = MEMORY[0x1E69E9B38];

  return sqlite3_bind_text(v4, 2, CStringFromCFString, -1, v6);
}

@end