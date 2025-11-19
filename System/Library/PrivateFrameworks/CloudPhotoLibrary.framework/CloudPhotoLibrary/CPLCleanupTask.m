@interface CPLCleanupTask
- (void)_cleanupSharingFlags;
- (void)_doOneIteration;
- (void)launch;
- (void)taskDidFinishWithError:(id)a3;
@end

@implementation CPLCleanupTask

- (void)taskDidFinishWithError:(id)a3
{
  v4 = a3;
  [CPLTransaction endTransactionWithIdentifier:@"cpl.cleanup"];
  v5.receiver = self;
  v5.super_class = CPLCleanupTask;
  [(CPLEngineSyncTask *)&v5 taskDidFinishWithError:v4];
}

- (void)launch
{
  v3.receiver = self;
  v3.super_class = CPLCleanupTask;
  [(CPLEngineSyncTask *)&v3 launch];
  [CPLTransaction beginTransactionWithIdentifier:@"cpl.cleanup" description:@"cleaning store" keepPower:1];
  [(CPLCleanupTask *)self _doOneIteration];
}

- (void)_doOneIteration
{
  v3 = [(CPLEngineSyncTask *)self engineLibrary];
  v4 = [v3 store];

  v5 = [v4 cleanupTasks];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__CPLCleanupTask__doOneIteration__block_invoke;
  v10[3] = &unk_1E861C170;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  v13 = v17;
  v7 = v4;
  v12 = v7;
  v14 = v15;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__CPLCleanupTask__doOneIteration__block_invoke_4;
  v9[3] = &unk_1E86209E0;
  v9[4] = self;
  v9[5] = v17;
  v9[6] = v15;
  v8 = [v7 performWriteTransactionWithBlock:v10 completionHandler:v9];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

void __33__CPLCleanupTask__doOneIteration__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) session];
  v5 = [v4 shouldDefer];

  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLTaskOSLogDomain_5477();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412290;
        v25 = objc_opt_class();
        v8 = v25;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Session has been deferred. Stopping %@ now", buf, 0xCu);
      }
    }

    v9 = +[CPLErrors sessionHasBeenDeferredError];
    [v3 setError:v9];
  }

  else
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __33__CPLCleanupTask__doOneIteration__block_invoke_3;
    v19 = &unk_1E86206C8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v20 = v10;
    v23 = v11;
    v12 = v3;
    v13 = *(a1 + 32);
    v21 = v12;
    v22 = v13;
    [v12 do:&v16];
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v14 = [*(a1 + 48) sharingScopeIdentifier];

      if (!v14)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }

    v9 = v20;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __33__CPLCleanupTask__doOneIteration__block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v9 error];
    [v4 taskDidFinishWithError:v5];
  }

  else if ([*(a1 + 32) isCancelled])
  {
    v6 = *(a1 + 32);
    v7 = +[CPLErrors operationCancelledError];
    [v6 taskDidFinishWithError:v7];
  }

  else if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) _doOneIteration];
  }

  else
  {
    v8 = *(a1 + 32);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [v8 _cleanupSharingFlags];
    }

    else
    {
      [v8 taskDidFinishWithError:0];
    }
  }
}

uint64_t __33__CPLCleanupTask__doOneIteration__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v3 = [*(a1 + 32) cleanupStepHasMore:*(*(a1 + 56) + 8) + 24 deletedCount:&v8 error:a2];
  if (v3)
  {
    v4 = v8 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__CPLCleanupTask__doOneIteration__block_invoke_2;
    v7[3] = &unk_1E861FB48;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 48);
    v7[5] = v8;
    [v5 addCleanupBlock:v7];
  }

  return v3;
}

uint64_t __33__CPLCleanupTask__doOneIteration__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __33__CPLCleanupTask__doOneIteration__block_invoke_3;
    v5[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
    v4 = *(result + 32);
    v5[4] = *(result + 40);
    return [v4 withThroughputReporter:v5];
  }

  return result;
}

- (void)_cleanupSharingFlags
{
  v3 = [(CPLEngineSyncTask *)self engineLibrary];
  v4 = [v3 store];

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CPLCleanupTask__cleanupSharingFlags__block_invoke;
  v8[3] = &unk_1E86200A8;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = v11;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CPLCleanupTask__cleanupSharingFlags__block_invoke_2;
  v7[3] = &unk_1E8620A60;
  v7[4] = self;
  v7[5] = v11;
  v6 = [v5 performWriteTransactionWithBlock:v8 completionHandler:v7];

  _Block_object_dispose(v11, 8);
}

void __38__CPLCleanupTask__cleanupSharingFlags__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) session];
  v5 = [v4 shouldDefer];

  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLTaskOSLogDomain_5477();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412290;
        v18 = objc_opt_class();
        v8 = v18;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Session has been deferred. Stopping %@ now", buf, 0xCu);
      }
    }

    v9 = +[CPLErrors sessionHasBeenDeferredError];
    [v3 setError:v9];
    goto LABEL_9;
  }

  v10 = [*(a1 + 40) sharingScopeIdentifier];

  if (!v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__CPLCleanupTask__cleanupSharingFlags__block_invoke_1;
    v14[3] = &unk_1E8620568;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v15 = v11;
    v16 = v12;
    [v3 do:v14];
    v9 = v15;
LABEL_9:
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __38__CPLCleanupTask__cleanupSharingFlags__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v9 error];
    [v4 taskDidFinishWithError:v5];
  }

  else if ([*(a1 + 32) isCancelled])
  {
    v6 = *(a1 + 32);
    v7 = +[CPLErrors operationCancelledError];
    [v6 taskDidFinishWithError:v7];
  }

  else
  {
    v8 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      [v8 _cleanupSharingFlags];
    }

    else
    {
      [v8 taskDidFinishWithError:0];
    }
  }
}

uint64_t __38__CPLCleanupTask__cleanupSharingFlags__block_invoke_1(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) pushRepository];
  v7 = 0;
  v5 = [v4 deleteSharingFlagsWithMaxCount:200 deletedCount:&v7 error:a2];
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = v7 != 0;
  }

  return v5;
}

@end