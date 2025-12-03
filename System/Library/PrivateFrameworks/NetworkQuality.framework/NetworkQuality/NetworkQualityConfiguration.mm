@interface NetworkQualityConfiguration
- (NSObject)configuration;
- (NetworkQualityConfiguration)init;
- (NetworkQualityConfiguration)initWithCoder:(id)coder;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setConfiguration:(id)configuration;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NetworkQualityConfiguration);
  objc_storeStrong(&v4->customConfigurationString, self->customConfigurationString);
  objc_storeStrong(&v4->customConfigurationDictionary, self->customConfigurationDictionary);
  bonjourHost = [(NetworkQualityConfiguration *)self bonjourHost];
  [(NetworkQualityConfiguration *)v4 setBonjourHost:bonjourHost];

  networkInterfaceName = [(NetworkQualityConfiguration *)self networkInterfaceName];
  [(NetworkQualityConfiguration *)v4 setNetworkInterfaceName:networkInterfaceName];

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
  hostOverride = [(NetworkQualityConfiguration *)self hostOverride];
  [(NetworkQualityConfiguration *)v4 setHostOverride:hostOverride];

  [(NetworkQualityConfiguration *)v4 setMovingAveragePeriod:[(NetworkQualityConfiguration *)self movingAveragePeriod]];
  [(NetworkQualityConfiguration *)v4 setStandardDeviationThreshold:[(NetworkQualityConfiguration *)self standardDeviationThreshold]];
  [(NetworkQualityConfiguration *)v4 setTrimmedMeanThreshold:[(NetworkQualityConfiguration *)self trimmedMeanThreshold]];
  [(NetworkQualityConfiguration *)v4 setMultipathServiceType:[(NetworkQualityConfiguration *)self multipathServiceType]];
  [(NetworkQualityConfiguration *)v4 setLatencyMeasurementServiceType:[(NetworkQualityConfiguration *)self latencyMeasurementServiceType]];
  [(NetworkQualityConfiguration *)v4 setLoadGeneratingNetworkServiceType:[(NetworkQualityConfiguration *)self loadGeneratingNetworkServiceType]];
  [(NetworkQualityConfiguration *)v4 setUseUnifiedHTTPStack:[(NetworkQualityConfiguration *)self useUnifiedHTTPStack]];
  return v4;
}

- (NetworkQualityConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NetworkQualityConfiguration;
  v5 = [(NetworkQualityConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationString"];
    customConfigurationString = v5->customConfigurationString;
    v5->customConfigurationString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationDictionary"];
    customConfigurationDictionary = v5->customConfigurationDictionary;
    v5->customConfigurationDictionary = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bonjourHost"];
    bonjourHost = v5->_bonjourHost;
    v5->_bonjourHost = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkInterfaceName"];
    networkInterfaceName = v5->_networkInterfaceName;
    v5->_networkInterfaceName = v12;

    v5->_idleLatency = [coderCopy decodeBoolForKey:@"idleLatency"];
    v5->_upload = [coderCopy decodeBoolForKey:@"upload"];
    v5->_download = [coderCopy decodeBoolForKey:@"download"];
    v5->_parallel = [coderCopy decodeBoolForKey:@"parallel"];
    v5->_workingLatency = [coderCopy decodeBoolForKey:@"workingLatency"];
    v5->_validateCertificate = [coderCopy decodeBoolForKey:@"validateCertificate"];
    v5->_minUploadFlows = [coderCopy decodeIntegerForKey:@"minUploadFlows"];
    v5->_maxUploadFlows = [coderCopy decodeIntegerForKey:@"maxUploadFlows"];
    v5->_minDownloadFlows = [coderCopy decodeIntegerForKey:@"minDownloadFlows"];
    v5->_maxDownloadFlows = [coderCopy decodeIntegerForKey:@"maxDownloadFlows"];
    v5->_telemetry = [coderCopy decodeBoolForKey:@"telemetry"];
    v5->_minRuntime = [coderCopy decodeIntegerForKey:@"minRuntime"];
    v5->_maxRuntime = [coderCopy decodeIntegerForKey:@"maxRuntime"];
    v5->_latencyCriteria = [coderCopy decodeIntegerForKey:@"latencyCriteria"];
    v5->_maxDownlinkData = [coderCopy decodeIntegerForKey:@"maxDownlinkData"];
    v5->_maxUplinkData = [coderCopy decodeIntegerForKey:@"maxUplinkData"];
    v5->_maxDownlinkThroughput = [coderCopy decodeIntegerForKey:@"maxDownlinkThroughput"];
    v5->_maxUplinkThroughput = [coderCopy decodeIntegerForKey:@"maxUplinkThroughput"];
    v5->_forceHTTP1 = [coderCopy decodeBoolForKey:@"forceHTTP1"];
    v5->_forceHTTP2 = [coderCopy decodeBoolForKey:@"forceHTTP2"];
    v5->_forceHTTP3 = [coderCopy decodeBoolForKey:@"forceHTTP3"];
    v5->_forceL4S = [coderCopy decodeBoolForKey:@"forceL4S"];
    v5->_forceDisableL4S = [coderCopy decodeBoolForKey:@"forceDisableL4S"];
    v5->_privateRelay = [coderCopy decodeBoolForKey:@"privateRelay"];
    v5->_edgeRelay = [coderCopy decodeBoolForKey:@"edgeRelay"];
    v5->_edgeRelayRemote = [coderCopy decodeBoolForKey:@"edgeRelayRemote"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostOverride"];
    hostOverride = v5->_hostOverride;
    v5->_hostOverride = v14;

    v5->_movingAveragePeriod = [coderCopy decodeIntegerForKey:@"movingAveragePeriod"];
    v5->_standardDeviationThreshold = [coderCopy decodeIntegerForKey:@"standardDeviationThreshold"];
    v5->_trimmedMeanThreshold = [coderCopy decodeIntegerForKey:@"trimmedMeanThreshold"];
    v5->_multipathServiceType = [coderCopy decodeIntForKey:@"multipathServiceType"];
    v5->_latencyMeasurementServiceType = [coderCopy decodeIntForKey:@"latencyMeasurementServiceType"];
    v5->_loadGeneratingNetworkServiceType = [coderCopy decodeIntForKey:@"loadGeneratingNetworkServiceType"];
    v5->_useUnifiedHTTPStack = [coderCopy decodeBoolForKey:@"useUnifiedHTTPStack"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  customConfigurationString = self->customConfigurationString;
  coderCopy = coder;
  [coderCopy encodeObject:customConfigurationString forKey:@"configurationString"];
  [coderCopy encodeObject:self->customConfigurationDictionary forKey:@"configurationDictionary"];
  [coderCopy encodeObject:self->_bonjourHost forKey:@"bonjourHost"];
  [coderCopy encodeObject:self->_networkInterfaceName forKey:@"networkInterfaceName"];
  [coderCopy encodeBool:self->_idleLatency forKey:@"idleLatency"];
  [coderCopy encodeBool:self->_upload forKey:@"upload"];
  [coderCopy encodeBool:self->_download forKey:@"download"];
  [coderCopy encodeBool:self->_parallel forKey:@"parallel"];
  [coderCopy encodeBool:self->_workingLatency forKey:@"workingLatency"];
  [coderCopy encodeBool:self->_validateCertificate forKey:@"validateCertificate"];
  [coderCopy encodeInt64:self->_minUploadFlows forKey:@"minUploadFlows"];
  [coderCopy encodeInt64:self->_maxUploadFlows forKey:@"maxUploadFlows"];
  [coderCopy encodeInt64:self->_minDownloadFlows forKey:@"minDownloadFlows"];
  [coderCopy encodeInt64:self->_maxDownloadFlows forKey:@"maxDownloadFlows"];
  [coderCopy encodeBool:self->_telemetry forKey:@"telemetry"];
  [coderCopy encodeInt64:self->_minRuntime forKey:@"minRuntime"];
  [coderCopy encodeInt64:self->_maxRuntime forKey:@"maxRuntime"];
  [coderCopy encodeInt64:self->_latencyCriteria forKey:@"latencyCriteria"];
  [coderCopy encodeInt64:self->_maxDownlinkData forKey:@"maxDownlinkData"];
  [coderCopy encodeInt64:self->_maxUplinkData forKey:@"maxUplinkData"];
  [coderCopy encodeInt64:self->_maxDownlinkThroughput forKey:@"maxDownlinkThroughput"];
  [coderCopy encodeInt64:self->_maxUplinkThroughput forKey:@"maxUplinkThroughput"];
  [coderCopy encodeBool:self->_forceHTTP1 forKey:@"forceHTTP1"];
  [coderCopy encodeBool:self->_forceHTTP2 forKey:@"forceHTTP2"];
  [coderCopy encodeBool:self->_forceHTTP3 forKey:@"forceHTTP3"];
  [coderCopy encodeBool:self->_forceL4S forKey:@"forceL4S"];
  [coderCopy encodeBool:self->_forceDisableL4S forKey:@"forceDisableL4S"];
  [coderCopy encodeBool:self->_privateRelay forKey:@"privateRelay"];
  [coderCopy encodeBool:self->_edgeRelay forKey:@"edgeRelay"];
  [coderCopy encodeBool:self->_edgeRelayRemote forKey:@"edgeRelayRemote"];
  [coderCopy encodeObject:self->_hostOverride forKey:@"hostOverride"];
  [coderCopy encodeInt64:self->_movingAveragePeriod forKey:@"movingAveragePeriod"];
  [coderCopy encodeInt64:self->_standardDeviationThreshold forKey:@"standardDeviationThreshold"];
  [coderCopy encodeInt64:self->_trimmedMeanThreshold forKey:@"trimmedMeanThreshold"];
  [coderCopy encodeInteger:self->_multipathServiceType forKey:@"multipathServiceType"];
  [coderCopy encodeInteger:self->_latencyMeasurementServiceType forKey:@"latencyMeasurementServiceType"];
  [coderCopy encodeInteger:self->_loadGeneratingNetworkServiceType forKey:@"loadGeneratingNetworkServiceType"];
  [coderCopy encodeBool:self->_useUnifiedHTTPStack forKey:@"useUnifiedHTTPStack"];
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = configurationCopy;
    v5 = 8;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = configurationCopy;
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
      edgeRelayRemote = [(NetworkQualityConfiguration *)self edgeRelayRemote];
      v6 = @"mensura.cdn-apple.com";
      if (edgeRelayRemote)
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
  configuration = [(NetworkQualityConfiguration *)self configuration];
  v7 = [v3 stringWithFormat:@"<%@: configuration=%@, bonjourHost=%@>", v5, configuration, self->_bonjourHost];

  return v7;
}

@end