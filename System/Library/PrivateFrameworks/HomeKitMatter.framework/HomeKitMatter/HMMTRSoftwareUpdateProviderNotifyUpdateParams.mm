@interface HMMTRSoftwareUpdateProviderNotifyUpdateParams
- (HMMTRSoftwareUpdateProviderNotifyUpdateParams)initWithUpdateToken:(id)token softwareVersion:(id)version didTimeout:(id)timeout;
- (HMMTRSoftwareUpdateProviderNotifyUpdateParams)initWithUpdateToken:(id)token softwareVersion:(id)version linkTypeForMetrics:(id)metrics previousSoftwareVersionNumberForMetrics:(id)forMetrics didTimeout:(id)timeout;
@end

@implementation HMMTRSoftwareUpdateProviderNotifyUpdateParams

- (HMMTRSoftwareUpdateProviderNotifyUpdateParams)initWithUpdateToken:(id)token softwareVersion:(id)version linkTypeForMetrics:(id)metrics previousSoftwareVersionNumberForMetrics:(id)forMetrics didTimeout:(id)timeout
{
  tokenCopy = token;
  versionCopy = version;
  metricsCopy = metrics;
  forMetricsCopy = forMetrics;
  timeoutCopy = timeout;
  v21.receiver = self;
  v21.super_class = HMMTRSoftwareUpdateProviderNotifyUpdateParams;
  v17 = [(HMMTRSoftwareUpdateProviderNotifyUpdateParams *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_updateToken, token);
    objc_storeStrong(&v18->_softwareVersion, version);
    objc_storeStrong(&v18->_linkTypeForMetrics, metrics);
    objc_storeStrong(&v18->_previousSoftwareVersionNumberForMetrics, forMetrics);
    objc_storeStrong(&v18->_didTimeout, timeout);
  }

  return v18;
}

- (HMMTRSoftwareUpdateProviderNotifyUpdateParams)initWithUpdateToken:(id)token softwareVersion:(id)version didTimeout:(id)timeout
{
  tokenCopy = token;
  versionCopy = version;
  timeoutCopy = timeout;
  v15.receiver = self;
  v15.super_class = HMMTRSoftwareUpdateProviderNotifyUpdateParams;
  v12 = [(HMMTRSoftwareUpdateProviderNotifyUpdateParams *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updateToken, token);
    objc_storeStrong(&v13->_softwareVersion, version);
    objc_storeStrong(&v13->_didTimeout, timeout);
  }

  return v13;
}

@end