@interface LACConcurrentIdleUIListenerProvider
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (LACConcurrentIdleUIListenerProvider)initWithHandler:(id)handler replyQueue:(id)queue;
- (LACConcurrentIdleUIXPCHandling)handler;
- (id)anonymousListenerWithIdentifier:(id)identifier;
@end

@implementation LACConcurrentIdleUIListenerProvider

- (LACConcurrentIdleUIListenerProvider)initWithHandler:(id)handler replyQueue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = LACConcurrentIdleUIListenerProvider;
  v8 = [(LACConcurrentIdleUIListenerProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_handler, handlerCopy);
    objc_storeStrong(&v9->_replyQueue, queue);
  }

  return v9;
}

- (LACConcurrentIdleUIXPCHandling)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

- (id)anonymousListenerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6.super.isa = LACConcurrentIdleUIListenerProvider.anonymousListener(withIdentifier:)(identifierCopy).super.isa;

  return v6.super.isa;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  LACConcurrentIdleUIListenerProvider.listener(_:shouldAcceptNewConnection:)(listenerCopy, connectionCopy);

  return 1;
}

@end