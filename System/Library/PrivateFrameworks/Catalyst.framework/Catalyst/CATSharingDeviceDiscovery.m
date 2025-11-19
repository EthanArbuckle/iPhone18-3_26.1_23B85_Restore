@interface CATSharingDeviceDiscovery
- (CATSharingDeviceDiscovery)initWithDiscoveryPrimitives:(id)a3 delegate:(id)a4 delegateOperationQueue:(id)a5;
- (id)pairingTerminalForDevice:(id)a3;
- (void)_activate;
- (void)_invalidateWithError:(id)a3;
- (void)activate;
- (void)addPrimitiveHandlers;
- (void)deviceFound:(id)a3;
- (void)deviceLost:(id)a3;
- (void)invalidate;
- (void)removePrimitiveHandlers;
@end

@implementation CATSharingDeviceDiscovery

- (CATSharingDeviceDiscovery)initWithDiscoveryPrimitives:(id)a3 delegate:(id)a4 delegateOperationQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CATSharingDeviceDiscovery;
  v12 = [(CATSharingDeviceDiscovery *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mDiscoveryPrimitives, a3);
    objc_storeWeak(&v13->mDelegate, v10);
    objc_storeStrong(&v13->mDelegationQueue, a5);
    nearbyDevices = v13->_nearbyDevices;
    v13->_nearbyDevices = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (void)activate
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__CATSharingDeviceDiscovery_activate__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_10;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__CATSharingDeviceDiscovery_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activate];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__CATSharingDeviceDiscovery_invalidate__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_10;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__CATSharingDeviceDiscovery_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = CATErrorWithCodeAndUserInfo(701, 0);
  [WeakRetained _invalidateWithError:v1];
}

- (id)pairingTerminalForDevice:(id)a3
{
  v5 = a3;
  v6 = [(CATSharingDeviceDiscovery *)self nearbyDevices];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    [(CATSharingDeviceDiscovery *)a2 pairingTerminalForDevice:?];
  }

  v8 = [(CATSharingDiscoveryPrimitives *)self->mDiscoveryPrimitives sessionForDevice:v5];
  v9 = [[CATDeviceSessionBackedDevicePairingTerminal alloc] initWithDeviceSession:v8];

  return v9;
}

- (void)_activate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATSharingDeviceDiscovery.m" lineNumber:96 description:@"Terminal must not be invalidated"];
}

void __38__CATSharingDeviceDiscovery__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3)
    {
      [WeakRetained addPrimitiveHandlers];
    }

    v6 = v5[3];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__CATSharingDeviceDiscovery__activate__block_invoke_2;
    v7[3] = &unk_278DA7470;
    v7[4] = v5;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __38__CATSharingDeviceDiscovery__activate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained deviceDiscovery:*(a1 + 32) didActivateWithError:*(a1 + 40)];
}

- (void)_invalidateWithError:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  v7 = _CATLogGeneral_4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_24329F000, v7, OS_LOG_TYPE_INFO, "%{public}@ %{public}@", buf, 0x16u);
  }

  [(CATSharingDeviceDiscovery *)self setInvalidated:1];
  [(CATSharingDeviceDiscovery *)self removePrimitiveHandlers];
  [(CATSharingDiscoveryPrimitives *)self->mDiscoveryPrimitives deactivate];
  v19 = *MEMORY[0x277CCA7E8];
  v20 = v5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v12 = CATErrorWithCodeAndUserInfo(700, v11);

  objc_initWeak(buf, self);
  mDelegationQueue = self->mDelegationQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__CATSharingDeviceDiscovery__invalidateWithError___block_invoke;
  v16[3] = &unk_278DA7530;
  objc_copyWeak(&v18, buf);
  v14 = v12;
  v17 = v14;
  [(CATOperationQueue *)mDelegationQueue addOperationWithBlock:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __50__CATSharingDeviceDiscovery__invalidateWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 deviceDiscovery:v4 hasInvalidated:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)addPrimitiveHandlers
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke;
  v7[3] = &unk_278DA7498;
  objc_copyWeak(&v8, &location);
  [(CATSharingDiscoveryPrimitives *)self->mDiscoveryPrimitives setInvalidationHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_3;
  v5[3] = &unk_278DA78A0;
  objc_copyWeak(&v6, &location);
  [(CATSharingDiscoveryPrimitives *)self->mDiscoveryPrimitives setDeviceFoundHandler:v5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_5;
  v3[3] = &unk_278DA78A0;
  objc_copyWeak(&v4, &location);
  [(CATSharingDiscoveryPrimitives *)self->mDiscoveryPrimitives setDeviceLostHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_2;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_10;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateWithError:*(a1 + 32)];
}

void __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_4;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_10;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceFound:*(a1 + 32)];
}

void __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_6;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_10;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __49__CATSharingDeviceDiscovery_addPrimitiveHandlers__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceLost:*(a1 + 32)];
}

- (void)deviceFound:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = [(CATSharingDeviceDiscovery *)self nearbyDevices];
  v8 = [v6 mutableCopy];

  [v8 addObject:v4];
  v7 = [v8 copy];
  [(CATSharingDeviceDiscovery *)self setNearbyDevices:v7];
}

- (void)deviceLost:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = [(CATSharingDeviceDiscovery *)self nearbyDevices];
  v7 = [v6 mutableCopy];

  [v7 removeObject:v4];
  v8 = [v7 copy];
  [(CATSharingDeviceDiscovery *)self setNearbyDevices:v8];

  objc_initWeak(&location, self);
  mDelegationQueue = self->mDelegationQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__CATSharingDeviceDiscovery_deviceLost___block_invoke;
  v11[3] = &unk_278DA7530;
  objc_copyWeak(&v13, &location);
  v10 = v4;
  v12 = v10;
  [(CATOperationQueue *)mDelegationQueue addOperationWithBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __40__CATSharingDeviceDiscovery_deviceLost___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 deviceDiscovery:v4 didLoseDevice:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)removePrimitiveHandlers
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATSharingDiscoveryPrimitives *)self->mDiscoveryPrimitives setInvalidationHandler:0];
  [(CATSharingDiscoveryPrimitives *)self->mDiscoveryPrimitives setDeviceFoundHandler:0];
  mDiscoveryPrimitives = self->mDiscoveryPrimitives;

  [(CATSharingDiscoveryPrimitives *)mDiscoveryPrimitives setDeviceLostHandler:0];
}

- (void)pairingTerminalForDevice:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATSharingDeviceDiscovery.m" lineNumber:82 description:@"Device is not present in nearbyDevices"];
}

@end