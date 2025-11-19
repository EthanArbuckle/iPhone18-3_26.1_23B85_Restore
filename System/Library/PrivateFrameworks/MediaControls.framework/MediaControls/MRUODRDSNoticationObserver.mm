@interface MRUODRDSNoticationObserver
- (MRUODRDSNoticationObserver)initWithDelegate:(id)a3;
- (MRUODRDSNoticationObserverDelegate)delegate;
- (void)endObservation;
- (void)hearingAidReachabilityDidChange;
@end

@implementation MRUODRDSNoticationObserver

- (MRUODRDSNoticationObserver)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRUODRDSNoticationObserver;
  v5 = [(MRUODRDSNoticationObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _MRUHearingDevicesDidChangeNotification, *MEMORY[0x1E69A45A0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (void)endObservation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MRUODRDSNoticationObserver_endObservation__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__MRUODRDSNoticationObserver_endObservation__block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69A45A0];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v3, v4, 0);
}

- (void)hearingAidReachabilityDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained hearingAidReachabilityDidChange];
}

- (MRUODRDSNoticationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end