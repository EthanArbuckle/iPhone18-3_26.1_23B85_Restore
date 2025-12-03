@interface CATDeviceSessionBackedDevicePairingTerminal
- (CATDeviceSessionBackedDevicePairingTerminal)initWithDeviceSession:(id)session;
- (void)_beginPairing:(id)pairing withCompletion:(id)completion;
- (void)_invalidate;
- (void)_tryPIN:(id)n;
- (void)_verifyPairingAndFetchStableIdentifierWithCompletion:(id)completion;
- (void)addSessionHandlers;
- (void)beginPairing:(id)pairing withCompletion:(id)completion;
- (void)deviceSessionEncounteredError:(id)error;
- (void)deviceSessionInvalidated:(id)invalidated;
- (void)deviceSessionReady;
- (void)fetchStableIdentifier;
- (void)fetchStableIdentifierFinished:(id)finished;
- (void)invalidate;
- (void)invalidateWithError:(id)error;
- (void)pairingCompleteWithError:(id)error;
- (void)removeSessionHandlers;
- (void)sessionHasPromptedForPINWithWaitTime:(unint64_t)time;
- (void)tryPIN:(id)n;
- (void)vendConnectionForCompletion:(id)completion;
- (void)verifyPairing;
- (void)verifyPairingAndFetchStableIdentifierWithCompletion:(id)completion;
- (void)verifyPairingFinished:(BOOL)finished;
@end

@implementation CATDeviceSessionBackedDevicePairingTerminal

- (CATDeviceSessionBackedDevicePairingTerminal)initWithDeviceSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = CATDeviceSessionBackedDevicePairingTerminal;
  v6 = [(CATDeviceSessionBackedDevicePairingTerminal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mDeviceSession, session);
  }

  return v7;
}

- (void)verifyPairingAndFetchStableIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__CATDeviceSessionBackedDevicePairingTerminal_verifyPairingAndFetchStableIdentifierWithCompletion___block_invoke;
  v8[3] = &unk_278DA7760;
  objc_copyWeak(&v10, &location);
  v5 = completionCopy;
  v9 = v5;
  v6 = v8;
  v7 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v13 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __99__CATDeviceSessionBackedDevicePairingTerminal_verifyPairingAndFetchStableIdentifierWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _verifyPairingAndFetchStableIdentifierWithCompletion:*(a1 + 32)];
}

- (void)beginPairing:(id)pairing withCompletion:(id)completion
{
  pairingCopy = pairing;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__CATDeviceSessionBackedDevicePairingTerminal_beginPairing_withCompletion___block_invoke;
  v12[3] = &unk_278DA7788;
  objc_copyWeak(&v15, &location);
  v8 = pairingCopy;
  v13 = v8;
  v9 = completionCopy;
  v14 = v9;
  v10 = v12;
  v11 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v18 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __75__CATDeviceSessionBackedDevicePairingTerminal_beginPairing_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _beginPairing:*(a1 + 32) withCompletion:*(a1 + 40)];
}

- (void)tryPIN:(id)n
{
  nCopy = n;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__CATDeviceSessionBackedDevicePairingTerminal_tryPIN___block_invoke;
  v8[3] = &unk_278DA7530;
  objc_copyWeak(&v10, &location);
  v5 = nCopy;
  v9 = v5;
  v6 = v8;
  v7 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v13 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__CATDeviceSessionBackedDevicePairingTerminal_tryPIN___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _tryPIN:*(a1 + 32)];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__CATDeviceSessionBackedDevicePairingTerminal_invalidate__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__CATDeviceSessionBackedDevicePairingTerminal_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidate];
}

- (void)_verifyPairingAndFetchStableIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v5 = 706;
LABEL_5:
    v6 = CATErrorWithCodeAndUserInfo(v5, 0);
    completionCopy[2](completionCopy, v6, 0);

    goto LABEL_6;
  }

  if (self->mVerifyPairingCompletion)
  {
    v5 = 707;
    goto LABEL_5;
  }

  v7 = MEMORY[0x245D2F510](completionCopy);
  mVerifyPairingCompletion = self->mVerifyPairingCompletion;
  self->mVerifyPairingCompletion = v7;

  [(CATDeviceSessionBackedDevicePairingTerminal *)self addSessionHandlers];
  [(CATSharingDeviceSession *)self->mDeviceSession activate];
LABEL_6:
}

- (void)_beginPairing:(id)pairing withCompletion:(id)completion
{
  pairingCopy = pairing;
  completionCopy = completion;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v9 = 706;
  }

  else if (self->mVerifyPairingCompletion)
  {
    v9 = 707;
  }

  else if (([(CATSharingDeviceSession *)self->mDeviceSession isReady]& 1) != 0)
  {
    if (!self->mBeginPairingCompletion)
    {
      v11 = MEMORY[0x245D2F510](completionCopy);
      mBeginPairingCompletion = self->mBeginPairingCompletion;
      self->mBeginPairingCompletion = v11;

      v13 = MEMORY[0x245D2F510](pairingCopy);
      mPINPromptHandler = self->mPINPromptHandler;
      self->mPINPromptHandler = v13;

      objc_initWeak(&location, self);
      mDeviceSession = self->mDeviceSession;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __76__CATDeviceSessionBackedDevicePairingTerminal__beginPairing_withCompletion___block_invoke;
      v16[3] = &unk_278DA77B0;
      objc_copyWeak(&v17, &location);
      [(CATSharingDeviceSession *)mDeviceSession beginPairWithCompletion:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      goto LABEL_10;
    }

    v9 = 709;
  }

  else
  {
    v9 = 708;
  }

  v10 = CATErrorWithCodeAndUserInfo(v9, 0);
  completionCopy[2](completionCopy, v10, 0);

LABEL_10:
}

void __76__CATDeviceSessionBackedDevicePairingTerminal__beginPairing_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__CATDeviceSessionBackedDevicePairingTerminal__beginPairing_withCompletion___block_invoke_2;
  v7[3] = &unk_278DA75A8;
  v4 = v3;
  v8 = v4;
  objc_copyWeak(&v9, (a1 + 32));
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __76__CATDeviceSessionBackedDevicePairingTerminal__beginPairing_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 failureType])
  {
    v4 = [*(a1 + 32) underlyingError];
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained pairingCompleteWithError:v4];
}

- (void)_tryPIN:(id)n
{
  v12 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v7 = _CATLogGeneral_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_24329F000, v7, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v10, 0xCu);
    }
  }

  else
  {
    [(CATSharingDeviceSession *)self->mDeviceSession tryPairingPIN:nCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v5 = _CATLogGeneral_3();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_24329F000, v5, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(CATDeviceSessionBackedDevicePairingTerminal *)self removeSessionHandlers];
    [(CATSharingDeviceSession *)self->mDeviceSession deactivate];
    v9 = CATErrorWithCodeAndUserInfo(705, 0);
    [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:?];
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)addSessionHandlers
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke;
  v10[3] = &unk_278DA7498;
  objc_copyWeak(&v11, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionInvalidatedHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_3;
  v8[3] = &unk_278DA7498;
  objc_copyWeak(&v9, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionErrorHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_5;
  v6[3] = &unk_278DA7120;
  objc_copyWeak(&v7, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionReadyHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_7;
  v4[3] = &unk_278DA7800;
  objc_copyWeak(&v5, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setPinPromptHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_2;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceSessionInvalidated:*(a1 + 32)];
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_4;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceSessionEncounteredError:*(a1 + 32)];
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_5(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_6;
  v3[3] = &unk_278DA7120;
  objc_copyWeak(&v4, (a1 + 32));
  v1 = v3;
  v2 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v6 = v1;
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deviceSessionReady];
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_8;
  v8[3] = &unk_278DA77D8;
  objc_copyWeak(v9, (a1 + 32));
  v9[1] = a3;
  v6 = v8;
  v7 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v11 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(v9);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sessionHasPromptedForPINWithWaitTime:*(a1 + 40)];
}

- (void)deviceSessionInvalidated:(id)invalidated
{
  v14 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  v8 = _CATLogGeneral_3();
  v9 = v8;
  if (isInvalidated)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_24329F000, v9, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v12, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CATDeviceSessionBackedDevicePairingTerminal *)self deviceSessionInvalidated:v9];
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self removeSessionHandlers];
  if (!invalidatedCopy)
  {
    v9 = CATErrorWithCodeAndUserInfo(1, 0);
    [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:v9];
LABEL_9:

    goto LABEL_10;
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:invalidatedCopy];
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceSessionEncounteredError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  v8 = _CATLogGeneral_3();
  v9 = v8;
  if (isInvalidated)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_24329F000, v9, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v12, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CATDeviceSessionBackedDevicePairingTerminal *)self deviceSessionEncounteredError:errorCopy, v9];
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self removeSessionHandlers];
  if (!errorCopy)
  {
    v9 = CATErrorWithCodeAndUserInfo(1, 0);
    [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:v9];
LABEL_9:

    goto LABEL_10;
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:errorCopy];
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceSessionReady
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  v6 = _CATLogGeneral_3();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (isInvalidated)
  {
    if (v7)
    {
      v8 = NSStringFromSelector(a2);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v11, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = [(CATSharingDeviceSession *)self->mDeviceSession description];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "Device Session %{public}@ ready", &v11, 0xCu);
    }

    [(CATDeviceSessionBackedDevicePairingTerminal *)self verifyPairing];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)verifyPairing
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v5 = _CATLogGeneral_3();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_24329F000, v5, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }
  }

  else
  {
    mDeviceSession = self->mDeviceSession;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__CATDeviceSessionBackedDevicePairingTerminal_verifyPairing__block_invoke;
    v9[3] = &unk_278DA7828;
    v9[4] = self;
    [(CATSharingDeviceSession *)mDeviceSession verifyPairing:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __60__CATDeviceSessionBackedDevicePairingTerminal_verifyPairing__block_invoke(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__CATDeviceSessionBackedDevicePairingTerminal_verifyPairing__block_invoke_2;
  v4[3] = &unk_278DA75D0;
  v4[4] = *(a1 + 32);
  v5 = a2;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v7 = v2;
  dispatch_async(v3, block);
}

- (void)verifyPairingFinished:(BOOL)finished
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v7 = _CATLogGeneral_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_24329F000, v7, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else if (finished)
  {
    v10 = *MEMORY[0x277D85DE8];

    [(CATDeviceSessionBackedDevicePairingTerminal *)self fetchStableIdentifier];
  }

  else
  {
    v14 = MEMORY[0x245D2F510](self->mVerifyPairingCompletion);
    mVerifyPairingCompletion = self->mVerifyPairingCompletion;
    self->mVerifyPairingCompletion = 0;

    v12 = CATErrorWithCodeAndUserInfo(704, 0);
    v14[2](v14, v12, 0);

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)sessionHasPromptedForPINWithWaitTime:(unint64_t)time
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v7 = _CATLogGeneral_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_24329F000, v7, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = MEMORY[0x245D2F510](self->mPINPromptHandler);
    if (v10)
    {
      v12 = v10;
      v10[2](v10, time);
      v10 = v12;
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)fetchStableIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v5 = _CATLogGeneral_3();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_24329F000, v5, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &buf, 0xCu);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__CATDeviceSessionBackedDevicePairingTerminal_fetchStableIdentifier__block_invoke;
    v10[3] = &unk_278DA72D0;
    v10[4] = self;
    v7 = v10;
    v8 = CATGetCatalystQueue();
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v12 = __CATPerformBlock_block_invoke_8;
    v13 = &unk_278DA7208;
    v14 = v7;
    dispatch_async(v8, &buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchStableIdentifierFinished:(id)finished
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v6 = _CATLogGeneral_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v19 = v7;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }

    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = MEMORY[0x245D2F510](self->mVerifyPairingCompletion);
  v9 = MEMORY[0x245D2F510](self->mBeginPairingCompletion);
  if (v17)
  {
    mVerifyPairingCompletion = self->mVerifyPairingCompletion;
    self->mVerifyPairingCompletion = 0;

    selfCopy2 = self;
    v12 = v17;
  }

  else
  {
    if (!v9)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CATDeviceSessionBackedDevicePairingTerminal.m" lineNumber:349 description:{@"Stable identifier was fetched, but no completions were set."}];

      goto LABEL_10;
    }

    mBeginPairingCompletion = self->mBeginPairingCompletion;
    self->mBeginPairingCompletion = 0;

    mPINPromptHandler = self->mPINPromptHandler;
    self->mPINPromptHandler = 0;

    selfCopy2 = self;
    v12 = v9;
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)selfCopy2 vendConnectionForCompletion:v12];
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)pairingCompleteWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v6 = _CATLogGeneral_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v10, 0xCu);
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    [(CATDeviceSessionBackedDevicePairingTerminal *)self fetchStableIdentifier];
  }
}

- (void)vendConnectionForCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  [(CATDeviceSessionBackedDevicePairingTerminal *)self removeSessionHandlers];
  v6 = [CATSharingDeviceSessionConnection alloc];
  mDeviceSession = self->mDeviceSession;
  v8 = objc_opt_new();
  v10 = [(CATSharingDeviceSessionConnection *)v6 initWithDeviceSession:mDeviceSession timerSource:v8];

  completionCopy[2](completionCopy, 0, v10);
  v9 = CATErrorWithCodeAndUserInfo(702, 0);
  [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:v9];
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mVerifyPairingCompletion = self->mVerifyPairingCompletion;
  if (mVerifyPairingCompletion)
  {
    mVerifyPairingCompletion[2](mVerifyPairingCompletion, errorCopy, 0);
  }

  mBeginPairingCompletion = self->mBeginPairingCompletion;
  if (mBeginPairingCompletion)
  {
    mBeginPairingCompletion[2](mBeginPairingCompletion, errorCopy, 0);
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self setInvalidated:1];
}

- (void)removeSessionHandlers
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionReadyHandler:0];
  [(CATSharingDeviceSession *)self->mDeviceSession setPinPromptHandler:0];
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionErrorHandler:0];
  mDeviceSession = self->mDeviceSession;

  [(CATSharingDeviceSession *)mDeviceSession setDeviceSessionInvalidatedHandler:0];
}

- (void)deviceSessionInvalidated:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 8) description];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Device Session %{public}@ invalidated", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deviceSessionEncounteredError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = [a2 verboseDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_24329F000, a3, OS_LOG_TYPE_ERROR, "Device Session %{public}@ encountered error: %{public}@, invalidating", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end