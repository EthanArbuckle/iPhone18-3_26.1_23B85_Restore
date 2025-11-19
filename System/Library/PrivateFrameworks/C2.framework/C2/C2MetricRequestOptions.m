@interface C2MetricRequestOptions
- (C2MetricRequestOptions)init;
- (C2MetricRequestOptions)initWithRequestOptions:(id)a3;
- (id)metricRequestTransportOptions;
@end

@implementation C2MetricRequestOptions

- (C2MetricRequestOptions)init
{
  v10.receiver = self;
  v10.super_class = C2MetricRequestOptions;
  v2 = [(C2MetricRequestOptions *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_allowsCellularAccess = 257;
    v2->__allowsPowerNapScheduling = 1;
    sourceApplicationBundleIdentifier = v2->__sourceApplicationBundleIdentifier;
    v2->__sourceApplicationBundleIdentifier = 0;

    sourceApplicationSecondaryIdentifier = v3->__sourceApplicationSecondaryIdentifier;
    v3->__sourceApplicationSecondaryIdentifier = 0;

    v3->_privacyProxyFailClosedOverride = 0;
    v3->_useNWLoaderOverride = 0;
    v6 = [MEMORY[0x277CCAD78] UUID];
    metricUUID = v3->_metricUUID;
    v3->_metricUUID = v6;

    metricOptions = v3->_metricOptions;
    v3->_metricOptions = 0;
  }

  return v3;
}

- (C2MetricRequestOptions)initWithRequestOptions:(id)a3
{
  v4 = a3;
  v5 = [(C2MetricRequestOptions *)self init];
  if (v5)
  {
    v5->_allowsCellularAccess = [v4 allowsCellularAccess];
    v5->__allowsExpensiveAccess = [v4 _allowsExpensiveAccess];
    v5->__allowsPowerNapScheduling = [v4 _allowsPowerNapScheduling];
    v6 = [v4 _sourceApplicationBundleIdentifier];
    sourceApplicationBundleIdentifier = v5->__sourceApplicationBundleIdentifier;
    v5->__sourceApplicationBundleIdentifier = v6;

    v8 = [v4 _sourceApplicationSecondaryIdentifier];
    sourceApplicationSecondaryIdentifier = v5->__sourceApplicationSecondaryIdentifier;
    v5->__sourceApplicationSecondaryIdentifier = v8;

    v5->_privacyProxyFailClosedOverride = [v4 privacyProxyFailClosedOverride];
    v5->_useNWLoaderOverride = [v4 useNWLoaderOverride];
    v10 = [v4 metricOptions];
    metricOptions = v5->_metricOptions;
    v5->_metricOptions = v10;
  }

  return v5;
}

- (id)metricRequestTransportOptions
{
  v3 = objc_alloc_init(C2RequestOptions);
  [(C2RequestOptions *)v3 setMetricRequest:1];
  [(C2RequestOptions *)v3 setMetricOptions:0];
  [(C2RequestOptions *)v3 setOutOfProcessPoolName:0];
  [(C2RequestOptions *)v3 set_appleIDContextSessionIdentifier:0];
  [(C2RequestOptions *)v3 setTlsPinning:1];
  [(C2RequestOptions *)v3 setDiscretionaryNetworkBehavior:0];
  [(C2RequestOptions *)v3 set_allowsRetryForBackgroundDataTasks:0];
  [(C2RequestOptions *)v3 set_timeoutIntervalForResource:30.0];
  [(C2RequestOptions *)v3 setAllowsCellularAccess:self->_allowsCellularAccess != 0];
  [(C2RequestOptions *)v3 set_allowsExpensiveAccess:self->__allowsExpensiveAccess != 0];
  [(C2RequestOptions *)v3 set_allowsPowerNapScheduling:self->__allowsPowerNapScheduling != 0];
  [(C2RequestOptions *)v3 set_sourceApplicationBundleIdentifier:self->__sourceApplicationBundleIdentifier];
  [(C2RequestOptions *)v3 set_sourceApplicationSecondaryIdentifier:self->__sourceApplicationSecondaryIdentifier];
  [(C2RequestOptions *)v3 setPrivacyProxyFailClosedOverride:self->_privacyProxyFailClosedOverride];
  [(C2RequestOptions *)v3 setUseNWLoaderOverride:self->_useNWLoaderOverride];
  [(C2RequestOptions *)v3 setMetricOptions:self->_metricOptions];

  return v3;
}

@end