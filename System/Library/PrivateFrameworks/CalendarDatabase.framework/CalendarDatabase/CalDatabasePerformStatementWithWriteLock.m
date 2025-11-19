@interface CalDatabasePerformStatementWithWriteLock
@end

@implementation CalDatabasePerformStatementWithWriteLock

uint64_t ___CalDatabasePerformStatementWithWriteLock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (*v2)
    {
      v4 = **v2;
      if (v4)
      {
        if (*(v4 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  result = CPSqliteStatementPerform();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end