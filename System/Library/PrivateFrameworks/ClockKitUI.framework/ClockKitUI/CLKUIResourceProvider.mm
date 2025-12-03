@interface CLKUIResourceProvider
- (CLKUIResourceProvider)initWithDelegate:(id)delegate key:(id)key;
- (CLKUIResourceProviderDelegate)delegate;
@end

@implementation CLKUIResourceProvider

- (CLKUIResourceProvider)initWithDelegate:(id)delegate key:(id)key
{
  delegateCopy = delegate;
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = CLKUIResourceProvider;
  v8 = [(CLKUIResourceProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = objc_opt_new();
    uuidHistory = v9->_uuidHistory;
    v9->_uuidHistory = v10;

    objc_storeStrong(&v9->_key, key);
  }

  return v9;
}

- (CLKUIResourceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end