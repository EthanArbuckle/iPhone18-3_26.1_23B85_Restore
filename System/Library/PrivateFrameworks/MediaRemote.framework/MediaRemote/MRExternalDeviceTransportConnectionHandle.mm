@interface MRExternalDeviceTransportConnectionHandle
- (MRExternalDeviceTransportConnectionHandle)initWithConnection:(id)connection deviceInfo:(id)info;
- (id)description;
@end

@implementation MRExternalDeviceTransportConnectionHandle

- (MRExternalDeviceTransportConnectionHandle)initWithConnection:(id)connection deviceInfo:(id)info
{
  connectionCopy = connection;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = MRExternalDeviceTransportConnectionHandle;
  v9 = [(MRExternalDeviceTransportConnectionHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_deviceInfo, info);
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  connection = self->_connection;
  wHAIdentifier = [(MRDeviceInfo *)self->_deviceInfo WHAIdentifier];
  name = [(MRDeviceInfo *)self->_deviceInfo name];
  v8 = [v3 initWithFormat:@"<%@ %@ %@-%@>", v4, connection, wHAIdentifier, name];

  return v8;
}

@end