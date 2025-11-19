@interface HMDHomeAdministratorConfigurationOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)a3 home:(id)a4 dispatcher:(id)a5;
- (id)logIdentifier;
- (void)_respondWithError:(id)a3 payload:(id)a4;
- (void)cancelWithError:(id)a3;
- (void)main;
@end

@implementation HMDHomeAdministratorConfigurationOperation

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeAdministratorConfigurationOperation *)self message];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  [(HMDHomeAdministratorConfigurationOperation *)self _respondWithError:v4 payload:0];
  v5.receiver = self;
  v5.super_class = HMDHomeAdministratorConfigurationOperation;
  [(HMFOperation *)&v5 cancelWithError:v4];
}

- (void)_respondWithError:(id)a3 payload:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  if ([(HMDHomeAdministratorConfigurationOperation *)self isMessageResponseHandled])
  {
    v7 = 0;
  }

  else
  {
    [(HMDHomeAdministratorConfigurationOperation *)self setMessageResponseHandled:1];
    v7 = [(HMDHomeAdministratorConfigurationOperation *)self message];
  }

  os_unfair_lock_unlock(&self->_lock);
  [v7 respondWithPayload:v6 error:v8];
}

- (void)main
{
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v4 = [(HMFMessage *)self->_message mutableCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke;
  v11[3] = &unk_278689DC0;
  v11[4] = self;
  [v4 setResponseHandler:v11];
  if ([(HMFMessage *)self->_message isAuthorizedForLocationAccess])
  {
    [v4 setHeaderValue:MEMORY[0x277CBEC38] forKey:@"cl.locauthz"];
  }

  if ([(HMFMessage *)self->_message isEntitledForShortcutsAutomationAccess])
  {
    [v4 setHeaderValue:MEMORY[0x277CBEC38] forKey:@"cl.shortcutent"];
  }

  v5 = [HMDRemoteHomeMessageDestination alloc];
  v6 = [(HMFMessage *)self->_message destination];
  v7 = [v6 target];
  v8 = [WeakRetained uuid];
  v9 = [(HMDRemoteHomeMessageDestination *)v5 initWithTarget:v7 homeUUID:v8 queueTimeout:&unk_283E73808];

  [v4 setDestination:v9];
  v10 = [WeakRetained residentSyncManager];
  [v10 performResidentRequest:v4 options:0];
}

void __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    [*(v6 + 336) respondWithError:a2];
    [*(a1 + 32) finish];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v6 + 344));
    v8 = [WeakRetained backingStore];
    v9 = [v8 context];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke_2;
    v10[3] = &unk_27868A750;
    v10[4] = *(a1 + 32);
    v11 = v5;
    [v9 performBlock:v10];
  }
}

uint64_t __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 336) respondWithPayload:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 finish];
}

- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)a3 home:(id)a4 dispatcher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (v9 && v10 && v11)
  {
    [objc_opt_class() timeout];
    v19.receiver = self;
    v19.super_class = HMDHomeAdministratorConfigurationOperation;
    v14 = [(HMFOperation *)&v19 initWithTimeout:?];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_message, a3);
      objc_storeWeak(&v15->_home, v10);
      objc_storeStrong(&v15->_dispatcher, a5);
      v16 = [v9 responseHandler];
      responseHandler = v15->_responseHandler;
      v15->_responseHandler = v16;

      -[HMFOperation setQualityOfService:](v15, "setQualityOfService:", [v9 qualityOfService]);
    }

    self = v15;
    v13 = self;
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_173620 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_173620, &__block_literal_global_173621);
  }

  v3 = logCategory__hmf_once_v2_173622;

  return v3;
}

void __57__HMDHomeAdministratorConfigurationOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_173622;
  logCategory__hmf_once_v2_173622 = v1;
}

+ (double)timeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"adminConfigurationOperationTimeout"];

  v4 = [v3 numberValue];

  if (v4)
  {
    v5 = [v3 numberValue];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 65.0;
  }

  return v7;
}

@end