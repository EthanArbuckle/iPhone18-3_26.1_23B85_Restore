@interface NRXPCProxy
+ (BOOL)requireAnEntitlement;
- (BOOL)hasEntitlement:(id)entitlement;
- (NRXPCProxy)initWithConnection:(id)connection delegate:(id)delegate xpcTarget:(id)target entitlementBitmask:(unsigned int)bitmask;
- (void)_invalidate;
@end

@implementation NRXPCProxy

- (NRXPCProxy)initWithConnection:(id)connection delegate:(id)delegate xpcTarget:(id)target entitlementBitmask:(unsigned int)bitmask
{
  connectionCopy = connection;
  delegateCopy = delegate;
  targetCopy = target;
  v14 = [(NRXPCProxy *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_connection, connection);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v15->_target, target);
    v15->_entitlementBitmask = bitmask;
    processName = [connectionCopy processName];
    appPath = v15->_appPath;
    v15->_appPath = processName;
  }

  return v15;
}

+ (BOOL)requireAnEntitlement
{
  entitlements = [self entitlements];
  [entitlements count];

  return 0;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained hasEntitlement:entitlementCopy withBitmask:self->_entitlementBitmask];

  return self;
}

- (void)_invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(NRNSXPCConnectionProtocol *)self->_connection setInterruptionHandler:0];
    [(NRNSXPCConnectionProtocol *)self->_connection setInvalidationHandler:0];
    [(NRNSXPCConnectionProtocol *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;

    target = self->_target;
    self->_target = 0;
  }
}

@end