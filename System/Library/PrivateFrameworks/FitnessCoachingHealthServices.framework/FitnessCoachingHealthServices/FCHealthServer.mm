@interface FCHealthServer
+ (id)requiredEntitlements;
- (FCHealthServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)connectionInvalidated;
- (void)handleRegisterGoalProgressConfigurationData:(id)data service:(id)service completion:(id)completion;
- (void)pluginMessage:(unint64_t)message data:(id)data completionHandler:(id)handler;
@end

@implementation FCHealthServer

- (FCHealthServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  dCopy = d;
  v19.receiver = self;
  v19.super_class = FCHealthServer;
  v12 = [(HDStandardTaskServer *)&v19 initWithUUID:dCopy configuration:configuration client:client delegate:delegate];
  v13 = v12;
  if (v12)
  {
    profile = [(HDStandardTaskServer *)v12 profile];
    v15 = [profile profileExtensionsConformingToProtocol:&unk_285E8B690];
    firstObject = [v15 firstObject];
    profileExtension = v13->_profileExtension;
    v13->_profileExtension = firstObject;

    objc_storeStrong(&v13->_taskUUID, d);
    v13->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)connectionInvalidated
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B55B000, v3, OS_LOG_TYPE_DEFAULT, "[FCHealthServer] XPC connection invalidated", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = FCHealthServer;
  [(HDStandardTaskServer *)&v4 connectionInvalidated];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)pluginMessage:(unint64_t)message data:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  fitnessCoachingHealthService = [(FCHealthProfileExtending *)self->_profileExtension fitnessCoachingHealthService];
  if (message == 1)
  {
    [(FCHealthServer *)self handleRegisterGoalProgressConfigurationData:dataCopy service:fitnessCoachingHealthService completion:handlerCopy];
  }
}

- (void)handleRegisterGoalProgressConfigurationData:(id)data service:(id)service completion:(id)completion
{
  v7 = MEMORY[0x277D09CB0];
  completionCopy = completion;
  serviceCopy = service;
  dataCopy = data;
  v11 = [[v7 alloc] initWithTransportData:dataCopy];

  [serviceCopy registerGoalProgressConfiguration:v11 completion:completionCopy];
}

@end