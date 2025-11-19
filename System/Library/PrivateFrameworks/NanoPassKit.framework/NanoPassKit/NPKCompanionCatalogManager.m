@interface NPKCompanionCatalogManager
- (BOOL)needsUpdateForNewCatalog:(id)a3;
- (NPKCompanionCatalogManager)init;
- (PKCatalog)currentCatalog;
- (id)archiveFileName;
@end

@implementation NPKCompanionCatalogManager

- (NPKCompanionCatalogManager)init
{
  v8.receiver = self;
  v8.super_class = NPKCompanionCatalogManager;
  v2 = [(NPKCompanionCatalogManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanopassbook.NPKCompanionAgent.NPKCompanionAgentCatalogManager", &_dispatch_queue_attr_concurrent);
    [(NPKCompanionCatalogManager *)v2 setMutex:v3];

    v4 = [(NPKCompanionCatalogManager *)v2 archiveFileName];
    v5 = [NSData dataWithContentsOfFile:v4];

    objc_opt_class();
    v6 = NPKSecureUnarchiveObject();
    [(NPKCompanionCatalogManager *)v2 setCurrentCatalog:v6];
  }

  return v2;
}

- (id)archiveFileName
{
  v2 = NPKHomeDirectoryPath();
  v3 = [v2 stringByAppendingPathComponent:@"Catalog.archive"];

  return v3;
}

- (PKCatalog)currentCatalog
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100003618;
  v11 = sub_100003628;
  v12 = 0;
  v3 = [(NPKCompanionCatalogManager *)self mutex];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003630;
  v6[3] = &unk_100070DB8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)needsUpdateForNewCatalog:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(NPKCompanionCatalogManager *)self mutex];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003744;
  block[3] = &unk_100070DE0;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_barrier_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

@end