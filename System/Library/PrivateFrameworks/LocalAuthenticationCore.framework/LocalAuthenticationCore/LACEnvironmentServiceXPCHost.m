@interface LACEnvironmentServiceXPCHost
- (LACEnvironmentServiceXPCHost)initWithDependencies:(id)a3 workQueue:(id)a4;
- (void)environmentStateForUser:(id)a3 completion:(id)a4;
@end

@implementation LACEnvironmentServiceXPCHost

- (LACEnvironmentServiceXPCHost)initWithDependencies:(id)a3 workQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACEnvironmentServiceXPCHost;
  v9 = [(LACEnvironmentServiceXPCHost *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dependencies, a3);
    objc_storeStrong(&v10->_workQueue, a4);
  }

  return v10;
}

- (void)environmentStateForUser:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v8 = [MEMORY[0x1E696B0B8] currentConnection];
  if (!v8)
  {
    [LACEnvironmentServiceXPCHost environmentStateForUser:completion:];
  }

  v9 = v8;
  v10 = [v6 unsignedIntValue];
  [v9 auditToken];
  dependencies = self->_dependencies;
  v18 = 0;
  v12 = [LACEnvironmentState environmentStateForUser:v10 auditToken:buf dependencies:dependencies error:&v18];
  v13 = v18;
  v14 = LACLogEnvironment();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 processIdentifier];
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    *buf = 67109378;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Environment state for PID %u: %@", buf, 0x12u);
  }

  v7[2](v7, v12, v13);
  v17 = *MEMORY[0x1E69E9840];
}

@end