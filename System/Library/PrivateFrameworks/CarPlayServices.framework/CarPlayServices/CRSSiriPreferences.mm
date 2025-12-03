@interface CRSSiriPreferences
- (BOOL)announceNotificationsInCarPlayTemporarilyDisabled;
- (BOOL)autoSendInCarPlayEnabled;
- (BOOL)autoSendInHeadphonesEnabled;
- (BOOL)mainAutoSendEnabled;
- (BOOL)showAppsBehindSiriInCarPlayEnabled;
- (CRSSiriPreferences)init;
- (int64_t)carPlayAnnounceEnablementType;
- (void)_siriPreferencesDidChange;
- (void)_updateAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled;
- (void)_updateAutoSendInCarPlayEnabled:(BOOL)enabled;
- (void)_updateAutoSendInHeadphonesEnabled:(BOOL)enabled;
- (void)_updateCarPlayAnnounceEnablementType:(int64_t)type;
- (void)_updateMainAutoSendEnabled:(BOOL)enabled;
- (void)_updateShowAppsBehindSiriInCarPlayEnabled:(BOOL)enabled;
- (void)addObserver:(id)observer;
- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled;
- (void)removeObserver:(id)observer;
- (void)setCarPlayAnnounceEnablementType:(int64_t)type;
@end

@implementation CRSSiriPreferences

- (BOOL)announceNotificationsInCarPlayTemporarilyDisabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CRSSiriPreferences *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__CRSSiriPreferences_announceNotificationsInCarPlayTemporarilyDisabled__block_invoke;
  v5[3] = &unk_278D8DF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __71__CRSSiriPreferences_announceNotificationsInCarPlayTemporarilyDisabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cachedAnnounceNotificationsInCarPlayTemporarilyDisabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CRSSiriPreferences)init
{
  v11.receiver = self;
  v11.super_class = CRSSiriPreferences;
  v2 = [(CRSSiriPreferences *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CRSSiriPreferences", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc(MEMORY[0x277CF89C0]);
    queue = [(CRSSiriPreferences *)v2 queue];
    v7 = [v5 initWithProtocol:&unk_2855A7198 callbackQueue:queue];
    observers = v2->_observers;
    v2->_observers = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__siriPreferencesDidChange name:*MEMORY[0x277CEF060] object:0];

    [(CRSSiriPreferences *)v2 _siriPreferencesDidChange];
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSSiriPreferences *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSSiriPreferences *)self observers];
  [observers removeObserver:observerCopy];
}

- (int64_t)carPlayAnnounceEnablementType
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  queue = [(CRSSiriPreferences *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CRSSiriPreferences_carPlayAnnounceEnablementType__block_invoke;
  v6[3] = &unk_278D8DF40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __51__CRSSiriPreferences_carPlayAnnounceEnablementType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cachedCarPlayAnnounceEnablementType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setCarPlayAnnounceEnablementType:(int64_t)type
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  [mEMORY[0x277CEF368] setAnnounceNotificationsInCarPlayType:type];
}

- (BOOL)autoSendInCarPlayEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CRSSiriPreferences *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__CRSSiriPreferences_autoSendInCarPlayEnabled__block_invoke;
  v5[3] = &unk_278D8DF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __46__CRSSiriPreferences_autoSendInCarPlayEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cachedAutoSendInCarPlayEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)autoSendInHeadphonesEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CRSSiriPreferences *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CRSSiriPreferences_autoSendInHeadphonesEnabled__block_invoke;
  v5[3] = &unk_278D8DF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __49__CRSSiriPreferences_autoSendInHeadphonesEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cachedAutoSendInHeadphonesEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)mainAutoSendEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CRSSiriPreferences *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__CRSSiriPreferences_mainAutoSendEnabled__block_invoke;
  v5[3] = &unk_278D8DF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __41__CRSSiriPreferences_mainAutoSendEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cachedMainAutoSendEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)showAppsBehindSiriInCarPlayEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CRSSiriPreferences *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CRSSiriPreferences_showAppsBehindSiriInCarPlayEnabled__block_invoke;
  v5[3] = &unk_278D8DF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __56__CRSSiriPreferences_showAppsBehindSiriInCarPlayEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cachedShowAppsBehindSiriInCarPlayEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  [mEMORY[0x277CEF368] clearAnnounceNotificationsInCarPlayTemporarilyDisabled];
}

- (void)_siriPreferencesDidChange
{
  objc_initWeak(&location, self);
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke;
  v18[3] = &unk_278D8DF68;
  objc_copyWeak(&v19, &location);
  [mEMORY[0x277CEF368] getAnnounceNotificationsInCarPlayTypeWithCompletion:v18];

  mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_2;
  v16[3] = &unk_278D8DF90;
  objc_copyWeak(&v17, &location);
  [mEMORY[0x277CEF368]2 getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:v16];

  mEMORY[0x277CEF368]3 = [MEMORY[0x277CEF368] sharedPreferences];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_3;
  v14[3] = &unk_278D8DF90;
  objc_copyWeak(&v15, &location);
  [mEMORY[0x277CEF368]3 getMessageWithoutConfirmationInCarPlayEnabledWithCompletion:v14];

  mEMORY[0x277CEF368]4 = [MEMORY[0x277CEF368] sharedPreferences];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_4;
  v12[3] = &unk_278D8DF90;
  objc_copyWeak(&v13, &location);
  [mEMORY[0x277CEF368]4 getMessageWithoutConfirmationHeadphonesEnabledWithCompletion:v12];

  mEMORY[0x277CEF368]5 = [MEMORY[0x277CEF368] sharedPreferences];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_5;
  v10[3] = &unk_278D8DF90;
  objc_copyWeak(&v11, &location);
  [mEMORY[0x277CEF368]5 getMessageWithoutConfirmationEnabledWithCompletion:v10];

  mEMORY[0x277CEF368]6 = [MEMORY[0x277CEF368] sharedPreferences];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_6;
  v8[3] = &unk_278D8DF90;
  objc_copyWeak(&v9, &location);
  [mEMORY[0x277CEF368]6 getShowAppsBehindSiriInCarPlayEnabledWithCompletion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCarPlayAnnounceEnablementType:a2];
}

void __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAnnounceNotificationsInCarPlayTemporarilyDisabled:a2];
}

void __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAutoSendInCarPlayEnabled:a2];
}

void __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAutoSendInHeadphonesEnabled:a2];
}

void __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMainAutoSendEnabled:a2];
}

void __47__CRSSiriPreferences__siriPreferencesDidChange__block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateShowAppsBehindSiriInCarPlayEnabled:a2];
}

- (void)_updateAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled
{
  queue = [(CRSSiriPreferences *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__CRSSiriPreferences__updateAnnounceNotificationsInCarPlayTemporarilyDisabled___block_invoke;
  v6[3] = &unk_278D8DFB8;
  v6[4] = self;
  disabledCopy = disabled;
  dispatch_async(queue, v6);
}

void __79__CRSSiriPreferences__updateAnnounceNotificationsInCarPlayTemporarilyDisabled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) cachedAnnounceNotificationsInCarPlayTemporarilyDisabled])
  {
    [*(a1 + 32) setCachedAnnounceNotificationsInCarPlayTemporarilyDisabled:?];
    v2 = [*(a1 + 32) observers];
    [v2 preferences:*(a1 + 32) announceNotificationsInCarPlayTemporarilyDisabledChanged:*(a1 + 40)];
  }
}

- (void)_updateCarPlayAnnounceEnablementType:(int64_t)type
{
  queue = [(CRSSiriPreferences *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CRSSiriPreferences__updateCarPlayAnnounceEnablementType___block_invoke;
  v6[3] = &unk_278D8DFE0;
  v6[4] = self;
  v6[5] = type;
  dispatch_async(queue, v6);
}

void __59__CRSSiriPreferences__updateCarPlayAnnounceEnablementType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) cachedCarPlayAnnounceEnablementType] != *(a1 + 40))
  {
    [*(a1 + 32) setCachedCarPlayAnnounceEnablementType:?];
    v2 = [*(a1 + 32) observers];
    [v2 preferences:*(a1 + 32) carPlayAnnounceEnablementTypeChanged:*(a1 + 40)];
  }
}

- (void)_updateAutoSendInCarPlayEnabled:(BOOL)enabled
{
  queue = [(CRSSiriPreferences *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CRSSiriPreferences__updateAutoSendInCarPlayEnabled___block_invoke;
  v6[3] = &unk_278D8DFB8;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v6);
}

void __54__CRSSiriPreferences__updateAutoSendInCarPlayEnabled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) cachedAutoSendInCarPlayEnabled])
  {
    [*(a1 + 32) setCachedAutoSendInCarPlayEnabled:?];
    v2 = [*(a1 + 32) observers];
    [v2 preferences:*(a1 + 32) autoSendInCarPlayEnabledChanged:*(a1 + 40)];
  }
}

- (void)_updateAutoSendInHeadphonesEnabled:(BOOL)enabled
{
  queue = [(CRSSiriPreferences *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CRSSiriPreferences__updateAutoSendInHeadphonesEnabled___block_invoke;
  v6[3] = &unk_278D8DFB8;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v6);
}

void __57__CRSSiriPreferences__updateAutoSendInHeadphonesEnabled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) cachedAutoSendInHeadphonesEnabled])
  {
    [*(a1 + 32) setCachedAutoSendInHeadphonesEnabled:?];
    v2 = [*(a1 + 32) observers];
    [v2 preferences:*(a1 + 32) autoSendInHeadphonesEnabledChanged:*(a1 + 40)];
  }
}

- (void)_updateMainAutoSendEnabled:(BOOL)enabled
{
  queue = [(CRSSiriPreferences *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CRSSiriPreferences__updateMainAutoSendEnabled___block_invoke;
  v6[3] = &unk_278D8DFB8;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v6);
}

void __49__CRSSiriPreferences__updateMainAutoSendEnabled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) cachedMainAutoSendEnabled])
  {
    [*(a1 + 32) setCachedMainAutoSendEnabled:?];
    v2 = [*(a1 + 32) observers];
    [v2 preferences:*(a1 + 32) mainAutoSendEnabledChanged:*(a1 + 40)];
  }
}

- (void)_updateShowAppsBehindSiriInCarPlayEnabled:(BOOL)enabled
{
  queue = [(CRSSiriPreferences *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__CRSSiriPreferences__updateShowAppsBehindSiriInCarPlayEnabled___block_invoke;
  v6[3] = &unk_278D8DFB8;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v6);
}

void __64__CRSSiriPreferences__updateShowAppsBehindSiriInCarPlayEnabled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) cachedShowAppsBehindSiriInCarPlayEnabled])
  {
    [*(a1 + 32) setCachedShowAppsBehindSiriInCarPlayEnabled:?];
    v2 = [*(a1 + 32) observers];
    [v2 preferences:*(a1 + 32) showAppsBehindSiriInCarPlayEnabledChanged:*(a1 + 40)];
  }
}

@end