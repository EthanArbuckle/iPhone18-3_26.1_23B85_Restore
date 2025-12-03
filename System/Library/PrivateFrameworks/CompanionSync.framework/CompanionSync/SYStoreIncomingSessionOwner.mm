@interface SYStoreIncomingSessionOwner
- (BOOL)isResetSync;
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (SYStoreIncomingSessionOwner)initWithIncomingSession:(id)session;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
@end

@implementation SYStoreIncomingSessionOwner

- (SYStoreIncomingSessionOwner)initWithIncomingSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = SYStoreIncomingSessionOwner;
  v5 = [(SYStoreIncomingSessionOwner *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SYStoreSessionOwner *)v5 setSession:sessionCopy];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isResetSync
{
  session = [(SYStoreSessionOwner *)self session];
  isResetSync = [session isResetSync];

  return isResetSync;
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  sessionCopy = session;
  store = [(SYStoreSessionOwner *)self store];
  if ([(SYStoreIncomingSessionOwner *)self isResetSync])
  {
    if ((store[8] & 0x10) != 0)
    {
      delegate = [store delegate];
      [delegate syncStoreAllObjectsDeleted:store];

      v9 = 1;
      goto LABEL_7;
    }

    sYStoreIncomingSessionOwner = [(SYStoreSessionOwner *)&v12 syncSession:sessionCopy resetDataStoreWithError:error, self, SYStoreIncomingSessionOwner, v13.receiver, v13.super_class];
  }

  else
  {
    sYStoreIncomingSessionOwner = [(SYStoreSessionOwner *)&v13 syncSession:sessionCopy resetDataStoreWithError:error, v12.receiver, v12.super_class, self, SYStoreIncomingSessionOwner];
  }

  v9 = sYStoreIncomingSessionOwner;
LABEL_7:

  return v9;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  completionCopy = completion;
  store = [(SYStoreSessionOwner *)self store];
  delegate = [store delegate];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 134217984;
    v25 = [changesCopy count];
    _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "SYStore shim: forwarding %lu changes to SYStoreDelegate", buf, 0xCu);
  }

  delegateQueue = [store delegateQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__SYStoreIncomingSessionOwner_syncSession_applyChanges_completion___block_invoke;
  v19[3] = &unk_1E86CA1B8;
  v20 = changesCopy;
  v21 = delegate;
  v22 = store;
  v23 = completionCopy;
  v14 = completionCopy;
  v15 = store;
  v16 = delegate;
  v17 = changesCopy;
  dispatch_async(delegateQueue, v19);

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