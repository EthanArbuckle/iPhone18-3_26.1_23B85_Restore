@interface ICDFileProviderItemServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDFileProviderItemServiceSource)initWithItemIdentifier:(id)a3 domainIdentifier:(id)a4 operationQueue:(id)a5;
- (id)makeListenerEndpointAndReturnError:(id *)a3;
@end

@implementation ICDFileProviderItemServiceSource

- (ICDFileProviderItemServiceSource)initWithItemIdentifier:(id)a3 domainIdentifier:(id)a4 operationQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ICDFileProviderItemServiceSource;
  v12 = [(ICDFileProviderItemServiceSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemIdentifier, a3);
    objc_storeStrong(&v13->_domainIdentifier, a4);
    objc_storeStrong(&v13->_operationQueue, a5);
    v14 = [NSHashTable hashTableWithOptions:0];
    listeners = v13->_listeners;
    v13->_listeners = v14;
  }

  return v13;
}

- (id)makeListenerEndpointAndReturnError:(id *)a3
{
  v4 = +[NSXPCListener anonymousListener];
  [v4 setDelegate:self];
  v5 = [v4 endpoint];
  [v4 resume];
  v6 = self;
  objc_sync_enter(v6);
  [(NSHashTable *)v6->_listeners addObject:v4];
  objc_sync_exit(v6);

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [BRCClientPrivilegesDescriptor alloc];
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    *location = 0u;
    v28 = 0u;
  }

  v9 = [v8 initWithAuditToken:location];
  v10 = BRCXPCBRItemServiceProtocolInterface();
  [v7 setExportedInterface:v10];

  v11 = [ICDFileProviderItemServiceProxy alloc];
  v12 = [(ICDFileProviderItemServiceSource *)self itemIdentifier];
  v13 = [(ICDFileProviderItemServiceSource *)self domainIdentifier];
  v14 = [(ICDFileProviderItemServiceSource *)self operationQueue];
  v15 = [(ICDFileProviderItemServiceProxy *)v11 initWithItemIdentifier:v12 domainIdentifier:v13 operationQueue:v14 clientPrivilegesDescriptor:v9];
  [v7 setExportedObject:v15];

  v16 = self;
  objc_sync_enter(v16);
  v17 = [(ICDFileProviderItemServiceSource *)v16 listeners];
  [v17 removeObject:v6];

  objc_sync_exit(v16);
  objc_initWeak(location, v7);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100026098;
  v25[3] = &unk_1000446B0;
  v18 = v6;
  v26 = v18;
  [v7 setInvalidationHandler:v25];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100026118;
  v23 = &unk_1000446D8;
  objc_copyWeak(&v24, location);
  [v7 setInterruptionHandler:&v20];
  [v7 resume];
  objc_destroyWeak(&v24);

  objc_destroyWeak(location);
  return 1;
}

@end