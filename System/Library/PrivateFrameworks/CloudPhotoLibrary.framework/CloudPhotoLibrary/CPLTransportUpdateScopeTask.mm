@interface CPLTransportUpdateScopeTask
- (BOOL)checkScopeIsValidInTransaction:(id)transaction;
- (void)cancel;
- (void)launch;
@end

@implementation CPLTransportUpdateScopeTask

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = CPLTransportUpdateScopeTask;
  [(CPLEngineSyncTask *)&v6 cancel];
  store = [(CPLEngineScopedTask *)self store];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CPLTransportUpdateScopeTask_cancel__block_invoke;
  v5[3] = &unk_1E86205E0;
  v5[4] = self;
  v4 = [store performReadTransactionWithBlock:v5];
}

uint64_t __37__CPLTransportUpdateScopeTask_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 120) cancel];
  v2 = *(*(a1 + 32) + 128);

  return [v2 cancel];
}

- (void)launch
{
  v14.receiver = self;
  v14.super_class = CPLTransportUpdateScopeTask;
  [(CPLEngineSyncTask *)&v14 launch];
  store = [(CPLEngineScopedTask *)self store];
  scopes = [store scopes];
  scope = [(CPLEngineScopedTask *)self scope];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke;
  v10[3] = &unk_1E861F1D0;
  v10[4] = self;
  v11 = scopes;
  v12 = scope;
  v13 = store;
  v6 = store;
  v7 = scope;
  v8 = scopes;
  v9 = [v6 performReadTransactionWithBlock:v10];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke(id *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  if (![a1[4] checkScopeIsValidInTransaction:a2])
  {
    goto LABEL_28;
  }

  if (![a1[4] isCancelled])
  {
    v5 = [a1[5] transportUpdateTaskForScope:a1[6]];
    v6 = [a1[5] flagsForScope:a1[6]];
    if ([v6 valueForFlag:32])
    {
      if ([a1[6] scopeType] != 1)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v7 = __CPLTaskOSLogDomain();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [a1[6] scopeIdentifier];
            *buf = 138412290;
            v65 = v8;
            _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Deleting transport scope for %@", buf, 0xCu);
          }
        }

        v9 = [a1[4] engineLibrary];
        v10 = [v9 transport];

        v11 = [a1[4] transportScope];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_9;
        v60[3] = &unk_1E861B920;
        v12 = a1[6];
        v49 = a1[4];
        v13 = a1[7];
        v14 = a1[5];
        v15 = a1[6];
        *&v16 = v14;
        *(&v16 + 1) = v15;
        *&v17 = v49;
        *(&v17 + 1) = v13;
        v61 = v17;
        v62 = v16;
        v63 = v5;
        v18 = [v10 deleteTransportScope:v11 scope:v12 completionHandler:v60];
        v19 = a1[4];
        v20 = v19[15];
        v19[15] = v18;

        v21 = a1[4];
        v22 = v21[15];
        v23 = [v10 createGroupForTransportScopeDelete];
        [v21 launchTransportTask:v22 withTransportGroup:v23];

        v24 = *(&v61 + 1);
LABEL_20:

LABEL_27:
LABEL_28:
        v47 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    else if (([v6 valueForFlag:20] & 1) == 0)
    {
      v25 = [a1[4] engineLibrary];
      v10 = [v25 transport];

      v26 = [a1[4] transportScope];
      v27 = [a1[4] scope];
      v28 = [a1[5] scopeChangeForScope:a1[6]];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_5;
      v56[3] = &unk_1E861B920;
      *&v29 = a1[4];
      *v50 = v29;
      v30 = a1[7];
      v31 = a1[5];
      v32 = a1[6];
      *&v33 = v31;
      *(&v33 + 1) = v32;
      *&v34 = v50[0];
      *(&v34 + 1) = v30;
      v57 = v34;
      v58 = v33;
      v59 = v5;
      v35 = [v10 updateTransportScope:v26 scope:v27 scopeChange:v28 completionHandler:v56];
      v36 = a1[4];
      v37 = v36[16];
      v36[16] = v35;

      v38 = a1[4];
      v39 = v38[16];
      if (v39)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v40 = __CPLTaskOSLogDomain();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [a1[6] scopeIdentifier];
            *buf = 138412290;
            v65 = v41;
            _os_log_impl(&dword_1DC05A000, v40, OS_LOG_TYPE_DEFAULT, "Dispatching update transport for %@", buf, 0xCu);
          }

          v38 = a1[4];
          v39 = v38[16];
        }

        v42 = [v10 createGroupForTransportScopeUpdate];
        [v38 launchTransportTask:v39 withTransportGroup:v42];

        v24 = *(&v57 + 1);
        goto LABEL_20;
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v43 = __CPLTaskOSLogDomain();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [a1[6] scopeIdentifier];
        *buf = 138412290;
        v65 = v44;
        _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_DEFAULT, "Ignoring transport update for %@", buf, 0xCu);
      }
    }

    v45 = a1[7];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_13;
    v52[3] = &unk_1E861B8F8;
    v53 = a1[5];
    v54 = a1[6];
    v55 = v5;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_3_15;
    v51[3] = &unk_1E86205E0;
    v51[4] = a1[4];
    v46 = [v45 performWriteTransactionWithBlock:v52 completionHandler:v51];

    v10 = v53;
    goto LABEL_27;
  }

  v3 = a1[4];
  v48 = +[CPLErrors operationCancelledError];
  [v3 taskDidFinishWithError:?];
  v4 = *MEMORY[0x1E69E9840];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (![v3 isCPLErrorWithCode:1002])
    {
      [*(a1 + 32) taskDidFinishWithError:v4];
      v9 = *(a1 + 32);
      v10 = *(v9 + 120);
      *(v9 + 120) = 0;

      goto LABEL_6;
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_2;
  v12[3] = &unk_1E861B8F8;
  v5 = *(a1 + 40);
  v13 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_4;
  v11[3] = &unk_1E86205E0;
  v11[4] = *(a1 + 32);
  v8 = [v5 performWriteTransactionWithBlock:v12 completionHandler:v11];

  v4 = v13;
LABEL_6:
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (([v3 isCPLErrorWithCode:1002] & 1) == 0 && !objc_msgSend(v4, "isCPLErrorWithCode:", 23))
    {
      [*(a1 + 32) taskDidFinishWithError:v4];
      v9 = *(a1 + 32);
      v10 = *(v9 + 128);
      *(v9 + 128) = 0;

      goto LABEL_6;
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_6;
  v12[3] = &unk_1E861B8F8;
  v5 = *(a1 + 40);
  v13 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_8;
  v11[3] = &unk_1E86205E0;
  v11[4] = *(a1 + 32);
  v8 = [v5 performWriteTransactionWithBlock:v12 completionHandler:v11];

  v4 = v13;
LABEL_6:
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_13(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_2_14;
  v6[3] = &unk_1E861BD28;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 do:v6];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_3_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  [v2 taskDidFinishWithError:v3];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_6(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_7;
  v6[3] = &unk_1E861BD28;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 do:v6];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 error];
  [v3 taskDidFinishWithError:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = 0;
}

uint64_t __37__CPLTransportUpdateScopeTask_launch__block_invoke_7(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setScope:*(a1 + 40) hasCompletedTransportUpdate:*(a1 + 48) error:a2];
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 setScopeNeedsUpdateFromTransport:v6 error:a2];
  }

  return result;
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_2(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLTransportUpdateScopeTask_launch__block_invoke_3;
  v6[3] = &unk_1E861BD28;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 do:v6];
}

void __37__CPLTransportUpdateScopeTask_launch__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 error];
  [v3 taskDidFinishWithError:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;
}

uint64_t __37__CPLTransportUpdateScopeTask_launch__block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setScope:*(a1 + 40) hasCompletedTransportUpdate:*(a1 + 48) error:a2];
  if (result)
  {
    v5 = *(a1 + 32);
    if (+[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", [*(a1 + 40) scopeType]))
    {
      v6 = 68;
    }

    else
    {
      v6 = 4;
    }

    v7 = *(a1 + 40);

    return [v5 setValue:1 forFlag:v6 forScope:v7 error:a2];
  }

  return result;
}

- (BOOL)checkScopeIsValidInTransaction:(id)transaction
{
  v15 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  session = [(CPLEngineSyncTask *)self session];
  shouldDefer = [session shouldDefer];

  if (shouldDefer)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLTaskOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138412290;
        *&v14[4] = objc_opt_class();
        v8 = *&v14[4];
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Session for %@ has been deferred", v14, 0xCu);
      }
    }

    v9 = +[CPLErrors sessionHasBeenDeferredError];
    [transactionCopy setError:v9];

    v10 = 0;
  }

  else
  {
    error = [transactionCopy error];
    v10 = error == 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

@end