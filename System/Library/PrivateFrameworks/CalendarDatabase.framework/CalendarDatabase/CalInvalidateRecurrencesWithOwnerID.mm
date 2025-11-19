@interface CalInvalidateRecurrencesWithOwnerID
@end

@implementation CalInvalidateRecurrencesWithOwnerID

BOOL ___CalInvalidateRecurrencesWithOwnerID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return v2 == CPRecordGetIntegerProperty();
}

@end