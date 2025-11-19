@interface BuddySecureIntentClientView
- (BKMesaSecureIntentProvider)secureIntentProvider;
- (BKUIDevice)currentDevice;
@end

@implementation BuddySecureIntentClientView

- (BKMesaSecureIntentProvider)secureIntentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_secureIntentProvider);

  return WeakRetained;
}

- (BKUIDevice)currentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_currentDevice);

  return WeakRetained;
}

@end