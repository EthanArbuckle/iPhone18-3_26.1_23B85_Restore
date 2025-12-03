@interface BBAppProtectionMonitor
- (BBAppProtectionMonitor)initWithDelegate:(id)delegate;
- (BBAppProtectionMonitorDelegate)delegate;
- (BOOL)isApplicationHidden:(id)hidden;
- (BOOL)isApplicationLocked:(id)locked;
- (BOOL)shouldHideContentPreview:(id)preview;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
@end

@implementation BBAppProtectionMonitor

- (BBAppProtectionMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = BBAppProtectionMonitor;
  v5 = [(BBAppProtectionMonitor *)&v10 init];
  if (v5)
  {
    subjectMonitorRegistry = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v7 = [subjectMonitorRegistry addMonitor:v5 subjectMask:1];
    subscription = v5->_subscription;
    v5->_subscription = v7;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)dealloc
{
  [(APSubjectMonitorSubscription *)self->_subscription invalidate];
  v3.receiver = self;
  v3.super_class = BBAppProtectionMonitor;
  [(BBAppProtectionMonitor *)&v3 dealloc];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v6 = [changed bs_compactMap:{&__block_literal_global_12, subscription}];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained protectionStateChangedForBundleIdentifiers:v6];
}

id __71__BBAppProtectionMonitor_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 bundleIdentifier];

  return v7;
}

- (BOOL)isApplicationLocked:(id)locked
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:locked];
  isLocked = [v3 isLocked];

  return isLocked;
}

- (BOOL)isApplicationHidden:(id)hidden
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:hidden];
  isHidden = [v3 isHidden];

  return isHidden;
}

- (BOOL)shouldHideContentPreview:(id)preview
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:preview];
  if ([v3 isHidden])
  {
    isLocked = 1;
  }

  else
  {
    isLocked = [v3 isLocked];
  }

  return isLocked;
}

- (BBAppProtectionMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end