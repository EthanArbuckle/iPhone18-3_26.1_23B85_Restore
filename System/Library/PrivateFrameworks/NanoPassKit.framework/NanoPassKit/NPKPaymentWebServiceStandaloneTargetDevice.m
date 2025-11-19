@interface NPKPaymentWebServiceStandaloneTargetDevice
+ (id)standalonePaymentWebServiceWithDelegate:(id)a3;
- (NPKPaymentWebServiceStandaloneTargetDeviceDelegate)delegate;
- (void)endRequiringUpgradedPasscodeIfNecessary;
- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)a3;
@end

@implementation NPKPaymentWebServiceStandaloneTargetDevice

+ (id)standalonePaymentWebServiceWithDelegate:(id)a3
{
  v3 = MEMORY[0x277D380F0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v5 sharedPaymentWebServiceContext];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D38180]);
  }

  v9 = v8;

  v10 = objc_alloc_init(NPKPaymentWebServiceStandaloneTargetDevice);
  [(NPKPaymentWebServiceStandaloneTargetDevice *)v10 setDelegate:v4];

  v11 = objc_alloc(MEMORY[0x277D38170]);
  v12 = [MEMORY[0x277D38298] sharedPaymentWebServiceArchiver];
  v13 = [v11 initWithContext:v9 targetDevice:v10 archiver:v12];

  return v13;
}

- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];

  if (v5)
  {
    v6 = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];
    [v6 standaloneTargetDevice:self requestsEnforceUpgradedPasscodePolicyWithCompletion:v4];
  }

  else
  {
    v7 = pk_Payment_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Target device: No delegate to enforce upgraded passcode policy!", v11, 2u);
      }
    }

    if (v4)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
      v4[2](v4, 0, v10);
    }
  }
}

- (void)endRequiringUpgradedPasscodeIfNecessary
{
  v3 = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];

  if (v3)
  {
    v7 = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];
    [v7 standaloneTargetDeviceRequestsEndRequiringUpgradedPasscodeIfNecessary:self];
  }

  else
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Target device: No delegate to end requiring upgraded passcode!", buf, 2u);
      }
    }
  }
}

- (NPKPaymentWebServiceStandaloneTargetDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end