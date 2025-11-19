@interface ACAccount
@end

@implementation ACAccount

void __59__ACAccount_DeviceManagementClient__dmc_accountQuotaString__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve quota size for account: %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v12 = getAAQuotaInfoResponseClass_softClass;
    v29 = getAAQuotaInfoResponseClass_softClass;
    if (!getAAQuotaInfoResponseClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAAQuotaInfoResponseClass_block_invoke;
      v31 = &unk_1E7ADC1F0;
      v32 = &v26;
      __getAAQuotaInfoResponseClass_block_invoke(buf);
      v12 = v27[3];
    }

    v13 = v12;
    _Block_object_dispose(&v26, 8);
    v14 = [v12 alloc];
    v15 = [v8 httpResponse];
    v16 = [v8 data];
    v17 = [v14 initWithHTTPResponse:v15 data:v16];

    v18 = [v17 totalStorageInBytes];
    v19 = [v18 longLongValue];

    if (v19)
    {
      v20 = NSLocalizedFileSizeDescription();
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }

    else
    {
      v23 = *DMCLogObjects();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "Quota size for account: %{public}@ is 0!", buf, 0xCu);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v25 = *MEMORY[0x1E69E9840];
}

@end