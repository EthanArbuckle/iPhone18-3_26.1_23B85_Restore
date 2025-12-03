@interface FBExtensionProcess
- (FBProcess)hostProcess;
- (id)succinctDescriptionBuilder;
- (void)_finishInit;
@end

@implementation FBExtensionProcess

- (void)_finishInit
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot initialize FBExtensionProcess without an extension identity (%@)", self];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2114;
    v16 = @"FBExtensionProcess.m";
    v17 = 1024;
    v18 = 28;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBProcess)hostProcess
{
  os_unfair_lock_lock(&self->_hostProcessLock);
  lock_hostProcess = self->_lock_hostProcess;
  if (!lock_hostProcess)
  {
    if (self->_hostPID < 1)
    {
      lock_hostProcess = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->super._processManager);
      v5 = [WeakRetained processForPID:self->_hostPID];
      v6 = self->_lock_hostProcess;
      self->_lock_hostProcess = v5;

      lock_hostProcess = self->_lock_hostProcess;
    }
  }

  v7 = lock_hostProcess;
  os_unfair_lock_unlock(&self->_hostProcessLock);

  return v7;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = FBExtensionProcess;
  succinctDescriptionBuilder = [(FBProcess *)&v7 succinctDescriptionBuilder];
  typeIdentifier = [(FBSExtensionInfo *)self->_extensionInfo typeIdentifier];
  v5 = [succinctDescriptionBuilder appendObject:typeIdentifier withName:@"typeID" skipIfNil:1];

  return succinctDescriptionBuilder;
}

@end