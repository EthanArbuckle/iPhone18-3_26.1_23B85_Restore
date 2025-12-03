@interface CPLEngineStoreTransaction
+ (CPLEngineStoreTransaction)currentTransaction;
- (BOOL)canRead;
- (BOOL)canWrite;
- (BOOL)do:(id)do;
- (BOOL)isLibraryClosed;
- (id)description;
- (void)_releaseDirty;
- (void)_transactionDidFinish;
- (void)_transactionWillBeginOnThread:(id)thread;
- (void)addCleanupBlock:(id)block;
- (void)dealloc;
@end

@implementation CPLEngineStoreTransaction

- (void)_transactionDidFinish
{
  v17 = *MEMORY[0x1E69E9840];
  currentThread = self->_currentThread;
  self->_currentThread = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_cleanupBlocks reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        error = self->_error;
        (*(*(*(&v12 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  cleanupBlocks = self->_cleanupBlocks;
  self->_cleanupBlocks = 0;

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)canWrite
{
  if (!self->_forWrite)
  {
    return 0;
  }

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  v4 = currentThread == self->_currentThread;

  return v4;
}

- (void)_releaseDirty
{
  [(CPLTransaction *)self->_dirty endTransaction];
  dirty = self->_dirty;
  self->_dirty = 0;
}

- (void)dealloc
{
  [(CPLTransaction *)self->_dirty endTransaction];
  v3.receiver = self;
  v3.super_class = CPLEngineStoreTransaction;
  [(CPLEngineStoreTransaction *)&v3 dealloc];
}

- (BOOL)isLibraryClosed
{
  error = self->_error;
  if (error)
  {
    LOBYTE(error) = [(NSError *)error isCPLErrorWithCode:2];
  }

  return error;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  if (self->_forWrite)
  {
    v3 = " [WRITE]";
  }

  else
  {
    v3 = "";
  }

  identifier = [(CPLTransaction *)self->_dirty identifier];
  v5 = [v2 stringWithFormat:@"[TRANSACTION%s %@]", v3, identifier];

  return v5;
}

- (BOOL)canRead
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  LOBYTE(self) = currentThread == self->_currentThread;

  return self;
}

- (void)addCleanupBlock:(id)block
{
  blockCopy = block;
  cleanupBlocks = self->_cleanupBlocks;
  v10 = blockCopy;
  if (!cleanupBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_cleanupBlocks;
    self->_cleanupBlocks = v6;

    blockCopy = v10;
    cleanupBlocks = self->_cleanupBlocks;
  }

  v8 = [blockCopy copy];
  v9 = MEMORY[0x1E128EBA0]();
  [(NSMutableArray *)cleanupBlocks addObject:v9];
}

- (void)_transactionWillBeginOnThread:(id)thread
{
  threadCopy = thread;
  if (self->_currentThread)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to set transaction thread twice", v9, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:2649 description:@"Trying to set transaction thread twice"];

    abort();
  }

  self->_currentThread = threadCopy;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)do:(id)do
{
  p_error = &self->_error;
  if (self->_error)
  {
    return 0;
  }

  v8 = 0;
  v4 = (*(do + 2))(do, &v8);
  v5 = v8;
  v6 = v8;
  if ((v4 & 1) == 0 && !*p_error)
  {
    objc_storeStrong(p_error, v5);
  }

  return v4;
}

+ (CPLEngineStoreTransaction)currentTransaction
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v6 = [threadDictionary objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];

  if (!v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to get the current transaction outside of any transaction", v11, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v10 lineNumber:2608 description:@"Trying to get the current transaction outside of any transaction"];

    abort();
  }

  return v6;
}

@end