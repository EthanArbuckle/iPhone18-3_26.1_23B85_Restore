@interface MRDUIClient
- (MRDUIClient)initWithConnection:(id)a3 bundleID:(id)a4;
- (void)dealloc;
- (void)nearbyGroupSessionDismissed:(id)a3;
- (void)routeRecommendationDismissed;
@end

@implementation MRDUIClient

- (MRDUIClient)initWithConnection:(id)a3 bundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MRDUIClient;
  v9 = [(MRDUIClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_bundleID, a4);
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
  v2 = [(MRDUIClient *)self remoteObjectProxy];
  [v2 routeRecommendationDismissed];
}

- (void)nearbyGroupSessionDismissed:(id)a3
{
  v4 = a3;
  v5 = [(MRDUIClient *)self remoteObjectProxy];
  [v5 nearbyGroupSessionDismissed:v4];
}

@end