@interface IDSPeerIDQueryHandlerOpenQueryMetricContext
- (IDSPeerIDQueryHandlerOpenQueryMetricContext)initWithURISet:(id)set queryMetric:(id)metric ktQueryStart:(id)start service:(id)service uniqueIdentifier:(id)identifier;
@end

@implementation IDSPeerIDQueryHandlerOpenQueryMetricContext

- (IDSPeerIDQueryHandlerOpenQueryMetricContext)initWithURISet:(id)set queryMetric:(id)metric ktQueryStart:(id)start service:(id)service uniqueIdentifier:(id)identifier
{
  setCopy = set;
  metricCopy = metric;
  startCopy = start;
  serviceCopy = service;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = IDSPeerIDQueryHandlerOpenQueryMetricContext;
  v17 = [(IDSPeerIDQueryHandlerOpenQueryMetricContext *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_urisWaitingForKTResponse, set);
    objc_storeStrong(&v18->_queryMetricToLog, metric);
    objc_storeStrong(&v18->_ktQueryStart, start);
    objc_storeStrong(&v18->_service, service);
    objc_storeStrong(&v18->_uniqueIdentifier, identifier);
  }

  return v18;
}

@end