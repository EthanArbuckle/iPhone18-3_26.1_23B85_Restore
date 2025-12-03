@interface ICDSharingClient
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ICDSharingClient)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier operationQueue:(id)queue;
- (id)fileURL;
@end

@implementation ICDSharingClient

- (ICDSharingClient)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier operationQueue:(id)queue
{
  extensionCopy = extension;
  v13.receiver = self;
  v13.super_class = ICDSharingClient;
  v10 = [(BaseSharingClient *)&v13 initWithItemIdentifier:identifier operationQueue:queue];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileProviderExtension, extension);
  }

  return v11;
}

- (id)fileURL
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10001D1C0;
  v18 = sub_10001D1D0;
  v19 = 0;
  v3 = dispatch_group_create();
  fileProviderManager = [(ICDFileProviderExtension *)self->_fileProviderExtension fileProviderManager];
  if (!fileProviderManager)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100028700();
    }
  }

  dispatch_group_enter(v3);
  itemIdentifier = [(BaseSharingClient *)self itemIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D1D8;
  v11[3] = &unk_1000451F8;
  v11[4] = self;
  v13 = &v14;
  v8 = v3;
  v12 = v8;
  [fileProviderManager getUserVisibleURLForItemIdentifier:itemIdentifier completionHandler:v11];

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = getSharingServiceInterface();
  [connectionCopy setExportedInterface:v8];

  v9 = [ICDSharingProxy alloc];
  fileProviderExtension = self->_fileProviderExtension;
  itemIdentifier = [(BaseSharingClient *)self itemIdentifier];
  operationQueue = [(BaseSharingClient *)self operationQueue];
  v13 = [(ICDSharingProxy *)v9 initWithFileProviderExtension:fileProviderExtension itemIdentifier:itemIdentifier fileURL:0 operationQueue:operationQueue];
  [connectionCopy setExportedObject:v13];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  listeners = [(BaseSharingClient *)selfCopy listeners];
  [listeners removeObject:listenerCopy];

  objc_sync_exit(selfCopy);
  objc_initWeak(&location, connectionCopy);
  v16 = +[UMUserManager sharedManager];
  br_currentPersonaID = [v16 br_currentPersonaID];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001D518;
  v25[3] = &unk_100045180;
  v18 = br_currentPersonaID;
  v26 = v18;
  v19 = listenerCopy;
  v27 = v19;
  [connectionCopy setInvalidationHandler:v25];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001D958;
  v22[3] = &unk_100045260;
  v20 = v18;
  v23 = v20;
  objc_copyWeak(&v24, &location);
  [connectionCopy setInterruptionHandler:v22];
  [connectionCopy resume];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
  return 1;
}

@end