@interface FCHealthServer
+ (id)requiredEntitlements;
- (FCHealthServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)connectionInvalidated;
- (void)handleRegisterGoalProgressConfigurationData:(id)a3 service:(id)a4 completion:(id)a5;
- (void)pluginMessage:(unint64_t)a3 data:(id)a4 completionHandler:(id)a5;
@end

@implementation FCHealthServer

- (FCHealthServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v19.receiver = self;
  v19.super_class = FCHealthServer;
  v12 = [(HDStandardTaskServer *)&v19 initWithUUID:v11 configuration:a4 client:a5 delegate:a6];
  v13 = v12;
  if (v12)
  {
    v14 = [(HDStandardTaskServer *)v12 profile];
    v15 = [v14 profileExtensionsConformingToProtocol:&unk_285E8B690];
    v16 = [v15 firstObject];
    profileExtension = v13->_profileExtension;
    v13->_profileExtension = v16;

    objc_storeStrong(&v13->_taskUUID, a3);
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

- (void)pluginMessage:(unint64_t)a3 data:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [(FCHealthProfileExtending *)self->_profileExtension fitnessCoachingHealthService];
  if (a3 == 1)
  {
    [(FCHealthServer *)self handleRegisterGoalProgressConfigurationData:v10 service:v9 completion:v8];
  }
}

- (void)handleRegisterGoalProgressConfigurationData:(id)a3 service:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277D09CB0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithTransportData:v10];

  [v9 registerGoalProgressConfiguration:v11 completion:v8];
}

@end