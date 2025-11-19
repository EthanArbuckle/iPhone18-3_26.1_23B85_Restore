@interface HMDRemoteEventRouterServerConnection
- (HMDRemoteEventRouterServerConnection)initWithDeviceIdentifier:(id)a3 device:(id)a4 connectionMode:(int64_t)a5 supportsFragmentMessage:(BOOL)a6 userAccessControlProviderUUID:(id)a7;
- (NSString)description;
@end

@implementation HMDRemoteEventRouterServerConnection

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    connectionMode = self->_connectionMode;
    if (connectionMode)
    {
      if (connectionMode == 1)
      {
        v7 = @"ConnectionModeResident";
      }

      else
      {
        v7 = @"Unknown";
      }

      v8 = v7;
    }

    else
    {
      v8 = @"ConnectionModePrimary";
    }

    v9 = self->_deviceIdentifier;
    userAccessControlProviderUUID = self->_userAccessControlProviderUUID;
  }

  else
  {
    v9 = 0;
    userAccessControlProviderUUID = 0;
    v8 = @"ConnectionModePrimary";
  }

  v11 = [v3 stringWithFormat:@"<%@ mode: %@, deviceIdentifier: %@, userACLProvider: %@>", v5, v8, v9, userAccessControlProviderUUID];

  return v11;
}

- (HMDRemoteEventRouterServerConnection)initWithDeviceIdentifier:(id)a3 device:(id)a4 connectionMode:(int64_t)a5 supportsFragmentMessage:(BOOL)a6 userAccessControlProviderUUID:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = HMDRemoteEventRouterServerConnection;
  v16 = [(HMDRemoteEventRouterServerConnection *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_deviceIdentifier, a3);
    v17->_connectionMode = a5;
    v17->_supportsFragmentMessage = a6;
    objc_storeStrong(&v17->_device, a4);
    objc_storeStrong(&v17->_userAccessControlProviderUUID, a7);
  }

  return v17;
}

@end