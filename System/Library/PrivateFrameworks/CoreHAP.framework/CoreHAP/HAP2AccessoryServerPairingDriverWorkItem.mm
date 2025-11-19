@interface HAP2AccessoryServerPairingDriverWorkItem
- (HAP2AccessoryServerPairingDriverWorkItemInfo)pairingDriver;
- (HMFActivity)pairingActivity;
- (NSString)description;
- (id)maybePairingDriver;
- (void)cancelWithError:(id)a3;
- (void)finishWithError:(id)a3;
- (void)runForPairingDriver:(id)a3;
- (void)startWithPairingDriver:(id)a3;
@end

@implementation HAP2AccessoryServerPairingDriverWorkItem

- (HMFActivity)pairingActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingActivity);

  return WeakRetained;
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)runForPairingDriver:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (NSString)description
{
  v3 = [(HAP2AccessoryServerPairingDriverWorkItem *)self maybePairingDriver];
  v4 = [v3 accessoryServer];

  v5 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = HAP2AccessoryServerPairingDriverWorkItem;
  v6 = [(HAP2LoggingObject *)&v11 description];
  v7 = [v4 name];
  v8 = [v4 deviceID];
  v9 = [v5 stringWithFormat:@"%@ [%@/%@]", v6, v7, v8];

  return v9;
}

- (void)finishWithError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [v5 assertCurrentQueue];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (v4)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%@ Finished with error: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%@ Finished successfully", &v9, 0xCu);
  }

  v7 = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingDriver];
  objc_storeWeak(&self->_pairingDriver, 0);
  [v7 workItem:self finishedWithError:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startWithPairingDriver:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [v5 assertCurrentQueue];

  objc_storeWeak(&self->_pairingDriver, v4);
  v6 = [v4 operationQueue];
  operationQueue = self->_operationQueue;
  self->_operationQueue = v6;

  v8 = [MEMORY[0x277D0F770] currentActivity];
  objc_storeWeak(&self->_pairingActivity, v8);

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%@ Starting", &v11, 0xCu);
  }

  [(HAP2AccessoryServerPairingDriverWorkItem *)self runForPairingDriver:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (HAP2AccessoryServerPairingDriverWorkItemInfo)pairingDriver
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDriver);

  return WeakRetained;
}

- (id)maybePairingDriver
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDriver);

  return WeakRetained;
}

@end