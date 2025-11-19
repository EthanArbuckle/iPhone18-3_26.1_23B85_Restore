@interface SYStoreIncomingSessionOwner
- (BOOL)isResetSync;
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (SYStoreIncomingSessionOwner)initWithIncomingSession:(id)a3;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
@end

@implementation SYStoreIncomingSessionOwner

- (SYStoreIncomingSessionOwner)initWithIncomingSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SYStoreIncomingSessionOwner;
  v5 = [(SYStoreIncomingSessionOwner *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SYStoreSessionOwner *)v5 setSession:v4];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isResetSync
{
  v2 = [(SYStoreSessionOwner *)self session];
  v3 = [v2 isResetSync];

  return v3;
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  v6 = a3;
  v7 = [(SYStoreSessionOwner *)self store];
  if ([(SYStoreIncomingSessionOwner *)self isResetSync])
  {
    if ((v7[8] & 0x10) != 0)
    {
      v10 = [v7 delegate];
      [v10 syncStoreAllObjectsDeleted:v7];

      v9 = 1;
      goto LABEL_7;
    }

    v8 = [(SYStoreSessionOwner *)&v12 syncSession:v6 resetDataStoreWithError:a4, self, SYStoreIncomingSessionOwner, v13.receiver, v13.super_class];
  }

  else
  {
    v8 = [(SYStoreSessionOwner *)&v13 syncSession:v6 resetDataStoreWithError:a4, v12.receiver, v12.super_class, self, SYStoreIncomingSessionOwner];
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(SYStoreSessionOwner *)self store];
  v10 = [v9 delegate];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 134217984;
    v25 = [v7 count];
    _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "SYStore shim: forwarding %lu changes to SYStoreDelegate", buf, 0xCu);
  }

  v13 = [v9 delegateQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__SYStoreIncomingSessionOwner_syncSession_applyChanges_completion___block_invoke;
  v19[3] = &unk_1E86CA1B8;
  v20 = v7;
  v21 = v10;
  v22 = v9;
  v23 = v8;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v7;
  dispatch_async(v13, v19);

  v18 = *MEMORY[0x1E69E9840];
}

void __67__SYStoreIncomingSessionOwner_syncSession_applyChanges_completion___block_invoke(id *a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__SYStoreIncomingSessionOwner_syncSession_applyChanges_completion___block_invoke_2;
  v8[3] = &unk_1E86CA1B8;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  _os_activity_initiate(&dword_1DF835000, "Sync Batch Input", OS_ACTIVITY_FLAG_DEFAULT, v8);
}

uint64_t __67__SYStoreIncomingSessionOwner_syncSession_applyChanges_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 changeType];
        switch(v8)
        {
          case 3:
            v14 = *(a1 + 40);
            v15 = *(a1 + 48);
            v11 = [v7 wrappedObject];
            [v14 syncStore:v15 objectDeleted:v11];
            break;
          case 2:
            v12 = *(a1 + 40);
            v13 = *(a1 + 48);
            v11 = [v7 wrappedObject];
            [v12 syncStore:v13 objectUpdated:v11];
            break;
          case 1:
            v9 = *(a1 + 40);
            v10 = *(a1 + 48);
            v11 = [v7 wrappedObject];
            [v9 syncStore:v10 objectAdded:v11];
            break;
          default:
            continue;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  result = (*(*(a1 + 56) + 16))();
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

@end