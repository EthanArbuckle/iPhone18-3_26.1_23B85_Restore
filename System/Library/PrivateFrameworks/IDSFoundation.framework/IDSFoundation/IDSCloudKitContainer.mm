@interface IDSCloudKitContainer
- (IDSCloudKitContainer)initWithIdentifier:(id)a3 queue:(id)a4;
- (NSString)containerIdentifier;
@end

@implementation IDSCloudKitContainer

- (IDSCloudKitContainer)initWithIdentifier:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = IDSCloudKitContainer;
  v8 = [(IDSCloudKitContainer *)&v37 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    v10 = [IDSCKContainer containerWithIdentifier:v6];
    container = v9->_container;
    v9->_container = v10;

    v12 = [IDSCloudKitKeyValueStore alloc];
    v13 = [(IDSCloudKitContainer *)v9 container];
    v14 = [(IDSCloudKitKeyValueStore *)v12 initWithContainer:v13 queue:v7];
    keyValueStore = v9->_keyValueStore;
    v9->_keyValueStore = v14;

    v16 = [IDSCloudKitGroupServer alloc];
    v17 = [(IDSCloudKitContainer *)v9 container];
    v18 = [v17 publicCloudDatabase];
    v19 = [(IDSCloudKitGroupServer *)v16 initWithDatabase:v18 queue:v7];
    publicGroupServer = v9->_publicGroupServer;
    v9->_publicGroupServer = v19;

    v21 = [IDSCloudKitGroupServer alloc];
    v22 = [(IDSCloudKitContainer *)v9 container];
    v23 = [v22 privateCloudDatabase];
    v24 = [(IDSCloudKitGroupServer *)v21 initWithDatabase:v23 queue:v7];
    privateGroupServer = v9->_privateGroupServer;
    v9->_privateGroupServer = v24;

    v26 = [IDSCloudKitTransportLog alloc];
    v27 = [(IDSCloudKitContainer *)v9 container];
    v28 = [v27 privateCloudDatabase];
    v29 = [(IDSCloudKitTransportLog *)v26 initWithDatabase:v28 queue:v7];
    transportLog = v9->_transportLog;
    v9->_transportLog = v29;

    v31 = [IDSCloudKitKeyElectionStore alloc];
    v32 = [(IDSCloudKitContainer *)v9 container];
    v33 = [v32 privateCloudDatabase];
    v34 = [(IDSCloudKitKeyElectionStore *)v31 initWithDatabase:v33 queue:v7];
    keyElectionStore = v9->_keyElectionStore;
    v9->_keyElectionStore = v34;
  }

  return v9;
}

- (NSString)containerIdentifier
{
  v2 = [(IDSCloudKitContainer *)self container];
  v3 = [v2 containerIdentifier];

  return v3;
}

@end