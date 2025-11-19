@interface DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives
- (DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives)init;
- (void)enrollWithNonce:(id)a3 completionBlock:(id)a4;
@end

@implementation DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives

- (DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives)init
{
  v6.receiver = self;
  v6.super_class = DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives;
  v2 = [(DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    DEPClient = v2->_DEPClient;
    v2->_DEPClient = v3;
  }

  return v2;
}

- (void)enrollWithNonce:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives *)self DEPClient];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives_enrollWithNonce_completionBlock___block_invoke;
  v10[3] = &unk_278F5E458;
  v11 = v6;
  v9 = v6;
  [v8 provisionallyEnrollWithNonce:v7 completionBlock:v10];
}

void __96__DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives_enrollWithNonce_completionBlock___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (_DMTLogGeneral_onceToken_1 != -1)
  {
    __96__DMTMDMClientLibraryBackedAutomatedDeviceEnrollmentPrimitives_enrollWithNonce_completionBlock___block_invoke_cold_1();
  }

  v9 = _DMTLogGeneral_logObj_1;
  if (os_log_type_enabled(_DMTLogGeneral_logObj_1, OS_LOG_TYPE_DEBUG))
  {
    v11 = @"NO";
    v12 = 138543874;
    if (a2)
    {
      v11 = @"YES";
    }

    v13 = v11;
    v14 = 2114;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    _os_log_debug_impl(&dword_24891B000, v9, OS_LOG_TYPE_DEBUG, "Enrollment complete: %{public}@, response: %{public}@, error:%{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

@end