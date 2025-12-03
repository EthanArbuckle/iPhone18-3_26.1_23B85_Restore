@interface NTKDComplicationCollectionClient
- (NTKDComplicationCollectionClient)initWithConnection:(id)connection;
- (void)_handleInvalidation;
- (void)_onQueue:(id)queue;
- (void)_performOrEnqueueAction:(id)action;
- (void)complicationStore:(id)store didRemoveComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor seqId:(id)id;
- (void)complicationStore:(id)store didUpdateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier seqId:(id)id;
- (void)complicationStore:(id)store didUpdateSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family seqId:(id)id;
- (void)complicationStore:(id)store loadFullCollectionWithLocalizableSampleTemplates:(id)templates complicationDescriptors:(id)descriptors seqId:(id)id;
- (void)registerForCollectionIdentifier:(id)identifier deviceUUID:(id)d withSeqId:(id)id;
- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor;
- (void)updateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier;
- (void)updateLocalizableSampleDataTemplate:(id)template forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family;
@end

@implementation NTKDComplicationCollectionClient

- (NTKDComplicationCollectionClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v23.receiver = self;
  v23.super_class = NTKDComplicationCollectionClient;
  v6 = [(NTKDComplicationCollectionClient *)&v23 init];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"com.apple.ntkd.complicationcollectionclient.%p", v6];
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    queue = v6->_queue;
    v6->_queue = v10;

    objc_storeStrong(&v6->_connection, connection);
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

- (void)_performOrEnqueueAction:(id)action
{
  actionCopy = action;
  sub_100007294(@"com.apple.ntkd.complicationcollectionclient.busy");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000309EC;
  v11[3] = &unk_10005CB10;
  v12 = actionCopy;
  v5 = actionCopy;
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

- (void)_onQueue:(id)queue
{
  queueCopy = queue;
  sub_100007294(@"com.apple.ntkd.complicationcollectionclient.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030B4C;
  block[3] = &unk_10005CB10;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, block);
}

- (void)registerForCollectionIdentifier:(id)identifier deviceUUID:(id)d withSeqId:(id)id
{
  identifierCopy = identifier;
  dCopy = d;
  idCopy = id;
  sub_100007294(@"com.apple.ntkd.complicaitoncollectionclient.register");
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100030C84;
  v15[3] = &unk_10005CFC0;
  v16 = identifierCopy;
  v17 = dCopy;
  selfCopy = self;
  v19 = idCopy;
  v12 = idCopy;
  v13 = dCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

- (void)updateLocalizableSampleDataTemplate:(id)template forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100031018;
  v12[3] = &unk_10005DD98;
  selfCopy = self;
  templateCopy = template;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  familyCopy = family;
  v9 = descriptorCopy;
  v10 = identifierCopy;
  v11 = templateCopy;
  [(NTKDComplicationCollectionClient *)selfCopy _performOrEnqueueAction:v12];
}

- (void)updateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000310F0;
  v7[3] = &unk_10005CC38;
  selfCopy = self;
  descriptorsCopy = descriptors;
  identifierCopy = identifier;
  v5 = identifierCopy;
  v6 = descriptorsCopy;
  [(NTKDComplicationCollectionClient *)selfCopy _performOrEnqueueAction:v7];
}

- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000311C4;
  v7[3] = &unk_10005CC38;
  selfCopy = self;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  v6 = identifierCopy;
  [(NTKDComplicationCollectionClient *)selfCopy _performOrEnqueueAction:v7];
}

- (void)complicationStore:(id)store loadFullCollectionWithLocalizableSampleTemplates:(id)templates complicationDescriptors:(id)descriptors seqId:(id)id
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000312B8;
  v11[3] = &unk_10005CFC0;
  selfCopy = self;
  templatesCopy = templates;
  descriptorsCopy = descriptors;
  idCopy = id;
  v8 = idCopy;
  v9 = descriptorsCopy;
  v10 = templatesCopy;
  [(NTKDComplicationCollectionClient *)selfCopy _onQueue:v11];
}

- (void)complicationStore:(id)store didUpdateSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family seqId:(id)id
{
  referenceCopy = reference;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  idCopy = id;
  if (!descriptorCopy)
  {
    v18 = NSStringFromSelector(a2);
    [NSException raise:NSInvalidArgumentException format:@"%@: descriptor must be non-nil!", v18];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100031480;
  v23[3] = &unk_10005DA78;
  v23[4] = self;
  v24 = referenceCopy;
  v25 = identifierCopy;
  v26 = descriptorCopy;
  v27 = idCopy;
  familyCopy = family;
  v19 = idCopy;
  v20 = descriptorCopy;
  v21 = identifierCopy;
  v22 = referenceCopy;
  [(NTKDComplicationCollectionClient *)self _onQueue:v23];
}

- (void)complicationStore:(id)store didUpdateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier seqId:(id)id
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000315C0;
  v11[3] = &unk_10005CFC0;
  selfCopy = self;
  descriptorsCopy = descriptors;
  identifierCopy = identifier;
  idCopy = id;
  v8 = idCopy;
  v9 = identifierCopy;
  v10 = descriptorsCopy;
  [(NTKDComplicationCollectionClient *)selfCopy _onQueue:v11];
}

- (void)complicationStore:(id)store didRemoveComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor seqId:(id)id
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000316FC;
  v11[3] = &unk_10005CFC0;
  selfCopy = self;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  idCopy = id;
  v8 = idCopy;
  v9 = descriptorCopy;
  v10 = identifierCopy;
  [(NTKDComplicationCollectionClient *)selfCopy _onQueue:v11];
}

@end