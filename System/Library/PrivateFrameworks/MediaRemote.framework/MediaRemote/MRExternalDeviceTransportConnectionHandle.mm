@interface MRExternalDeviceTransportConnectionHandle
- (MRExternalDeviceTransportConnectionHandle)initWithConnection:(id)a3 deviceInfo:(id)a4;
- (id)description;
@end

@implementation MRExternalDeviceTransportConnectionHandle

- (MRExternalDeviceTransportConnectionHandle)initWithConnection:(id)a3 deviceInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MRExternalDeviceTransportConnectionHandle;
  v9 = [(MRExternalDeviceTransportConnectionHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_deviceInfo, a4);
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  connection = self->_connection;
  v6 = [(MRDeviceInfo *)self->_deviceInfo WHAIdentifier];
  v7 = [(MRDeviceInfo *)self->_deviceInfo name];
  v8 = [v3 initWithFormat:@"<%@ %@ %@-%@>", v4, connection, v6, v7];

  return v8;
}

@end