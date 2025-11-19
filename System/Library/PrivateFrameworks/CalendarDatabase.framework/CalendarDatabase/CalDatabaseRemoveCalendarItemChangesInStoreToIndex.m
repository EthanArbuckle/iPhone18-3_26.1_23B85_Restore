@interface CalDatabaseRemoveCalendarItemChangesInStoreToIndex
@end

@implementation CalDatabaseRemoveCalendarItemChangesInStoreToIndex

uint64_t ___CalDatabaseRemoveCalendarItemChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 40));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = *(a1 + 56);
  v8 = *(a1 + 60);
  v7 = *(a1 + 48);
  result = CPRecordStoreDeleteChangesForClassToIndexWhereWithBindBlock();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___CalDatabaseRemoveCalendarItemChangesInStoreToIndex_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  sqlite3_bind_int(*(a2 + 8), a3, *(a1 + 40));
  v6 = *(a2 + 8);
  v7 = *(a1 + 32);
  ID = CPRecordGetID();

  return sqlite3_bind_int(v6, a3 + 1, ID);
}

@end