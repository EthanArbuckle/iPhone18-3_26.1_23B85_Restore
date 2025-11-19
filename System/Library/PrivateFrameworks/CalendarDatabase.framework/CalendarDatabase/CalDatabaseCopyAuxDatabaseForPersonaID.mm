@interface CalDatabaseCopyAuxDatabaseForPersonaID
@end

@implementation CalDatabaseCopyAuxDatabaseForPersonaID

uint64_t ___CalDatabaseCopyAuxDatabaseForPersonaID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  v4 = MEMORY[0x1E69E9B38];

  return sqlite3_bind_text(v2, 1, CStringFromCFString, -1, v4);
}

@end