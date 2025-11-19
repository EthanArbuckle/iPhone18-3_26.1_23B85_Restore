@interface OrganDonationObserver
- (OrganDonationObserver)init;
- (OrganDonationObserverDelegate)delegate;
- (void)dealloc;
- (void)startObservingChanges;
@end

@implementation OrganDonationObserver

- (OrganDonationObserver)init
{
  v3.receiver = self;
  v3.super_class = OrganDonationObserver;
  result = [(OrganDonationObserver *)&v3 init];
  if (result)
  {
    result->_organDonationChangedToken = -1;
  }

  return result;
}

- (void)startObservingChanges
{
  objc_initWeak(&location, self);
  v3 = *MEMORY[0x1E69A40B8];
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__OrganDonationObserver_startObservingChanges__block_invoke;
  v6[3] = &unk_1E83D9088;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v3, &self->_organDonationChangedToken, v4, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__OrganDonationObserver_startObservingChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 organDonationDidChange];

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  organDonationChangedToken = self->_organDonationChangedToken;
  if (organDonationChangedToken != -1)
  {
    notify_cancel(organDonationChangedToken);
  }

  v4.receiver = self;
  v4.super_class = OrganDonationObserver;
  [(OrganDonationObserver *)&v4 dealloc];
}

- (OrganDonationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end