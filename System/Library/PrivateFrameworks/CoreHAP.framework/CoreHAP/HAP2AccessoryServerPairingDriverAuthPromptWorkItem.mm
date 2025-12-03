@interface HAP2AccessoryServerPairingDriverAuthPromptWorkItem
+ (id)promptForType:(unint64_t)type;
- (HAP2AccessoryServerPairingDriverAuthPromptWorkItem)initWithPermissionType:(unint64_t)type;
- (id)description;
- (void)cancelWithError:(id)error;
- (void)runForPairingDriver:(id)driver;
@end

@implementation HAP2AccessoryServerPairingDriverAuthPromptWorkItem

- (id)description
{
  v10.receiver = self;
  v10.super_class = HAP2AccessoryServerPairingDriverAuthPromptWorkItem;
  v3 = [(HAP2AccessoryServerPairingDriverWorkItem *)&v10 description];
  v4 = MEMORY[0x277CCACA8];
  permissionType = [(HAP2AccessoryServerPairingDriverAuthPromptWorkItem *)self permissionType];
  if (permissionType - 1 > 3)
  {
    v6 = @"Unknown Type";
  }

  else
  {
    v6 = off_2786D6C50[permissionType - 1];
  }

  v7 = v6;
  v8 = [v4 stringWithFormat:@"%@ (%@)", v3, v7];

  return v8;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_cancelWithError___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = errorCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_cancelWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCancelError:*(a1 + 32)];
  [WeakRetained finishWithError:*(a1 + 32)];
}

- (void)runForPairingDriver:(id)driver
{
  driverCopy = driver;
  delegate = [driverCopy delegate];
  if (delegate)
  {
    objc_initWeak(&location, self);
    permissionType = [(HAP2AccessoryServerPairingDriverAuthPromptWorkItem *)self permissionType];
    accessoryServer = [driverCopy accessoryServer];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_runForPairingDriver___block_invoke;
    v9[3] = &unk_2786D6D90;
    objc_copyWeak(&v10, &location);
    [delegate pairingDriver:driverCopy doesRequirePermission:permissionType accessory:accessoryServer completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    [(HAP2AccessoryServerPairingDriverWorkItem *)self finishWithError:v8];
  }
}

void __74__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_runForPairingDriver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained operationQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_runForPairingDriver___block_invoke_2;
    v7[3] = &unk_2786D6EB0;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    [v6 addBlock:v7];

    objc_destroyWeak(&v9);
  }
}

void __74__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_runForPairingDriver___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained cancelError];

  if (!v2)
  {
    [WeakRetained finishWithError:*(a1 + 32)];
  }
}

- (HAP2AccessoryServerPairingDriverAuthPromptWorkItem)initWithPermissionType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = HAP2AccessoryServerPairingDriverAuthPromptWorkItem;
  v4 = [(HAP2AccessoryServerPairingDriverAuthPromptWorkItem *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_permissionType = type;
    v6 = v4;
  }

  return v5;
}

+ (id)promptForType:(unint64_t)type
{
  v3 = [[self alloc] initWithPermissionType:type];

  return v3;
}

@end