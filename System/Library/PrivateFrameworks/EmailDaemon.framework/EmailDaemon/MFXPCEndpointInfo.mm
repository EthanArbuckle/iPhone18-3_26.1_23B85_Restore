@interface MFXPCEndpointInfo
+ (MFXPCEndpointInfo)endpointInfoWithExportedInterface:(id)a3 remoteObjectInterface:(id)a4 shouldAcceptClient:(id)a5 exportedObjectForClient:(id)a6;
- (MFXPCEndpointInfo)init;
- (id)existingListener:(BOOL)a3;
@end

@implementation MFXPCEndpointInfo

+ (MFXPCEndpointInfo)endpointInfoWithExportedInterface:(id)a3 remoteObjectInterface:(id)a4 shouldAcceptClient:(id)a5 exportedObjectForClient:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(a1);
  v15 = v14;
  if (!v12)
  {
    v12 = &stru_10015A3A8;
  }

  v16 = v14[3];
  v14[3] = v10;
  v17 = v10;

  v18 = v15[4];
  v15[4] = v11;
  v19 = v11;

  v20 = objc_retainBlock(v12);
  v21 = v15[5];
  v15[5] = v20;

  v22 = objc_retainBlock(v13);
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

- (id)existingListener:(BOOL)a3
{
  v3 = a3;
  [(NSLock *)self->_lock lock];
  listener = self->_listener;
  if (listener)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v7 = [[MFXPCEndpointListener alloc] initWithEndpointInfo:self];
    v8 = self->_listener;
    self->_listener = v7;

    listener = self->_listener;
  }

  v9 = listener;
  [(NSLock *)self->_lock unlock];

  return v9;
}

@end