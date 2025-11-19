@interface FBSProcess
+ (id)currentProcess;
- (FBSProcess)init;
- (id)_initForCurrentProcess;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)versionedPID;
- (void)_terminateWithRequest:(id)a3 forWatchdog:(id)a4;
- (void)dealloc;
@end

@implementation FBSProcess

+ (id)currentProcess
{
  if (currentProcess_onceToken != -1)
  {
    +[FBSProcess currentProcess];
  }

  v3 = currentProcess___CurrentProcess;

  return v3;
}

uint64_t __28__FBSProcess_currentProcess__block_invoke()
{
  v0 = [[FBSProcess alloc] _initForCurrentProcess];
  v1 = currentProcess___CurrentProcess;
  currentProcess___CurrentProcess = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_initForCurrentProcess
{
  v10.receiver = self;
  v10.super_class = FBSProcess;
  v2 = [(FBSProcess *)&v10 init];
  if (v2)
  {
    v3 = [off_1E76BCA18 processHandle];
    handle = v2->_handle;
    v2->_handle = v3;

    v5 = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
    identity = v2->_identity;
    v2->_identity = v5;

    v7 = [off_1E76BC9D8 taskNameForPID:{-[BSProcessHandle pid](v2->_handle, "pid")}];
    taskNameRight = v2->_taskNameRight;
    v2->_taskNameRight = v7;
  }

  return v2;
}

- (FBSProcess)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBSProcess"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    v14 = 2114;
    v15 = @"FBSProcess.m";
    v16 = 1024;
    v17 = 70;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)dealloc
{
  [(BSMachPortTaskNameRight *)self->_taskNameRight invalidate];
  v3.receiver = self;
  v3.super_class = FBSProcess;
  [(FBSProcess *)&v3 dealloc];
}

- (int64_t)versionedPID
{
  v2 = [(BSProcessHandle *)self->_handle auditToken];
  v3 = [v2 versionedPID];

  return v3;
}

- (void)_terminateWithRequest:(id)a3 forWatchdog:(id)a4
{
  [(BSProcessHandle *)self->_handle pid:a3];

  getpid();
}

- (id)succinctDescription
{
  v2 = [(FBSProcess *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = self;
  objc_sync_enter(v4);
  v5 = FBSProcessPrettyDescription(v4);
  [v3 appendString:v5 withName:0];

  v6 = [v3 appendBool:-[FBSProcess isRunning](v4 withName:{"isRunning"), @"running"}];
  objc_sync_exit(v4);

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSProcess *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end