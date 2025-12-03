@interface IPPublishedIdentityProgress
- (IPPublishedIdentityProgress)initWithAppIdentity:(id)identity observer:(id)observer;
- (id)currentProgress;
- (unint64_t)completedUnitCountForPhase:(unint64_t)phase;
- (unint64_t)finalPhase;
- (unint64_t)installPhase;
- (unint64_t)totalUnitCountForPhase:(unint64_t)phase;
- (void)finishProgressWithState:(unint64_t)state;
- (void)setCompletedUnitCount:(unint64_t)count forPhase:(unint64_t)phase;
- (void)setFinalPhase:(unint64_t)phase;
- (void)setInstallPhase:(unint64_t)phase;
- (void)setTotalUnitCount:(unint64_t)count forPhase:(unint64_t)phase;
- (void)setTotalUnitCountsForPhases:(id)phases;
@end

@implementation IPPublishedIdentityProgress

- (IPPublishedIdentityProgress)initWithAppIdentity:(id)identity observer:(id)observer
{
  v27 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  observerCopy = observer;
  v22.receiver = self;
  v22.super_class = IPPublishedIdentityProgress;
  v8 = [(IPPublishedIdentityProgress *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(IPInstallableProgressData);
    progressData = v9->_progressData;
    v9->_progressData = v10;

    v12 = [identityCopy copy];
    miIdentity = v9->_miIdentity;
    v9->_miIdentity = v12;

    v21 = 0;
    v14 = IPLSIdentityFromMIIdentity(identityCopy, &v21);
    v15 = v21;
    lsIdentity = v9->_lsIdentity;
    v9->_lsIdentity = v14;

    if (!v9->_lsIdentity)
    {
      v17 = _IPServerLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(IPPublishedIdentityProgress *)identityCopy initWithAppIdentity:v15 observer:v17];
      }
    }

    objc_storeWeak(&v9->_observer, observerCopy);
    v18 = _IPDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = identityCopy;
      v25 = 2048;
      v26 = observerCopy;
      _os_log_impl(&dword_254C69000, v18, OS_LOG_TYPE_DEFAULT, "Created published identity progress for %@, observer %p", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)currentProgress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__IPPublishedIdentityProgress_currentProgress__block_invoke;
  v4[3] = &unk_2797B1E28;
  v4[4] = self;
  v4[5] = &v5;
  IPDoWithLock(&self->_lock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __46__IPPublishedIdentityProgress_currentProgress__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)completedUnitCountForPhase:(unint64_t)phase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__IPPublishedIdentityProgress_completedUnitCountForPhase___block_invoke;
  v5[3] = &unk_2797B1EA0;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = phase;
  IPDoWithLock(&self->_lock, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __58__IPPublishedIdentityProgress_completedUnitCountForPhase___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) completedUnitCountForPhase:IPProgressPhaseForLSInstallPhase(a1[6])];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)setCompletedUnitCount:(unint64_t)count forPhase:(unint64_t)phase
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__IPPublishedIdentityProgress_setCompletedUnitCount_forPhase___block_invoke;
  v6[3] = &unk_2797B1EC8;
  v6[6] = count;
  v6[7] = phase;
  v6[4] = self;
  v6[5] = &v7;
  IPDoWithLock(&self->_lock, v6);
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained identityProgress:self didChangeProgressData:v8[5]];

  _Block_object_dispose(&v7, 8);
}

uint64_t __62__IPPublishedIdentityProgress_setCompletedUnitCount_forPhase___block_invoke(void *a1)
{
  [*(a1[4] + 16) setCompletedUnitCount:a1[6] forPhase:IPProgressPhaseForLSInstallPhase(a1[7])];
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)totalUnitCountForPhase:(unint64_t)phase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__IPPublishedIdentityProgress_totalUnitCountForPhase___block_invoke;
  v5[3] = &unk_2797B1EA0;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = phase;
  IPDoWithLock(&self->_lock, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __54__IPPublishedIdentityProgress_totalUnitCountForPhase___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) totalUnitCountForPhase:IPProgressPhaseForLSInstallPhase(a1[6])];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)setTotalUnitCount:(unint64_t)count forPhase:(unint64_t)phase
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:phase];
  v10 = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:count];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [(IPPublishedIdentityProgress *)self setTotalUnitCountsForPhases:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setTotalUnitCountsForPhases:(id)phases
{
  v30 = *MEMORY[0x277D85DE8];
  phasesCopy = phases;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(phasesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = phasesCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{IPProgressPhaseForLSInstallPhase(objc_msgSend(v10, "unsignedLongLongValue"))}];
        v12 = [v6 objectForKeyedSubscript:v10];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__IPPublishedIdentityProgress_setTotalUnitCountsForPhases___block_invoke;
  v16[3] = &unk_2797B1EF0;
  v16[4] = self;
  v13 = v5;
  v17 = v13;
  v18 = &v23;
  IPDoWithLock(&self->_lock, v16);
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained identityProgress:self didChangeProgressData:v24[5]];

  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __59__IPPublishedIdentityProgress_setTotalUnitCountsForPhases___block_invoke(void *a1)
{
  [*(a1[4] + 16) setTotalUnitCountsForPhases:a1[5]];
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)finishProgressWithState:(unint64_t)state
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained identityProgress:self didFinishWithState:state];
}

- (void)setInstallPhase:(unint64_t)phase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__IPPublishedIdentityProgress_setInstallPhase___block_invoke;
  v5[3] = &unk_2797B1F18;
  v5[5] = &v6;
  v5[6] = phase;
  v5[4] = self;
  IPDoWithLock(&self->_lock, v5);
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained identityProgress:self didChangeProgressData:v7[5]];

  _Block_object_dispose(&v6, 8);
}

uint64_t __47__IPPublishedIdentityProgress_setInstallPhase___block_invoke(void *a1)
{
  [*(a1[4] + 16) setInstallPhase:IPProgressPhaseForLSInstallPhase(a1[6])];
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)installPhase
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__IPPublishedIdentityProgress_installPhase__block_invoke;
  v4[3] = &unk_2797B1E28;
  v4[4] = self;
  v4[5] = &v5;
  IPDoWithLock(&self->_lock, v4);
  v2 = LSInstallPhaseForIPProgressPhase(v6[3]);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __43__IPPublishedIdentityProgress_installPhase__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) installPhase];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setFinalPhase:(unint64_t)phase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__IPPublishedIdentityProgress_setFinalPhase___block_invoke;
  v5[3] = &unk_2797B1F18;
  v5[5] = &v6;
  v5[6] = phase;
  v5[4] = self;
  IPDoWithLock(&self->_lock, v5);
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained identityProgress:self didChangeProgressData:v7[5]];

  _Block_object_dispose(&v6, 8);
}

uint64_t __45__IPPublishedIdentityProgress_setFinalPhase___block_invoke(void *a1)
{
  [*(a1[4] + 16) setFinalPhase:IPProgressPhaseForLSInstallPhase(a1[6])];
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)finalPhase
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__IPPublishedIdentityProgress_finalPhase__block_invoke;
  v4[3] = &unk_2797B1E28;
  v4[4] = self;
  v4[5] = &v5;
  IPDoWithLock(&self->_lock, v4);
  v2 = LSInstallPhaseForIPProgressPhase(v6[3]);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __41__IPPublishedIdentityProgress_finalPhase__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) finalPhase];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)initWithAppIdentity:(os_log_t)log observer:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_254C69000, log, OS_LOG_TYPE_FAULT, "could not get LS identity from MI identity %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end