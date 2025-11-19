@interface CalDatabaseGetChangedObjectIDsSinceSequenceNumberForClient
@end

@implementation CalDatabaseGetChangedObjectIDsSinceSequenceNumberForClient

void ___CalDatabaseGetChangedObjectIDsSinceSequenceNumberForClient_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v8 = a5;
  v9 = 32;
  v10 = 56;
  if (a4)
  {
    v10 = 48;
  }

  if (a3 == 26)
  {
    v10 = 40;
  }

  if (a3 != 6)
  {
    v9 = v10;
  }

  v11 = *(a1 + v9);
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 88));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordStoreGetChangesForClassWithBindBlockAndProperties();
}

@end