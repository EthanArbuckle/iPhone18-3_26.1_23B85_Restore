@interface ICDFileProvideriWorkCollaborationServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDFileProvideriWorkCollaborationServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 operationQueue:(id)a5;
@end

@implementation ICDFileProvideriWorkCollaborationServiceSource

- (ICDFileProvideriWorkCollaborationServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 operationQueue:(id)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = ICDFileProvideriWorkCollaborationServiceSource;
  v10 = [(BaseFileProvideriWorkCollaborationServiceSource *)&v15 initWithItemIdentifier:a4 operationQueue:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileProviderExtension, a3);
    v12 = [NSHashTable hashTableWithOptions:0];
    listeners = v11->_listeners;
    v11->_listeners = v12;
  }

  return v11;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BaseFileProvideriWorkCollaboration];
  [v7 setExportedInterface:v8];

  v9 = [ICDFileProvideriWorkCollaborationProxy alloc];
  fileProviderExtension = self->_fileProviderExtension;
  v11 = [(BaseFileProvideriWorkCollaborationServiceSource *)self itemIdentifier];
  v12 = [(BaseFileProvideriWorkCollaborationServiceSource *)self operationQueue];
  v13 = [(ICDFileProvideriWorkCollaborationProxy *)v9 initWithFileProviderExtension:fileProviderExtension itemIdentifier:v11 operationQueue:v12];
  [v7 setExportedObject:v13];

  v14 = self;
  objc_sync_enter(v14);
  [(NSHashTable *)v14->_listeners removeObject:v6];
  objc_sync_exit(v14);

  objc_initWeak(&location, v7);
  v15 = +[UMUserManager sharedManager];
  v16 = [v15 br_currentPersonaID];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001EB80;
  v24[3] = &unk_100045180;
  v17 = v16;
  v25 = v17;
  v18 = v6;
  v26 = v18;
  [v7 setInvalidationHandler:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001EFC0;
  v21[3] = &unk_100045260;
  v19 = v17;
  v22 = v19;
  objc_copyWeak(&v23, &location);
  [v7 setInterruptionHandler:v21];
  [v7 resume];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
  return 1;
}

@end