@interface HAP2AccessoryServerPairingDriverTransportControlWorkItem
+ (id)closeConnection;
+ (id)openConnection;
- (HAP2AccessoryServerPairingDriverTransportControlWorkItem)initWithConnect:(BOOL)a3;
- (void)_finishWithError:(id)a3;
- (void)cancelWithError:(id)a3;
- (void)runForPairingDriver:(id)a3;
@end

@implementation HAP2AccessoryServerPairingDriverTransportControlWorkItem

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HAP2AccessoryServerPairingDriverTransportControlWorkItem_cancelWithError___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __76__HAP2AccessoryServerPairingDriverTransportControlWorkItem_cancelWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained cancelError];

  if (!v2)
  {
    [WeakRetained setCancelError:*(a1 + 32)];
    [WeakRetained finishWithError:*(a1 + 32)];
  }
}

- (void)_finishWithError:(id)a3
{
  v6 = a3;
  v4 = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [v4 assertCurrentQueue];

  v5 = [(HAP2AccessoryServerPairingDriverTransportControlWorkItem *)self cancelError];

  if (!v5)
  {
    [(HAP2AccessoryServerPairingDriverWorkItem *)self finishWithError:v6];
  }
}

- (void)runForPairingDriver:(id)a3
{
  v4 = a3;
  v5 = [v4 transport];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __80__HAP2AccessoryServerPairingDriverTransportControlWorkItem_runForPairingDriver___block_invoke;
  v10 = &unk_2786D6C78;
  objc_copyWeak(&v11, &location);
  v6 = MEMORY[0x231885210](&v7);
  if ([(HAP2AccessoryServerPairingDriverTransportControlWorkItem *)self connect:v7])
  {
    [v5 openWithCompletion:v6];
  }

  else
  {
    [v5 closeWithError:0 completion:v6];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __80__HAP2AccessoryServerPairingDriverTransportControlWorkItem_runForPairingDriver___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained operationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HAP2AccessoryServerPairingDriverTransportControlWorkItem_runForPairingDriver___block_invoke_2;
  v11[3] = &unk_2786D6EB0;
  objc_copyWeak(&v13, (a1 + 32));
  v10 = v7;
  v12 = v10;
  [v9 addBlock:v11];

  objc_destroyWeak(&v13);
}

void __80__HAP2AccessoryServerPairingDriverTransportControlWorkItem_runForPairingDriver___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishWithError:*(a1 + 32)];
}

- (HAP2AccessoryServerPairingDriverTransportControlWorkItem)initWithConnect:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HAP2AccessoryServerPairingDriverTransportControlWorkItem;
  result = [(HAP2AccessoryServerPairingDriverTransportControlWorkItem *)&v5 init];
  if (result)
  {
    result->_connect = a3;
  }

  return result;
}

+ (id)closeConnection
{
  v2 = [[a1 alloc] initWithConnect:0];

  return v2;
}

+ (id)openConnection
{
  v2 = [[a1 alloc] initWithConnect:1];

  return v2;
}

@end