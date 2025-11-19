@interface CalDatabaseSetRestoreGeneration
@end

@implementation CalDatabaseSetRestoreGeneration

uint64_t ___CalDatabaseSetRestoreGeneration_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (*v2)
    {
      if (*(*v2 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v5 = *(a1 + 40);

  return CPSqliteConnectionSetIntegerForProperty();
}

@end