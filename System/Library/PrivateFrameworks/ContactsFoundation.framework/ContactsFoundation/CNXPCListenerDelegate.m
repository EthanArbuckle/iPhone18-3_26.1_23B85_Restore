@interface CNXPCListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CNXPCListenerDelegate)initWithWithExportedObject:(id)a3 exportedInterfaceProtocol:(id)a4;
@end

@implementation CNXPCListenerDelegate

- (CNXPCListenerDelegate)initWithWithExportedObject:(id)a3 exportedInterfaceProtocol:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNXPCListenerDelegate;
  v9 = [(CNXPCListenerDelegate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exportedObject, a3);
    objc_storeStrong(&v10->_exportedInterfaceProtocol, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  [v5 setExportedObject:self->_exportedObject];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:self->_exportedInterfaceProtocol];
  [v5 setExportedInterface:v6];

  [v5 resume];
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
    [v10 setAppConnection:v5];
  }

  return 1;
}

@end