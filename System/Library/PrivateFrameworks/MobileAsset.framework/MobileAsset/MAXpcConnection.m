@interface MAXpcConnection
- (MAXpcConnection)initWithServiceName:(id)a3;
@end

@implementation MAXpcConnection

- (MAXpcConnection)initWithServiceName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MAXpcConnection;
  v5 = [(MAXpcConnection *)&v12 init];
  if (v5)
  {
    mach_service = xpc_connection_create_mach_service([v4 UTF8String], 0, 0);
    connection = v5->_connection;
    v5->_connection = mach_service;

    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    connectionId = v5->_connectionId;
    v5->_connectionId = v9;
  }

  return v5;
}

@end