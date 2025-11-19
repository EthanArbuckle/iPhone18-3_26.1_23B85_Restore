@interface HAP2AccessoryServerPairingDriverAuthPromptWorkItem
+ (id)promptForType:(unint64_t)a3;
- (HAP2AccessoryServerPairingDriverAuthPromptWorkItem)initWithPermissionType:(unint64_t)a3;
- (id)description;
- (void)cancelWithError:(id)a3;
- (void)runForPairingDriver:(id)a3;
@end

@implementation HAP2AccessoryServerPairingDriverAuthPromptWorkItem

- (id)description
{
  v10.receiver = self;
  v10.super_class = HAP2AccessoryServerPairingDriverAuthPromptWorkItem;
  v3 = [(HAP2AccessoryServerPairingDriverWorkItem *)&v10 description];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HAP2AccessoryServerPairingDriverAuthPromptWorkItem *)self permissionType];
  if (v5 - 1 > 3)
  {
    v6 = @"Unknown Type";
  }

  else
  {
    v6 = off_2786D6C50[v5 - 1];
  }

  v7 = v6;
  v8 = [v4 stringWithFormat:@"%@ (%@)", v3, v7];

  return v8;
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_cancelWithError___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_cancelWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCancelError:*(a1 + 32)];
  [WeakRetained finishWithError:*(a1 + 32)];
}

- (void)runForPairingDriver:(id)a3
{
  v4 = a3;
  v5 = [v4 delegate];
  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(HAP2AccessoryServerPairingDriverAuthPromptWorkItem *)self permissionType];
    v7 = [v4 accessoryServer];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__HAP2AccessoryServerPairingDriverAuthPromptWorkItem_runForPairingDriver___block_invoke;
    v9[3] = &unk_2786D6D90;
    objc_copyWeak(&v10, &location);
    [v5 pairingDriver:v4 doesRequirePermission:v6 accessory:v7 completion:v9];

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

- (HAP2AccessoryServerPairingDriverAuthPromptWorkItem)initWithPermissionType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = HAP2AccessoryServerPairingDriverAuthPromptWorkItem;
  v4 = [(HAP2AccessoryServerPairingDriverAuthPromptWorkItem *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_permissionType = a3;
    v6 = v4;
  }

  return v5;
}

+ (id)promptForType:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithPermissionType:a3];

  return v3;
}

@end