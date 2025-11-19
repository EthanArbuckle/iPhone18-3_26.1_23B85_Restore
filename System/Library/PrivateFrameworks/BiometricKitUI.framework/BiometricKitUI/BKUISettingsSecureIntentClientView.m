@interface BKUISettingsSecureIntentClientView
- (BKMesaSecureIntentProvider)secureIntentProvider;
- (BKUIDevice)currentDevice;
@end

@implementation BKUISettingsSecureIntentClientView

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