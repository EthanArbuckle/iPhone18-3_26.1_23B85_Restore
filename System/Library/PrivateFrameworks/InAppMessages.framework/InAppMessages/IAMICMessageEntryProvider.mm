@interface IAMICMessageEntryProvider
- (IAMICMessageEntryProvider)init;
- (IAMMessageEntryProviderDelegate)delegate;
- (void)_handleMessagesDidChangeNotification;
- (void)removeMessageEntryWithIdentifier:(id)identifier forBundleIdentifier:(id)bundleIdentifier completion:(id)completion;
@end

@implementation IAMICMessageEntryProvider

- (IAMICMessageEntryProvider)init
{
  v7.receiver = self;
  v7.super_class = IAMICMessageEntryProvider;
  v2 = [(IAMICMessageEntryProvider *)&v7 init];
  if (v2)
  {
    mEMORY[0x277D7FAE0] = [MEMORY[0x277D7FAE0] sharedManager];
    iTunesCloudIAMManager = v2->_iTunesCloudIAMManager;
    v2->_iTunesCloudIAMManager = mEMORY[0x277D7FAE0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleMessagesDidChangeNotification name:*MEMORY[0x277D7F928] object:0];
  }

  return v2;
}

- (void)removeMessageEntryWithIdentifier:(id)identifier forBundleIdentifier:(id)bundleIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  iTunesCloudIAMManager = self->_iTunesCloudIAMManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__IAMICMessageEntryProvider_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_2797A7048;
  v12 = completionCopy;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  v13[4] = self;
  [(ICInAppMessageManager *)iTunesCloudIAMManager removeMessageEntryWithIdentifier:identifierCopy forBundleIdentifier:bundleIdentifierCopy completion:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __93__IAMICMessageEntryProvider_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 16);
  if (a2)
  {

    v3();
  }

  else
  {
    v3();
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v5 = [WeakRetained delegate];
      [v5 messageEntriesDidChange:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

- (void)_handleMessagesDidChangeNotification
{
  delegate = [(IAMICMessageEntryProvider *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(IAMICMessageEntryProvider *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(IAMICMessageEntryProvider *)self delegate];
      [delegate3 messageEntriesDidChange:self];
    }
  }
}

- (IAMMessageEntryProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end