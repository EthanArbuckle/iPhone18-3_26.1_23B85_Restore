@interface SYStoreSessionOwner
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (BOOL)syncSession:(id)session rollbackChangesWithError:(id *)error;
- (SYStore)store;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation SYStoreSessionOwner

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2001 userInfo:0];
  }

  return 5;
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2001 userInfo:0];
  }

  return 0;
}

- (BOOL)syncSession:(id)session rollbackChangesWithError:(id *)error
{
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
  }

  return 0;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v6 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v8 = [[v6 alloc] initWithSYError:2001 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v8);
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  errorCopy = error;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  delegate = [WeakRetained delegate];
  isResetSync = [sessionCopy isResetSync];

  if (!errorCopy)
  {
    if (!isResetSync)
    {
      goto LABEL_10;
    }

    persistentStore = [WeakRetained persistentStore];
    [persistentStore setCompletedSync:1];
LABEL_9:

    goto LABEL_10;
  }

  v10 = WeakRetained[8];
  if (!isResetSync)
  {
    if ((WeakRetained[8] & 0x400) == 0)
    {
      goto LABEL_10;
    }

    persistentStore = [(SYStoreSessionOwner *)self context];
    [delegate syncStore:WeakRetained encounteredError:errorCopy context:persistentStore];
    goto LABEL_9;
  }

  if ((WeakRetained[8] & 0x200) != 0)
  {
    [delegate syncStore:WeakRetained encounteredErrorInFullSync:errorCopy];
  }

LABEL_10:
  if (self->_onComplete)
  {
    delegateQueue = [WeakRetained delegateQueue];
    dispatch_async(delegateQueue, self->_onComplete);
  }
}

- (SYStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

@end