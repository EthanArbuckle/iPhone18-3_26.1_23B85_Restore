@interface HMDRemoteEventRouterServerConnection
- (HMDRemoteEventRouterServerConnection)initWithDeviceIdentifier:(id)identifier device:(id)device connectionMode:(int64_t)mode supportsFragmentMessage:(BOOL)message userAccessControlProviderUUID:(id)d;
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

  userAccessControlProviderUUID = [v3 stringWithFormat:@"<%@ mode: %@, deviceIdentifier: %@, userACLProvider: %@>", v5, v8, v9, userAccessControlProviderUUID];

  return userAccessControlProviderUUID;
}

- (HMDRemoteEventRouterServerConnection)initWithDeviceIdentifier:(id)identifier device:(id)device connectionMode:(int64_t)mode supportsFragmentMessage:(BOOL)message userAccessControlProviderUUID:(id)d
{
  identifierCopy = identifier;
  deviceCopy = device;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = HMDRemoteEventRouterServerConnection;
  v16 = [(HMDRemoteEventRouterServerConnection *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_deviceIdentifier, identifier);
    v17->_connectionMode = mode;
    v17->_supportsFragmentMessage = message;
    objc_storeStrong(&v17->_device, device);
    objc_storeStrong(&v17->_userAccessControlProviderUUID, d);
  }

  return v17;
}

@end