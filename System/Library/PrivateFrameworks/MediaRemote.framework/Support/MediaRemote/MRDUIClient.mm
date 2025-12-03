@interface MRDUIClient
- (MRDUIClient)initWithConnection:(id)connection bundleID:(id)d;
- (void)dealloc;
- (void)nearbyGroupSessionDismissed:(id)dismissed;
- (void)routeRecommendationDismissed;
@end

@implementation MRDUIClient

- (MRDUIClient)initWithConnection:(id)connection bundleID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MRDUIClient;
  v9 = [(MRDUIClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_bundleID, d);
  }

  return v10;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1003AA774();
  }

  v4.receiver = self;
  v4.super_class = MRDUIClient;
  [(MRDUIClient *)&v4 dealloc];
}

- (void)routeRecommendationDismissed
{
  remoteObjectProxy = [(MRDUIClient *)self remoteObjectProxy];
  [remoteObjectProxy routeRecommendationDismissed];
}

- (void)nearbyGroupSessionDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  remoteObjectProxy = [(MRDUIClient *)self remoteObjectProxy];
  [remoteObjectProxy nearbyGroupSessionDismissed:dismissedCopy];
}

@end