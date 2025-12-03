@interface COTimerAddOnListenerProvider
- (BOOL)serviceShouldAcceptNewConnection:(id)connection;
- (OS_dispatch_queue)dispatchQueue;
- (id)serviceListener;
@end

@implementation COTimerAddOnListenerProvider

- (OS_dispatch_queue)dispatchQueue
{
  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.coordination.COTimerService", v4);
    v6 = self->_dispatchQueue;
    self->_dispatchQueue = v5;

    dispatchQueue = self->_dispatchQueue;
  }

  return dispatchQueue;
}

- (id)serviceListener
{
  v2 = objc_alloc(MEMORY[0x277CCAE98]);
  v3 = [v2 initWithMachServiceName:*MEMORY[0x277CFD000]];

  return v3;
}

- (BOOL)serviceShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.private.coordination"];
  if ([v4 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v6 = [connectionCopy valueForEntitlement:@"com.apple.private.coordination.timers"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

@end