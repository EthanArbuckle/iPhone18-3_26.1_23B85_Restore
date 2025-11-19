@interface MAsendPMVDownload
@end

@implementation MAsendPMVDownload

void ___MAsendPMVDownload_block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19A8EC930]();
  int64 = xpc_dictionary_get_int64(v3, "Result");
  if (v4 == MEMORY[0x1E69E9E98])
  {
    v11 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "PMV download failed due to XPC", buf, 2u);
    }

    v6 = 1;
  }

  else
  {
    v6 = int64;
    if (int64 == 13)
    {
      if (*(a1 + 48) == 1)
      {
        v7 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v29 = 2;
          _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_DEFAULT, "Will retry download PMV, after %ld seconds", buf, 0xCu);
        }

        v8 = dispatch_time(0, 2000000000);
        v9 = getRetryXpcDelayQueue();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___MAsendPMVDownload_block_invoke_1208;
        block[3] = &unk_1E74C9928;
        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        dispatch_after(v8, v9, block);

        v10 = 0;
LABEL_20:
        v20 = 0;
        goto LABEL_21;
      }

      v6 = 13;
    }
  }

  if (!MAIsDownloadResultFailure(v6))
  {
    v22 = getLoadDictionaryFromMessage(v3, @"productMarketingVersions");
    if (v22)
    {
      v10 = v22;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F8];
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      (*(v23 + 16))(v23, v6, v10, 0);
    }

    goto LABEL_20;
  }

  v12 = objc_opt_class();
  v13 = getLoadClassFromMessage(v3, @"CFNetworkError", v12);
  v14 = errorStringForMADownloadResult(v6);
  v20 = MAErrorForDownloadResultWithUnderlying(v6, v13, @"Failed downloading SoftwareLookup: %@", v15, v16, v17, v18, v19, v14);

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v6, 0, v20);
  }

  v10 = 0;
LABEL_21:

  v24 = *MEMORY[0x1E69E9840];
}

void ___MAsendPMVDownload_block_invoke_1208(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___MAsendPMVDownload_block_invoke_2;
  v2[3] = &unk_1E74C9900;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  _MAsendPMVDownload(v1, 0, v2);
}

uint64_t ___MAsendPMVDownload_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end