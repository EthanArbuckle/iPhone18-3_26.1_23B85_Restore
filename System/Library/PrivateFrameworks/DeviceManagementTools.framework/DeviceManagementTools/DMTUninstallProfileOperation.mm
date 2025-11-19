@interface DMTUninstallProfileOperation
- (DMTUninstallProfileOperation)initWithProfileInstallationPrimitives:(id)a3 profileIdentifier:(id)a4;
- (void)cancel;
- (void)uninstallProfile;
@end

@implementation DMTUninstallProfileOperation

- (DMTUninstallProfileOperation)initWithProfileInstallationPrimitives:(id)a3 profileIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DMTUninstallProfileOperation;
  v9 = [(DMTUninstallProfileOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primitives, a3);
    objc_storeStrong(&v10->_profileIdentifier, a4);
  }

  return v10;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = DMTUninstallProfileOperation;
  [(DMTUninstallProfileOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DMTUninstallProfileOperation_cancel__block_invoke;
  block[3] = &unk_278F5DEC8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__DMTUninstallProfileOperation_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CATErrorWithCodeAndUserInfo();
  [v1 endOperationWithError:v2];
}

- (void)uninstallProfile
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_24891B000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to uninstall profile: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end