@interface LNListenerEndpointProvider
+ (id)sharedProvider;
- (LNListenerEndpointProviderDelegate)delegate;
@end

@implementation LNListenerEndpointProvider

- (LNListenerEndpointProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_6151);
  }

  v3 = sharedProvider_provider;

  return v3;
}

uint64_t __44__LNListenerEndpointProvider_sharedProvider__block_invoke()
{
  sharedProvider_provider = objc_alloc_init(LNListenerEndpointProvider);

  return MEMORY[0x1EEE66BB8]();
}

@end