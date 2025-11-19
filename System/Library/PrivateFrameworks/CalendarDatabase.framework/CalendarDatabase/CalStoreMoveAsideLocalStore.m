@interface CalStoreMoveAsideLocalStore
@end

@implementation CalStoreMoveAsideLocalStore

uint64_t ___CalStoreMoveAsideLocalStore_block_invoke(uint64_t a1, uint64_t a2)
{
  *&v21[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:a2 validFormatSpecifiers:@"%i%i" error:0, *(a1 + 40), 1];
  v4 = *(a1 + 32);
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
  {
    if (*v4)
    {
      if (*(*v4 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v7 = CPSqliteConnectionStatementForSQL();
  if (v7)
  {
    v8 = v7;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        v9 = **v7;
        if (v9)
        {
          if (*(v9 + 104))
          {
            v10 = CPRecordStoreGetContext();
            if (v10)
            {
              os_unfair_lock_assert_owner(v10 + 20);
            }
          }
        }
      }
    }

    v11 = CPSqliteStatementPerform();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v8)
      {
        v12 = **v8;
        if (v12)
        {
          if (*(v12 + 104))
          {
            v13 = CPRecordStoreGetContext();
            if (v13)
            {
              os_unfair_lock_assert_owner(v13 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    if (v11)
    {
      v14 = v11 == 101;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v11)
    {
      if (v11 != 101)
      {
        v16 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v21[0] = v11;
          LOWORD(v21[1]) = 2114;
          *(&v21[1] + 2) = v3;
          _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Unexpected result %i for sql %{public}@", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    v17 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v21 = v3;
      _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "Couldn't get statement for sql %{public}@", buf, 0xCu);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

@end