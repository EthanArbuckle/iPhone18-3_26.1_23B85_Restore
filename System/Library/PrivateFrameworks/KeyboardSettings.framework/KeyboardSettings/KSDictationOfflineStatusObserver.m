@interface KSDictationOfflineStatusObserver
- (KSDictationOfflineStatusObserver)initWithDelegate:(id)a3;
- (KSDictationOfflineStatusObserverDelegate)delegate;
- (void)dealloc;
- (void)updateOfflineDictationStatus;
@end

@implementation KSDictationOfflineStatusObserver

- (KSDictationOfflineStatusObserver)initWithDelegate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = KSDictationOfflineStatusObserver;
  v5 = [(KSDictationOfflineStatusObserver *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(KSDictationOfflineStatusObserver *)v5 setDelegate:v4];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v8 = IsTrialAssetDeliveryEnabled();
    v9 = MEMORY[0x277CEF5F0];
    if (!v8)
    {
      v9 = MEMORY[0x277CEF5D0];
    }

    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, EmbeddedSpeechNewAssetInstalled, *v9, 0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__KSDictationOfflineStatusObserver_initWithDelegate___block_invoke;
    block[3] = &unk_2797F9EC8;
    v12 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v6;
}

- (void)updateOfflineDictationStatus
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__KSDictationOfflineStatusObserver_updateOfflineDictationStatus__block_invoke;
  v4[3] = &unk_2797F9F40;
  v4[4] = self;
  [v3 getOfflineDictationStatusWithCompletion:v4];
}

void __64__KSDictationOfflineStatusObserver_updateOfflineDictationStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__KSDictationOfflineStatusObserver_updateOfflineDictationStatus__block_invoke_2;
  v5[3] = &unk_2797F9F18;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __64__KSDictationOfflineStatusObserver_updateOfflineDictationStatus__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 offlineDictationStatusUpdated:*(a1 + 40)];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = IsTrialAssetDeliveryEnabled();
  v5 = MEMORY[0x277CEF5F0];
  if (!v4)
  {
    v5 = MEMORY[0x277CEF5D0];
  }

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *v5, 0);
  v6.receiver = self;
  v6.super_class = KSDictationOfflineStatusObserver;
  [(KSDictationOfflineStatusObserver *)&v6 dealloc];
}

- (KSDictationOfflineStatusObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end