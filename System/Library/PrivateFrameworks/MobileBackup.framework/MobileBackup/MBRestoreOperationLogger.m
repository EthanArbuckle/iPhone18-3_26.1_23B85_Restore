@interface MBRestoreOperationLogger
- (MBRestoreOperationLogger)initWithPath:(id)a3;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)logCloneForRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6;
- (void)logCreateDirectoryForRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5;
- (void)logCreateZeroByteRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5;
- (void)logFixUpDirectoryAttributesForRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5;
- (void)logLinkForRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6;
- (void)logMoveForRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6;
- (void)logRenameForRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6;
- (void)logSetClassForRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5 value:(int)a6;
- (void)logSymlinkRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6;
- (void)logUnlinkForRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5;
@end

@implementation MBRestoreOperationLogger

- (MBRestoreOperationLogger)initWithPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MBRestoreOperationLogger;
  v6 = [(MBRestoreOperationLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
    v7->_writeLock._os_unfair_lock_opaque = 0;
    v7->_file = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(MBRestoreOperationLogger *)self close];
  v3.receiver = self;
  v3.super_class = MBRestoreOperationLogger;
  [(MBRestoreOperationLogger *)&v3 dealloc];
}

- (void)logCloneForRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6
{
  v10 = a6;
  v11 = a5;
  v20 = [a3 domain];
  v12 = [v20 name];
  v19 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"clonefile|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, v12);
}

- (void)logSymlinkRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6
{
  v10 = a6;
  v11 = a5;
  v20 = [a3 domain];
  v12 = [v20 name];
  v19 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"symlink|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, v12);
}

- (void)logLinkForRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6
{
  v10 = a6;
  v11 = a5;
  v20 = [a3 domain];
  v12 = [v20 name];
  v19 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"link|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, v12);
}

- (void)logRenameForRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6
{
  v10 = a6;
  v11 = a5;
  v20 = [a3 domain];
  v12 = [v20 name];
  v19 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"rename|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, v12);
}

- (void)logMoveForRestorable:(id)a3 state:(unint64_t)a4 source:(id)a5 target:(id)a6
{
  v10 = a6;
  v11 = a5;
  v20 = [a3 domain];
  v12 = [v20 name];
  v19 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"move|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, v12);
}

- (void)logSetClassForRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5 value:(int)a6
{
  v9 = a5;
  v18 = [a3 domain];
  v10 = [v18 name];
  v17 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"setclass|%@|%@|%d|%@", v11, v12, v13, v14, v15, v16, v10);
}

- (void)logCreateZeroByteRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5
{
  v8 = a5;
  v17 = [a3 domain];
  v9 = [v17 name];
  v16 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"empty|%@|%@|%@", v10, v11, v12, v13, v14, v15, v9);
}

- (void)logUnlinkForRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5
{
  v8 = a5;
  v17 = [a3 domain];
  v9 = [v17 name];
  v16 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"unlink|%@|%@|%@", v10, v11, v12, v13, v14, v15, v9);
}

- (void)logCreateDirectoryForRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5
{
  v8 = a5;
  v17 = [a3 domain];
  v9 = [v17 name];
  v16 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"mkdir|%@|%@|%@", v10, v11, v12, v13, v14, v15, v9);
}

- (void)logFixUpDirectoryAttributesForRestorable:(id)a3 state:(unint64_t)a4 absolutePath:(id)a5
{
  v8 = a5;
  v17 = [a3 domain];
  v9 = [v17 name];
  v16 = MBRestorableStateToString(a4);
  sub_10021390C(self, @"futimes|%@|%@|%@", v10, v11, v12, v13, v14, v15, v9);
}

- (void)flush
{
  os_unfair_lock_lock(&self->_writeLock);
  file = self->_file;
  if (file)
  {
    fflush(file);
  }

  os_unfair_lock_unlock(&self->_writeLock);
}

- (void)close
{
  os_unfair_lock_lock(&self->_writeLock);
  file = self->_file;
  if (file)
  {
    fclose(file);
    self->_file = 0;
  }

  os_unfair_lock_unlock(&self->_writeLock);
}

@end