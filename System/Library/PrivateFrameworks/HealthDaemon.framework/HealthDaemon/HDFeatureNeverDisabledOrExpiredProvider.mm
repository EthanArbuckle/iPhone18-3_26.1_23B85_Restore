@interface HDFeatureNeverDisabledOrExpiredProvider
- (HDFeatureDisableAndExpiryProvidingDelegate)delegate;
@end

@implementation HDFeatureNeverDisabledOrExpiredProvider

- (HDFeatureDisableAndExpiryProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end