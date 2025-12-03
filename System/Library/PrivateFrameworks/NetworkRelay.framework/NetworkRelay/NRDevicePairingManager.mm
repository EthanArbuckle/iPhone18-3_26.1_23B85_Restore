@interface NRDevicePairingManager
+ (uint64_t)copyErrorForCode:(uint64_t)code;
+ (uint64_t)copyErrorForCode:(void *)code userInfo:;
+ (uint64_t)copyXPCError;
+ (void)unpairDevice:(id)device queue:(id)queue withCompletion:(id)completion;
+ (void)unpairDevice:(id)device withCompletion:(id)completion;
- (NRDevicePairingManager)initWithIdentifier:(id)identifier pairingCriteria:(id)criteria metadata:(id)metadata queue:(id)queue;
- (NSString)fullDescription;
- (id)description;
- (void)activateWithCompletion:(id)completion;
- (void)callCompletionBlock:(void *)block withError:;
- (void)cancelDiscovery;
- (void)cancelPairing;
- (void)dealloc;
- (void)getDataForAuthMethod:(unint64_t)method withCompletion:(id)completion;
- (void)invalidate;
- (void)invalidateWithError:(void *)error;
- (void)pairingFailedWithError:(void *)error;
- (void)requestAuthMethodForDevice:(id)device authMethod:(unint64_t)method withCompletion:(id)completion;
- (void)setInternalManagerState:(void *)state;
- (void)startDiscoveryWithCompletion:(id)completion;
- (void)startPairingDevice:(id)device withCompletion:(id)completion resultBlock:(id)block;
@end

@implementation NRDevicePairingManager

- (void)invalidate
{
  selfCopy = self;
  if (self)
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    internalManagerState = selfCopy2->_internalManagerState;
    objc_sync_exit(selfCopy2);

    if (internalManagerState == 10)
    {
      return;
    }

    [(NRDevicePairingManager *)selfCopy2 setInternalManagerState:?];
    self = selfCopy2->_operationQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NRDevicePairingManager_invalidate__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

- (void)setInternalManagerState:(void *)state
{
  if (!state)
  {
    return;
  }

  stateCopy = state;
  objc_sync_enter(stateCopy);
  v3 = stateCopy[1];
  if (v3 == a2)
  {
    objc_sync_exit(stateCopy);
    v4 = stateCopy;
LABEL_9:

    return;
  }

  stateCopy[1] = a2;
  objc_sync_exit(stateCopy);

  if (nrCopyLogObj_onceToken_1533 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_DEFAULT))
  {
    v5 = nrCopyLogObj_sNRLogObj_1535;
    v11 = NRCreateStringFromInternalManagerState(v3);
    v12 = NRCreateStringFromInternalManagerState(a2);
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: State change: %@ -> %@", v6, v7, v8, v9, v10, "");

    v4 = v11;
    goto LABEL_9;
  }
}

void __36__NRDevicePairingManager_invalidate__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NRDevicePairingManager_invalidate__block_invoke_2;
  v5[3] = &unk_27996B1A8;
  objc_copyWeak(&v6, &location);
  [(NRDevicePairingManagerMux *)v3 unregisterPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __36__NRDevicePairingManager_invalidate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[9];
    WeakRetained[9] = 0;

    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Unregistering pairing manager failed: %@", v7, v8, v9, v10, v11, "");
      }
    }

    v12 = v5[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__NRDevicePairingManager_invalidate__block_invoke_3;
    block[3] = &unk_27996B248;
    v14 = v5;
    v15 = v3;
    dispatch_async(v12, block);
  }
}

void __36__NRDevicePairingManager_invalidate__block_invoke_3(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setManagerState:5];
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, v2, 80, 1))
  {
    v4 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Pairing manager was invalidated";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v4 initWithDomain:@"NRDevicePairingErrorDomain" code:-3002 userInfo:v5];

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 80, 1);
    }

    (*(Property + 2))(Property, v6, 0);
  }

  v9 = [*(a1 + 32) invalidationHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) invalidationHandler];
    v10[2](v10, *(a1 + 40));
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelPairing
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    internalManagerState = selfCopy->_internalManagerState;
    objc_sync_exit(selfCopy);

    if (internalManagerState == 8)
    {
      [(NRDevicePairingManager *)selfCopy setInternalManagerState:?];
      operationQueue = selfCopy->_operationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__NRDevicePairingManager_cancelPairing__block_invoke;
      block[3] = &unk_27996B180;
      block[4] = selfCopy;
      dispatch_async(operationQueue, block);
    }
  }
}

void __39__NRDevicePairingManager_cancelPairing__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__NRDevicePairingManager_cancelPairing__block_invoke_2;
  v5[3] = &unk_27996B1A8;
  objc_copyWeak(&v6, &location);
  [(NRDevicePairingManagerMux *)v3 stopPairingForPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__NRDevicePairingManager_cancelPairing__block_invoke_2(uint64_t a1, void *a2)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (!WeakRetained)
  {
    v13 = v3;
    goto LABEL_25;
  }

  if (v3)
  {
    if (nrCopyLogObj_onceToken_1533 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Stopping pairing failed: %@", v5, v6, v7, v8, v9, "");
    }

    v12 = 0;
    v13 = v3;
  }

  else
  {
    v14 = WeakRetained;
    objc_sync_enter(v14);
    v15 = v14[1];
    objc_sync_exit(v14);

    if (v15 == 9)
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v34 = *MEMORY[0x277CCA450];
      v35 = @"Pairing operation was cancelled";
      v12 = 1;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v13 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-3002 userInfo:v22];
    }

    else
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while stopping pairing", v16, v17, v18, v19, v20, "");
      }

      objc_opt_self();
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v36 = *MEMORY[0x277CCA450];
      v37[0] = @"Manager is in invalid state for this operation";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v13 = [v23 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v24];

      v12 = 0;
    }
  }

  v25 = objc_getProperty(v10, v11, 80, 1);
  objc_setProperty_atomic_copy(v10, v26, 0, 80);
  if (v12)
  {
    [(NRDevicePairingManager *)v10 setInternalManagerState:?];
LABEL_21:
    v27 = v10[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__NRDevicePairingManager_cancelPairing__block_invoke_3;
    block[3] = &unk_27996B108;
    v33 = v12;
    v30 = v10;
    v32 = v25;
    v31 = v13;
    dispatch_async(v27, block);

    goto LABEL_22;
  }

  if (v25)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v3)
  {
    [(NRDevicePairingManager *)v10 invalidateWithError:v13];
  }

LABEL_25:
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __39__NRDevicePairingManager_cancelPairing__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setManagerState:9];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)invalidateWithError:(void *)error
{
  v3 = a2;
  if (error)
  {
    errorCopy = error;
    objc_sync_enter(errorCopy);
    v5 = errorCopy[1];
    objc_sync_exit(errorCopy);

    if (v5 != 10)
    {
      [(NRDevicePairingManager *)errorCopy setInternalManagerState:?];
      v6 = errorCopy[9];
      errorCopy[9] = 0;

      v7 = errorCopy[7];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __46__NRDevicePairingManager_invalidateWithError___block_invoke;
      v8[3] = &unk_27996B248;
      v8[4] = errorCopy;
      v9 = v3;
      dispatch_async(v7, v8);
    }
  }
}

void __46__NRDevicePairingManager_invalidateWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setManagerState:5];
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, v2, 80, 1);
    v3 = *(a1 + 32);
    if (Property)
    {
      if (v3)
      {
        v3 = objc_getProperty(v3, v4, 80, 1);
      }

      (*(v3 + 2))(v3, *(a1 + 40), 0);
      v3 = *(a1 + 32);
    }
  }

  v6 = [v3 invalidationHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) invalidationHandler];
    v7[2](v7, *(a1 + 40));
  }
}

- (void)startPairingDevice:(id)device withCompletion:(id)completion resultBlock:(id)block
{
  v41[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  blockCopy = block;
  v11 = blockCopy;
  if (!completionCopy)
  {
    v20 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v20;
      v23 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);

      if (!v23)
      {
        goto LABEL_7;
      }
    }

    v24 = nrCopyLogObj_1529();
    _NRLogWithArgs(v24, 17, "%s called with null completionBlock", v25, v26, v27, v28, v29, "[NRDevicePairingManager startPairingDevice:withCompletion:resultBlock:]");
LABEL_16:

    goto LABEL_7;
  }

  if (!blockCopy)
  {
    v21 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v30 = v21;
      v31 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);

      if (!v31)
      {
        goto LABEL_7;
      }
    }

    v24 = nrCopyLogObj_1529();
    _NRLogWithArgs(v24, 17, "%s called with null resultBlock", v32, v33, v34, v35, v36, "[NRDevicePairingManager startPairingDevice:withCompletion:resultBlock:]");
    goto LABEL_16;
  }

  if (self && (v12 = self, objc_sync_enter(v12), internalManagerState = v12->_internalManagerState, objc_sync_exit(v12), v12, internalManagerState - 7 > 0xFFFFFFFFFFFFFFFBLL))
  {
    [(NRDevicePairingManager *)v12 setInternalManagerState:?];
    objc_setProperty_atomic_copy(v12, v17, v11, 80);
    operationQueue = v12->_operationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke;
    block[3] = &unk_27996B298;
    block[4] = v12;
    v38 = deviceCopy;
    v39 = completionCopy;
    dispatch_async(operationQueue, block);
  }

  else
  {
    objc_opt_self();
    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"Manager is in invalid state for this operation";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v16 = [v14 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v15];

    [(NRDevicePairingManager *)self callCompletionBlock:completionCopy withError:v16];
  }

LABEL_7:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)callCompletionBlock:(void *)block withError:
{
  v5 = a2;
  blockCopy = block;
  if (self)
  {
    v7 = *(self + 56);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__NRDevicePairingManager_callCompletionBlock_withError___block_invoke;
    v8[3] = &unk_27996B158;
    v10 = v5;
    v9 = blockCopy;
    dispatch_async(v7, v8);
  }
}

void __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke_2;
  v6[3] = &unk_27996B220;
  objc_copyWeak(&v8, &location);
  v7 = *(a1 + 48);
  [(NRDevicePairingManagerMux *)v3 startPairingForPairingManager:v4 pairingTarget:v5 withCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Starting pairing failed: %@", v7, v8, v9, v10, v11, "");
      }

      objc_setProperty_atomic_copy(v12, v13, 0, 80);
      if ((a3 & 1) == 0)
      {
        [(NRDevicePairingManager *)v12 setInternalManagerState:?];
      }
    }

    else
    {
      v14 = WeakRetained;
      objc_sync_enter(v14);
      v15 = v14[1];
      objc_sync_exit(v14);

      if (v15 == 7)
      {
        [(NRDevicePairingManager *)v14 setInternalManagerState:?];
        v5 = 0;
      }

      else
      {
        if (nrCopyLogObj_onceToken_1533 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while starting pairing", v16, v17, v18, v19, v20, "");
        }

        objc_opt_self();
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v31 = *MEMORY[0x277CCA450];
        v32[0] = @"Manager is in invalid state for this operation";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v5 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v22];

        objc_setProperty_atomic_copy(v14, v23, 0, 80);
      }
    }

    v24 = v12[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke_3;
    block[3] = &unk_27996B298;
    v5 = v5;
    v28 = v5;
    v25 = v12;
    v29 = v25;
    v30 = *(a1 + 32);
    dispatch_async(v24, block);
    if (a3)
    {
      [(NRDevicePairingManager *)v25 invalidateWithError:v5];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke_3(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) setManagerState:4];
    v2 = *(a1 + 32);
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)getDataForAuthMethod:(unint64_t)method withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (!completionCopy)
  {
    v7 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);

      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = nrCopyLogObj_1529();
    _NRLogWithArgs(v10, 17, "%s called with null completionBlock", v11, v12, v13, v14, v15, "[NRDevicePairingManager getDataForAuthMethod:withCompletion:]");

    goto LABEL_5;
  }

  if (self)
  {
    self = self->_callbackQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NRDevicePairingManager_getDataForAuthMethod_withCompletion___block_invoke;
  block[3] = &unk_27996B870;
  v17 = completionCopy;
  dispatch_async(&self->super, block);

LABEL_5:
}

void __62__NRDevicePairingManager_getDataForAuthMethod_withCompletion___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  objc_opt_self();
  v2 = objc_alloc(MEMORY[0x277CCA9B8]);
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Unimplemented method";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 initWithDomain:@"NRDevicePairingErrorDomain" code:-9999 userInfo:v3];

  (*(v1 + 16))(v1, v4, 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestAuthMethodForDevice:(id)device authMethod:(unint64_t)method withCompletion:(id)completion
{
  v40[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v10 = completionCopy;
  if (!deviceCopy)
  {
    v18 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = v18;
      v21 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

      if (!v21)
      {
        goto LABEL_7;
      }
    }

    v22 = nrCopyLogObj_1529();
    _NRLogWithArgs(v22, 17, "%s called with null device", v23, v24, v25, v26, v27, "[NRDevicePairingManager requestAuthMethodForDevice:authMethod:withCompletion:]");
LABEL_16:

    goto LABEL_7;
  }

  if (!completionCopy)
  {
    v19 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = v19;
      v29 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (!v29)
      {
        goto LABEL_7;
      }
    }

    v22 = nrCopyLogObj_1529();
    _NRLogWithArgs(v22, 17, "%s called with null completionBlock", v30, v31, v32, v33, v34, "[NRDevicePairingManager requestAuthMethodForDevice:authMethod:withCompletion:]");
    goto LABEL_16;
  }

  if (self && (v11 = self, objc_sync_enter(v11), internalManagerState = v11->_internalManagerState, objc_sync_exit(v11), v11, internalManagerState - 7 > 0xFFFFFFFFFFFFFFFBLL))
  {
    operationQueue = v11->_operationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke;
    block[3] = &unk_27996B1F8;
    block[4] = v11;
    v36 = deviceCopy;
    methodCopy = method;
    v37 = v10;
    dispatch_async(operationQueue, block);
  }

  else
  {
    objc_opt_self();
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"Manager is in invalid state for this operation";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v15 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v14];

    [(NRDevicePairingManager *)self callCompletionBlock:v10 withError:v15];
  }

LABEL_7:

  v17 = *MEMORY[0x277D85DE8];
}

void __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke_2;
  v7[3] = &unk_27996B1D0;
  objc_copyWeak(v10, &location);
  v10[1] = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [(NRDevicePairingManagerMux *)v3 sendAuthMethodRequestForDevice:v5 authMethod:v4 pairingManager:v6 withCompletion:v7];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v11 = *(a1 + 56);
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Requesting auth method %zu for %@ failed: %@", v4, v5, v6, v7, v8, "");
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 56);
        v14 = *(a1 + 32);
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 1, "%s%.30s:%-4d %@: Requesting auth method %zu for %@ succeeded", v4, v5, v6, v7, v8, "");
      }
    }

    v10 = WeakRetained[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke_3;
    block[3] = &unk_27996B158;
    v17 = *(a1 + 40);
    v16 = v3;
    dispatch_async(v10, block);
  }
}

- (void)cancelDiscovery
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    internalManagerState = selfCopy->_internalManagerState;
    objc_sync_exit(selfCopy);

    if (internalManagerState == 5)
    {
      [(NRDevicePairingManager *)selfCopy setInternalManagerState:?];
      operationQueue = selfCopy->_operationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__NRDevicePairingManager_cancelDiscovery__block_invoke;
      block[3] = &unk_27996B180;
      block[4] = selfCopy;
      dispatch_async(operationQueue, block);
    }
  }
}

void __41__NRDevicePairingManager_cancelDiscovery__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__NRDevicePairingManager_cancelDiscovery__block_invoke_2;
  v5[3] = &unk_27996B1A8;
  objc_copyWeak(&v6, &location);
  [(NRDevicePairingManagerMux *)v3 stopDiscoveryForPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __41__NRDevicePairingManager_cancelDiscovery__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Stopping pairing discovery failed: %@", v5, v6, v7, v8, v9, "");
      }

      [(NRDevicePairingManager *)v10 invalidateWithError:v3];
    }

    else
    {
      v11 = WeakRetained;
      objc_sync_enter(v11);
      v12 = v11[1];
      objc_sync_exit(v11);

      if (v12 == 6)
      {
        [(NRDevicePairingManager *)v11 setInternalManagerState:?];
        v18 = v11[7];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__NRDevicePairingManager_cancelDiscovery__block_invoke_3;
        block[3] = &unk_27996B180;
        v20 = v11;
        dispatch_async(v18, block);
      }

      else
      {
        if (nrCopyLogObj_onceToken_1533 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while stopping pairing discovery", v13, v14, v15, v16, v17, "");
        }
      }
    }
  }
}

- (void)startDiscoveryWithCompletion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v12 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v15 = nrCopyLogObj_1529();
    _NRLogWithArgs(v15, 17, "%s called with null completionBlock", v16, v17, v18, v19, v20, "[NRDevicePairingManager startDiscoveryWithCompletion:]");

    goto LABEL_6;
  }

  if (self && (v5 = self, objc_sync_enter(v5), internalManagerState = v5->_internalManagerState, objc_sync_exit(v5), v5, internalManagerState == 3))
  {
    [(NRDevicePairingManager *)v5 setInternalManagerState:?];
    operationQueue = v5->_operationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke;
    block[3] = &unk_27996B158;
    block[4] = v5;
    v22 = completionCopy;
    dispatch_async(operationQueue, block);
  }

  else
  {
    objc_opt_self();
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Manager is in invalid state for this operation";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v10 = [v8 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v9];

    [(NRDevicePairingManager *)self callCompletionBlock:completionCopy withError:v10];
  }

LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

void __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke_2;
  v5[3] = &unk_27996B130;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  [(NRDevicePairingManagerMux *)v3 startDiscoveryForPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Starting pairing discovery failed: %@", v5, v6, v7, v8, v9, "");
      }

      v11 = 0;
      v12 = v3;
    }

    else
    {
      v14 = WeakRetained;
      objc_sync_enter(v14);
      v15 = v14[1];
      objc_sync_exit(v14);

      if (v15 == 4)
      {
        [(NRDevicePairingManager *)v14 setInternalManagerState:?];
        v12 = 0;
        v11 = 1;
      }

      else
      {
        if (nrCopyLogObj_onceToken_1533 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while starting pairing discovery", v16, v17, v18, v19, v20, "");
        }

        objc_opt_self();
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v31 = *MEMORY[0x277CCA450];
        v32[0] = @"Manager is in invalid state for this operation";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v12 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v22];

        v11 = 0;
      }
    }

    v23 = v10[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke_3;
    block[3] = &unk_27996B108;
    v30 = v11;
    v24 = v10;
    v27 = v24;
    v29 = *(a1 + 32);
    v13 = v12;
    v28 = v13;
    dispatch_async(v23, block);
    if (v3)
    {
      [(NRDevicePairingManager *)v24 invalidateWithError:v13];
    }
  }

  else
  {
    v13 = v3;
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setManagerState:3];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)activateWithCompletion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v12 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v15 = nrCopyLogObj_1529();
    _NRLogWithArgs(v15, 17, "%s called with null completionBlock", v16, v17, v18, v19, v20, "[NRDevicePairingManager activateWithCompletion:]");

    goto LABEL_6;
  }

  if (self && (v5 = self, objc_sync_enter(v5), internalManagerState = v5->_internalManagerState, objc_sync_exit(v5), v5, internalManagerState == 1))
  {
    [(NRDevicePairingManager *)v5 setInternalManagerState:?];
    operationQueue = v5->_operationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__NRDevicePairingManager_activateWithCompletion___block_invoke;
    block[3] = &unk_27996B158;
    block[4] = v5;
    v22 = completionCopy;
    dispatch_async(operationQueue, block);
  }

  else
  {
    objc_opt_self();
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Manager is in invalid state for this operation";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v10 = [v8 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v9];

    [(NRDevicePairingManager *)self callCompletionBlock:completionCopy withError:v10];
  }

LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

void __49__NRDevicePairingManager_activateWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__NRDevicePairingManager_activateWithCompletion___block_invoke_2;
  v5[3] = &unk_27996B130;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  [(NRDevicePairingManagerMux *)v3 registerPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__NRDevicePairingManager_activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Registering pairing manager failed: %@", v5, v6, v7, v8, v9, "");
      }

      v11 = 0;
      v12 = v3;
    }

    else
    {
      v14 = WeakRetained;
      objc_sync_enter(v14);
      v15 = v14[1];
      objc_sync_exit(v14);

      if (v15 == 2)
      {
        [(NRDevicePairingManager *)v14 setInternalManagerState:?];
        v12 = 0;
        v11 = 1;
      }

      else
      {
        if (nrCopyLogObj_onceToken_1533 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while registering pairing manager", v16, v17, v18, v19, v20, "");
        }

        objc_opt_self();
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v31 = *MEMORY[0x277CCA450];
        v32[0] = @"Manager is in invalid state for this operation";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v12 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v22];

        v11 = 0;
      }
    }

    v23 = v10[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__NRDevicePairingManager_activateWithCompletion___block_invoke_3;
    block[3] = &unk_27996B108;
    v30 = v11;
    v24 = v10;
    v27 = v24;
    v29 = *(a1 + 32);
    v13 = v12;
    v28 = v13;
    dispatch_async(v23, block);
    if (v3)
    {
      [(NRDevicePairingManager *)v24 invalidateWithError:v13];
    }
  }

  else
  {
    v13 = v3;
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __49__NRDevicePairingManager_activateWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setManagerState:2];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (NSString)fullDescription
{
  selfCopy = self;
  if (self)
  {
    self = self->_managerInfo;
  }

  fullDescription = [(NRDevicePairingManager *)self fullDescription];
  v4 = [fullDescription mutableCopy];

  [v4 appendFormat:@" State %zu", -[NRDevicePairingManager managerState](selfCopy, "managerState")];

  return v4;
}

- (id)description
{
  if (self)
  {
    self = self->_managerInfo;
  }

  return [(NRDevicePairingManager *)self description];
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_1533 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 0, "%s%.30s:%-4d %@: Dealloc", v2, v3, v4, v5, v6, "");
  }

  v8.receiver = self;
  v8.super_class = NRDevicePairingManager;
  [(NRDevicePairingManager *)&v8 dealloc];
}

- (NRDevicePairingManager)initWithIdentifier:(id)identifier pairingCriteria:(id)criteria metadata:(id)metadata queue:(id)queue
{
  v68 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  criteriaCopy = criteria;
  metadataCopy = metadata;
  queueCopy = queue;
  v14 = queueCopy;
  if (!criteriaCopy)
  {
    v27 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v27;
      v32 = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);

      if (!v32)
      {
        goto LABEL_25;
      }
    }

    v33 = nrCopyLogObj_1529();
    _NRLogWithArgs(v33, 17, "%s called with null pairingCriteria", v34, v35, v36, v37, v38, "[NRDevicePairingManager initWithIdentifier:pairingCriteria:metadata:queue:]");
LABEL_24:

    selfCopy = 0;
    goto LABEL_11;
  }

  if (!queueCopy)
  {
    v28 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_23:
      v33 = nrCopyLogObj_1529();
      _NRLogWithArgs(v33, 17, "%s called with null queue", v41, v42, v43, v44, v45, "[NRDevicePairingManager initWithIdentifier:pairingCriteria:metadata:queue:]");
      goto LABEL_24;
    }

    v39 = v28;
    v40 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);

    if (v40)
    {
      goto LABEL_23;
    }

LABEL_25:
    selfCopy = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  os_unfair_lock_lock(&copySharedInstance_gSharedInstanceLock);
  WeakRetained = objc_loadWeakRetained(&copySharedInstance_gSharedInstance);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    os_unfair_lock_unlock(&copySharedInstance_gSharedInstanceLock);
    goto LABEL_6;
  }

  v16 = objc_alloc_init(NRDevicePairingManagerMux);
  objc_storeWeak(&copySharedInstance_gSharedInstance, v16);
  os_unfair_lock_unlock(&copySharedInstance_gSharedInstanceLock);
  if (v16)
  {
LABEL_6:
    v67.receiver = self;
    v67.super_class = NRDevicePairingManager;
    v17 = [(NRDevicePairingManager *)&v67 init];
    if (v17)
    {
      p_isa = &v17->super.isa;
      v19 = objc_alloc_init(NRDevicePairingManagerInfo);
      v20 = p_isa[11];
      p_isa[11] = v19;

      v21 = [identifierCopy copy];
      [p_isa[11] setIdentifier:v21];

      v22 = [criteriaCopy copy];
      [p_isa[11] setPairingCriteria:v22];

      v23 = [metadataCopy copy];
      [p_isa[11] setMetadata:v23];

      objc_storeStrong(p_isa + 7, queue);
      if (nrXPCCopyQueue_onceToken != -1)
      {
        dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
      }

      objc_storeStrong(p_isa + 8, nrXPCCopyQueue_nrXPCQueue);
      [(NRDevicePairingManager *)p_isa setInternalManagerState:?];
      [p_isa setManagerState:1];
      objc_storeStrong(p_isa + 9, v16);
      self = p_isa;
      selfCopy = self;
      goto LABEL_10;
    }

    v30 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v54 = v30;
      v55 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (!v55)
      {
        goto LABEL_31;
      }
    }

    v56 = nrCopyLogObj_1529();
    _NRLogWithArgs(v56, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v57, v58, v59, v60, v61, "");

LABEL_31:
    v62 = _os_log_pack_size();
    MEMORY[0x28223BE20](v62, v63);
    v64 = *__error();
    v65 = _os_log_pack_fill();
    *v65 = 136446210;
    *(v65 + 4) = "[NRDevicePairingManager initWithIdentifier:pairingCriteria:metadata:queue:]";
    v66 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v66);
  }

  v29 = nrCopyLogObj_1529();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_27:
    v48 = nrCopyLogObj_1529();
    _NRLogWithArgs(v48, 17, "%s called with null pairingManagerMux", v49, v50, v51, v52, v53, "[NRDevicePairingManager initWithIdentifier:pairingCriteria:metadata:queue:]");

    goto LABEL_28;
  }

  v46 = v29;
  v47 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);

  if (v47)
  {
    goto LABEL_27;
  }

LABEL_28:
  v16 = 0;
  selfCopy = 0;
LABEL_10:

LABEL_11:
  v25 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (void)unpairDevice:(id)device queue:(id)queue withCompletion:(id)completion
{
  deviceCopy = device;
  queueCopy = queue;
  completionCopy = completion;
  v10 = completionCopy;
  if (deviceCopy)
  {
    if (queueCopy)
    {
      if (completionCopy)
      {
        v11 = [deviceCopy copy];
        nrDeviceIdentifier = [v11 nrDeviceIdentifier];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __60__NRDevicePairingManager_unpairDevice_queue_withCompletion___block_invoke;
        v38[3] = &unk_27996B3D0;
        v39 = v11;
        v40 = v10;
        v13 = v11;
        nrXPCUnpairDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v38);
      }

      else
      {
        v16 = nrCopyLogObj_1529();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v31 = v16;
          v32 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

          if (!v32)
          {
            goto LABEL_6;
          }
        }

        v13 = nrCopyLogObj_1529();
        _NRLogWithArgs(v13, 17, "%s called with null completionBlock", v33, v34, v35, v36, v37, "+[NRDevicePairingManager unpairDevice:queue:withCompletion:]");
      }
    }

    else
    {
      v15 = nrCopyLogObj_1529();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v24 = v15;
        v25 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

        if (!v25)
        {
          goto LABEL_6;
        }
      }

      v13 = nrCopyLogObj_1529();
      _NRLogWithArgs(v13, 17, "%s called with null queue", v26, v27, v28, v29, v30, "+[NRDevicePairingManager unpairDevice:queue:withCompletion:]");
    }
  }

  else
  {
    v14 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_6;
      }
    }

    v13 = nrCopyLogObj_1529();
    _NRLogWithArgs(v13, 17, "%s called with null nrDeviceIdentifier", v19, v20, v21, v22, v23, "+[NRDevicePairingManager unpairDevice:queue:withCompletion:]");
  }

LABEL_6:
}

void __60__NRDevicePairingManager_unpairDevice_queue_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v21 = *MEMORY[0x277CCA450];
      v22[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDevicePairingErrorDomain" code:a2 userInfo:v7];
    v9 = [*(a1 + 32) nrDeviceIdentifier];
    v10 = _NRCopyLogObjectForNRUUID(v9);
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
LABEL_10:
        (*(*(a1 + 40) + 16))();

        goto LABEL_11;
      }
    }

    v13 = [*(a1 + 32) nrDeviceIdentifier];
    v14 = _NRCopyLogObjectForNRUUID(v13);
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d Unpairing failed: %@", v15, v16, v17, v18, v19, "");

    goto LABEL_10;
  }

  (*(*(a1 + 40) + 16))();
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)unpairDevice:(id)device withCompletion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  v7 = nrXPCCopyQueue_nrXPCQueue;
  [NRDevicePairingManager unpairDevice:deviceCopy queue:v7 withCompletion:completionCopy];
}

+ (uint64_t)copyXPCError
{
  v6[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = objc_alloc(MEMORY[0x277CCA9B8]);
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"An XPC connection error occurred";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v1];

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (uint64_t)copyErrorForCode:(void *)code userInfo:
{
  codeCopy = code;
  objc_opt_self();
  if ([codeCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:codeCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDevicePairingErrorDomain" code:a2 userInfo:v5];

  return v6;
}

+ (uint64_t)copyErrorForCode:(uint64_t)code
{
  objc_opt_self();

  return [NRDevicePairingManager copyErrorForCode:a2 userInfo:0];
}

void __46__NRDevicePairingManager_discoveredCandidate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) candidateDiscoveredHandler];
  v2[2](v2, *(a1 + 40));
}

void __40__NRDevicePairingManager_lostCandidate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) candidateLostHandler];
  v2[2](v2, *(a1 + 40));
}

void __64__NRDevicePairingManager_receivedRequestForAuthMethod_authData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authRequestHandler];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
}

uint64_t __59__NRDevicePairingManager_pairingSucceededWithPairedDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setManagerState:2];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)pairingFailedWithError:(void *)error
{
  v3 = a2;
  if (error)
  {
    errorCopy = error;
    objc_sync_enter(errorCopy);
    v5 = errorCopy[1];
    objc_sync_exit(errorCopy);

    if (v5 == 8)
    {
      v7 = objc_getProperty(errorCopy, v6, 80, 1);
      objc_setProperty_atomic_copy(errorCopy, v8, 0, 80);
      [(NRDevicePairingManager *)errorCopy setInternalManagerState:?];
      v9 = errorCopy[7];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__NRDevicePairingManager_pairingFailedWithError___block_invoke;
      block[3] = &unk_27996B298;
      block[4] = errorCopy;
      v13 = v7;
      v12 = v3;
      v10 = v7;
      dispatch_async(v9, block);
    }
  }
}

uint64_t __49__NRDevicePairingManager_pairingFailedWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setManagerState:2];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end