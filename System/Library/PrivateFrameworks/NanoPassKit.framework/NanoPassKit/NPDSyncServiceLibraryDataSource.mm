@interface NPDSyncServiceLibraryDataSource
- (NPDSyncServiceLibraryDataSource)init;
- (NPDSyncServiceLibraryDataSource)initWithPassLibrary:(id)a3 passesFilter:(id)a4;
- (PKCatalog)passesCatalog;
- (id)passLibrarySyncStateForDevice:(id)a3;
- (id)passWithUniqueID:(id)a3;
- (void)addPasses:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation NPDSyncServiceLibraryDataSource

- (NPDSyncServiceLibraryDataSource)init
{
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [(NPDSyncServiceLibraryDataSource *)self initWithPassLibrary:v3];

  return v4;
}

- (NPDSyncServiceLibraryDataSource)initWithPassLibrary:(id)a3 passesFilter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NPDSyncServiceLibraryDataSource;
  v9 = [(NPDSyncServiceLibraryDataSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passLibrary, a3);
    v11 = objc_retainBlock(v8);
    passFilter = v10->_passFilter;
    v10->_passFilter = v11;
  }

  return v10;
}

- (id)passLibrarySyncStateForDevice:(id)a3
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003AC44;
  v13[3] = &unk_100072888;
  v13[4] = self;
  v4 = a3;
  v5 = objc_retainBlock(v13);
  v6 = [(PKPassLibrary *)self->_passLibrary passes];
  v7 = [NSPredicate predicateWithBlock:v5];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  v9 = [NPKPassLibrarySyncState alloc];
  v10 = [NSSet setWithArray:v8];
  v11 = [v9 initWithPasses:v10 device:v4];

  return v11;
}

- (PKCatalog)passesCatalog
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003AD68;
  v10 = sub_10003AD78;
  v11 = 0;
  passLibrary = self->_passLibrary;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003AD80;
  v5[3] = &unk_1000728B0;
  v5[4] = self;
  v5[5] = &v6;
  [(PKPassLibrary *)passLibrary getPassesAndCatalog:0 synchronously:1 withHandler:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)passWithUniqueID:(id)a3
{
  v4 = [(PKPassLibrary *)self->_passLibrary passWithUniqueID:a3];
  if ((*(self->_passFilter + 2))())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)addPasses:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003AFE0;
  v8[3] = &unk_1000728D8;
  v8[4] = self;
  v8[5] = &v9;
  [v6 enumerateObjectsUsingBlock:v8];
  if ((v10[3] & 1) == 0)
  {
    v7[2](v7, 2);
  }

  [(PKPassLibrary *)self->_passLibrary addPasses:v6 withCompletionHandler:v7];
  _Block_object_dispose(&v9, 8);
}

@end