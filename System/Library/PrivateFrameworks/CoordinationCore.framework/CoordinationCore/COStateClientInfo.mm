@interface COStateClientInfo
- (COStateClientInfo)initWithSuite:(id)suite clusters:(id)clusters;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation COStateClientInfo

- (COStateClientInfo)initWithSuite:(id)suite clusters:(id)clusters
{
  suiteCopy = suite;
  clustersCopy = clusters;
  v16.receiver = self;
  v16.super_class = COStateClientInfo;
  v9 = [(COStateClientInfo *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clusters, clusters);
    objc_storeStrong(&v10->_suite, suite);
    v11 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    state = v10->_state;
    v10->_state = v13;
  }

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(COStateClientInfo *)[COMutableStateClientInfo alloc] initWithSuite:self->_suite clusters:self->_clusters];
  [(COMutableStateClientInfo *)v4 setObservers:self->_observers];
  [(COMutableStateClientInfo *)v4 setState:self->_state];
  [(COStateClientInfo *)v4 setOutstandingWriteCount:self->_outstandingWriteCount];
  [(COStateClientInfo *)v4 setDisconnected:self->_disconnected];
  return v4;
}

@end