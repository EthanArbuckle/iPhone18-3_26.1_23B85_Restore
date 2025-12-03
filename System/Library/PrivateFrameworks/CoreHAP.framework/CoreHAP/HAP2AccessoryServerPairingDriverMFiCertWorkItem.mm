@interface HAP2AccessoryServerPairingDriverMFiCertWorkItem
+ (id)checkCertificate;
- (void)cancelWithError:(id)error;
- (void)runForPairingDriver:(id)driver;
@end

@implementation HAP2AccessoryServerPairingDriverMFiCertWorkItem

+ (id)checkCertificate
{
  v2 = objc_opt_new();

  return v2;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HAP2AccessoryServerPairingDriverMFiCertWorkItem_cancelWithError___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = errorCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__HAP2AccessoryServerPairingDriverMFiCertWorkItem_cancelWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setCancelError:*(a1 + 32)];
    [v3 finishWithError:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)runForPairingDriver:(id)driver
{
  driverCopy = driver;
  pairingSession = [driverCopy pairingSession];
  getCertificate = [pairingSession getCertificate];

  delegate = [driverCopy delegate];
  if (delegate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentActivity = [MEMORY[0x277D0F770] currentActivity];
    objc_initWeak(&location, self);
    accessoryServer = [driverCopy accessoryServer];
    model = [accessoryServer model];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HAP2AccessoryServerPairingDriverMFiCertWorkItem_runForPairingDriver___block_invoke;
    v14[3] = &unk_2786D3230;
    objc_copyWeak(&v18, &location);
    v12 = currentActivity;
    v15 = v12;
    v16 = driverCopy;
    v13 = date;
    v17 = v13;
    [delegate pairingDriver:v16 validatePairingCert:getCertificate model:model completion:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    [(HAP2AccessoryServerPairingDriverWorkItem *)self finishWithError:v13];
  }
}

void __71__HAP2AccessoryServerPairingDriverMFiCertWorkItem_runForPairingDriver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = [v5 accessoryServer];
    [v7 model];

    v8 = MEMORY[0x277CCABB0];
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSinceDate:*(a1 + 48)];
    v10 = [v8 numberWithDouble:?];

    [v3 domain];
    [v3 code];

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __71__HAP2AccessoryServerPairingDriverMFiCertWorkItem_runForPairingDriver___block_invoke_2;
    v16 = &unk_2786D7050;
    v17 = WeakRetained;
    v18 = v3;
    v11 = MEMORY[0x231885210](&v13);
    v12 = [WeakRetained operationQueue];
    [v12 addBlock:v11];
  }
}

void __71__HAP2AccessoryServerPairingDriverMFiCertWorkItem_runForPairingDriver___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelError];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 finishWithError:v4];
  }
}

@end