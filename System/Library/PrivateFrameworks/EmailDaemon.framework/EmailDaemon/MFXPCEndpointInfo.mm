@interface MFXPCEndpointInfo
+ (MFXPCEndpointInfo)endpointInfoWithExportedInterface:(id)interface remoteObjectInterface:(id)objectInterface shouldAcceptClient:(id)client exportedObjectForClient:(id)forClient;
- (MFXPCEndpointInfo)init;
- (id)existingListener:(BOOL)listener;
@end

@implementation MFXPCEndpointInfo

+ (MFXPCEndpointInfo)endpointInfoWithExportedInterface:(id)interface remoteObjectInterface:(id)objectInterface shouldAcceptClient:(id)client exportedObjectForClient:(id)forClient
{
  interfaceCopy = interface;
  objectInterfaceCopy = objectInterface;
  clientCopy = client;
  forClientCopy = forClient;
  v14 = objc_alloc_init(self);
  v15 = v14;
  if (!clientCopy)
  {
    clientCopy = &stru_10015A3A8;
  }

  v16 = v14[3];
  v14[3] = interfaceCopy;
  v17 = interfaceCopy;

  v18 = v15[4];
  v15[4] = objectInterfaceCopy;
  v19 = objectInterfaceCopy;

  v20 = objc_retainBlock(clientCopy);
  v21 = v15[5];
  v15[5] = v20;

  v22 = objc_retainBlock(forClientCopy);
  v23 = v15[6];
  v15[6] = v22;

  return v15;
}

- (MFXPCEndpointInfo)init
{
  v7.receiver = self;
  v7.super_class = MFXPCEndpointInfo;
  v2 = [(MFXPCEndpointInfo *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = v2;
  }

  return v2;
}

- (id)existingListener:(BOOL)listener
{
  listenerCopy = listener;
  [(NSLock *)self->_lock lock];
  listener = self->_listener;
  if (listener)
  {
    v6 = 1;
  }

  else
  {
    v6 = !listenerCopy;
  }

  if (!v6)
  {
    v7 = [[MFXPCEndpointListener alloc] initWithEndpointInfo:self];
    v8 = self->_listener;
    self->_listener = v7;

    listener = self->_listener;
  }

  listenerCopy2 = listener;
  [(NSLock *)self->_lock unlock];

  return listenerCopy2;
}

@end