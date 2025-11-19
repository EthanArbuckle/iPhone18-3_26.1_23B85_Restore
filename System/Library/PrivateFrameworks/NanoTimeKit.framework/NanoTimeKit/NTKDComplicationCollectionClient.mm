@interface NTKDComplicationCollectionClient
- (NTKDComplicationCollectionClient)initWithConnection:(id)a3;
- (void)_handleInvalidation;
- (void)_onQueue:(id)a3;
- (void)_performOrEnqueueAction:(id)a3;
- (void)complicationStore:(id)a3 didRemoveComplicationSampleTemplatesForClientIdentifier:(id)a4 descriptor:(id)a5 seqId:(id)a6;
- (void)complicationStore:(id)a3 didUpdateComplicationDescriptors:(id)a4 forClientIdentifier:(id)a5 seqId:(id)a6;
- (void)complicationStore:(id)a3 didUpdateSampleTemplateReference:(id)a4 forClientIdentifier:(id)a5 descriptor:(id)a6 family:(int64_t)a7 seqId:(id)a8;
- (void)complicationStore:(id)a3 loadFullCollectionWithLocalizableSampleTemplates:(id)a4 complicationDescriptors:(id)a5 seqId:(id)a6;
- (void)registerForCollectionIdentifier:(id)a3 deviceUUID:(id)a4 withSeqId:(id)a5;
- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)a3 descriptor:(id)a4;
- (void)updateComplicationDescriptors:(id)a3 forClientIdentifier:(id)a4;
- (void)updateLocalizableSampleDataTemplate:(id)a3 forClientIdentifier:(id)a4 descriptor:(id)a5 family:(int64_t)a6;
@end

@implementation NTKDComplicationCollectionClient

- (NTKDComplicationCollectionClient)initWithConnection:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = NTKDComplicationCollectionClient;
  v6 = [(NTKDComplicationCollectionClient *)&v23 init];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"com.apple.ntkd.complicationcollectionclient.%p", v6];
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    queue = v6->_queue;
    v6->_queue = v10;

    objc_storeStrong(&v6->_connection, a3);
    connection = v6->_connection;
    v13 = NTKComplicationStoreClientInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v13];

    v14 = v6->_connection;
    v15 = NTKComplicationStoreServerInterface();
    [(NSXPCConnection *)v14 setExportedInterface:v15];

    [(NSXPCConnection *)v6->_connection setExportedObject:v6];
    objc_initWeak(&location, v6);
    v16 = v6->_connection;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100030764;
    v20[3] = &unk_10005CA48;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v16 setInvalidationHandler:v20];
    v17 = objc_alloc_init(NSMutableArray);
    actionsEnqueuedWhileWaitingForStore = v6->_actionsEnqueuedWhileWaitingForStore;
    v6->_actionsEnqueuedWhileWaitingForStore = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)_handleInvalidation
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030818;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_performOrEnqueueAction:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.complicationcollectionclient.busy");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000309EC;
  v11[3] = &unk_10005CB10;
  v12 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v11);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030A28;
  block[3] = &unk_10005CAC0;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_onQueue:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.complicationcollectionclient.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030B4C;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)registerForCollectionIdentifier:(id)a3 deviceUUID:(id)a4 withSeqId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_100007294(@"com.apple.ntkd.complicaitoncollectionclient.register");
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100030C84;
  v15[3] = &unk_10005CFC0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)updateLocalizableSampleDataTemplate:(id)a3 forClientIdentifier:(id)a4 descriptor:(id)a5 family:(int64_t)a6
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100031018;
  v12[3] = &unk_10005DD98;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v9 = v16;
  v10 = v15;
  v11 = v14;
  [(NTKDComplicationCollectionClient *)v13 _performOrEnqueueAction:v12];
}

- (void)updateComplicationDescriptors:(id)a3 forClientIdentifier:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000310F0;
  v7[3] = &unk_10005CC38;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKDComplicationCollectionClient *)v8 _performOrEnqueueAction:v7];
}

- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)a3 descriptor:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000311C4;
  v7[3] = &unk_10005CC38;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKDComplicationCollectionClient *)v8 _performOrEnqueueAction:v7];
}

- (void)complicationStore:(id)a3 loadFullCollectionWithLocalizableSampleTemplates:(id)a4 complicationDescriptors:(id)a5 seqId:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000312B8;
  v11[3] = &unk_10005CFC0;
  v12 = self;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v8 = v15;
  v9 = v14;
  v10 = v13;
  [(NTKDComplicationCollectionClient *)v12 _onQueue:v11];
}

- (void)complicationStore:(id)a3 didUpdateSampleTemplateReference:(id)a4 forClientIdentifier:(id)a5 descriptor:(id)a6 family:(int64_t)a7 seqId:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if (!v16)
  {
    v18 = NSStringFromSelector(a2);
    [NSException raise:NSInvalidArgumentException format:@"%@: descriptor must be non-nil!", v18];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100031480;
  v23[3] = &unk_10005DA78;
  v23[4] = self;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = a7;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  [(NTKDComplicationCollectionClient *)self _onQueue:v23];
}

- (void)complicationStore:(id)a3 didUpdateComplicationDescriptors:(id)a4 forClientIdentifier:(id)a5 seqId:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000315C0;
  v11[3] = &unk_10005CFC0;
  v12 = self;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v8 = v15;
  v9 = v14;
  v10 = v13;
  [(NTKDComplicationCollectionClient *)v12 _onQueue:v11];
}

- (void)complicationStore:(id)a3 didRemoveComplicationSampleTemplatesForClientIdentifier:(id)a4 descriptor:(id)a5 seqId:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000316FC;
  v11[3] = &unk_10005CFC0;
  v12 = self;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v8 = v15;
  v9 = v14;
  v10 = v13;
  [(NTKDComplicationCollectionClient *)v12 _onQueue:v11];
}

@end