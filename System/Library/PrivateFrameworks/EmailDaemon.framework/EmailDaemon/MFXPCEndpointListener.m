@interface MFXPCEndpointListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MFXPCEndpointListener)initWithEndpointInfo:(id)a3;
- (NSArray)clients;
- (NSString)description;
- (id)endpointInfo;
- (void)addClientInfo:(id)a3;
- (void)dealloc;
- (void)removeClientInfo:(id)a3;
@end

@implementation MFXPCEndpointListener

- (id)endpointInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_endpoint);

  return WeakRetained;
}

- (MFXPCEndpointListener)initWithEndpointInfo:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MFXPCEndpointListener;
  v5 = [(MFXPCEndpointListener *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_endpoint, v4);
    v7 = objc_alloc_init(NSLock);
    lock = v6->_lock;
    v6->_lock = v7;

    v9 = objc_alloc_init(NSMutableArray);
    clientInfos = v6->_clientInfos;
    v6->_clientInfos = v9;

    v11 = +[NSXPCListener anonymousListener];
    listener = v6->_listener;
    v6->_listener = v11;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
    v13 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = MFXPCEndpointListener;
  [(MFXPCEndpointListener *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(MFXPCEndpointListener *)self endpointInfo];
  v5 = [v4 exportedInterface];
  v6 = [v5 protocol];
  v7 = NSStringFromProtocol(v6);
  v8 = [NSString stringWithFormat:@"<%@: %p> %@ - %ld clients", v3, self, v7, [(NSMutableArray *)self->_clientInfos count]];

  return v8;
}

- (NSArray)clients
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_clientInfos arrayByApplyingSelector:"client"];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)addClientInfo:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_clientInfos addObject:v4];
  [(NSLock *)self->_lock unlock];
}

- (void)removeClientInfo:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_clientInfos removeObject:v4];
  [(NSLock *)self->_lock unlock];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(MFXPCEndpointListener *)self endpointInfo];
  v7 = [[MFXPCClient alloc] initWithConnection:v5];
  v8 = [v6 shouldAcceptClient];
  v9 = (v8)[2](v8, v7);

  if (v9)
  {
    v10 = objc_alloc_init(_MFXPCClientInfo);
    [(_MFXPCClientInfo *)v10 setClient:v7];
    [(_MFXPCClientInfo *)v10 setConnection:v5];
    v11 = [v6 remoteObjectInterface];
    [v5 setRemoteObjectInterface:v11];

    v12 = [v6 exportedInterface];
    [v5 setExportedInterface:v12];

    v13 = [v6 exportedObjectForClient];
    v14 = (v13)[2](v13, v7);
    [v5 setExportedObject:v14];

    objc_initWeak(&location, v10);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AF2E0;
    v18[3] = &unk_10015A3D0;
    objc_copyWeak(&v19, &location);
    v18[4] = self;
    [v5 setInvalidationHandler:v18];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AF4B8;
    v16[3] = &unk_10015A3D0;
    objc_copyWeak(&v17, &location);
    v16[4] = self;
    [v5 setInterruptionHandler:v16];
    [(MFXPCEndpointListener *)self addClientInfo:v10];
    [v5 resume];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end