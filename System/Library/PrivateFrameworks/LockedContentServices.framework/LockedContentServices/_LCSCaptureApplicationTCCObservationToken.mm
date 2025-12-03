@interface _LCSCaptureApplicationTCCObservationToken
- (LCSCaptureApplicationTCCObserver)observer;
- (void)invalidate;
@end

@implementation _LCSCaptureApplicationTCCObservationToken

- (void)invalidate
{
  v4 = +[LCSCaptureApplicationTCCMonitor sharedMonitor];
  observer = [(_LCSCaptureApplicationTCCObservationToken *)self observer];
  [v4 _removeObserver:observer];
}

- (LCSCaptureApplicationTCCObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end