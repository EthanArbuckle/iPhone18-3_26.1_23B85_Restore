@interface NetworkQualityConfiguration
- (NSObject)configuration;
- (NetworkQualityConfiguration)init;
- (NetworkQualityConfiguration)initWithCoder:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setConfiguration:(id)a3;
@end

@implementation NetworkQualityConfiguration

- (NetworkQualityConfiguration)init
{
  v10.receiver = self;
  v10.super_class = NetworkQualityConfiguration;
  v2 = [(NetworkQualityConfiguration *)&v10 init];
  v3 = v2;
  if (v2)
  {
    customConfigurationString = v2->customConfigurationString;
    v2->customConfigurationString = 0;

    customConfigurationDictionary = v3->customConfigurationDictionary;
    v3->customConfigurationDictionary = 0;

    bonjourHost = v3->_bonjourHost;
    v3->_bonjourHost = 0;

    networkInterfaceName = v3->_networkInterfaceName;
    v3->_networkInterfaceName = 0;

    *&v3->_workingLatency = 257;
    *&v3->_idleLatency = 16843009;
    *&v3->_minUploadFlows = xmmword_25B97E900;
    *&v3->_minDownloadFlows = xmmword_25B97E900;
    v3->_telemetry = 1;
    *&v3->_forceHTTP1 = 0;
    v3->_forceDisableL4S = 0;
    *&v3->_minRuntime = 0u;
    *&v3->_latencyCriteria = 0u;
    *&v3->_maxUplinkData = 0u;
    hostOverride = v3->_hostOverride;
    v3->_maxUplinkThroughput = 0;
    v3->_hostOverride = 0;

    *&v3->_movingAveragePeriod = xmmword_25B97E910;
    v3->_useUnifiedHTTPStack = 0;
    v3->_trimmedMeanThreshold = 95;
    v3->_multipathServiceType = 0;
    v3->_latencyMeasurementServiceType = 0;
    v3->_loadGeneratingNetworkServiceType = 0;
  }

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NetworkQualityConfiguration);
  objc_storeStrong(&v4->customConfigurationString, self->customConfigurationString);
  objc_storeStrong(&v4->customConfigurationDictionary, self->customConfigurationDictionary);
  v5 = [(NetworkQualityConfiguration *)self bonjourHost];
  [(NetworkQualityConfiguration *)v4 setBonjourHost:v5];

  v6 = [(NetworkQualityConfiguration *)self networkInterfaceName];
  [(NetworkQualityConfiguration *)v4 setNetworkInterfaceName:v6];

  [(NetworkQualityConfiguration *)v4 setIdleLatency:[(NetworkQualityConfiguration *)self idleLatency]];
  [(NetworkQualityConfiguration *)v4 setUpload:[(NetworkQualityConfiguration *)self upload]];
  [(NetworkQualityConfiguration *)v4 setDownload:[(NetworkQualityConfiguration *)self download]];
  [(NetworkQualityConfiguration *)v4 setParallel:[(NetworkQualityConfiguration *)self parallel]];
  [(NetworkQualityConfiguration *)v4 setWorkingLatency:[(NetworkQualityConfiguration *)self workingLatency]];
  [(NetworkQualityConfiguration *)v4 setValidateCertificate:[(NetworkQualityConfiguration *)self validateCertificate]];
  [(NetworkQualityConfiguration *)v4 setMinUploadFlows:[(NetworkQualityConfiguration *)self minUploadFlows]];
  [(NetworkQualityConfiguration *)v4 setMaxUploadFlows:[(NetworkQualityConfiguration *)self maxUploadFlows]];
  [(NetworkQualityConfiguration *)v4 setMinDownloadFlows:[(NetworkQualityConfiguration *)self minDownloadFlows]];
  [(NetworkQualityConfiguration *)v4 setMaxDownloadFlows:[(NetworkQualityConfiguration *)self maxDownloadFlows]];
  [(NetworkQualityConfiguration *)v4 setMaxDownlinkThroughput:[(NetworkQualityConfiguration *)self maxDownlinkThroughput]];
  [(NetworkQualityConfiguration *)v4 setMaxUplinkThroughput:[(NetworkQualityConfiguration *)self maxUplinkThroughput]];
  [(NetworkQualityConfiguration *)v4 setTelemetry:[(NetworkQualityConfiguration *)self telemetry]];
  [(NetworkQualityConfiguration *)v4 setMinRuntime:[(NetworkQualityConfiguration *)self minRuntime]];
  [(NetworkQualityConfiguration *)v4 setMaxRuntime:[(NetworkQualityConfiguration *)self maxRuntime]];
  [(NetworkQualityConfiguration *)v4 setLatencyCriteria:[(NetworkQualityConfiguration *)self latencyCriteria]];
  [(NetworkQualityConfiguration *)v4 setMaxDownlinkData:[(NetworkQualityConfiguration *)self maxDownlinkData]];
  [(NetworkQualityConfiguration *)v4 setMaxUplinkData:[(NetworkQualityConfiguration *)self maxUplinkData]];
  [(NetworkQualityConfiguration *)v4 setForceHTTP1:[(NetworkQualityConfiguration *)self forceHTTP1]];
  [(NetworkQualityConfiguration *)v4 setForceHTTP2:[(NetworkQualityConfiguration *)self forceHTTP2]];
  [(NetworkQualityConfiguration *)v4 setForceHTTP3:[(NetworkQualityConfiguration *)self forceHTTP3]];
  [(NetworkQualityConfiguration *)v4 setForceL4S:[(NetworkQualityConfiguration *)self forceL4S]];
  [(NetworkQualityConfiguration *)v4 setForceDisableL4S:[(NetworkQualityConfiguration *)self forceDisableL4S]];
  [(NetworkQualityConfiguration *)v4 setPrivateRelay:[(NetworkQualityConfiguration *)self privateRelay]];
  [(NetworkQualityConfiguration *)v4 setEdgeRelay:[(NetworkQualityConfiguration *)self edgeRelay]];
  [(NetworkQualityConfiguration *)v4 setEdgeRelayRemote:[(NetworkQualityConfiguration *)self edgeRelayRemote]];
  v7 = [(NetworkQualityConfiguration *)self hostOverride];
  [(NetworkQualityConfiguration *)v4 setHostOverride:v7];

  [(NetworkQualityConfiguration *)v4 setMovingAveragePeriod:[(NetworkQualityConfiguration *)self movingAveragePeriod]];
  [(NetworkQualityConfiguration *)v4 setStandardDeviationThreshold:[(NetworkQualityConfiguration *)self standardDeviationThreshold]];
  [(NetworkQualityConfiguration *)v4 setTrimmedMeanThreshold:[(NetworkQualityConfiguration *)self trimmedMeanThreshold]];
  [(NetworkQualityConfiguration *)v4 setMultipathServiceType:[(NetworkQualityConfiguration *)self multipathServiceType]];
  [(NetworkQualityConfiguration *)v4 setLatencyMeasurementServiceType:[(NetworkQualityConfiguration *)self latencyMeasurementServiceType]];
  [(NetworkQualityConfiguration *)v4 setLoadGeneratingNetworkServiceType:[(NetworkQualityConfiguration *)self loadGeneratingNetworkServiceType]];
  [(NetworkQualityConfiguration *)v4 setUseUnifiedHTTPStack:[(NetworkQualityConfiguration *)self useUnifiedHTTPStack]];
  return v4;
}

- (NetworkQualityConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NetworkQualityConfiguration;
  v5 = [(NetworkQualityConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationString"];
    customConfigurationString = v5->customConfigurationString;
    v5->customConfigurationString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationDictionary"];
    customConfigurationDictionary = v5->customConfigurationDictionary;
    v5->customConfigurationDictionary = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bonjourHost"];
    bonjourHost = v5->_bonjourHost;
    v5->_bonjourHost = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkInterfaceName"];
    networkInterfaceName = v5->_networkInterfaceName;
    v5->_networkInterfaceName = v12;

    v5->_idleLatency = [v4 decodeBoolForKey:@"idleLatency"];
    v5->_upload = [v4 decodeBoolForKey:@"upload"];
    v5->_download = [v4 decodeBoolForKey:@"download"];
    v5->_parallel = [v4 decodeBoolForKey:@"parallel"];
    v5->_workingLatency = [v4 decodeBoolForKey:@"workingLatency"];
    v5->_validateCertificate = [v4 decodeBoolForKey:@"validateCertificate"];
    v5->_minUploadFlows = [v4 decodeIntegerForKey:@"minUploadFlows"];
    v5->_maxUploadFlows = [v4 decodeIntegerForKey:@"maxUploadFlows"];
    v5->_minDownloadFlows = [v4 decodeIntegerForKey:@"minDownloadFlows"];
    v5->_maxDownloadFlows = [v4 decodeIntegerForKey:@"maxDownloadFlows"];
    v5->_telemetry = [v4 decodeBoolForKey:@"telemetry"];
    v5->_minRuntime = [v4 decodeIntegerForKey:@"minRuntime"];
    v5->_maxRuntime = [v4 decodeIntegerForKey:@"maxRuntime"];
    v5->_latencyCriteria = [v4 decodeIntegerForKey:@"latencyCriteria"];
    v5->_maxDownlinkData = [v4 decodeIntegerForKey:@"maxDownlinkData"];
    v5->_maxUplinkData = [v4 decodeIntegerForKey:@"maxUplinkData"];
    v5->_maxDownlinkThroughput = [v4 decodeIntegerForKey:@"maxDownlinkThroughput"];
    v5->_maxUplinkThroughput = [v4 decodeIntegerForKey:@"maxUplinkThroughput"];
    v5->_forceHTTP1 = [v4 decodeBoolForKey:@"forceHTTP1"];
    v5->_forceHTTP2 = [v4 decodeBoolForKey:@"forceHTTP2"];
    v5->_forceHTTP3 = [v4 decodeBoolForKey:@"forceHTTP3"];
    v5->_forceL4S = [v4 decodeBoolForKey:@"forceL4S"];
    v5->_forceDisableL4S = [v4 decodeBoolForKey:@"forceDisableL4S"];
    v5->_privateRelay = [v4 decodeBoolForKey:@"privateRelay"];
    v5->_edgeRelay = [v4 decodeBoolForKey:@"edgeRelay"];
    v5->_edgeRelayRemote = [v4 decodeBoolForKey:@"edgeRelayRemote"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostOverride"];
    hostOverride = v5->_hostOverride;
    v5->_hostOverride = v14;

    v5->_movingAveragePeriod = [v4 decodeIntegerForKey:@"movingAveragePeriod"];
    v5->_standardDeviationThreshold = [v4 decodeIntegerForKey:@"standardDeviationThreshold"];
    v5->_trimmedMeanThreshold = [v4 decodeIntegerForKey:@"trimmedMeanThreshold"];
    v5->_multipathServiceType = [v4 decodeIntForKey:@"multipathServiceType"];
    v5->_latencyMeasurementServiceType = [v4 decodeIntForKey:@"latencyMeasurementServiceType"];
    v5->_loadGeneratingNetworkServiceType = [v4 decodeIntForKey:@"loadGeneratingNetworkServiceType"];
    v5->_useUnifiedHTTPStack = [v4 decodeBoolForKey:@"useUnifiedHTTPStack"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  customConfigurationString = self->customConfigurationString;
  v5 = a3;
  [v5 encodeObject:customConfigurationString forKey:@"configurationString"];
  [v5 encodeObject:self->customConfigurationDictionary forKey:@"configurationDictionary"];
  [v5 encodeObject:self->_bonjourHost forKey:@"bonjourHost"];
  [v5 encodeObject:self->_networkInterfaceName forKey:@"networkInterfaceName"];
  [v5 encodeBool:self->_idleLatency forKey:@"idleLatency"];
  [v5 encodeBool:self->_upload forKey:@"upload"];
  [v5 encodeBool:self->_download forKey:@"download"];
  [v5 encodeBool:self->_parallel forKey:@"parallel"];
  [v5 encodeBool:self->_workingLatency forKey:@"workingLatency"];
  [v5 encodeBool:self->_validateCertificate forKey:@"validateCertificate"];
  [v5 encodeInt64:self->_minUploadFlows forKey:@"minUploadFlows"];
  [v5 encodeInt64:self->_maxUploadFlows forKey:@"maxUploadFlows"];
  [v5 encodeInt64:self->_minDownloadFlows forKey:@"minDownloadFlows"];
  [v5 encodeInt64:self->_maxDownloadFlows forKey:@"maxDownloadFlows"];
  [v5 encodeBool:self->_telemetry forKey:@"telemetry"];
  [v5 encodeInt64:self->_minRuntime forKey:@"minRuntime"];
  [v5 encodeInt64:self->_maxRuntime forKey:@"maxRuntime"];
  [v5 encodeInt64:self->_latencyCriteria forKey:@"latencyCriteria"];
  [v5 encodeInt64:self->_maxDownlinkData forKey:@"maxDownlinkData"];
  [v5 encodeInt64:self->_maxUplinkData forKey:@"maxUplinkData"];
  [v5 encodeInt64:self->_maxDownlinkThroughput forKey:@"maxDownlinkThroughput"];
  [v5 encodeInt64:self->_maxUplinkThroughput forKey:@"maxUplinkThroughput"];
  [v5 encodeBool:self->_forceHTTP1 forKey:@"forceHTTP1"];
  [v5 encodeBool:self->_forceHTTP2 forKey:@"forceHTTP2"];
  [v5 encodeBool:self->_forceHTTP3 forKey:@"forceHTTP3"];
  [v5 encodeBool:self->_forceL4S forKey:@"forceL4S"];
  [v5 encodeBool:self->_forceDisableL4S forKey:@"forceDisableL4S"];
  [v5 encodeBool:self->_privateRelay forKey:@"privateRelay"];
  [v5 encodeBool:self->_edgeRelay forKey:@"edgeRelay"];
  [v5 encodeBool:self->_edgeRelayRemote forKey:@"edgeRelayRemote"];
  [v5 encodeObject:self->_hostOverride forKey:@"hostOverride"];
  [v5 encodeInt64:self->_movingAveragePeriod forKey:@"movingAveragePeriod"];
  [v5 encodeInt64:self->_standardDeviationThreshold forKey:@"standardDeviationThreshold"];
  [v5 encodeInt64:self->_trimmedMeanThreshold forKey:@"trimmedMeanThreshold"];
  [v5 encodeInteger:self->_multipathServiceType forKey:@"multipathServiceType"];
  [v5 encodeInteger:self->_latencyMeasurementServiceType forKey:@"latencyMeasurementServiceType"];
  [v5 encodeInteger:self->_loadGeneratingNetworkServiceType forKey:@"loadGeneratingNetworkServiceType"];
  [v5 encodeBool:self->_useUnifiedHTTPStack forKey:@"useUnifiedHTTPStack"];
}

- (void)setConfiguration:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v8;
    v5 = 8;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = v8;
    v5 = 16;
  }

  v6 = [v4 copy];
  v7 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = v6;

LABEL_6:
}

- (NSObject)configuration
{
  customConfigurationString = self->customConfigurationString;
  if (customConfigurationString || (customConfigurationString = self->customConfigurationDictionary) != 0)
  {
    v4 = customConfigurationString;
  }

  else
  {
    if ([(NetworkQualityConfiguration *)self edgeRelay])
    {
      v6 = @"mensura-edge-relay.cdn-apple.com";
    }

    else
    {
      v7 = [(NetworkQualityConfiguration *)self edgeRelayRemote];
      v6 = @"mensura.cdn-apple.com";
      if (v7)
      {
        v6 = @"mensura-edge-relay-remote.cdn-apple.com";
      }
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@/.well-known/nq", v6];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NetworkQualityConfiguration *)self configuration];
  v7 = [v3 stringWithFormat:@"<%@: configuration=%@, bonjourHost=%@>", v5, v6, self->_bonjourHost];

  return v7;
}

@end