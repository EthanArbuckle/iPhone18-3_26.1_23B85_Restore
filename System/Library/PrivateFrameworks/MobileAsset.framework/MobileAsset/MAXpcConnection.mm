@interface MAXpcConnection
- (MAXpcConnection)initWithServiceName:(id)name;
@end

@implementation MAXpcConnection

- (MAXpcConnection)initWithServiceName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = MAXpcConnection;
  v5 = [(MAXpcConnection *)&v12 init];
  if (v5)
  {
    mach_service = xpc_connection_create_mach_service([nameCopy UTF8String], 0, 0);
    connection = v5->_connection;
    v5->_connection = mach_service;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    connectionId = v5->_connectionId;
    v5->_connectionId = uUIDString;
  }

  return v5;
}

@end