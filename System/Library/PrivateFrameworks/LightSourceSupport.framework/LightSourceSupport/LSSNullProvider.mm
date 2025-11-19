@interface LSSNullProvider
- (LSSProviderDelegate)delegate;
@end

@implementation LSSNullProvider

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end