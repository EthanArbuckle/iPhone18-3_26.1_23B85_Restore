@interface HDStandardTaskServer
+ (NSString)taskIdentifier;
+ (id)requiredEntitlements;
- (HDProfile)profile;
- (HDStandardTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (HDTaskServerDelegate)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)remote_unitTesting_createTaskServerNoOpWithCompletion:(id)a3;
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

- (HDStandardTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
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
      v23 = v9;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "%{public}@: Initialized for task %{public}@.", buf, 0x16u);
    }

    v14 = [v9 copy];
    taskUUID = v12->_taskUUID;
    v12->_taskUUID = v14;

    objc_storeStrong(&v12->_client, a5);
    v16 = [v10 profile];
    objc_storeWeak(&v12->_profile, v16);

    objc_storeWeak(&v12->_delegate, v11);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self client];
  v6 = [v5 connection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v4];

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

- (void)remote_unitTesting_createTaskServerNoOpWithCompletion:(id)a3
{
  if (_HDIsUnitTesting)
  {
    v3 = *(a3 + 2);
    v9 = a3;
    v3();
  }

  else
  {
    v6 = MEMORY[0x277CCA890];
    v7 = a3;
    v8 = [v6 currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDStandardTaskServer.m" lineNumber:78 description:@"This method can only be called while unit testing"];

    v9 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"This method can only be called while unit testing"];
    v7[2](v7, 0);
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