@interface ICDFileProviderShareOperationServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ICDFileProviderShareOperationServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier operationQueue:(id)queue;
@end

@implementation ICDFileProviderShareOperationServiceSource

- (ICDFileProviderShareOperationServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier operationQueue:(id)queue
{
  extensionCopy = extension;
  v13.receiver = self;
  v13.super_class = ICDFileProviderShareOperationServiceSource;
  v10 = [(BaseFileProviderShareOperationServiceSource *)&v13 initWithItemIdentifier:identifier operationQueue:queue];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileProviderExtension, extension);
  }

  return v11;
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
  v10 = BRCXPCSharingOperationInterface();
  [connectionCopy setExportedInterface:v10];

  v11 = [ICDFileProviderShareOperationProxy alloc];
  fileProviderExtension = self->_fileProviderExtension;
  itemIdentifier = [(BaseFileProviderShareOperationServiceSource *)self itemIdentifier];
  operationQueue = [(BaseFileProviderShareOperationServiceSource *)self operationQueue];
  v15 = [(ICDFileProviderShareOperationProxy *)v11 initWithFileProviderExtension:fileProviderExtension itemIdentifier:itemIdentifier operationQueue:operationQueue clientPrivilegesDescriptor:v9];
  [connectionCopy setExportedObject:v15];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  listeners = [(BaseFileProviderShareOperationServiceSource *)selfCopy listeners];
  [listeners removeObject:listenerCopy];

  objc_sync_exit(selfCopy);
  objc_initWeak(location, connectionCopy);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000CC84;
  v25[3] = &unk_1000446B0;
  v18 = listenerCopy;
  v26 = v18;
  [connectionCopy setInvalidationHandler:v25];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10000CD04;
  v23 = &unk_1000446D8;
  objc_copyWeak(&v24, location);
  [connectionCopy setInterruptionHandler:&v20];
  [connectionCopy resume];
  objc_destroyWeak(&v24);

  objc_destroyWeak(location);
  return 1;
}

@end