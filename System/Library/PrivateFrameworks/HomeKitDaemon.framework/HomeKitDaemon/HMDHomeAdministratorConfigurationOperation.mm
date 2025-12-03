@interface HMDHomeAdministratorConfigurationOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)message home:(id)home dispatcher:(id)dispatcher;
- (id)logIdentifier;
- (void)_respondWithError:(id)error payload:(id)payload;
- (void)cancelWithError:(id)error;
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
  message = [(HMDHomeAdministratorConfigurationOperation *)self message];
  identifier = [message identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  [(HMDHomeAdministratorConfigurationOperation *)self _respondWithError:errorCopy payload:0];
  v5.receiver = self;
  v5.super_class = HMDHomeAdministratorConfigurationOperation;
  [(HMFOperation *)&v5 cancelWithError:errorCopy];
}

- (void)_respondWithError:(id)error payload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  os_unfair_lock_lock_with_options();
  if ([(HMDHomeAdministratorConfigurationOperation *)self isMessageResponseHandled])
  {
    message = 0;
  }

  else
  {
    [(HMDHomeAdministratorConfigurationOperation *)self setMessageResponseHandled:1];
    message = [(HMDHomeAdministratorConfigurationOperation *)self message];
  }

  os_unfair_lock_unlock(&self->_lock);
  [message respondWithPayload:payloadCopy error:errorCopy];
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
  destination = [(HMFMessage *)self->_message destination];
  target = [destination target];
  uuid = [WeakRetained uuid];
  v9 = [(HMDRemoteHomeMessageDestination *)v5 initWithTarget:target homeUUID:uuid queueTimeout:&unk_283E73808];

  [v4 setDestination:v9];
  residentSyncManager = [WeakRetained residentSyncManager];
  [residentSyncManager performResidentRequest:v4 options:0];
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

- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)message home:(id)home dispatcher:(id)dispatcher
{
  messageCopy = message;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  v12 = dispatcherCopy;
  selfCopy = 0;
  if (messageCopy && homeCopy && dispatcherCopy)
  {
    [objc_opt_class() timeout];
    v19.receiver = self;
    v19.super_class = HMDHomeAdministratorConfigurationOperation;
    v14 = [(HMFOperation *)&v19 initWithTimeout:?];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_message, message);
      objc_storeWeak(&v15->_home, homeCopy);
      objc_storeStrong(&v15->_dispatcher, dispatcher);
      responseHandler = [messageCopy responseHandler];
      responseHandler = v15->_responseHandler;
      v15->_responseHandler = responseHandler;

      -[HMFOperation setQualityOfService:](v15, "setQualityOfService:", [messageCopy qualityOfService]);
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"adminConfigurationOperationTimeout"];

  numberValue = [v3 numberValue];

  if (numberValue)
  {
    numberValue2 = [v3 numberValue];
    [numberValue2 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 65.0;
  }

  return v7;
}

@end