@interface CNXPCListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CNXPCListenerDelegate)initWithWithExportedObject:(id)object exportedInterfaceProtocol:(id)protocol;
@end

@implementation CNXPCListenerDelegate

- (CNXPCListenerDelegate)initWithWithExportedObject:(id)object exportedInterfaceProtocol:(id)protocol
{
  objectCopy = object;
  protocolCopy = protocol;
  v13.receiver = self;
  v13.super_class = CNXPCListenerDelegate;
  v9 = [(CNXPCListenerDelegate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exportedObject, object);
    objc_storeStrong(&v10->_exportedInterfaceProtocol, protocol);
    v11 = v10;
  }

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setExportedObject:self->_exportedObject];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:self->_exportedInterfaceProtocol];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy resume];
  v7 = self->_exportedObject;
  v8 = &unk_1EF47EFC8;
  if ([v7 conformsToProtocol:v8])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [v10 setAppConnection:connectionCopy];
  }

  return 1;
}

@end