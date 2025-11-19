@interface CLKUIResourceProvider
- (CLKUIResourceProvider)initWithDelegate:(id)a3 key:(id)a4;
- (CLKUIResourceProviderDelegate)delegate;
@end

@implementation CLKUIResourceProvider

- (CLKUIResourceProvider)initWithDelegate:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CLKUIResourceProvider;
  v8 = [(CLKUIResourceProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = objc_opt_new();
    uuidHistory = v9->_uuidHistory;
    v9->_uuidHistory = v10;

    objc_storeStrong(&v9->_key, a4);
  }

  return v9;
}

- (CLKUIResourceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end