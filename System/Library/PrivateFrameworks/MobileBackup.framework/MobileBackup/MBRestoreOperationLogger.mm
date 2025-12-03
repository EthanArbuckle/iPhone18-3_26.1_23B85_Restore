@interface MBRestoreOperationLogger
- (MBRestoreOperationLogger)initWithPath:(id)path;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)logCloneForRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target;
- (void)logCreateDirectoryForRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path;
- (void)logCreateZeroByteRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path;
- (void)logFixUpDirectoryAttributesForRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path;
- (void)logLinkForRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target;
- (void)logMoveForRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target;
- (void)logRenameForRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target;
- (void)logSetClassForRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path value:(int)value;
- (void)logSymlinkRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target;
- (void)logUnlinkForRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path;
@end

@implementation MBRestoreOperationLogger

- (MBRestoreOperationLogger)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = MBRestoreOperationLogger;
  v6 = [(MBRestoreOperationLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
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

- (void)logCloneForRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target
{
  targetCopy = target;
  sourceCopy = source;
  domain = [restorable domain];
  name = [domain name];
  v19 = MBRestorableStateToString(state);
  sub_10021390C(self, @"clonefile|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, name);
}

- (void)logSymlinkRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target
{
  targetCopy = target;
  sourceCopy = source;
  domain = [restorable domain];
  name = [domain name];
  v19 = MBRestorableStateToString(state);
  sub_10021390C(self, @"symlink|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, name);
}

- (void)logLinkForRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target
{
  targetCopy = target;
  sourceCopy = source;
  domain = [restorable domain];
  name = [domain name];
  v19 = MBRestorableStateToString(state);
  sub_10021390C(self, @"link|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, name);
}

- (void)logRenameForRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target
{
  targetCopy = target;
  sourceCopy = source;
  domain = [restorable domain];
  name = [domain name];
  v19 = MBRestorableStateToString(state);
  sub_10021390C(self, @"rename|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, name);
}

- (void)logMoveForRestorable:(id)restorable state:(unint64_t)state source:(id)source target:(id)target
{
  targetCopy = target;
  sourceCopy = source;
  domain = [restorable domain];
  name = [domain name];
  v19 = MBRestorableStateToString(state);
  sub_10021390C(self, @"move|%@|%@|%@|%@", v13, v14, v15, v16, v17, v18, name);
}

- (void)logSetClassForRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path value:(int)value
{
  pathCopy = path;
  domain = [restorable domain];
  name = [domain name];
  v17 = MBRestorableStateToString(state);
  sub_10021390C(self, @"setclass|%@|%@|%d|%@", v11, v12, v13, v14, v15, v16, name);
}

- (void)logCreateZeroByteRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path
{
  pathCopy = path;
  domain = [restorable domain];
  name = [domain name];
  v16 = MBRestorableStateToString(state);
  sub_10021390C(self, @"empty|%@|%@|%@", v10, v11, v12, v13, v14, v15, name);
}

- (void)logUnlinkForRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path
{
  pathCopy = path;
  domain = [restorable domain];
  name = [domain name];
  v16 = MBRestorableStateToString(state);
  sub_10021390C(self, @"unlink|%@|%@|%@", v10, v11, v12, v13, v14, v15, name);
}

- (void)logCreateDirectoryForRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path
{
  pathCopy = path;
  domain = [restorable domain];
  name = [domain name];
  v16 = MBRestorableStateToString(state);
  sub_10021390C(self, @"mkdir|%@|%@|%@", v10, v11, v12, v13, v14, v15, name);
}

- (void)logFixUpDirectoryAttributesForRestorable:(id)restorable state:(unint64_t)state absolutePath:(id)path
{
  pathCopy = path;
  domain = [restorable domain];
  name = [domain name];
  v16 = MBRestorableStateToString(state);
  sub_10021390C(self, @"futimes|%@|%@|%@", v10, v11, v12, v13, v14, v15, name);
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