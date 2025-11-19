@interface CPLScopeUpdateScopeTask
+ (void)_updateScopeWithNewScopeType:(int64_t)a3 scope:(id)a4 updatedScopeChange:(id)a5 updatedFlags:(id)a6 oldTransportScope:(id)a7 updatedTransportScope:(id)a8 shouldUpdateTransportScope:(id)a9 store:(id)a10 transport:(id)a11 session:(id)a12 inTransaction:(id)a13;
+ (void)updateScopeWithNewScopeType:(int64_t)a3 scope:(id)a4 updatedScopeChange:(id)a5 updatedFlags:(id)a6 oldTransportScope:(id)a7 updatedTransportScope:(id)a8 shouldUpdateTransportScope:(id)a9 store:(id)a10 transport:(id)a11 session:(id)a12 inTransaction:(id)a13;
- (BOOL)checkScopeIsValidInTransaction:(id)a3;
- (CPLScopeUpdateScopeTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7;
- (void)_fetchTransportScope;
- (void)_getLibraryInfo;
- (void)_lookForStagingScopeWithIdentifier:(id)a3 transportScope:(id)a4;
- (void)_markScopeAsDeletedAndSucceedTaskWithFlags:(id)a3;
- (void)_markScopeAsFeatureDisabledWithFlags:(id)a3;
- (void)_markScopeHasBadTransportScopeWithError:(id)a3;
- (void)_performAdditionalChecksWithNewScopeType:(int64_t)a3 updatedScopeChange:(id)a4 updatedFlags:(id)a5 oldTransportScope:(id)a6 updatedTransportScope:(id)a7 completionHandler:(id)a8;
- (void)_updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_updateScopeWithNewScopeType:(int64_t)a3 updatedScopeChange:(id)a4 updatedFlags:(id)a5 oldTransportScope:(id)a6 session:(id)a7 updatedTransportScope:(id)a8;
- (void)cancel;
- (void)launch;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CPLScopeUpdateScopeTask

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__CPLScopeUpdateScopeTask_task_didFinishWithError___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v19 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

uint64_t __51__CPLScopeUpdateScopeTask_task_didFinishWithError___block_invoke(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 168))
  {
    return [*(result + 40) taskDidFinishWithError:*(result + 48)];
  }

  return result;
}

- (BOOL)checkScopeIsValidInTransaction:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CPLEngineSyncTask *)self session];
  v6 = [v5 shouldDefer];

  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138412290;
        *&v14[4] = objc_opt_class();
        v8 = *&v14[4];
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Session for %@ has been deferred", v14, 0xCu);
      }
    }

    v9 = +[CPLErrors sessionHasBeenDeferredError];
    [v4 setError:v9];

    v10 = 0;
  }

  else
  {
    v11 = [v4 error];
    v10 = v11 == 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CPLScopeUpdateScopeTask;
  [(CPLEngineSyncTask *)&v8 cancel];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__CPLScopeUpdateScopeTask_cancel__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

uint64_t __33__CPLScopeUpdateScopeTask_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 136) cancel];
  [*(*(a1 + 32) + 144) cancel];
  v2 = *(*(a1 + 32) + 168);

  return [v2 cancel];
}

- (void)launch
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CPLScopeUpdateScopeTask;
  [(CPLEngineSyncTask *)&v11 launch];
  v3 = [(CPLEngineScopedTask *)self transportScope];

  if (v3)
  {
    v4 = [(CPLEngineScopedTask *)self store];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__CPLScopeUpdateScopeTask_launch__block_invoke;
    v10[3] = &unk_1E86205E0;
    v10[4] = self;
    v5 = [v4 performReadTransactionWithBlock:v10];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CPLEngineScopedTask *)self scope];
        v8 = [v7 scopeIdentifier];
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Will need to fetch transport scope for %@", buf, 0xCu);
      }
    }

    [(CPLScopeUpdateScopeTask *)self _fetchTransportScope];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __33__CPLScopeUpdateScopeTask_launch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = [v2 scopes];
  v4 = [*(a1 + 32) scope];
  v5 = [v3 scopeChangeForScope:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  *(v6 + 128) = v5;

  v8 = *(a1 + 32);

  return [v8 _getLibraryInfo];
}

- (void)_fetchTransportScope
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v17 = +[CPLErrors operationCancelledError];
    [v3 taskDidFinishWithError:v17];
  }

  else
  {
    v4 = [*(a1 + 32) engineLibrary];
    v5 = [v4 transport];

    v6 = [*(a1 + 32) scope];
    v7 = *(a1 + 32);
    if (v7[160])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v7 transportScope];
      v7 = *(a1 + 32);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_2;
    v18[3] = &unk_1E861F2C0;
    v18[4] = v7;
    v9 = [v5 fetchTransportScopeForScope:v6 transportScope:v8 completionHandler:v18];
    v10 = *(a1 + 32);
    v11 = *(v10 + 144);
    *(v10 + 144) = v9;

    if (!v8)
    {
      v12 = [v6 scopeIdentifier];
      v13 = [*(a1 + 32) store];
      v14 = [v13 mainScopeIdentifier];
      v15 = [v12 isEqualToString:v14];

      if (v15)
      {
        [*(*(a1 + 32) + 144) setShouldCreateScopeIfNecessary:1];
      }
    }

    v16 = [v5 createGroupForSetup];
    [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 144) withTransportGroup:v16];
  }
}

void __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 120);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_3;
  v18[3] = &unk_1E861B2B8;
  v19 = v9;
  v20 = v7;
  v21 = v10;
  v22 = v8;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v24 = v12;
  v13 = v11;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

void __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 40))
    {
      v2 = 0;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v3 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v4 = [*(a1 + 48) scope];
          v5 = [v4 scopeIdentifier];
          *buf = 138412290;
          v19 = v5;
          _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "Transport returned no transport scope for %@ but no error either", buf, 0xCu);
        }
      }

      v2 = +[CPLErrors unknownError];
    }
  }

  objc_storeStrong((*(a1 + 48) + 152), *(a1 + 40));
  if (v2)
  {
    if ([v2 isCPLErrorWithCode:23])
    {
      [*(a1 + 48) _markScopeAsDeletedAndSucceedTaskWithFlags:*(a1 + 56)];
    }

    else
    {
      v9 = [v2 isCPLErrorWithCode:1002];
      v10 = *(a1 + 48);
      if (v9)
      {
        [v10 _markScopeAsFeatureDisabledWithFlags:0];
      }

      else
      {
        [v10 taskDidFinishWithError:v2];
      }
    }
  }

  else
  {
    v6 = [*(a1 + 48) store];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_69;
    v16[3] = &unk_1E86205B8;
    v14 = *(a1 + 40);
    v7 = v14.i64[0];
    v17 = vextq_s8(v14, v14, 8uLL);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_3_71;
    v15[3] = &unk_1E86205E0;
    v15[4] = *(a1 + 48);
    v8 = [v6 performWriteTransactionWithBlock:v16 completionHandler:v15];
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 144);
  *(v11 + 144) = 0;

  v13 = *MEMORY[0x1E69E9840];
}

void __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4 = [*(a1 + 32) store];
    v5 = [v4 scopes];

    v6 = [*(a1 + 32) scope];
    v7 = [v5 scopeChangeForScope:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 128);
    *(v8 + 128) = v7;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_2_70;
    v14[3] = &unk_1E8620968;
    v15 = v5;
    v16 = *(a1 + 40);
    v17 = v6;
    v18 = *(a1 + 32);
    v10 = v6;
    v11 = v5;
    [v3 do:v14];
  }

  else
  {
    v12 = [v3 error];

    if (!v12)
    {
      v13 = +[CPLErrors operationCancelledError];
      [v3 setError:v13];
    }
  }
}

void __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_3_71(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v6 error];
    [v4 taskDidFinishWithError:v5];
  }

  else
  {
    [v4 _getLibraryInfo];
  }
}

uint64_t __47__CPLScopeUpdateScopeTask__fetchTransportScope__block_invoke_2_70(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setTransportScope:*(a1 + 40) forScope:*(a1 + 48) error:a2];
  if (result)
  {
    v5 = [*(a1 + 56) transportScope];

    if (v5)
    {
      return 1;
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);

      return [v6 setupInitialSyncTransportGroupsForScope:v7 error:a2];
    }
  }

  return result;
}

- (void)_getLibraryInfo
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CPLScopeUpdateScopeTask__getLibraryInfo__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __42__CPLScopeUpdateScopeTask__getLibraryInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v18 = +[CPLErrors operationCancelledError];
    [v3 taskDidFinishWithError:v18];
  }

  else
  {
    v4 = [*(a1 + 32) engineLibrary];
    v5 = [v4 transport];

    v6 = *(a1 + 32);
    v7 = v6[19];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [v6 transportScope];
    }

    v9 = v8;
    v10 = [*(a1 + 32) scope];
    v11 = *(a1 + 32);
    v12 = *(v11 + 128);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__CPLScopeUpdateScopeTask__getLibraryInfo__block_invoke_2;
    v19[3] = &unk_1E861F298;
    v19[4] = v11;
    v20 = v9;
    v13 = v9;
    v14 = [v5 getScopeInfoWithTransportScope:v13 scope:v10 previousScopeChange:v12 completionHandler:v19];
    v15 = *(a1 + 32);
    v16 = *(v15 + 136);
    *(v15 + 136) = v14;

    v17 = [v5 createGroupForLibraryStateCheck];
    [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 136) withTransportGroup:v17];
  }
}

void __42__CPLScopeUpdateScopeTask__getLibraryInfo__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *(a1 + 32);
  v16 = *(v15 + 120);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __42__CPLScopeUpdateScopeTask__getLibraryInfo__block_invoke_3;
  v24[3] = &unk_1E86207A8;
  v25 = v14;
  v26 = v15;
  v31 = a2;
  v27 = v11;
  v28 = v12;
  v29 = *(a1 + 40);
  v30 = v13;
  v17 = v24;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v33 = v17;
  v18 = v16;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  v22 = v14;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v18, v23);
}

void __42__CPLScopeUpdateScopeTask__getLibraryInfo__block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 isCPLErrorWithCode:32])
    {
      v3 = *(a1 + 40);
      if (v3[160])
      {
        [v3 _markScopeHasBadTransportScopeWithError:*(a1 + 32)];
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = __CPLTaskOSLogDomain_17161();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [*(a1 + 40) scope];
            *buf = 138412290;
            v26 = v13;
            _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "We will need to determine the transport scope for %@ again", buf, 0xCu);
          }

          v3 = *(a1 + 40);
        }

        v3[160] = 1;
        [*(a1 + 40) _fetchTransportScope];
      }
    }

    else if ([*(a1 + 32) isCPLErrorWithCode:23])
    {
      [*(a1 + 40) _markScopeAsDeletedAndSucceedTaskWithFlags:0];
    }

    else
    {
      v14 = [*(a1 + 32) isCPLErrorWithCode:1002];
      v15 = *(a1 + 40);
      if (v14)
      {
        [v15 _markScopeAsFeatureDisabledWithFlags:0];
      }

      else
      {
        [v15 taskDidFinishWithError:*(a1 + 32)];
      }
    }
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__CPLScopeUpdateScopeTask__getLibraryInfo__block_invoke_67;
    v20[3] = &unk_1E86207D0;
    v24 = v7;
    v19 = *(a1 + 40);
    v8 = *(&v19 + 1);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v21 = v19;
    v22 = v11;
    v23 = *(a1 + 72);
    [v19 _performAdditionalChecksWithNewScopeType:v7 updatedScopeChange:v8 updatedFlags:v4 oldTransportScope:v5 updatedTransportScope:v6 completionHandler:v20];
  }

  v16 = *(a1 + 40);
  v17 = *(v16 + 136);
  *(v16 + 136) = 0;

  v18 = *MEMORY[0x1E69E9840];
}

void __42__CPLScopeUpdateScopeTask__getLibraryInfo__block_invoke_67(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [*(a1 + 32) scope];
        v13 = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Additional checks for %@ failed: %@", &v13, 0x16u);
      }
    }

    [*(a1 + 32) taskDidFinishWithError:v3];
  }

  else
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = [v7 session];
    [v7 _updateScopeWithNewScopeType:v6 updatedScopeChange:v8 updatedFlags:v9 oldTransportScope:v10 session:v11 updatedTransportScope:*(a1 + 64)];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_performAdditionalChecksWithNewScopeType:(int64_t)a3 updatedScopeChange:(id)a4 updatedFlags:(id)a5 oldTransportScope:(id)a6 updatedTransportScope:(id)a7 completionHandler:(id)a8
{
  v19 = a4;
  v11 = a8;
  v12 = [(CPLEngineScopedTask *)self scope];
  v13 = [v12 scopeType];

  if (v13 == a3)
  {
    v11[2](v11, 0);
    goto LABEL_13;
  }

  v14 = [(CPLEngineScopedTask *)self scope];
  v15 = [v14 scopeIdentifier];

  if (a3 == 6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_11:
      v11[2](v11, 0);
      goto LABEL_12;
    }

    v16 = [v19 stagedScopeChange];
    v17 = v16;
    if (v16)
    {
      a3 = [v16 scopeType];
      v18 = [v17 scopeIdentifier];

      v15 = v18;
    }

    else
    {
      a3 = 6;
    }
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    goto LABEL_11;
  }

  [(CPLScopeUpdateScopeTask *)self _updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier:v15 completionHandler:v11];
LABEL_12:

LABEL_13:
}

- (void)_updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v15[4] = self;
  v16 = v7;
  v17 = v8;
  v18 = a2;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = v7;
  v13 = v8;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 48);
    v14 = +[CPLErrors operationCancelledError];
    (*(v2 + 16))(v2, v14);
  }

  else
  {
    v3 = [*(a1 + 32) store];
    v4 = [v3 scopes];
    v5 = [v3 engineLibrary];
    v6 = [v5 transport];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_2;
    v15[3] = &unk_1E861F270;
    v7 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v4;
    v17 = v7;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v20 = v8;
    v21 = v9;
    v18 = v6;
    v19 = v3;
    v10 = v3;
    v11 = v6;
    v12 = v4;
    v13 = [v10 performReadTransactionWithBlock:v15];
  }
}

void __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] checkScopeIsValidInTransaction:v3])
  {
    v4 = [a1[5] primaryScope];
    if (!v4)
    {
LABEL_18:
      (*(a1[9] + 2))();
      goto LABEL_19;
    }

    v5 = v4;
    v6 = [a1[5] sharingScopeForScope:v4];
    v7 = [v6 scopeIdentifier];
    v8 = v7;
    v9 = a1[6];
    if (v7)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = v7 | v9;

      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = [v7 isEqual:?];

      if ((v15 & 1) == 0)
      {
LABEL_15:
        v16 = [a1[5] transportScopeForScope:v5];
        if (v16)
        {
          v17 = v16;

          v18 = [a1[5] scopeChangeForScope:v5];
          v19 = a1[4];
          v20 = v19[15];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_60;
          v27[3] = &unk_1E861F248;
          v27[4] = v19;
          v35 = a1[9];
          v28 = a1[7];
          v29 = v17;
          v30 = v5;
          v31 = v18;
          v32 = a1[6];
          v33 = a1[8];
          v34 = a1[5];
          v21 = v27;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __cpl_dispatch_async_block_invoke_17228;
          block[3] = &unk_1E861B4E0;
          v37 = v21;
          v22 = v20;
          v23 = v18;
          v24 = v5;
          v25 = v17;
          v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
          dispatch_async(v22, v26);

          goto LABEL_19;
        }
      }
    }

    goto LABEL_18;
  }

  v12 = [v3 error];

  v13 = a1[9];
  if (v12)
  {
    [v3 error];
  }

  else
  {
    +[CPLErrors operationCancelledError];
  }
  v14 = ;
  v13[2](v13, v14);

LABEL_19:
}

void __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_60(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 96);
    v15 = +[CPLErrors operationCancelledError];
    (*(v2 + 16))(v2);
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_2_61;
    v16[3] = &unk_1E861F220;
    v16[4] = *(a1 + 32);
    v21 = *(a1 + 96);
    v17 = *(a1 + 56);
    v18 = *(a1 + 72);
    v19 = *(a1 + 80);
    v20 = *(a1 + 88);
    v8 = [v4 getScopeInfoWithTransportScope:v5 scope:v6 previousScopeChange:v7 completionHandler:v16];
    v9 = *(a1 + 32);
    v10 = *(v9 + 136);
    *(v9 + 136) = v8;

    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 56);
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Fetching rewind sync anchors from %@", buf, 0xCu);
      }
    }

    v13 = [*(a1 + 40) createGroupForLibraryStateCheck];
    [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 136) withTransportGroup:v13];

    v14 = *MEMORY[0x1E69E9840];
  }
}

void __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_2_61(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v10 = *(*(a1 + 32) + 120);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_3;
  v23[3] = &unk_1E861F1F8;
  v24 = v9;
  v29 = *(a1 + 72);
  v11 = *(a1 + 40);
  v25 = *(a1 + 32);
  v26 = v8;
  v12 = v11;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v27 = v17;
  v28 = v16;
  v18 = v23;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v31 = v18;
  v19 = v10;
  v20 = v8;
  v21 = v9;
  v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v19, v22);
}

void __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 88);
    v3 = *(*(a1 + 88) + 16);
LABEL_3:
    v3();
    goto LABEL_24;
  }

  if ([*(a1 + 40) isCancelled])
  {
    v4 = *(a1 + 88);
    v5 = +[CPLErrors operationCancelledError];
    (*(v4 + 16))(v4, v5);

    goto LABEL_24;
  }

  v6 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 56);
        v16 = *(a1 + 64);
        v18 = *(a1 + 48);
        *buf = 138412802;
        v32 = v17;
        v33 = 2114;
        v34 = v16;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "While checking for rewind sync anchors for %@ (related to %{public}@), got an unexpected scope change: %@", buf, 0x20u);
      }
    }

    v3 = *(*(a1 + 88) + 16);
    goto LABEL_3;
  }

  v7 = [*(a1 + 48) rewindAnchorsPerSharingScopes];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 64)];
  if (v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 56);
        v10 = *(a1 + 64);
        *buf = 138543618;
        v32 = v10;
        v33 = 2112;
        v34 = v11;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Identified a new shared library (%{public}@) and %@ might need to rewind", buf, 0x16u);
      }
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_63;
    v27[3] = &unk_1E861F1D0;
    v27[4] = *(a1 + 40);
    v12 = *(a1 + 72);
    v28 = *(a1 + 80);
    v29 = *(a1 + 56);
    v30 = v8;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_65;
    v25[3] = &unk_1E8620308;
    v13 = *(a1 + 88);
    v25[4] = *(a1 + 40);
    v26 = v13;
    v14 = [v12 performWriteTransactionWithBlock:v27 completionHandler:v25];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 56);
        v20 = *(a1 + 64);
        *buf = 138543618;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Identified a new shared library (%{public}@) but there is no need to rewind %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 88) + 16))();
  }

LABEL_24:
  v22 = *(a1 + 40);
  v23 = *(v22 + 136);
  *(v22 + 136) = 0;

  v24 = *MEMORY[0x1E69E9840];
}

void __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_63(id *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] checkScopeIsValidInTransaction:v3])
  {
    v4 = a1[5];
    v5 = [a1[6] scopeIdentifier];
    v6 = [v4 scopeWithIdentifier:v5];

    v7 = [v6 localIndex];
    if (v7 == [a1[6] localIndex])
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_2_64;
      v12[3] = &unk_1E861FF88;
      v13 = a1[5];
      v14 = a1[7];
      v15 = v6;
      [v3 do:v12];

      v8 = v13;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = a1[6];
          *buf = 138412290;
          v17 = v10;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@ has been invalidated before being able to set rewind sync anchors", buf, 0xCu);
        }
      }

      v8 = +[CPLErrors operationCancelledError];
      [v3 setError:v8];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __114__CPLScopeUpdateScopeTask__updateScopeChangeForPrimaryScopeRelatedToSharingScopeWithIdentifier_completionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 error];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [v8 error];
    (*(v4 + 16))(v4, v5);
LABEL_5:

    goto LABEL_6;
  }

  v6 = [*(a1 + 32) isCancelled];
  v7 = *(a1 + 40);
  if (v6)
  {
    v5 = +[CPLErrors operationCancelledError];
    (*(v7 + 16))(v7, v5);
    goto LABEL_5;
  }

  (*(v7 + 16))(v7, 0);
LABEL_6:
}

- (void)_updateScopeWithNewScopeType:(int64_t)a3 updatedScopeChange:(id)a4 updatedFlags:(id)a5 oldTransportScope:(id)a6 session:(id)a7 updatedTransportScope:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = [(CPLEngineScopedTask *)self store];
  v18 = [(CPLEngineSyncTask *)self engineLibrary];
  v19 = [v18 transport];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __136__CPLScopeUpdateScopeTask__updateScopeWithNewScopeType_updatedScopeChange_updatedFlags_oldTransportScope_session_updatedTransportScope___block_invoke;
  v28[3] = &unk_1E861F1A8;
  v28[4] = self;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v19;
  v34 = v17;
  v35 = a3;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __136__CPLScopeUpdateScopeTask__updateScopeWithNewScopeType_updatedScopeChange_updatedFlags_oldTransportScope_session_updatedTransportScope___block_invoke_56;
  v27[3] = &unk_1E86205E0;
  v27[4] = self;
  v20 = v17;
  v21 = v19;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  v25 = v13;
  v26 = [v20 performWriteTransactionWithBlock:v28 completionHandler:v27];
}

void __136__CPLScopeUpdateScopeTask__updateScopeWithNewScopeType_updatedScopeChange_updatedFlags_oldTransportScope_session_updatedTransportScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v16 = *(a1 + 88);
    v17 = v5;
    v6 = [*(a1 + 32) scope];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __136__CPLScopeUpdateScopeTask__updateScopeWithNewScopeType_updatedScopeChange_updatedFlags_oldTransportScope_session_updatedTransportScope___block_invoke_2;
    v18[3] = &unk_1E861F180;
    v18[4] = *(a1 + 32);
    v19 = *(a1 + 72);
    v20 = *(a1 + 64);
    v12 = *(a1 + 72);
    v11 = *(a1 + 80);
    v13 = [*(a1 + 32) session];
    [v17 _updateScopeWithNewScopeType:v16 scope:v6 updatedScopeChange:v7 updatedFlags:v8 oldTransportScope:v9 updatedTransportScope:v10 shouldUpdateTransportScope:v18 store:v11 transport:v12 session:v13 inTransaction:v3];
  }

  else
  {
    v14 = [v3 error];

    if (!v14)
    {
      v15 = +[CPLErrors operationCancelledError];
      [v3 setError:v15];
    }
  }
}

void __136__CPLScopeUpdateScopeTask__updateScopeWithNewScopeType_updatedScopeChange_updatedFlags_oldTransportScope_session_updatedTransportScope___block_invoke_56(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  [v2 taskDidFinishWithError:v3];
}

BOOL __136__CPLScopeUpdateScopeTask__updateScopeWithNewScopeType_updatedScopeChange_updatedFlags_oldTransportScope_session_updatedTransportScope___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) concreteScopeFromTransportScope:*(*(a1 + 32) + 152)];
        v8 = [*(a1 + 40) concreteScopeFromTransportScope:*(a1 + 48)];
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Updated fetched transport scope from %@ to %@", &v11, 0x16u);
      }

      v4 = *(a1 + 32);
    }

    objc_storeStrong((v4 + 152), *(a1 + 48));
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

- (void)_markScopeHasBadTransportScopeWithError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_17161();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CPLEngineScopedTask *)self scope];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Transport scope for %@ is invalid", buf, 0xCu);
    }
  }

  v7 = [(CPLEngineScopedTask *)self store];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CPLScopeUpdateScopeTask__markScopeHasBadTransportScopeWithError___block_invoke;
  v13[3] = &unk_1E86205E0;
  v13[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CPLScopeUpdateScopeTask__markScopeHasBadTransportScopeWithError___block_invoke_3;
  v11[3] = &unk_1E86205B8;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [v7 performWriteTransactionWithBlock:v13 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __67__CPLScopeUpdateScopeTask__markScopeHasBadTransportScopeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__CPLScopeUpdateScopeTask__markScopeHasBadTransportScopeWithError___block_invoke_2;
    v6[3] = &unk_1E8620478;
    v6[4] = *(a1 + 32);
    [v3 do:v6];
  }

  else
  {
    v4 = [v3 error];

    if (!v4)
    {
      v5 = +[CPLErrors operationCancelledError];
      [v3 setError:v5];
    }
  }
}

void __67__CPLScopeUpdateScopeTask__markScopeHasBadTransportScopeWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 error];
  v5 = v4;
  if (!v4)
  {
    v4 = *(a1 + 40);
  }

  [v3 taskDidFinishWithError:v4];
}

uint64_t __67__CPLScopeUpdateScopeTask__markScopeHasBadTransportScopeWithError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) store];
  v5 = [v4 scopes];

  v6 = [*(a1 + 32) scope];
  v7 = [v5 setTransportScope:0 forScope:v6 error:a2];

  return v7;
}

- (void)_markScopeAsFeatureDisabledWithFlags:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_17161();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CPLEngineScopedTask *)self scope];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Feature is disabled for %@", buf, 0xCu);
    }
  }

  v7 = [(CPLEngineScopedTask *)self store];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__CPLScopeUpdateScopeTask__markScopeAsFeatureDisabledWithFlags___block_invoke;
  v12[3] = &unk_1E86205B8;
  v12[4] = self;
  v13 = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CPLScopeUpdateScopeTask__markScopeAsFeatureDisabledWithFlags___block_invoke_3;
  v11[3] = &unk_1E86205E0;
  v11[4] = self;
  v8 = v4;
  v9 = [v7 performWriteTransactionWithBlock:v12 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __64__CPLScopeUpdateScopeTask__markScopeAsFeatureDisabledWithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__CPLScopeUpdateScopeTask__markScopeAsFeatureDisabledWithFlags___block_invoke_2;
    v7[3] = &unk_1E8620940;
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v4;
    [v3 do:v7];
  }

  else
  {
    v5 = [v3 error];

    if (!v5)
    {
      v6 = +[CPLErrors operationCancelledError];
      [v3 setError:v6];
    }
  }
}

void __64__CPLScopeUpdateScopeTask__markScopeAsFeatureDisabledWithFlags___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  [v2 taskDidFinishWithError:v3];
}

uint64_t __64__CPLScopeUpdateScopeTask__markScopeAsFeatureDisabledWithFlags___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) store];
  v5 = [v4 scopes];

  v6 = [*(a1 + 32) transportScope];
  if (v6)
  {
  }

  else
  {
    v18 = *(a1 + 32);
    v19 = v18[19];
    if (v19)
    {
      v20 = [v18 scope];
      v21 = [v5 setTransportScope:v19 forScope:v20 error:a2];

      if (!v21)
      {
        goto LABEL_11;
      }
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [v7 scope];
  v10 = [v5 updateFlags:v8 forScope:v9 error:a2];

  if (!v10)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_14;
  }

  v7 = *(a1 + 32);
LABEL_6:
  v11 = [v7 scope];
  v12 = [v5 scopeChangeForScope:v11];

  v13 = [v12 libraryInfo];

  if (v13 && ([v12 setLibraryState:0], objc_msgSend(*(a1 + 32), "scope"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v5, "storeScopeChange:forScope:error:", v12, v14, a2), v14, !v15))
  {
    v17 = 0;
  }

  else
  {
    v16 = [*(a1 + 32) scope];
    v17 = [v5 setHasUpdatedScope:v16 fromTransportWithError:a2];
  }

LABEL_14:
  return v17;
}

- (void)_markScopeAsDeletedAndSucceedTaskWithFlags:(id)a3
{
  v5 = a3;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__17251;
  v16[4] = __Block_byref_object_dispose__17252;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__17251;
  v14[4] = __Block_byref_object_dispose__17252;
  v15 = 0;
  v6 = [(CPLEngineScopedTask *)self store];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CPLScopeUpdateScopeTask__markScopeAsDeletedAndSucceedTaskWithFlags___block_invoke;
  v10[3] = &unk_1E861F130;
  v10[4] = self;
  v7 = v5;
  v12 = v14;
  v13 = a2;
  v11 = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__CPLScopeUpdateScopeTask__markScopeAsDeletedAndSucceedTaskWithFlags___block_invoke_41;
  v9[3] = &unk_1E86209E0;
  v9[4] = self;
  v9[5] = v16;
  v9[6] = v14;
  v8 = [v6 performWriteTransactionWithBlock:v10 completionHandler:v9];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void __70__CPLScopeUpdateScopeTask__markScopeAsDeletedAndSucceedTaskWithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__CPLScopeUpdateScopeTask__markScopeAsDeletedAndSucceedTaskWithFlags___block_invoke_2;
    v7[3] = &unk_1E861F108;
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v4;
    v9 = *(a1 + 48);
    [v3 do:v7];
  }

  else
  {
    v5 = [v3 error];

    if (!v5)
    {
      v6 = +[CPLErrors operationCancelledError];
      [v3 setError:v6];
    }
  }
}

void __70__CPLScopeUpdateScopeTask__markScopeAsDeletedAndSucceedTaskWithFlags___block_invoke_41(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 error];
    [v4 taskDidFinishWithError:v5];
  }

  else if (*(*(*(a1 + 40) + 8) + 40) && *(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) _lookForStagingScopeWithIdentifier:? transportScope:?];
  }

  else
  {
    [*(a1 + 32) taskDidFinishWithError:0];
  }
}

uint64_t __70__CPLScopeUpdateScopeTask__markScopeAsDeletedAndSucceedTaskWithFlags___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) store];
  v5 = [v4 scopes];

  v6 = [*(a1 + 32) transportScope];
  if (v6)
  {
  }

  else
  {
    v20 = *(a1 + 32);
    v21 = v20[19];
    if (v21)
    {
      v22 = [v20 scope];
      v10 = [v5 setTransportScope:v21 forScope:v22 error:a2];

      if (!v10)
      {
        goto LABEL_24;
      }
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = [v7 scope];
    v10 = [v5 updateFlags:v8 forScope:v9 error:a2];

    if (!v10)
    {
      goto LABEL_24;
    }

    v7 = *(a1 + 32);
  }

  v11 = [v7 scope];
  v12 = +[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", [v11 scopeType]);
  if (v12)
  {
    v13 = 68;
  }

  else
  {
    v13 = 4;
  }

  v14 = [*(a1 + 32) scope];
  v10 = [v5 setValue:1 forFlag:v13 forScope:v14 error:a2];

  if (v12)
  {
    v15 = [*(a1 + 32) scope];
    v16 = [v5 stagingScopeForScope:v15];

    if (v16)
    {
LABEL_23:

      goto LABEL_24;
    }

    v17 = *(a1 + 32);
    v18 = v17[19];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = [v17 transportScope];
    }

    v23 = v19;
    v46 = [*(a1 + 32) engineLibrary];
    v24 = [v46 transport];
    v47 = 0;
    v48 = 0;
    v25 = [*(a1 + 32) scope];
    v26 = [*(a1 + 32) transportUserIdentifier];
    v45 = v23;
    v27 = [v24 getProposedStagingScopeIdentifier:&v48 stagingTransportScope:&v47 forScope:v25 transportScope:v23 transportUserIdentifier:v26];
    v28 = v48;
    obj = v47;
    v29 = v47;

    if (!v27)
    {
      goto LABEL_21;
    }

    if (v28)
    {
      if (v29)
      {
        v30 = [v5 scopeWithIdentifier:v28];

        if (!v30)
        {
          v16 = [v5 createScopeWithIdentifier:v28 scopeType:0 flags:16 transportScope:v29 error:a2];
          if (v16)
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
          }

          goto LABEL_22;
        }

LABEL_21:
        v16 = 0;
LABEL_22:

        goto LABEL_23;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v40 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = [*(a1 + 32) scope];
          *buf = 138412290;
          v50 = v41;
          _os_log_impl(&dword_1DC05A000, v40, OS_LOG_TYPE_ERROR, "We should have a proposed staging scope transport scope for %@ here", buf, 0xCu);
        }
      }

      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = *(a1 + 56);
      v43 = *(a1 + 32);
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLScopeUpdateTask.m"];
      v39 = [*(a1 + 32) scope];
      [v35 handleFailureInMethod:v42 object:v43 file:v38 lineNumber:214 description:{@"We should have a proposed staging scope transport scope for %@ here", v39, obj}];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v33 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = [*(a1 + 32) scope];
          *buf = 138412290;
          v50 = v34;
          _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_ERROR, "We should have a proposed staging scope identifier for %@ here", buf, 0xCu);
        }
      }

      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = *(a1 + 56);
      v37 = *(a1 + 32);
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLScopeUpdateTask.m"];
      v39 = [*(a1 + 32) scope];
      [v35 handleFailureInMethod:v36 object:v37 file:v38 lineNumber:213 description:{@"We should have a proposed staging scope identifier for %@ here", v39, obj}];
    }

    abort();
  }

LABEL_24:

  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_lookForStagingScopeWithIdentifier:(id)a3 transportScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CPLScopeUpdateScopeTask__lookForStagingScopeWithIdentifier_transportScope___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17228;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __77__CPLScopeUpdateScopeTask__lookForStagingScopeWithIdentifier_transportScope___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 32);
    v15 = +[CPLErrors operationCancelledError];
    [v2 taskDidFinishWithError:?];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) scope];
        v6 = *(a1 + 40);
        *buf = 138412546;
        v17 = v5;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "%@ is staged with no known staging scope - will try to look for it directly as %{public}@", buf, 0x16u);
      }
    }

    v7 = [CPLScopeUpdateScopeTask alloc];
    v8 = [*(a1 + 32) engineLibrary];
    v9 = [*(a1 + 32) session];
    v10 = [*(a1 + 32) clientCacheIdentifier];
    v11 = [(CPLScopeUpdateScopeTask *)v7 initWithEngineLibrary:v8 session:v9 clientCacheIdentifier:v10 scope:*(a1 + 40) transportScope:*(a1 + 48)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 168);
    *(v12 + 168) = v11;

    [*(*(a1 + 32) + 168) setDelegate:?];
    [*(*(a1 + 32) + 168) launch];
    v14 = *MEMORY[0x1E69E9840];
  }
}

- (CPLScopeUpdateScopeTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7
{
  v12.receiver = self;
  v12.super_class = CPLScopeUpdateScopeTask;
  v7 = [(CPLEngineScopedTask *)&v12 initWithEngineLibrary:a3 session:a4 clientCacheIdentifier:a5 scope:a6 transportScope:a7];
  if (v7)
  {
    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("engine.sync.updatescope", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

+ (void)updateScopeWithNewScopeType:(int64_t)a3 scope:(id)a4 updatedScopeChange:(id)a5 updatedFlags:(id)a6 oldTransportScope:(id)a7 updatedTransportScope:(id)a8 shouldUpdateTransportScope:(id)a9 store:(id)a10 transport:(id)a11 session:(id)a12 inTransaction:(id)a13
{
  v37 = a4;
  v35 = a5;
  v34 = a6;
  v17 = a7;
  v36 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = [v19 scopes];
  v24 = [v37 scopeIdentifier];
  v25 = [v23 scopeWithIdentifier:v24];

  if (v25 && (v26 = [v25 cloudIndex], v26 == objc_msgSend(v37, "cloudIndex")))
  {
    v28 = v34;
    v27 = v35;
    [a1 _updateScopeWithNewScopeType:a3 scope:v37 updatedScopeChange:v35 updatedFlags:v34 oldTransportScope:v17 updatedTransportScope:v36 shouldUpdateTransportScope:v18 store:v19 transport:v20 session:v21 inTransaction:v22];
  }

  else
  {
    [v37 scopeIdentifier];
    v30 = v29 = v17;
    v31 = [CPLErrors cplErrorWithCode:32 description:@"%@ has become stale before updating scope info", v30];
    [v22 setError:v31];

    v17 = v29;
    v28 = v34;
    v27 = v35;
  }
}

+ (void)_updateScopeWithNewScopeType:(int64_t)a3 scope:(id)a4 updatedScopeChange:(id)a5 updatedFlags:(id)a6 oldTransportScope:(id)a7 updatedTransportScope:(id)a8 shouldUpdateTransportScope:(id)a9 store:(id)a10 transport:(id)a11 session:(id)a12 inTransaction:(id)a13
{
  v34 = a4;
  v35 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v37 = a13;
  v24 = [v21 scopes];
  v25 = v24;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __199__CPLScopeUpdateScopeTask__updateScopeWithNewScopeType_scope_updatedScopeChange_updatedFlags_oldTransportScope_updatedTransportScope_shouldUpdateTransportScope_store_transport_session_inTransaction___block_invoke_2;
  v42[3] = &unk_1E861F158;
  v43 = v34;
  v44 = v17;
  if (!v20)
  {
    v20 = &__block_literal_global_17273;
  }

  v53 = a3;
  v54 = a2;
  v55 = a1;
  v45 = v35;
  v46 = v24;
  v47 = v19;
  v48 = v18;
  v49 = v22;
  v50 = v21;
  v51 = v23;
  v52 = v20;
  v41 = v23;
  v39 = v21;
  v26 = v22;
  v27 = v20;
  v28 = v18;
  v29 = v19;
  v30 = v25;
  v31 = v35;
  v32 = v17;
  v33 = v34;
  [v37 do:v42];
}

uint64_t __199__CPLScopeUpdateScopeTask__updateScopeWithNewScopeType_scope_updatedScopeChange_updatedFlags_oldTransportScope_updatedTransportScope_shouldUpdateTransportScope_store_transport_session_inTransaction___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (!v7)
  {
    if (v4)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v109 = v5;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "%@ is a scope we don't support anymore", buf, 0xCu);
        }
      }
    }

    else if ([v5 scopeType])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v109 = v5;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "%@ was degraded and can't be identified anymore", buf, 0xCu);
        }
      }

      v4 = [v5 scopeType];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v109 = v5;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "%@ is a scope we still don't support", buf, 0xCu);
        }
      }

      v4 = 0;
    }

LABEL_36:
    if (v4 == [v5 scopeType])
    {
      v23 = 1;
      v24 = v5;
    }

    else
    {
      v25 = [*(a1 + 56) flagsForScope:v5];
      v26 = *(a1 + 56);
      v27 = [v5 scopeIdentifier];
      v28 = [v26 scopeWithIdentifier:v27];

      if (!v28)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v96 = __CPLTaskOSLogDomain_17161();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            v97 = [CPLScopeChange descriptionForScopeType:v4];
            *buf = 138412546;
            v109 = v5;
            v110 = 2112;
            v111 = v97;
            _os_log_impl(&dword_1DC05A000, v96, OS_LOG_TYPE_ERROR, "Failed to find %@ after upgrading its scope type to %@", buf, 0x16u);
          }
        }

        v91 = [MEMORY[0x1E696AAA8] currentHandler];
        v99 = *(a1 + 120);
        v98 = *(a1 + 128);
        v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLScopeUpdateTask.m"];
        v101 = [CPLScopeChange descriptionForScopeType:v4];
        [v91 handleFailureInMethod:v99 object:v98 file:v100 lineNumber:373 description:{@"Failed to find %@ after upgrading its scope type to %@", v5, v101}];

LABEL_147:
        goto LABEL_148;
      }

      v24 = v28;

      v29 = *(a1 + 56);
      v30 = [v24 scopeIdentifier];
      if ([v29 shouldAutoactivateScopeWithIdentifier:v30 scopeType:v4])
      {
        v31 = [v25 valueForFlag:0x10000];

        if (v31 && [v25 valueForFlag:16] && (objc_msgSend(v25, "valueForFlag:", 32) & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v32 = __CPLTaskOSLogDomain_17161();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v24 scopeIdentifier];
              v34 = [CPLScopeChange descriptionForScopeType:v4];
              *buf = 138543618;
              v109 = v33;
              v110 = 2114;
              v111 = v34;
              _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_DEFAULT, "Identified %{public}@ as %{public}@ - enabling sync for this scope", buf, 0x16u);
            }
          }

          [v25 setValue:0 forFlag:16];
        }
      }

      else
      {
      }

      if (v6 && [v6 hasFlagUpdates])
      {
        [v25 updateFlags:v6];

        v6 = 0;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v35 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v24 scopeIdentifier];
          v37 = [CPLScopeChange descriptionForScopeType:v4];
          *buf = 138543874;
          v109 = v36;
          v110 = 2114;
          v111 = v37;
          v112 = 2114;
          v113 = v25;
          _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_DEFAULT, "After scope type for %{public}@ was upgraded to %{public}@, scope flags are %{public}@", buf, 0x20u);
        }
      }

      v23 = [*(a1 + 56) updateFlags:v25 forScope:v24 error:a2];

      if (!v23)
      {
        goto LABEL_62;
      }
    }

    if (v6 && [v6 hasFlagUpdates])
    {
      v38 = [*(a1 + 56) flagsForScope:v24];
      v39 = v38;
      if (v38 && (v40 = [v38 flags], v40 != objc_msgSend(v6, "flags")))
      {
        [v39 updateFlags:v6];
        if ((_CPLSilentLogging & 1) == 0)
        {
          v66 = __CPLTaskOSLogDomain_17161();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = [v24 scopeIdentifier];
            *buf = 138543618;
            v109 = v67;
            v110 = 2114;
            v111 = v39;
            _os_log_impl(&dword_1DC05A000, v66, OS_LOG_TYPE_DEFAULT, "Updating flags for %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v68 = [*(a1 + 56) updateFlags:v6 forScope:v24 error:a2];

        if ((v68 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
      }

      goto LABEL_63;
    }

LABEL_62:
    if (!v23)
    {
      goto LABEL_86;
    }

LABEL_63:
    if (*(a1 + 64) && ([*(a1 + 72) isEqual:?] & 1) == 0 && (v41 = *(a1 + 64), (*(*(a1 + 104) + 16))()))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v42 = __CPLTaskOSLogDomain_17161();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [*(a1 + 80) concreteScopeFromTransportScope:*(a1 + 72)];
          v44 = [*(a1 + 80) concreteScopeFromTransportScope:*(a1 + 64)];
          *buf = 138412546;
          v109 = v43;
          v110 = 2112;
          v111 = v44;
          _os_log_impl(&dword_1DC05A000, v42, OS_LOG_TYPE_DEFAULT, "Updated transport scope from %@ to %@", buf, 0x16u);
        }
      }

      v45 = [*(a1 + 56) setTransportScope:*(a1 + 64) forScope:v24 error:a2];
    }

    else
    {
      v45 = 1;
    }

    if (v45 && v24 && (v46 = *(a1 + 48), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v47 = *(a1 + 48);
      v48 = [v47 stagedScopeChange];
      v49 = v48;
      if (v48)
      {
        v50 = *(a1 + 88);
        v51 = [v48 scopeIdentifier];
        LODWORD(v50) = [v50 mainScopeSupportsSharingScopeWithIdentifier:v51];

        if (v50)
        {
          if (+[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", [v49 scopeType]))
          {
            v52 = [v49 scopeIdentifier];
            v53 = [*(a1 + 56) scopeWithIdentifier:v52];
            if (v53)
            {
              v54 = v53;
              if ((_CPLSilentLogging & 1) == 0)
              {
                v55 = __CPLTaskOSLogDomain_17161();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v109 = v54;
                  v110 = 2112;
                  v111 = v24;
                  v112 = 2112;
                  v113 = v49;
                  _os_log_impl(&dword_1DC05A000, v55, OS_LOG_TYPE_DEFAULT, "Updating staged %@ from info provided by %@: %@", buf, 0x20u);
                }
              }

              if (![*(a1 + 56) storeScopeChange:v49 forScope:v54 error:a2])
              {

                goto LABEL_86;
              }

              v56 = [*(a1 + 56) setHasUpdatedScope:v54 fromTransportWithError:a2];
            }

            else
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v69 = __CPLTaskOSLogDomain_17161();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v109 = v24;
                  v110 = 2114;
                  v111 = v52;
                  v112 = 2112;
                  v113 = v49;
                  _os_log_impl(&dword_1DC05A000, v69, OS_LOG_TYPE_DEFAULT, "%@ is a staging scope for unknown %{public}@. Assuming it has been deleted before we know. Using staged scope change: %@", buf, 0x20u);
                }
              }

              [*(a1 + 56) beginCreatingScopeWithIdentifier:v52];
              v70 = *(a1 + 56);
              [v49 scopeType];
              [v47 stagedScopeFlags];
              v71 = [v47 stagedTransportScope];
              v72 = v52;
              v73 = v71;
              v107 = v72;
              v54 = [v70 createScopeWithIdentifier:? scopeType:? flags:? transportScope:? error:?];

              if (!v54)
              {
                goto LABEL_133;
              }

              v74 = [*(a1 + 56) flagsForScope:v54];
              if ((_CPLSilentLogging & 1) == 0)
              {
                v75 = __CPLTaskOSLogDomain_17161();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v109 = v54;
                  _os_log_impl(&dword_1DC05A000, v75, OS_LOG_TYPE_DEFAULT, "Marking %@ as deleted immediately", buf, 0xCu);
                }
              }

              v76 = v54;
              v77 = +[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", [v76 scopeType]);

              v78 = v77 ? 68 : 4;
              [v74 setValue:1 forFlag:v78];
              v79 = *(a1 + 56);
              [v76 scopeIdentifier];
              v105 = v74;
              v80 = v106 = v76;
              if ([v79 shouldAutoactivateScopeWithIdentifier:v80 scopeType:{objc_msgSend(v76, "scopeType")}])
              {
                v81 = [v105 valueForFlag:0x10000];

                v82 = v105;
                if (v81 && [v105 valueForFlag:16] && (objc_msgSend(v105, "valueForFlag:", 32) & 1) == 0)
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v83 = __CPLTaskOSLogDomain_17161();
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                    {
                      [v76 scopeIdentifier];
                      v85 = v84 = v83;
                      v86 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v106 scopeType]);
                      *buf = 138543618;
                      v109 = v85;
                      v110 = 2114;
                      v111 = v86;
                      _os_log_impl(&dword_1DC05A000, v84, OS_LOG_TYPE_DEFAULT, "Identified %{public}@ as %{public}@ (inferred from staging scope) - enabling sync for this scope", buf, 0x16u);

                      v83 = v84;
                      v82 = v105;
                      v76 = v106;
                    }
                  }

                  [v82 setValue:0 forFlag:16];
                }
              }

              else
              {

                v82 = v105;
              }

              v87 = [*(a1 + 56) updateFlags:v82 forScope:v76 error:a2];

              if (v87 && [*(a1 + 56) storeScopeChange:v49 forScope:v76 error:a2])
              {
                v56 = [*(a1 + 56) setHasUpdatedScope:v76 fromTransportWithError:a2];
              }

              else
              {
LABEL_133:
                v56 = 0;
              }

              v52 = v107;
              [*(a1 + 56) endCreatingScopeWithIdentifier:v107];
            }

            if (v56)
            {
              goto LABEL_88;
            }

LABEL_86:
            v21 = 0;
LABEL_99:
            v5 = v24;
            goto LABEL_100;
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v102 = __CPLTaskOSLogDomain_17161();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v109 = v49;
              _os_log_impl(&dword_1DC05A000, v102, OS_LOG_TYPE_ERROR, "Staging is unsupported for %@", buf, 0xCu);
            }
          }

          v91 = [MEMORY[0x1E696AAA8] currentHandler];
          v104 = *(a1 + 120);
          v103 = *(a1 + 128);
          v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLScopeUpdateTask.m"];
          [v91 handleFailureInMethod:v104 object:v103 file:v100 lineNumber:409 description:{@"Staging is unsupported for %@", v49}];
          goto LABEL_147;
        }
      }
    }

    else if (!v45)
    {
      goto LABEL_86;
    }

LABEL_88:
    v57 = *(a1 + 96);
    if (v57)
    {
      v58 = [v57 scopeFilter];
      if (v58)
      {
        v59 = [*(a1 + 56) updatedScopeFilter:v58];
        if (v59 != v58)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v60 = __CPLTaskOSLogDomain_17161();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = *(a1 + 96);
              v62 = [v58 simpleDescription];
              v63 = [v59 simpleDescription];
              *buf = 138412802;
              v109 = v61;
              v110 = 2114;
              v111 = v62;
              v112 = 2114;
              v113 = v63;
              _os_log_impl(&dword_1DC05A000, v60, OS_LOG_TYPE_DEFAULT, "Updating scope filter for %@ from %{public}@ to %{public}@", buf, 0x20u);
            }
          }

          [*(a1 + 96) updateScopeFilter:v59];
        }
      }
    }

    v21 = 1;
    goto LABEL_99;
  }

  if (v4 != [v7 scopeType])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v88 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = [CPLScopeChange descriptionForScopeType:v4];
        v90 = *(a1 + 48);
        *buf = 138412546;
        v109 = v89;
        v110 = 2112;
        v111 = v90;
        _os_log_impl(&dword_1DC05A000, v88, OS_LOG_TYPE_ERROR, "Invalid scope type %@ for scope change %@", buf, 0x16u);
      }
    }

    v91 = [MEMORY[0x1E696AAA8] currentHandler];
    v92 = *(a1 + 120);
    v93 = *(a1 + 128);
    v94 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLScopeUpdateTask.m"];
    v95 = [CPLScopeChange descriptionForScopeType:v4];
    [v91 handleFailureInMethod:v92 object:v93 file:v94 lineNumber:326 description:{@"Invalid scope type %@ for scope change %@", v95, *(a1 + 48)}];

LABEL_148:
    abort();
  }

  if ([*(a1 + 56) storeScopeChange:*(a1 + 48) forScope:v5 error:a2])
  {
    v8 = [*(a1 + 48) libraryState];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 isDisabled] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    v13 = [*(a1 + 56) flagsForScope:v5];
    v14 = v13;
    if (v10)
    {
      if (![v13 valueForFlag:8] || (objc_msgSend(v14, "valueForFlag:", 0x40000) & 1) != 0)
      {
LABEL_25:
        v19 = *(a1 + 56);
        v20 = [v9 deleteDate];
        LOBYTE(v19) = [v19 setDeleteDate:v20 forScope:v5 error:a2];

        if ((v19 & 1) != 0 && [*(a1 + 56) setHasUpdatedScope:v5 fromTransportWithError:a2])
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      [v14 setValue:0 forFlag:8];
      if ([*(a1 + 56) updateFlags:v14 forScope:v5 error:a2])
      {
        [*(a1 + 56) setDisabledDate:0 forScope:v5 error:a2];
        goto LABEL_25;
      }
    }

    else
    {
      v15 = [*(a1 + 56) setValue:1 forFlag:8 forScope:v5 error:a2];
      v16 = [v9 disabledDate];
      v17 = v16;
      if (v15)
      {
        v18 = [*(a1 + 56) setDisabledDate:v16 forScope:v5 error:a2];

        if (v18)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }
    }
  }

LABEL_30:
  v21 = 0;
LABEL_100:

  v64 = *MEMORY[0x1E69E9840];
  return v21;
}

@end