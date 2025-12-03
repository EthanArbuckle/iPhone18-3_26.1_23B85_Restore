@interface FBServiceFacilityServerClientHandle
- (FBServiceFacilityServerClientHandle)initWithFacilityID:(id)d connection:(id)connection;
- (NSString)description;
- (id)prettyProcessDescription;
- (void)setContext:(id)context;
@end

@implementation FBServiceFacilityServerClientHandle

- (id)prettyProcessDescription
{
  if (!self->_process)
  {
    processHandle = self->_processHandle;
  }

  return FBSProcessPrettyDescription();
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_facilityID withName:0 skipIfNil:1];
  if (!self->_process)
  {
    processHandle = self->_processHandle;
  }

  v6 = FBSProcessPrettyDescription();
  v7 = [v3 appendObject:@"remote" withName:v6 skipIfNil:1];

  build = [v3 build];

  return build;
}

- (FBServiceFacilityServerClientHandle)initWithFacilityID:(id)d connection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  if (!dCopy)
  {
    [FBServiceFacilityServerClientHandle initWithFacilityID:a2 connection:?];
  }

  v9 = connectionCopy;
  if (!connectionCopy)
  {
    [FBServiceFacilityServerClientHandle initWithFacilityID:a2 connection:?];
  }

  v22.receiver = self;
  v22.super_class = FBServiceFacilityServerClientHandle;
  v10 = [(FBServiceFacilityServerClientHandle *)&v22 init];
  if (v10)
  {
    v11 = [dCopy copy];
    facilityID = v10->_facilityID;
    v10->_facilityID = v11;

    objc_storeStrong(&v10->_connection, connection);
    remoteProcess = [v9 remoteProcess];
    processHandle = v10->_processHandle;
    v10->_processHandle = remoteProcess;

    v15 = +[FBProcessManager sharedInstance];
    auditToken = [(BSProcessHandle *)v10->_processHandle auditToken];
    v17 = auditToken;
    if (auditToken)
    {
      [auditToken realToken];
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    v18 = [v15 registerProcessForAuditToken:v21];
    process = v10->_process;
    v10->_process = v18;
  }

  return v10;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  if (context != contextCopy)
  {
    v7 = contextCopy;
    [(FBSServiceFacilityClientContext *)context setClientHandle:0];
    objc_storeStrong(&self->_context, context);
    [(FBSServiceFacilityClientContext *)self->_context setClientHandle:self];
    contextCopy = v7;
  }
}

- (void)initWithFacilityID:(const char *)a1 connection:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"connection"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"FBServiceFacilityServerClientHandle.m";
    v9 = 1024;
    v10 = 30;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFacilityID:(const char *)a1 connection:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"facilityID"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"FBServiceFacilityServerClientHandle.m";
    v9 = 1024;
    v10 = 29;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end