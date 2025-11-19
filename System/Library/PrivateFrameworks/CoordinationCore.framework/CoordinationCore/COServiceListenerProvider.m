@interface COServiceListenerProvider
- (BOOL)serviceShouldAcceptNewConnection:(id)a3;
- (COServiceListenerProvider)initWithServiceName:(id)a3 entitlement:(id)a4;
- (OS_dispatch_queue)dispatchQueue;
- (id)serviceListener;
@end

@implementation COServiceListenerProvider

- (COServiceListenerProvider)initWithServiceName:(id)a3 entitlement:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = COServiceListenerProvider;
  v9 = [(COServiceListenerProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceName, a3);
    objc_storeStrong(&v10->_entitlement, a4);
  }

  return v10;
}

- (OS_dispatch_queue)dispatchQueue
{
  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
    v4 = [(COServiceListenerProvider *)self serviceName];
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    v8 = self->_dispatchQueue;
    self->_dispatchQueue = v7;

    dispatchQueue = self->_dispatchQueue;
  }

  return dispatchQueue;
}

- (id)serviceListener
{
  v3 = objc_alloc(MEMORY[0x277CCAE98]);
  v4 = [(COServiceListenerProvider *)self serviceName];
  v5 = [v3 initWithMachServiceName:v4];

  return v5;
}

- (BOOL)serviceShouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = [(COServiceListenerProvider *)self entitlement];
  if (v5)
  {
    v6 = v5;
    v7 = [(COServiceListenerProvider *)self entitlement];
    v8 = [v4 valueForEntitlement:v7];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

@end