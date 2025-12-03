@interface NPDSyncServiceLibraryDataSource
- (NPDSyncServiceLibraryDataSource)init;
- (NPDSyncServiceLibraryDataSource)initWithPassLibrary:(id)library passesFilter:(id)filter;
- (PKCatalog)passesCatalog;
- (id)passLibrarySyncStateForDevice:(id)device;
- (id)passWithUniqueID:(id)d;
- (void)addPasses:(id)passes withCompletionHandler:(id)handler;
@end

@implementation NPDSyncServiceLibraryDataSource

- (NPDSyncServiceLibraryDataSource)init
{
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [(NPDSyncServiceLibraryDataSource *)self initWithPassLibrary:v3];

  return v4;
}

- (NPDSyncServiceLibraryDataSource)initWithPassLibrary:(id)library passesFilter:(id)filter
{
  libraryCopy = library;
  filterCopy = filter;
  v14.receiver = self;
  v14.super_class = NPDSyncServiceLibraryDataSource;
  v9 = [(NPDSyncServiceLibraryDataSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passLibrary, library);
    v11 = objc_retainBlock(filterCopy);
    passFilter = v10->_passFilter;
    v10->_passFilter = v11;
  }

  return v10;
}

- (id)passLibrarySyncStateForDevice:(id)device
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003AC44;
  v13[3] = &unk_100072888;
  v13[4] = self;
  deviceCopy = device;
  v5 = objc_retainBlock(v13);
  passes = [(PKPassLibrary *)self->_passLibrary passes];
  v7 = [NSPredicate predicateWithBlock:v5];
  v8 = [passes filteredArrayUsingPredicate:v7];

  v9 = [NPKPassLibrarySyncState alloc];
  v10 = [NSSet setWithArray:v8];
  v11 = [v9 initWithPasses:v10 device:deviceCopy];

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

- (id)passWithUniqueID:(id)d
{
  v4 = [(PKPassLibrary *)self->_passLibrary passWithUniqueID:d];
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

- (void)addPasses:(id)passes withCompletionHandler:(id)handler
{
  passesCopy = passes;
  handlerCopy = handler;
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
  [passesCopy enumerateObjectsUsingBlock:v8];
  if ((v10[3] & 1) == 0)
  {
    handlerCopy[2](handlerCopy, 2);
  }

  [(PKPassLibrary *)self->_passLibrary addPasses:passesCopy withCompletionHandler:handlerCopy];
  _Block_object_dispose(&v9, 8);
}

@end