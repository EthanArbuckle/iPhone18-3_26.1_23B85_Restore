@interface SYStoreSessionOwner
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (BOOL)syncSession:(id)a3 rollbackChangesWithError:(id *)a4;
- (SYStore)store;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
@end

@implementation SYStoreSessionOwner

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2001 userInfo:0];
  }

  return 5;
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2001 userInfo:0];
  }

  return 0;
}

- (BOOL)syncSession:(id)a3 rollbackChangesWithError:(id *)a4
{
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
  }

  return 0;
}

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = a5;
  v8 = [[v6 alloc] initWithSYError:2001 userInfo:0];
  (*(a5 + 2))(v7, 0, v8);
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v13 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v8 = [WeakRetained delegate];
  v9 = [v6 isResetSync];

  if (!v13)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v11 = [WeakRetained persistentStore];
    [v11 setCompletedSync:1];
LABEL_9:

    goto LABEL_10;
  }

  v10 = WeakRetained[8];
  if (!v9)
  {
    if ((WeakRetained[8] & 0x400) == 0)
    {
      goto LABEL_10;
    }

    v11 = [(SYStoreSessionOwner *)self context];
    [v8 syncStore:WeakRetained encounteredError:v13 context:v11];
    goto LABEL_9;
  }

  if ((WeakRetained[8] & 0x200) != 0)
  {
    [v8 syncStore:WeakRetained encounteredErrorInFullSync:v13];
  }

LABEL_10:
  if (self->_onComplete)
  {
    v12 = [WeakRetained delegateQueue];
    dispatch_async(v12, self->_onComplete);
  }
}

- (SYStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

@end