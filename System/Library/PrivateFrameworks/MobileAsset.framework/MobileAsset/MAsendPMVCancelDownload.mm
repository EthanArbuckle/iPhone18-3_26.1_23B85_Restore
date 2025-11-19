@interface MAsendPMVCancelDownload
@end

@implementation MAsendPMVCancelDownload

void ___MAsendPMVCancelDownload_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19A8EC930]();
  *(*(*(a1 + 40) + 8) + 24) = 4;
  if (v4 == MEMORY[0x1E69E9E98])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Error on the cancel PMV download reply", buf, 2u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(v3, "Result");
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v7 = stringForMACancelDownloadResult(v6);
      *buf = 134218242;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Got the cancel PMV reply, response: %ld (%{public}@)", buf, 0x16u);
    }
  }

  if (*(a1 + 32))
  {
    v8 = _getClientCallbackQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___MAsendPMVCancelDownload_block_invoke_1220;
    block[3] = &unk_1E74C9978;
    v11 = *(a1 + 32);
    v9 = v11;
    v13 = v11;
    dispatch_async(v8, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void ___MAsendPMVCancelDownload_block_invoke_1220(uint64_t a1)
{
  if (isCancelDownloadResultFailure(*(*(*(a1 + 40) + 8) + 24)))
  {
    v2 = *(*(*(a1 + 40) + 8) + 24);
    v3 = errorStringForMACancelDownloadResult(v2);
    v10 = MAErrorForCancelDownloadResultWithUnderlying(v2, 0, @"During software lookup: %@", v4, v5, v6, v7, v8, v3);
  }

  else
  {
    v10 = 0;
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
}

void ___MAsendPMVCancelDownload_block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (isCancelDownloadResultFailure(v2))
  {
    v3 = errorStringForMACancelDownloadResult(*(*(*(a1 + 40) + 8) + 24));
    v9 = MAErrorForCancelDownloadResultWithUnderlying(v2, 0, @"Before software lookup: %@", v4, v5, v6, v7, v8, v3);
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end