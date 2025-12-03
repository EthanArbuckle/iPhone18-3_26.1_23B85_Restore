@interface NTKDCollectionClient
+ (id)_sharedCollectionStoreQueue;
- (NTKDCollectionClient)initWithConnection:(id)connection;
- (void)_handleInvalidation;
- (void)_onQueue:(id)queue;
- (void)_performOrEnqueueAction:(id)action;
- (void)addFaceInstanceDescriptor:(id)descriptor forUUID:(id)d;
- (void)collectionStore:(id)store didAddFace:(id)face forUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store didRemoveFaceOfStyle:(int64_t)style forUUID:(id)d seqId:(id)id acknowledge:(id)acknowledge;
- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withConfiguration:(id)configuration seqId:(id)id;
- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id acknowledge:(id)acknowledge;
- (void)collectionStore:(id)store didUpdateOrderedUUIDs:(id)ds seqId:(id)id;
- (void)collectionStore:(id)store didUpdateSelectedUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store didUpgradeFace:(id)face forUUID:(id)d seqId:(id)id;
- (void)collectionStore:(id)store loadOrderedUUIDs:(id)ds selectedUUID:(id)d facesByUUID:(id)iD seqId:(id)id acknowledge:(id)acknowledge;
- (void)flushUpdatesWithIdentifier:(id)identifier;
- (void)registerForCollectionIdentifier:(id)identifier deviceUUID:(id)d withSeqId:(id)id;
- (void)removeFaceForUUID:(id)d;
- (void)resetCollection;
- (void)resetCollectionStore:(id)store acknowledge:(id)acknowledge;
- (void)setOrderedFaceUUIDs:(id)ds;
- (void)setSelectedFaceUUID:(id)d suppressingCallback:(BOOL)callback;
- (void)updateFaceForUUID:(id)d withConfigurationJSONRepresentation:(id)representation;
- (void)updateFaceForUUID:(id)d withResourceDirectory:(id)directory;
- (void)upgradeFaceInstanceDescriptor:(id)descriptor forUUID:(id)d;
@end

@implementation NTKDCollectionClient

+ (id)_sharedCollectionStoreQueue
{
  if (qword_100066BE8 != -1)
  {
    sub_10003DFFC();
  }

  v3 = qword_100066BE0;

  return v3;
}

- (NTKDCollectionClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = NTKDCollectionClient;
  v6 = [(NTKDCollectionClient *)&v20 init];
  if (v6)
  {
    v7 = +[NTKDCollectionClient _sharedCollectionStoreQueue];
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_connection, connection);
    connection = v6->_connection;
    v10 = NTKCollectionClientInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v10];

    v11 = v6->_connection;
    v12 = NTKCollectionServerInterface();
    [(NSXPCConnection *)v11 setExportedInterface:v12];

    [(NSXPCConnection *)v6->_connection setExportedObject:v6];
    objc_initWeak(&location, v6);
    v13 = v6->_connection;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100009D70;
    v17[3] = &unk_10005CA48;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v17];
    v14 = objc_alloc_init(NSMutableArray);
    actionsEnqueuedWhileWaitingForStore = v6->_actionsEnqueuedWhileWaitingForStore;
    v6->_actionsEnqueuedWhileWaitingForStore = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)_handleInvalidation
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009E24;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)registerForCollectionIdentifier:(id)identifier deviceUUID:(id)d withSeqId:(id)id
{
  identifierCopy = identifier;
  dCopy = d;
  idCopy = id;
  sub_100007294(@"com.apple.ntkd.collectionclient.register");
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009FE0;
  v15[3] = &unk_10005CFC0;
  v16 = identifierCopy;
  v17 = dCopy;
  v18 = idCopy;
  selfCopy = self;
  v12 = idCopy;
  v13 = dCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

- (void)_performOrEnqueueAction:(id)action
{
  actionCopy = action;
  sub_100007294(@"com.apple.ntkd.collectionclient.busy");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A448;
  v11[3] = &unk_10005CB10;
  v12 = actionCopy;
  v5 = actionCopy;
  v6 = objc_retainBlock(v11);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A484;
  block[3] = &unk_10005CAC0;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_onQueue:(id)queue
{
  queueCopy = queue;
  sub_100007294(@"com.apple.ntkd.collectionclient.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A5A8;
  block[3] = &unk_10005CB10;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, block);
}

- (void)setSelectedFaceUUID:(id)d suppressingCallback:(BOOL)callback
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A680;
  v6[3] = &unk_10005CFE8;
  selfCopy = self;
  dCopy = d;
  callbackCopy = callback;
  v5 = dCopy;
  [(NTKDCollectionClient *)selfCopy _performOrEnqueueAction:v6];
}

- (void)setOrderedFaceUUIDs:(id)ds
{
  dsCopy = ds;
  objc_opt_class();
  NTKValidateArray();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A860;
  v6[3] = &unk_10005CA98;
  v6[4] = self;
  v7 = dsCopy;
  v5 = dsCopy;
  [(NTKDCollectionClient *)self _performOrEnqueueAction:v6];
}

- (void)updateFaceForUUID:(id)d withConfigurationJSONRepresentation:(id)representation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AA2C;
  v7[3] = &unk_10005CC38;
  selfCopy = self;
  dCopy = d;
  representationCopy = representation;
  v5 = representationCopy;
  v6 = dCopy;
  [(NTKDCollectionClient *)selfCopy _performOrEnqueueAction:v7];
}

- (void)updateFaceForUUID:(id)d withResourceDirectory:(id)directory
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000ACD8;
  v7[3] = &unk_10005CC38;
  selfCopy = self;
  dCopy = d;
  directoryCopy = directory;
  v5 = directoryCopy;
  v6 = dCopy;
  [(NTKDCollectionClient *)selfCopy _performOrEnqueueAction:v7];
}

- (void)upgradeFaceInstanceDescriptor:(id)descriptor forUUID:(id)d
{
  descriptorCopy = descriptor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000AEB4;
  v9[3] = &unk_10005CC38;
  v9[4] = self;
  dCopy = d;
  v11 = descriptorCopy;
  v7 = descriptorCopy;
  v8 = dCopy;
  [(NTKDCollectionClient *)self _performOrEnqueueAction:v9];
}

- (void)addFaceInstanceDescriptor:(id)descriptor forUUID:(id)d
{
  descriptorCopy = descriptor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B0AC;
  v9[3] = &unk_10005CC38;
  v9[4] = self;
  dCopy = d;
  v11 = descriptorCopy;
  v7 = descriptorCopy;
  v8 = dCopy;
  [(NTKDCollectionClient *)self _performOrEnqueueAction:v9];
}

- (void)removeFaceForUUID:(id)d
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B274;
  v4[3] = &unk_10005CA98;
  selfCopy = self;
  dCopy = d;
  v3 = dCopy;
  [(NTKDCollectionClient *)selfCopy _performOrEnqueueAction:v4];
}

- (void)resetCollection
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000B3EC;
  v2[3] = &unk_10005CA70;
  v2[4] = self;
  [(NTKDCollectionClient *)self _performOrEnqueueAction:v2];
}

- (void)flushUpdatesWithIdentifier:(id)identifier
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B598;
  v4[3] = &unk_10005CA98;
  selfCopy = self;
  identifierCopy = identifier;
  v3 = identifierCopy;
  [(NTKDCollectionClient *)selfCopy _performOrEnqueueAction:v4];
}

- (void)collectionStore:(id)store loadOrderedUUIDs:(id)ds selectedUUID:(id)d facesByUUID:(id)iD seqId:(id)id acknowledge:(id)acknowledge
{
  storeCopy = store;
  dsCopy = ds;
  dCopy = d;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000B950;
  v23[3] = &unk_10005D038;
  v24 = storeCopy;
  iDCopy = iD;
  idCopy = id;
  selfCopy = self;
  v29 = dCopy;
  acknowledgeCopy = acknowledge;
  v28 = dsCopy;
  v17 = dCopy;
  v18 = dsCopy;
  v19 = acknowledgeCopy;
  v20 = idCopy;
  v21 = iDCopy;
  v22 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v23];
}

- (void)collectionStore:(id)store didUpdateSelectedUUID:(id)d seqId:(id)id
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000BD94;
  v11[3] = &unk_10005CFC0;
  storeCopy = store;
  dCopy = d;
  idCopy = id;
  selfCopy = self;
  v8 = idCopy;
  v9 = dCopy;
  v10 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v11];
}

- (void)collectionStore:(id)store didUpdateOrderedUUIDs:(id)ds seqId:(id)id
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000BF94;
  v11[3] = &unk_10005CFC0;
  storeCopy = store;
  dsCopy = ds;
  idCopy = id;
  selfCopy = self;
  v8 = idCopy;
  v9 = dsCopy;
  v10 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v11];
}

- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withConfiguration:(id)configuration seqId:(id)id
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000C1C0;
  v14[3] = &unk_10005D060;
  storeCopy = store;
  dCopy = d;
  configurationCopy = configuration;
  idCopy = id;
  selfCopy = self;
  v10 = idCopy;
  v11 = configurationCopy;
  v12 = dCopy;
  v13 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v14];
}

- (void)collectionStore:(id)store didUpdateFaceForUUID:(id)d withResourceDirectory:(id)directory seqId:(id)id acknowledge:(id)acknowledge
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C490;
  v17[3] = &unk_10005D088;
  storeCopy = store;
  dCopy = d;
  directoryCopy = directory;
  idCopy = id;
  selfCopy = self;
  acknowledgeCopy = acknowledge;
  v12 = acknowledgeCopy;
  v13 = idCopy;
  v14 = directoryCopy;
  v15 = dCopy;
  v16 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v17];
}

- (void)collectionStore:(id)store didUpgradeFace:(id)face forUUID:(id)d seqId:(id)id
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000C7C0;
  v14[3] = &unk_10005D060;
  storeCopy = store;
  faceCopy = face;
  dCopy = d;
  idCopy = id;
  selfCopy = self;
  v10 = idCopy;
  v11 = dCopy;
  v12 = faceCopy;
  v13 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v14];
}

- (void)collectionStore:(id)store didAddFace:(id)face forUUID:(id)d seqId:(id)id
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000CA14;
  v14[3] = &unk_10005D060;
  storeCopy = store;
  faceCopy = face;
  dCopy = d;
  idCopy = id;
  selfCopy = self;
  v10 = idCopy;
  v11 = dCopy;
  v12 = faceCopy;
  v13 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v14];
}

- (void)collectionStore:(id)store didRemoveFaceOfStyle:(int64_t)style forUUID:(id)d seqId:(id)id acknowledge:(id)acknowledge
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000CC6C;
  v16[3] = &unk_10005D0B0;
  storeCopy = store;
  dCopy = d;
  idCopy = id;
  selfCopy = self;
  acknowledgeCopy = acknowledge;
  styleCopy = style;
  v12 = acknowledgeCopy;
  v13 = idCopy;
  v14 = dCopy;
  v15 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v16];
}

- (void)resetCollectionStore:(id)store acknowledge:(id)acknowledge
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000CF58;
  v8[3] = &unk_10005D0D8;
  storeCopy = store;
  selfCopy = self;
  acknowledgeCopy = acknowledge;
  v6 = acknowledgeCopy;
  v7 = storeCopy;
  [(NTKDCollectionClient *)self _onQueue:v8];
}

@end