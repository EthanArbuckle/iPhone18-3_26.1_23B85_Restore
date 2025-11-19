@interface CSPhoneCallStateMonitor
- (void)deregisterDropInCallNotification;
- (void)registerDropInCallNotificationIfNeeded;
@end

@implementation CSPhoneCallStateMonitor

- (void)deregisterDropInCallNotification
{
  dropInCallNotifier = self->_dropInCallNotifier;
  if (dropInCallNotifier)
  {
    [(CSFDropInCallStateNotifier *)dropInCallNotifier stop];
    v4 = self->_dropInCallNotifier;
    self->_dropInCallNotifier = 0;
  }
}

- (void)registerDropInCallNotificationIfNeeded
{
  if (!self->_dropInCallNotifier && +[CSUtils supportDropInCall])
  {
    v3 = objc_alloc_init(CSFDropInCallStateNotifier);
    dropInCallNotifier = self->_dropInCallNotifier;
    self->_dropInCallNotifier = v3;

    v5 = self->_dropInCallNotifier;

    [(CSFDropInCallStateNotifier *)v5 start];
  }
}

@end