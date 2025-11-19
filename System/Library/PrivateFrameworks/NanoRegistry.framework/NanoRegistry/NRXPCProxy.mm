@interface NRXPCProxy
+ (BOOL)requireAnEntitlement;
- (BOOL)hasEntitlement:(id)a3;
- (NRXPCProxy)initWithConnection:(id)a3 delegate:(id)a4 xpcTarget:(id)a5 entitlementBitmask:(unsigned int)a6;
- (void)_invalidate;
@end

@implementation NRXPCProxy

- (NRXPCProxy)initWithConnection:(id)a3 delegate:(id)a4 xpcTarget:(id)a5 entitlementBitmask:(unsigned int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(NRXPCProxy *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_connection, a3);
    objc_storeWeak(&v15->_delegate, v12);
    objc_storeStrong(&v15->_target, a5);
    v15->_entitlementBitmask = a6;
    v16 = [v11 processName];
    appPath = v15->_appPath;
    v15->_appPath = v16;
  }

  return v15;
}

+ (BOOL)requireAnEntitlement
{
  v2 = [a1 entitlements];
  [v2 count];

  return 0;
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained hasEntitlement:v4 withBitmask:self->_entitlementBitmask];

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