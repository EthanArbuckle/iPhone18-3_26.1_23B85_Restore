@interface ICDFileProviderItemServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ICDFileProviderItemServiceSource)initWithItemIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier operationQueue:(id)queue;
- (id)makeListenerEndpointAndReturnError:(id *)error;
@end

@implementation ICDFileProviderItemServiceSource

- (ICDFileProviderItemServiceSource)initWithItemIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier operationQueue:(id)queue
{
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = ICDFileProviderItemServiceSource;
  v12 = [(ICDFileProviderItemServiceSource *)&v17 init];
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
    v28 = 0u;
  }

  v9 = [v8 initWithAuditToken:location];
  v10 = BRCXPCBRItemServiceProtocolInterface();
  [connectionCopy setExportedInterface:v10];

  v11 = [ICDFileProviderItemServiceProxy alloc];
  itemIdentifier = [(ICDFileProviderItemServiceSource *)self itemIdentifier];
  domainIdentifier = [(ICDFileProviderItemServiceSource *)self domainIdentifier];
  operationQueue = [(ICDFileProviderItemServiceSource *)self operationQueue];
  v15 = [(ICDFileProviderItemServiceProxy *)v11 initWithItemIdentifier:itemIdentifier domainIdentifier:domainIdentifier operationQueue:operationQueue clientPrivilegesDescriptor:v9];
  [connectionCopy setExportedObject:v15];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  listeners = [(ICDFileProviderItemServiceSource *)selfCopy listeners];
  [listeners removeObject:listenerCopy];

  objc_sync_exit(selfCopy);
  objc_initWeak(location, connectionCopy);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100010B14;
  v25[3] = &unk_1000446B0;
  v18 = listenerCopy;
  v26 = v18;
  [connectionCopy setInvalidationHandler:v25];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100010B94;
  v23 = &unk_1000446D8;
  objc_copyWeak(&v24, location);
  [connectionCopy setInterruptionHandler:&v20];
  [connectionCopy resume];
  objc_destroyWeak(&v24);

  objc_destroyWeak(location);
  return 1;
}

@end