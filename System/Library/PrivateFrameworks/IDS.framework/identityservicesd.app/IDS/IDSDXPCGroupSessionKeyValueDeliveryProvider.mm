@interface IDSDXPCGroupSessionKeyValueDeliveryProvider
- (IDSDXPCGroupSessionKeyValueDeliveryProvider)initWithQueue:(id)a3 connection:(id)a4;
- (void)keyValueDeliveryForSessionID:(id)a3 completionHandler:(id)a4;
@end

@implementation IDSDXPCGroupSessionKeyValueDeliveryProvider

- (IDSDXPCGroupSessionKeyValueDeliveryProvider)initWithQueue:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 hasEntitlement:kIDSGroupSessionKeyValueDeliveryEntitlement])
  {
    v14.receiver = self;
    v14.super_class = IDSDXPCGroupSessionKeyValueDeliveryProvider;
    v9 = [(IDSDXPCGroupSessionKeyValueDeliveryProvider *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_queue, a3);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v12 = +[IDSFoundationLog GroupSessionKeyValueDelivery];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing IDS Group Session Key Value Delivery entitlement -- failing creation of IDSDXPCGroupSessionKeyValueDeliveryProvider collaborator {connection: %@}", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (void)keyValueDeliveryForSessionID:(id)a3 completionHandler:(id)a4
{
  v9 = a4;
  v5 = a3;
  v6 = +[IDSDSessionController sharedInstance];
  v7 = [v6 sessionWithUniqueID:v5];

  if (!v7)
  {
    (*(v9 + 2))(v9, 0, 0);
  }

  v8 = [v7 keyValueDelivery];
  (*(v9 + 2))(v9, v8, 0);
}

@end