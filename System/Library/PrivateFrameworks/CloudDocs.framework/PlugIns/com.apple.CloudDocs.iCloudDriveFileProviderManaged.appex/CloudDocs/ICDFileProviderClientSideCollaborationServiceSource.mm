@interface ICDFileProviderClientSideCollaborationServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ICDFileProviderClientSideCollaborationServiceSource)initWithItemIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier operationQueue:(id)queue;
- (id)makeListenerEndpointAndReturnError:(id *)error;
@end

@implementation ICDFileProviderClientSideCollaborationServiceSource

- (ICDFileProviderClientSideCollaborationServiceSource)initWithItemIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier operationQueue:(id)queue
{
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = ICDFileProviderClientSideCollaborationServiceSource;
  v12 = [(ICDFileProviderClientSideCollaborationServiceSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemIdentifier, identifier);
    objc_storeStrong(&v13->_domainIdentifier, domainIdentifier);
    objc_storeStrong(&v13->_operationQueue, queue);
    v14 = [NSHashTable hashTableWithOptions:0];
    listeners = v13->_listeners;
    v13->_listeners = v14;
  }

  return v13;
}

- (id)makeListenerEndpointAndReturnError:(id *)error
{
  v4 = +[NSXPCListener anonymousListener];
  [v4 setDelegate:self];
  endpoint = [v4 endpoint];
  [v4 resume];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners addObject:v4];
  objc_sync_exit(selfCopy);

  return endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [BRCClientPrivilegesDescriptor alloc];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    *location = 0u;
    v23 = 0u;
  }

  v9 = [v8 initWithAuditToken:location];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICDFileProviderClientSideCollaborationProtocol];
  [connectionCopy setExportedInterface:v10];

  v11 = [[ICDFileProviderClientSideCollaborationServiceProxy alloc] initWithItemIdentifier:self->_itemIdentifier domainIdentifier:self->_domainIdentifier operationQueue:self->_operationQueue clientPrivilegesDescriptor:v9];
  [connectionCopy setExportedObject:v11];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners removeObject:listenerCopy];
  objc_sync_exit(selfCopy);

  objc_initWeak(location, connectionCopy);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000042E8;
  v20[3] = &unk_1000446B0;
  v13 = listenerCopy;
  v21 = v13;
  [connectionCopy setInvalidationHandler:v20];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100004368;
  v18 = &unk_1000446D8;
  objc_copyWeak(&v19, location);
  [connectionCopy setInterruptionHandler:&v15];
  [connectionCopy resume];
  objc_destroyWeak(&v19);

  objc_destroyWeak(location);
  return 1;
}

@end