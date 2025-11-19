@interface MRMediaRemoteGetDeviceUIDWithRetryIntervals
@end

@implementation MRMediaRemoteGetDeviceUIDWithRetryIntervals

void ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaremote.utility.getDeviceUIDWithRetry", v2);
  v1 = _MRMediaRemoteGetDeviceUIDWithRetryIntervals_workerQueue;
  _MRMediaRemoteGetDeviceUIDWithRetryIntervals_workerQueue = v0;
}

void ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MRMediaRemoteCopyDeviceUID();
  if (v2)
  {
    v3 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke_3;
    v10[3] = &unk_1E769AB28;
    v12 = *(a1 + 48);
    v11 = v2;
    dispatch_async(v3, v10);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = _MRLogForCategory(0);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke_2_cold_1((a1 + 56), a1, v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) count];
      v8 = [*(a1 + 40) componentsJoinedByString:{@", "}];
      *buf = 134218242;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[GetDeviceUIDWithRetry] Unable to getDeviceUID - will retry up to %ld times with intervals [%@]", buf, 0x16u);
    }

    _MRMediaRemoteGetDeviceUIDWithRetryIntervals(*(a1 + 40), *(a1 + 56) + 1, *(a1 + 32), *(a1 + 48));
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke_457(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = a1[6];
    v7 = 134218240;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[GetDeviceUIDWithRetry] Retrying to getDeviceUID - retry #%ld after %f seconds", &v7, 0x16u);
  }

  result = (*(a1[4] + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void ___MRMediaRemoteGetDeviceUIDWithRetryIntervals_block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [*(a2 + 40) count];
  v7 = 134218240;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "[GetDeviceUIDWithRetry] Unable to getDeviceUID - retry %ld of up to %ld", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end