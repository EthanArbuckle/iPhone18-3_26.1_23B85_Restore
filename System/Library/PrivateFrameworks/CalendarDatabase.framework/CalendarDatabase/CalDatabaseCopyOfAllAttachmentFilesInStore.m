@interface CalDatabaseCopyOfAllAttachmentFilesInStore
@end

@implementation CalDatabaseCopyOfAllAttachmentFilesInStore

uint64_t ___CalDatabaseCopyOfAllAttachmentFilesInStore_block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    v2 = result;
    v3 = *(a2 + 8);
    if (CDBLockingAssertionsEnabled == 1 && *(result + 40) != 0)
    {
      v5 = *(result + 40);
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v7 = *(v2 + 32);
    CPRecordGetID();
    RowidForRecordID = CPRecordStoreGetRowidForRecordID();

    return sqlite3_bind_int64(v3, 1, RowidForRecordID);
  }

  return result;
}

@end