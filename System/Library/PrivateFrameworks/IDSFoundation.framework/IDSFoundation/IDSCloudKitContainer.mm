@interface IDSCloudKitContainer
- (IDSCloudKitContainer)initWithIdentifier:(id)identifier queue:(id)queue;
- (NSString)containerIdentifier;
@end

@implementation IDSCloudKitContainer

- (IDSCloudKitContainer)initWithIdentifier:(id)identifier queue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v37.receiver = self;
  v37.super_class = IDSCloudKitContainer;
  v8 = [(IDSCloudKitContainer *)&v37 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v10 = [IDSCKContainer containerWithIdentifier:identifierCopy];
    container = v9->_container;
    v9->_container = v10;

    v12 = [IDSCloudKitKeyValueStore alloc];
    container = [(IDSCloudKitContainer *)v9 container];
    v14 = [(IDSCloudKitKeyValueStore *)v12 initWithContainer:container queue:queueCopy];
    keyValueStore = v9->_keyValueStore;
    v9->_keyValueStore = v14;

    v16 = [IDSCloudKitGroupServer alloc];
    container2 = [(IDSCloudKitContainer *)v9 container];
    publicCloudDatabase = [container2 publicCloudDatabase];
    v19 = [(IDSCloudKitGroupServer *)v16 initWithDatabase:publicCloudDatabase queue:queueCopy];
    publicGroupServer = v9->_publicGroupServer;
    v9->_publicGroupServer = v19;

    v21 = [IDSCloudKitGroupServer alloc];
    container3 = [(IDSCloudKitContainer *)v9 container];
    privateCloudDatabase = [container3 privateCloudDatabase];
    v24 = [(IDSCloudKitGroupServer *)v21 initWithDatabase:privateCloudDatabase queue:queueCopy];
    privateGroupServer = v9->_privateGroupServer;
    v9->_privateGroupServer = v24;

    v26 = [IDSCloudKitTransportLog alloc];
    container4 = [(IDSCloudKitContainer *)v9 container];
    privateCloudDatabase2 = [container4 privateCloudDatabase];
    v29 = [(IDSCloudKitTransportLog *)v26 initWithDatabase:privateCloudDatabase2 queue:queueCopy];
    transportLog = v9->_transportLog;
    v9->_transportLog = v29;

    v31 = [IDSCloudKitKeyElectionStore alloc];
    container5 = [(IDSCloudKitContainer *)v9 container];
    privateCloudDatabase3 = [container5 privateCloudDatabase];
    v34 = [(IDSCloudKitKeyElectionStore *)v31 initWithDatabase:privateCloudDatabase3 queue:queueCopy];
    keyElectionStore = v9->_keyElectionStore;
    v9->_keyElectionStore = v34;
  }

  return v9;
}

- (NSString)containerIdentifier
{
  container = [(IDSCloudKitContainer *)self container];
  containerIdentifier = [container containerIdentifier];

  return containerIdentifier;
}

@end