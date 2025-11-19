@interface COAlarmAddOnListenerProvider
- (BOOL)serviceShouldAcceptNewConnection:(id)a3;
- (OS_dispatch_queue)dispatchQueue;
- (id)serviceListener;
@end

@implementation COAlarmAddOnListenerProvider

- (OS_dispatch_queue)dispatchQueue
{
  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.coordination.COAlarmService", v4);
    v6 = self->_dispatchQueue;
    self->_dispatchQueue = v5;

    dispatchQueue = self->_dispatchQueue;
  }

  return dispatchQueue;
}

- (id)serviceListener
{
  v2 = objc_alloc(MEMORY[0x277CCAE98]);
  v3 = [v2 initWithMachServiceName:*MEMORY[0x277CFCEB0]];

  return v3;
}

- (BOOL)serviceShouldAcceptNewConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.private.coordination"];
  if ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 valueForEntitlement:@"com.apple.private.coordination.alarms"];
    v5 = [v6 BOOLValue];
  }

  return v5;
}

@end