@interface ICDFileProviderClientSideCollaborationServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDFileProviderClientSideCollaborationServiceSource)initWithItemIdentifier:(id)a3 domainIdentifier:(id)a4 operationQueue:(id)a5;
- (id)makeListenerEndpointAndReturnError:(id *)a3;
@end

@implementation ICDFileProviderClientSideCollaborationServiceSource

- (ICDFileProviderClientSideCollaborationServiceSource)initWithItemIdentifier:(id)a3 domainIdentifier:(id)a4 operationQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ICDFileProviderClientSideCollaborationServiceSource;
  v12 = [(ICDFileProviderClientSideCollaborationServiceSource *)&v17 init];
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
    v23 = 0u;
  }

  v9 = [v8 initWithAuditToken:location];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICDFileProviderClientSideCollaborationProtocol];
  [v7 setExportedInterface:v10];

  v11 = [[ICDFileProviderClientSideCollaborationServiceProxy alloc] initWithItemIdentifier:self->_itemIdentifier domainIdentifier:self->_domainIdentifier operationQueue:self->_operationQueue clientPrivilegesDescriptor:v9];
  [v7 setExportedObject:v11];

  v12 = self;
  objc_sync_enter(v12);
  [(NSHashTable *)v12->_listeners removeObject:v6];
  objc_sync_exit(v12);

  objc_initWeak(location, v7);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004638;
  v20[3] = &unk_1000446B0;
  v13 = v6;
  v21 = v13;
  [v7 setInvalidationHandler:v20];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000046B8;
  v18 = &unk_1000446D8;
  objc_copyWeak(&v19, location);
  [v7 setInterruptionHandler:&v15];
  [v7 resume];
  objc_destroyWeak(&v19);

  objc_destroyWeak(location);
  return 1;
}

@end