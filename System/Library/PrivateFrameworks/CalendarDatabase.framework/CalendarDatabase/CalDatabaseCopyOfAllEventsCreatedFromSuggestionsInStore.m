@interface CalDatabaseCopyOfAllEventsCreatedFromSuggestionsInStore
@end

@implementation CalDatabaseCopyOfAllEventsCreatedFromSuggestionsInStore

const __CFString *___CalDatabaseCopyOfAllEventsCreatedFromSuggestionsInStore_block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(a2 + 8);
    CStringFromCFString = CalCreateCStringFromCFString(result);
    v5 = MEMORY[0x1E69E9B38];

    return sqlite3_bind_text(v3, 1, CStringFromCFString, -1, v5);
  }

  return result;
}

@end