@interface CalDatabaseRemoveAttendeeChangesWithIndices
@end

@implementation CalDatabaseRemoveAttendeeChangesWithIndices

uint64_t ___CalDatabaseRemoveAttendeeChangesWithIndices_block_invoke(void *a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1[5]);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = a1[6];
  result = CPRecordStoreDeleteChangesForClassWithIndices();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end