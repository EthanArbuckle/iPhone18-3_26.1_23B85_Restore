@interface HDStandardTaskServer
+ (NSString)taskIdentifier;
+ (id)requiredEntitlements;
- (HDProfile)profile;
- (HDStandardTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (HDTaskServerDelegate)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)remote_unitTesting_createTaskServerNoOpWithCompletion:(id)completion;
@end

@implementation HDStandardTaskServer

+ (NSString)taskIdentifier
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return @"<INVALID>";
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDStandardTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientCopy = client;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = HDStandardTaskServer;
  v12 = [(HDStandardTaskServer *)&v19 init];
  if (v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = dCopy;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "%{public}@: Initialized for task %{public}@.", buf, 0x16u);
    }

    v14 = [dCopy copy];
    taskUUID = v12->_taskUUID;
    v12->_taskUUID = v14;

    objc_storeStrong(&v12->_client, client);
    profile = [clientCopy profile];
    objc_storeWeak(&v12->_profile, profile);

    objc_storeWeak(&v12->_delegate, delegateCopy);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  v7 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

- (id)exportedInterface
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)remoteInterface
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)remote_unitTesting_createTaskServerNoOpWithCompletion:(id)completion
{
  if (_HDIsUnitTesting)
  {
    v3 = *(completion + 2);
    completionCopy = completion;
    v3();
  }

  else
  {
    v6 = MEMORY[0x277CCA890];
    completionCopy2 = completion;
    currentHandler = [v6 currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDStandardTaskServer.m" lineNumber:78 description:@"This method can only be called while unit testing"];

    completionCopy = [MEMORY[0x277CCA9B8] hk_error:100 description:@"This method can only be called while unit testing"];
    completionCopy2[2](completionCopy2, 0);
  }
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (HDTaskServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end