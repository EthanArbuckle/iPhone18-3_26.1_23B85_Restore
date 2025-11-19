@interface BBAppProtectionMonitor
- (BBAppProtectionMonitor)initWithDelegate:(id)a3;
- (BBAppProtectionMonitorDelegate)delegate;
- (BOOL)isApplicationHidden:(id)a3;
- (BOOL)isApplicationLocked:(id)a3;
- (BOOL)shouldHideContentPreview:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)dealloc;
@end

@implementation BBAppProtectionMonitor

- (BBAppProtectionMonitor)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BBAppProtectionMonitor;
  v5 = [(BBAppProtectionMonitor *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v7 = [v6 addMonitor:v5 subjectMask:1];
    subscription = v5->_subscription;
    v5->_subscription = v7;

    objc_storeWeak(&v5->_delegate, v4);
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

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v6 = [a3 bs_compactMap:{&__block_literal_global_12, a4}];
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

- (BOOL)isApplicationLocked:(id)a3
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:a3];
  v4 = [v3 isLocked];

  return v4;
}

- (BOOL)isApplicationHidden:(id)a3
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:a3];
  v4 = [v3 isHidden];

  return v4;
}

- (BOOL)shouldHideContentPreview:(id)a3
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:a3];
  if ([v3 isHidden])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isLocked];
  }

  return v4;
}

- (BBAppProtectionMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end