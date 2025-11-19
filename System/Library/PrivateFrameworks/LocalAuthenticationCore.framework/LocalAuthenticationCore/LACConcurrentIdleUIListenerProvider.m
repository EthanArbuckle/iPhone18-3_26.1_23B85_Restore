@interface LACConcurrentIdleUIListenerProvider
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (LACConcurrentIdleUIListenerProvider)initWithHandler:(id)a3 replyQueue:(id)a4;
- (LACConcurrentIdleUIXPCHandling)handler;
- (id)anonymousListenerWithIdentifier:(id)a3;
@end

@implementation LACConcurrentIdleUIListenerProvider

- (LACConcurrentIdleUIListenerProvider)initWithHandler:(id)a3 replyQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LACConcurrentIdleUIListenerProvider;
  v8 = [(LACConcurrentIdleUIListenerProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_handler, v6);
    objc_storeStrong(&v9->_replyQueue, a4);
  }

  return v9;
}

- (LACConcurrentIdleUIXPCHandling)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

- (id)anonymousListenerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.isa = LACConcurrentIdleUIListenerProvider.anonymousListener(withIdentifier:)(v4).super.isa;

  return v6.super.isa;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LACConcurrentIdleUIListenerProvider.listener(_:shouldAcceptNewConnection:)(v6, v7);

  return 1;
}

@end