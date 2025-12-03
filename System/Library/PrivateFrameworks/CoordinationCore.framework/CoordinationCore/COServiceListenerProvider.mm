@interface COServiceListenerProvider
- (BOOL)serviceShouldAcceptNewConnection:(id)connection;
- (COServiceListenerProvider)initWithServiceName:(id)name entitlement:(id)entitlement;
- (OS_dispatch_queue)dispatchQueue;
- (id)serviceListener;
@end

@implementation COServiceListenerProvider

- (COServiceListenerProvider)initWithServiceName:(id)name entitlement:(id)entitlement
{
  nameCopy = name;
  entitlementCopy = entitlement;
  v12.receiver = self;
  v12.super_class = COServiceListenerProvider;
  v9 = [(COServiceListenerProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceName, name);
    objc_storeStrong(&v10->_entitlement, entitlement);
  }

  return v10;
}

- (OS_dispatch_queue)dispatchQueue
{
  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
    serviceName = [(COServiceListenerProvider *)self serviceName];
    uTF8String = [serviceName UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    v8 = self->_dispatchQueue;
    self->_dispatchQueue = v7;

    dispatchQueue = self->_dispatchQueue;
  }

  return dispatchQueue;
}

- (id)serviceListener
{
  v3 = objc_alloc(MEMORY[0x277CCAE98]);
  serviceName = [(COServiceListenerProvider *)self serviceName];
  v5 = [v3 initWithMachServiceName:serviceName];

  return v5;
}

- (BOOL)serviceShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  entitlement = [(COServiceListenerProvider *)self entitlement];
  if (entitlement)
  {
    v6 = entitlement;
    entitlement2 = [(COServiceListenerProvider *)self entitlement];
    v8 = [connectionCopy valueForEntitlement:entitlement2];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue & 1;
}

@end