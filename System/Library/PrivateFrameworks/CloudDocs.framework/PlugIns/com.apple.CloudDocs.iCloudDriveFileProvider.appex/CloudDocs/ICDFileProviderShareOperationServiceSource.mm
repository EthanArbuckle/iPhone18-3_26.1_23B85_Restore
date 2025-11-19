@interface ICDFileProviderShareOperationServiceSource
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDFileProviderShareOperationServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 operationQueue:(id)a5;
@end

@implementation ICDFileProviderShareOperationServiceSource

- (ICDFileProviderShareOperationServiceSource)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 operationQueue:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ICDFileProviderShareOperationServiceSource;
  v10 = [(BaseFileProviderShareOperationServiceSource *)&v13 initWithItemIdentifier:a4 operationQueue:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileProviderExtension, a3);
  }

  return v11;
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
  v10 = BRCXPCSharingOperationInterface();
  [v7 setExportedInterface:v10];

  v11 = [ICDFileProviderShareOperationProxy alloc];
  fileProviderExtension = self->_fileProviderExtension;
  v13 = [(BaseFileProviderShareOperationServiceSource *)self itemIdentifier];
  v14 = [(BaseFileProviderShareOperationServiceSource *)self operationQueue];
  v15 = [(ICDFileProviderShareOperationProxy *)v11 initWithFileProviderExtension:fileProviderExtension itemIdentifier:v13 operationQueue:v14 clientPrivilegesDescriptor:v9];
  [v7 setExportedObject:v15];

  v16 = self;
  objc_sync_enter(v16);
  v17 = [(BaseFileProviderShareOperationServiceSource *)v16 listeners];
  [v17 removeObject:v6];

  objc_sync_exit(v16);
  objc_initWeak(location, v7);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001E15C;
  v25[3] = &unk_1000446B0;
  v18 = v6;
  v26 = v18;
  [v7 setInvalidationHandler:v25];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10001E1DC;
  v23 = &unk_1000446D8;
  objc_copyWeak(&v24, location);
  [v7 setInterruptionHandler:&v20];
  [v7 resume];
  objc_destroyWeak(&v24);

  objc_destroyWeak(location);
  return 1;
}

@end