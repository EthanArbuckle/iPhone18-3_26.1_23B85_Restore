@interface HDHealthAppLabConceptObserver
- (HDHealthAppLabConceptObserver)initWithProfile:(id)profile debounceTime:(double)time;
- (HDProfile)profile;
- (void)dealloc;
- (void)debounceRunBackgroundGenerationForNewUserDomainConcepts;
- (void)runBackgroundGenerationForNewUserDomainConcepts;
- (void)userDomainConceptManager:(id)manager didAddUserDomainConcepts:(id)concepts;
- (void)userDomainConceptManager:(id)manager didDeleteUserDomainConcepts:(id)concepts;
- (void)userDomainConceptManager:(id)manager didJournalUserDomainConcepts:(id)concepts;
- (void)userDomainConceptManager:(id)manager didUpdateUserDomainConcepts:(id)concepts;
@end

@implementation HDHealthAppLabConceptObserver

- (HDHealthAppLabConceptObserver)initWithProfile:(id)profile debounceTime:(double)time
{
  profileCopy = profile;
  v24.receiver = self;
  v24.super_class = HDHealthAppLabConceptObserver;
  v7 = [(HDHealthAppLabConceptObserver *)&v24 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_profile, profileCopy);
    userDomainConceptManager = [profileCopy userDomainConceptManager];
    userDomainConceptManager = v8->_userDomainConceptManager;
    v8->_userDomainConceptManager = userDomainConceptManager;

    [(HDUserDomainConceptManager *)v8->_userDomainConceptManager addUserDomainConceptObserver:v8 queue:0];
    v12 = objc_alloc_init(HDHAHealthPluginHostFeedGenerator);
    feedGenerator = v8->_feedGenerator;
    v8->_feedGenerator = v12;

    v14 = HKCreateSerialDispatchQueue();
    debounceQueue = v8->_debounceQueue;
    v8->_debounceQueue = v14;

    objc_initWeak(&location, v8);
    v16 = objc_alloc(MEMORY[0x277CCDD98]);
    debounceQueue = [(HDHealthAppLabConceptObserver *)v8 debounceQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __62__HDHealthAppLabConceptObserver_initWithProfile_debounceTime___block_invoke;
    v21[3] = &unk_278658190;
    objc_copyWeak(&v22, &location);
    v18 = [v16 initWithMode:1 queue:debounceQueue delay:v21 block:time];
    delayedOperation = v8->_delayedOperation;
    v8->_delayedOperation = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __62__HDHealthAppLabConceptObserver_initWithProfile_debounceTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runBackgroundGenerationForNewUserDomainConcepts];
}

- (void)dealloc
{
  [(HDUserDomainConceptManager *)self->_userDomainConceptManager removeUserDomainConceptObserver:self];
  [(_HKDelayedOperation *)self->_delayedOperation invalidate];
  v3.receiver = self;
  v3.super_class = HDHealthAppLabConceptObserver;
  [(HDHealthAppLabConceptObserver *)&v3 dealloc];
}

- (void)runBackgroundGenerationForNewUserDomainConcepts
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  profileType = [WeakRetained profileType];
  v5 = profileType == 1;
  v6 = profileType != 1;

  feedGenerator = self->_feedGenerator;

  [(HDHAHealthPluginHostFeedGenerator *)feedGenerator runBackgroundGenerationForPluginIdentifiers:&unk_283CB8690 commitUrgentTransaction:v5 feedItemsOnly:v6];
}

- (void)debounceRunBackgroundGenerationForNewUserDomainConcepts
{
  debounceQueue = [(HDHealthAppLabConceptObserver *)self debounceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__HDHealthAppLabConceptObserver_debounceRunBackgroundGenerationForNewUserDomainConcepts__block_invoke;
  block[3] = &unk_2786581B8;
  block[4] = self;
  dispatch_async(debounceQueue, block);
}

void __88__HDHealthAppLabConceptObserver_debounceRunBackgroundGenerationForNewUserDomainConcepts__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delayedOperation];
  [v1 execute];
}

- (void)userDomainConceptManager:(id)manager didAddUserDomainConcepts:(id)concepts
{
  v16 = *MEMORY[0x277D85DE8];
  conceptsCopy = concepts;
  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543874;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2048;
    v15 = [conceptsCopy count];
    _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %@ for %ld changes", &v10, 0x20u);
  }

  [(HDHealthAppLabConceptObserver *)self debounceRunBackgroundGenerationForNewUserDomainConcepts];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)userDomainConceptManager:(id)manager didDeleteUserDomainConcepts:(id)concepts
{
  v16 = *MEMORY[0x277D85DE8];
  conceptsCopy = concepts;
  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543874;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2048;
    v15 = [conceptsCopy count];
    _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %@ for %ld changes", &v10, 0x20u);
  }

  [(HDHealthAppLabConceptObserver *)self debounceRunBackgroundGenerationForNewUserDomainConcepts];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)userDomainConceptManager:(id)manager didJournalUserDomainConcepts:(id)concepts
{
  v16 = *MEMORY[0x277D85DE8];
  conceptsCopy = concepts;
  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543874;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2048;
    v15 = [conceptsCopy count];
    _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %@ for %ld changes", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)userDomainConceptManager:(id)manager didUpdateUserDomainConcepts:(id)concepts
{
  v16 = *MEMORY[0x277D85DE8];
  conceptsCopy = concepts;
  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543874;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2048;
    v15 = [conceptsCopy count];
    _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %@ for %ld changes", &v10, 0x20u);
  }

  [(HDHealthAppLabConceptObserver *)self debounceRunBackgroundGenerationForNewUserDomainConcepts];
  v9 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end