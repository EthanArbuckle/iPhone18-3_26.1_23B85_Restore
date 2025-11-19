@interface CSDevicePasscodeRecoveryService
- (BOOL)canStartRecovery;
- (CSDevicePasscodeRecoveryService)init;
- (CSDevicePasscodeRecoveryService)initWithService:(id)a3;
- (void)canStartRecovery;
@end

@implementation CSDevicePasscodeRecoveryService

- (CSDevicePasscodeRecoveryService)init
{
  v3 = objc_alloc_init(MEMORY[0x277CD4830]);
  v4 = [(CSDevicePasscodeRecoveryService *)self initWithService:v3];

  return v4;
}

- (CSDevicePasscodeRecoveryService)initWithService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSDevicePasscodeRecoveryService;
  v6 = [(CSDevicePasscodeRecoveryService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, a3);
  }

  return v7;
}

- (BOOL)canStartRecovery
{
  service = self->_service;
  v7 = 0;
  v3 = [(LAPasscodeRecoveryService *)service isRecoveryAvailableWithError:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CSDevicePasscodeRecoveryService *)v4 canStartRecovery];
    }
  }

  return v3;
}

- (void)canStartRecovery
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21EB05000, a2, OS_LOG_TYPE_ERROR, "Cannot start passcode recovery (error: %@)", &v2, 0xCu);
}

@end