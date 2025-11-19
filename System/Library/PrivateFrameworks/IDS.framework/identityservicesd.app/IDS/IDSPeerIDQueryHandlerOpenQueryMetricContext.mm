@interface IDSPeerIDQueryHandlerOpenQueryMetricContext
- (IDSPeerIDQueryHandlerOpenQueryMetricContext)initWithURISet:(id)a3 queryMetric:(id)a4 ktQueryStart:(id)a5 service:(id)a6 uniqueIdentifier:(id)a7;
@end

@implementation IDSPeerIDQueryHandlerOpenQueryMetricContext

- (IDSPeerIDQueryHandlerOpenQueryMetricContext)initWithURISet:(id)a3 queryMetric:(id)a4 ktQueryStart:(id)a5 service:(id)a6 uniqueIdentifier:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IDSPeerIDQueryHandlerOpenQueryMetricContext;
  v17 = [(IDSPeerIDQueryHandlerOpenQueryMetricContext *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_urisWaitingForKTResponse, a3);
    objc_storeStrong(&v18->_queryMetricToLog, a4);
    objc_storeStrong(&v18->_ktQueryStart, a5);
    objc_storeStrong(&v18->_service, a6);
    objc_storeStrong(&v18->_uniqueIdentifier, a7);
  }

  return v18;
}

@end