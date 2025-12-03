@interface ACCConnectionInfoClientInfo
- (ACCConnectionInfoClientInfo)initWithXPCConnection:(id)connection;
- (id)clientBundleID;
- (id)clientUID;
- (id)description;
- (void)_determineEntitlementsForXPCConnection;
- (void)setClientBundleID:(id)d;
- (void)setClientUID:(id)d;
@end

@implementation ACCConnectionInfoClientInfo

- (id)description
{
  clientUID = [(ACCConnectionInfoClientInfo *)self clientUID];
  clientBundleID = [(ACCConnectionInfoClientInfo *)self clientBundleID];
  v5 = [NSString stringWithFormat:@"<ACCConnectionInfoClientInfo:%@ - %@>", clientUID, clientBundleID];

  return v5;
}

- (ACCConnectionInfoClientInfo)initWithXPCConnection:(id)connection
{
  v15.receiver = self;
  v15.super_class = ACCConnectionInfoClientInfo;
  v3 = [(XPCConnectionInfo *)&v15 initWithXPCConnection:connection];
  v4 = v3;
  if (v3)
  {
    clientUID = v3->_clientUID;
    v3->_clientUID = 0;

    clientBundleID = v4->_clientBundleID;
    v4->_clientBundleID = 0;

    v7 = objc_alloc_init(NSMutableSet);
    interceptEnabled = v4->_interceptEnabled;
    v4->_interceptEnabled = v7;

    accessoryFilterDictionary = v4->_accessoryFilterDictionary;
    v4->_accessoryFilterDictionary = 0;

    v10 = objc_alloc_init(NSMutableSet);
    filteredAccessories = v4->_filteredAccessories;
    v4->_filteredAccessories = v10;

    v12 = objc_alloc_init(NSMutableSet);
    filteredEndpoints = v4->_filteredEndpoints;
    v4->_filteredEndpoints = v12;

    v4->_lock._os_unfair_lock_opaque = 0;
    [(ACCConnectionInfoClientInfo *)v4 _determineEntitlementsForXPCConnection];
  }

  return v4;
}

- (void)_determineEntitlementsForXPCConnection
{
  xPCConnection = [(XPCConnectionInfo *)self XPCConnection];
  self->_allConnectionsNotificationsEntitlement = [xPCConnection hasEntitlement:@"com.apple.private.accessories.showallconnections"];

  if (!self->_allConnectionsNotificationsEntitlement)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 9;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *(gLogObjects + 64);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      clientUID = [(ACCConnectionInfoClientInfo *)self clientUID];
      clientBundleID = [(ACCConnectionInfoClientInfo *)self clientBundleID];
      v9 = 138412546;
      v10 = clientUID;
      v11 = 2112;
      v12 = clientBundleID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client %@ (%@) not entitled for showallconnections!!!", &v9, 0x16u);
    }
  }
}

- (id)clientUID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_clientUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setClientUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [dCopy copy];

  clientUID = self->_clientUID;
  self->_clientUID = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)clientBundleID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_clientBundleID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setClientBundleID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [dCopy copy];

  clientBundleID = self->_clientBundleID;
  self->_clientBundleID = v5;

  os_unfair_lock_unlock(&self->_lock);
}

@end