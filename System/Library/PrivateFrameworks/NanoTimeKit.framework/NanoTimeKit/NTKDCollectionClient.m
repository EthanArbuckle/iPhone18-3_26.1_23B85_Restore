@interface NTKDCollectionClient
+ (id)_sharedCollectionStoreQueue;
- (NTKDCollectionClient)initWithConnection:(id)a3;
- (void)_handleInvalidation;
- (void)_onQueue:(id)a3;
- (void)_performOrEnqueueAction:(id)a3;
- (void)addFaceInstanceDescriptor:(id)a3 forUUID:(id)a4;
- (void)collectionStore:(id)a3 didAddFace:(id)a4 forUUID:(id)a5 seqId:(id)a6;
- (void)collectionStore:(id)a3 didRemoveFaceOfStyle:(int64_t)a4 forUUID:(id)a5 seqId:(id)a6 acknowledge:(id)a7;
- (void)collectionStore:(id)a3 didUpdateFaceForUUID:(id)a4 withConfiguration:(id)a5 seqId:(id)a6;
- (void)collectionStore:(id)a3 didUpdateFaceForUUID:(id)a4 withResourceDirectory:(id)a5 seqId:(id)a6 acknowledge:(id)a7;
- (void)collectionStore:(id)a3 didUpdateOrderedUUIDs:(id)a4 seqId:(id)a5;
- (void)collectionStore:(id)a3 didUpdateSelectedUUID:(id)a4 seqId:(id)a5;
- (void)collectionStore:(id)a3 didUpgradeFace:(id)a4 forUUID:(id)a5 seqId:(id)a6;
- (void)collectionStore:(id)a3 loadOrderedUUIDs:(id)a4 selectedUUID:(id)a5 facesByUUID:(id)a6 seqId:(id)a7 acknowledge:(id)a8;
- (void)flushUpdatesWithIdentifier:(id)a3;
- (void)registerForCollectionIdentifier:(id)a3 deviceUUID:(id)a4 withSeqId:(id)a5;
- (void)removeFaceForUUID:(id)a3;
- (void)resetCollection;
- (void)resetCollectionStore:(id)a3 acknowledge:(id)a4;
- (void)setOrderedFaceUUIDs:(id)a3;
- (void)setSelectedFaceUUID:(id)a3 suppressingCallback:(BOOL)a4;
- (void)updateFaceForUUID:(id)a3 withConfigurationJSONRepresentation:(id)a4;
- (void)updateFaceForUUID:(id)a3 withResourceDirectory:(id)a4;
- (void)upgradeFaceInstanceDescriptor:(id)a3 forUUID:(id)a4;
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

- (NTKDCollectionClient)initWithConnection:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = NTKDCollectionClient;
  v6 = [(NTKDCollectionClient *)&v20 init];
  if (v6)
  {
    v7 = +[NTKDCollectionClient _sharedCollectionStoreQueue];
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_connection, a3);
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

- (void)registerForCollectionIdentifier:(id)a3 deviceUUID:(id)a4 withSeqId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_100007294(@"com.apple.ntkd.collectionclient.register");
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009FE0;
  v15[3] = &unk_10005CFC0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)_performOrEnqueueAction:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.collectionclient.busy");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A448;
  v11[3] = &unk_10005CB10;
  v12 = v4;
  v5 = v4;
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

- (void)_onQueue:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.collectionclient.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A5A8;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)setSelectedFaceUUID:(id)a3 suppressingCallback:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A680;
  v6[3] = &unk_10005CFE8;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(NTKDCollectionClient *)v7 _performOrEnqueueAction:v6];
}

- (void)setOrderedFaceUUIDs:(id)a3
{
  v4 = a3;
  objc_opt_class();
  NTKValidateArray();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A860;
  v6[3] = &unk_10005CA98;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NTKDCollectionClient *)self _performOrEnqueueAction:v6];
}

- (void)updateFaceForUUID:(id)a3 withConfigurationJSONRepresentation:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AA2C;
  v7[3] = &unk_10005CC38;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKDCollectionClient *)v8 _performOrEnqueueAction:v7];
}

- (void)updateFaceForUUID:(id)a3 withResourceDirectory:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000ACD8;
  v7[3] = &unk_10005CC38;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKDCollectionClient *)v8 _performOrEnqueueAction:v7];
}

- (void)upgradeFaceInstanceDescriptor:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000AEB4;
  v9[3] = &unk_10005CC38;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(NTKDCollectionClient *)self _performOrEnqueueAction:v9];
}

- (void)addFaceInstanceDescriptor:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B0AC;
  v9[3] = &unk_10005CC38;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(NTKDCollectionClient *)self _performOrEnqueueAction:v9];
}

- (void)removeFaceForUUID:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B274;
  v4[3] = &unk_10005CA98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDCollectionClient *)v5 _performOrEnqueueAction:v4];
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

- (void)flushUpdatesWithIdentifier:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B598;
  v4[3] = &unk_10005CA98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDCollectionClient *)v5 _performOrEnqueueAction:v4];
}

- (void)collectionStore:(id)a3 loadOrderedUUIDs:(id)a4 selectedUUID:(id)a5 facesByUUID:(id)a6 seqId:(id)a7 acknowledge:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000B950;
  v23[3] = &unk_10005D038;
  v24 = v14;
  v25 = a6;
  v26 = a7;
  v27 = self;
  v29 = v16;
  v30 = a8;
  v28 = v15;
  v17 = v16;
  v18 = v15;
  v19 = v30;
  v20 = v26;
  v21 = v25;
  v22 = v14;
  [(NTKDCollectionClient *)self _onQueue:v23];
}

- (void)collectionStore:(id)a3 didUpdateSelectedUUID:(id)a4 seqId:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000BD94;
  v11[3] = &unk_10005CFC0;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  [(NTKDCollectionClient *)self _onQueue:v11];
}

- (void)collectionStore:(id)a3 didUpdateOrderedUUIDs:(id)a4 seqId:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000BF94;
  v11[3] = &unk_10005CFC0;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  [(NTKDCollectionClient *)self _onQueue:v11];
}

- (void)collectionStore:(id)a3 didUpdateFaceForUUID:(id)a4 withConfiguration:(id)a5 seqId:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000C1C0;
  v14[3] = &unk_10005D060;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = self;
  v10 = v18;
  v11 = v17;
  v12 = v16;
  v13 = v15;
  [(NTKDCollectionClient *)self _onQueue:v14];
}

- (void)collectionStore:(id)a3 didUpdateFaceForUUID:(id)a4 withResourceDirectory:(id)a5 seqId:(id)a6 acknowledge:(id)a7
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C490;
  v17[3] = &unk_10005D088;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = self;
  v23 = a7;
  v12 = v23;
  v13 = v21;
  v14 = v20;
  v15 = v19;
  v16 = v18;
  [(NTKDCollectionClient *)self _onQueue:v17];
}

- (void)collectionStore:(id)a3 didUpgradeFace:(id)a4 forUUID:(id)a5 seqId:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000C7C0;
  v14[3] = &unk_10005D060;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = self;
  v10 = v18;
  v11 = v17;
  v12 = v16;
  v13 = v15;
  [(NTKDCollectionClient *)self _onQueue:v14];
}

- (void)collectionStore:(id)a3 didAddFace:(id)a4 forUUID:(id)a5 seqId:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000CA14;
  v14[3] = &unk_10005D060;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = self;
  v10 = v18;
  v11 = v17;
  v12 = v16;
  v13 = v15;
  [(NTKDCollectionClient *)self _onQueue:v14];
}

- (void)collectionStore:(id)a3 didRemoveFaceOfStyle:(int64_t)a4 forUUID:(id)a5 seqId:(id)a6 acknowledge:(id)a7
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000CC6C;
  v16[3] = &unk_10005D0B0;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = self;
  v21 = a7;
  v22 = a4;
  v12 = v21;
  v13 = v19;
  v14 = v18;
  v15 = v17;
  [(NTKDCollectionClient *)self _onQueue:v16];
}

- (void)resetCollectionStore:(id)a3 acknowledge:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000CF58;
  v8[3] = &unk_10005D0D8;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(NTKDCollectionClient *)self _onQueue:v8];
}

@end