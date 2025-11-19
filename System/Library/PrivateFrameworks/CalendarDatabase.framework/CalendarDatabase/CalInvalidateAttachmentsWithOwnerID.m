@interface CalInvalidateAttachmentsWithOwnerID
@end

@implementation CalInvalidateAttachmentsWithOwnerID

BOOL ___CalInvalidateAttachmentsWithOwnerID_block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
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

  Property = CPRecordGetProperty();
  if (v2 == Property)
  {
    v5 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v9[0] = 67109120;
      v9[1] = CPRecordGetID();
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_DEBUG, "INV: Invalidating attachment %d", v9, 8u);
    }
  }

  result = v2 == Property;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end