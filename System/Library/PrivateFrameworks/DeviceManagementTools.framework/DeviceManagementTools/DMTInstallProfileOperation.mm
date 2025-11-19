@interface DMTInstallProfileOperation
- (DMTInstallProfileOperation)initWithProfileInstallationPrimitives:(id)a3 profileData:(id)a4;
- (void)cancel;
- (void)installProfile;
- (void)main;
@end

@implementation DMTInstallProfileOperation

- (DMTInstallProfileOperation)initWithProfileInstallationPrimitives:(id)a3 profileData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = DMTInstallProfileOperation;
  v9 = [(DMTInstallProfileOperation *)&v18 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v11 stringByAppendingString:@".profileInstallation"];

    v13 = dispatch_queue_create([v12 UTF8String], 0);
    profileInstallationQueue = v9->_profileInstallationQueue;
    v9->_profileInstallationQueue = v13;

    objc_storeStrong(&v9->_primitives, a3);
    v15 = [v8 copy];
    profileData = v9->_profileData;
    v9->_profileData = v15;
  }

  return v9;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = DMTInstallProfileOperation;
  [(DMTInstallProfileOperation *)&v5 cancel];
  v3 = [(DMTInstallProfileOperation *)self profileInstallationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DMTInstallProfileOperation_cancel__block_invoke;
  block[3] = &unk_278F5DEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __36__DMTInstallProfileOperation_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profileInstallationQueue];
  dispatch_suspend(v2);

  v3 = *(a1 + 32);
  v4 = CATErrorWithCodeAndUserInfo();
  [v3 endOperationWithError:v4];
}

- (void)main
{
  v3 = [(DMTInstallProfileOperation *)self profileInstallationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DMTInstallProfileOperation_main__block_invoke;
  block[3] = &unk_278F5DEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)installProfile
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "%{public}@: Failed to install profile: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end