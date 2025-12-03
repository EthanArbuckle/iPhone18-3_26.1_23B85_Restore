@interface ICDFileProvideriWorkCollaborationServiceSource
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ICDFileProvideriWorkCollaborationServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier operationQueue:(id)queue;
@end

@implementation ICDFileProvideriWorkCollaborationServiceSource

- (ICDFileProvideriWorkCollaborationServiceSource)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier operationQueue:(id)queue
{
  extensionCopy = extension;
  v15.receiver = self;
  v15.super_class = ICDFileProvideriWorkCollaborationServiceSource;
  v10 = [(BaseFileProvideriWorkCollaborationServiceSource *)&v15 initWithItemIdentifier:identifier operationQueue:queue];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileProviderExtension, extension);
    v12 = [NSHashTable hashTableWithOptions:0];
    listeners = v11->_listeners;
    v11->_listeners = v12;
  }

  return v11;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BaseFileProvideriWorkCollaboration];
  [connectionCopy setExportedInterface:v8];

  v9 = [ICDFileProvideriWorkCollaborationProxy alloc];
  fileProviderExtension = self->_fileProviderExtension;
  itemIdentifier = [(BaseFileProvideriWorkCollaborationServiceSource *)self itemIdentifier];
  operationQueue = [(BaseFileProvideriWorkCollaborationServiceSource *)self operationQueue];
  v13 = [(ICDFileProvideriWorkCollaborationProxy *)v9 initWithFileProviderExtension:fileProviderExtension itemIdentifier:itemIdentifier operationQueue:operationQueue];
  [connectionCopy setExportedObject:v13];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_listeners removeObject:listenerCopy];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, connectionCopy);
  v15 = +[UMUserManager sharedManager];
  br_currentPersonaID = [v15 br_currentPersonaID];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001EB80;
  v24[3] = &unk_100045180;
  v17 = br_currentPersonaID;
  v25 = v17;
  v18 = listenerCopy;
  v26 = v18;
  [connectionCopy setInvalidationHandler:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001EFC0;
  v21[3] = &unk_100045260;
  v19 = v17;
  v22 = v19;
  objc_copyWeak(&v23, &location);
  [connectionCopy setInterruptionHandler:v21];
  [connectionCopy resume];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
  return 1;
}

@end