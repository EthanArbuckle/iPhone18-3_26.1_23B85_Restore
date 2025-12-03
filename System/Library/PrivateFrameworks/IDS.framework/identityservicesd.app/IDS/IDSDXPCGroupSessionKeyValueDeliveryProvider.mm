@interface IDSDXPCGroupSessionKeyValueDeliveryProvider
- (IDSDXPCGroupSessionKeyValueDeliveryProvider)initWithQueue:(id)queue connection:(id)connection;
- (void)keyValueDeliveryForSessionID:(id)d completionHandler:(id)handler;
@end

@implementation IDSDXPCGroupSessionKeyValueDeliveryProvider

- (IDSDXPCGroupSessionKeyValueDeliveryProvider)initWithQueue:(id)queue connection:(id)connection
{
  queueCopy = queue;
  connectionCopy = connection;
  if ([connectionCopy hasEntitlement:kIDSGroupSessionKeyValueDeliveryEntitlement])
  {
    v14.receiver = self;
    v14.super_class = IDSDXPCGroupSessionKeyValueDeliveryProvider;
    v9 = [(IDSDXPCGroupSessionKeyValueDeliveryProvider *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_queue, queue);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v12 = +[IDSFoundationLog GroupSessionKeyValueDelivery];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing IDS Group Session Key Value Delivery entitlement -- failing creation of IDSDXPCGroupSessionKeyValueDeliveryProvider collaborator {connection: %@}", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)keyValueDeliveryForSessionID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v6 = +[IDSDSessionController sharedInstance];
  v7 = [v6 sessionWithUniqueID:dCopy];

  if (!v7)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  keyValueDelivery = [v7 keyValueDelivery];
  (*(handlerCopy + 2))(handlerCopy, keyValueDelivery, 0);
}

@end