@interface FBSProcess
+ (id)currentProcess;
- (FBSProcess)init;
- (id)_initForCurrentProcess;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)versionedPID;
- (void)_terminateWithRequest:(id)request forWatchdog:(id)watchdog;
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
    processHandle = [off_1E76BCA18 processHandle];
    handle = v2->_handle;
    v2->_handle = processHandle;

    identityOfCurrentProcess = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
    identity = v2->_identity;
    v2->_identity = identityOfCurrentProcess;

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
    selfCopy = self;
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
  auditToken = [(BSProcessHandle *)self->_handle auditToken];
  versionedPID = [auditToken versionedPID];

  return versionedPID;
}

- (void)_terminateWithRequest:(id)request forWatchdog:(id)watchdog
{
  [(BSProcessHandle *)self->_handle pid:request];

  getpid();
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSProcess *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = FBSProcessPrettyDescription(selfCopy);
  [v3 appendString:v5 withName:0];

  v6 = [v3 appendBool:-[FBSProcess isRunning](selfCopy withName:{"isRunning"), @"running"}];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSProcess *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end