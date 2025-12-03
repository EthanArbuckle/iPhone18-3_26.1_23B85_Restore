@interface LACEnvironmentServiceXPCHost
- (LACEnvironmentServiceXPCHost)initWithDependencies:(id)dependencies workQueue:(id)queue;
- (void)environmentStateForUser:(id)user completion:(id)completion;
@end

@implementation LACEnvironmentServiceXPCHost

- (LACEnvironmentServiceXPCHost)initWithDependencies:(id)dependencies workQueue:(id)queue
{
  dependenciesCopy = dependencies;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = LACEnvironmentServiceXPCHost;
  v9 = [(LACEnvironmentServiceXPCHost *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dependencies, dependencies);
    objc_storeStrong(&v10->_workQueue, queue);
  }

  return v10;
}

- (void)environmentStateForUser:(id)user completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  userCopy = user;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if (!currentConnection)
  {
    [LACEnvironmentServiceXPCHost environmentStateForUser:completion:];
  }

  v9 = currentConnection;
  unsignedIntValue = [userCopy unsignedIntValue];
  [v9 auditToken];
  dependencies = self->_dependencies;
  v18 = 0;
  v12 = [LACEnvironmentState environmentStateForUser:unsignedIntValue auditToken:buf dependencies:dependencies error:&v18];
  v13 = v18;
  v14 = LACLogEnvironment();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    processIdentifier = [v9 processIdentifier];
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    *buf = 67109378;
    v20 = processIdentifier;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Environment state for PID %u: %@", buf, 0x12u);
  }

  completionCopy[2](completionCopy, v12, v13);
  v17 = *MEMORY[0x1E69E9840];
}

@end