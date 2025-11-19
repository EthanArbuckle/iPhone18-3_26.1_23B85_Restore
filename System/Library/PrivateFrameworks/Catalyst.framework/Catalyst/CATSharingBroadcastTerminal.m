@interface CATSharingBroadcastTerminal
- (CATSharingBroadcastTerminal)initWithBroadcastPrimitives:(id)a3 delegate:(id)a4 delegationQueue:(id)a5;
- (void)_activate;
- (void)_invalidateWithError:(id)a3 removePrimitiveHandlers:(BOOL)a4 deactivatePrimitives:(BOOL)a5;
- (void)activate;
- (void)addPrimitiveHandlers;
- (void)invalidate;
- (void)removePrimitiveHandlers;
- (void)sessionHasPaired;
- (void)sessionNeedsToDisplayPin:(id)a3;
@end

@implementation CATSharingBroadcastTerminal

- (CATSharingBroadcastTerminal)initWithBroadcastPrimitives:(id)a3 delegate:(id)a4 delegationQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CATSharingBroadcastTerminal;
  v12 = [(CATSharingBroadcastTerminal *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mBroadcastPrimitive, a3);
    objc_storeWeak(&v13->mDelegate, v10);
    objc_storeStrong(&v13->mDelegationQueue, a5);
  }

  return v13;
}

- (void)activate
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__CATSharingBroadcastTerminal_activate__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_18;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__CATSharingBroadcastTerminal_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activate];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__CATSharingBroadcastTerminal_invalidate__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_18;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__CATSharingBroadcastTerminal_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = CATErrorWithCodeAndUserInfo(701, 0);
  [WeakRetained _invalidateWithError:v1 removePrimitiveHandlers:1 deactivatePrimitives:1];
}

- (void)_activate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATSharingBroadcastTerminal.m" lineNumber:91 description:@"Terminal must not be invalidated"];
}

void __40__CATSharingBroadcastTerminal__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__CATSharingBroadcastTerminal__activate__block_invoke_2;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_18;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __40__CATSharingBroadcastTerminal__activate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      [WeakRetained setBroadcasting:1];
      [v3 addPrimitiveHandlers];
      v4 = *(a1 + 32);
    }

    v5 = v3[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__CATSharingBroadcastTerminal__activate__block_invoke_3;
    v6[3] = &unk_278DA7470;
    v6[4] = v3;
    v7 = v4;
    [v5 addOperationWithBlock:v6];
  }
}

void __40__CATSharingBroadcastTerminal__activate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained broadcastTerminal:*(a1 + 32) didActivateWithError:*(a1 + 40)];
}

- (void)_invalidateWithError:(id)a3 removePrimitiveHandlers:(BOOL)a4 deactivatePrimitives:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = CATGetCatalystQueue();
  CATAssertIsQueue(v9);

  if (!self->mInvalidated)
  {
    self->mInvalidated = 1;
    [(CATSharingBroadcastTerminal *)self setBroadcasting:0];
    if (v6)
    {
      [(CATSharingBroadcastTerminal *)self removePrimitiveHandlers];
    }

    if (v5)
    {
      [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitive deactivate];
    }

    mBroadcastPrimitive = self->mBroadcastPrimitive;
    self->mBroadcastPrimitive = 0;

    objc_initWeak(&location, self);
    if (self->mIsDisplayingPIN)
    {
      mDelegationQueue = self->mDelegationQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __97__CATSharingBroadcastTerminal__invalidateWithError_removePrimitiveHandlers_deactivatePrimitives___block_invoke;
      v16[3] = &unk_278DA7120;
      objc_copyWeak(&v17, &location);
      [(CATOperationQueue *)mDelegationQueue addOperationWithBlock:v16];
      objc_destroyWeak(&v17);
    }

    v12 = self->mDelegationQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __97__CATSharingBroadcastTerminal__invalidateWithError_removePrimitiveHandlers_deactivatePrimitives___block_invoke_2;
    v13[3] = &unk_278DA75A8;
    v14 = v8;
    objc_copyWeak(&v15, &location);
    [(CATOperationQueue *)v12 addOperationWithBlock:v13];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }
}

void __97__CATSharingBroadcastTerminal__invalidateWithError_removePrimitiveHandlers_deactivatePrimitives___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 2);
    [v2 broadcastTerminalNeedsToDismissPin:v3];

    WeakRetained = v3;
  }
}

void __97__CATSharingBroadcastTerminal__invalidateWithError_removePrimitiveHandlers_deactivatePrimitives___block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v4 = CATErrorWithCodeAndUserInfo(700, v3);
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(WeakRetained + 2);
    [v7 broadcastTerminal:v6 stoppedWithError:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addPrimitiveHandlers
{
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke;
  v9[3] = &unk_278DA7498;
  objc_copyWeak(&v10, &location);
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitive setInvalidationHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_3;
  v7[3] = &unk_278DA7BC0;
  objc_copyWeak(&v8, &location);
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitive setShowPinHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_5;
  v5[3] = &unk_278DA7120;
  objc_copyWeak(&v6, &location);
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitive setDismissPinHandler:v5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_7;
  v3[3] = &unk_278DA7120;
  objc_copyWeak(&v4, &location);
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitive setSessionPairedHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_2;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_18;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateWithError:*(a1 + 32) removePrimitiveHandlers:1 deactivatePrimitives:1];
}

void __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_4;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_18;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sessionNeedsToDisplayPin:*(a1 + 32)];
}

void __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 3);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_6;
    v4[3] = &unk_278DA72D0;
    v4[4] = v2;
    [v3 addOperationWithBlock:v4];
  }
}

void __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained broadcastTerminalNeedsToDismissPin:*(a1 + 32)];
}

void __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_7(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_8;
  v3[3] = &unk_278DA7120;
  objc_copyWeak(&v4, (a1 + 32));
  v1 = v3;
  v2 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_18;
  block[3] = &unk_278DA7208;
  v6 = v1;
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __51__CATSharingBroadcastTerminal_addPrimitiveHandlers__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sessionHasPaired];
}

- (void)removePrimitiveHandlers
{
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitive setInvalidationHandler:0];
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitive setShowPinHandler:0];
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitive setDismissPinHandler:0];
  mBroadcastPrimitive = self->mBroadcastPrimitive;

  [(CATSharingBroadcastPrimitives *)mBroadcastPrimitive setSessionPairedHandler:0];
}

- (void)sessionNeedsToDisplayPin:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if (!self->mInvalidated)
  {
    self->mIsDisplayingPIN = 1;
    objc_initWeak(&location, self);
    mDelegationQueue = self->mDelegationQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__CATSharingBroadcastTerminal_sessionNeedsToDisplayPin___block_invoke;
    v7[3] = &unk_278DA7530;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [(CATOperationQueue *)mDelegationQueue addOperationWithBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __56__CATSharingBroadcastTerminal_sessionNeedsToDisplayPin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 broadcastTerminal:v4 needsToDisplayPin:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)sessionHasPaired
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if (!self->mInvalidated)
  {
    [(CATSharingBroadcastTerminal *)self removePrimitiveHandlers];
    v4 = [CATSharingBroadcastConnection alloc];
    mBroadcastPrimitive = self->mBroadcastPrimitive;
    v6 = objc_opt_new();
    v7 = [(CATSharingBroadcastConnection *)v4 initWithBroadcastPrimitives:mBroadcastPrimitive timerSource:v6];

    objc_initWeak(&location, self);
    mDelegationQueue = self->mDelegationQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__CATSharingBroadcastTerminal_sessionHasPaired__block_invoke;
    v11[3] = &unk_278DA7530;
    objc_copyWeak(&v13, &location);
    v9 = v7;
    v12 = v9;
    [(CATOperationQueue *)mDelegationQueue addOperationWithBlock:v11];
    v10 = CATErrorWithCodeAndUserInfo(702, 0);
    [(CATSharingBroadcastTerminal *)self _invalidateWithError:v10 removePrimitiveHandlers:0 deactivatePrimitives:0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __47__CATSharingBroadcastTerminal_sessionHasPaired__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 broadcastTerminal:v4 hasPairedDeviceConnection:*(a1 + 32)];

    WeakRetained = v4;
  }
}

@end