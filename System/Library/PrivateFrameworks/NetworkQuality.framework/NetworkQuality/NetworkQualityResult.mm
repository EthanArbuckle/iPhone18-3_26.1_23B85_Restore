@interface NetworkQualityResult
+ (int64_t)ratingForResponsivenessScore:(int64_t)score;
- (NetworkQualityResult)init;
- (NetworkQualityResult)initWithCoder:(id)coder;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)finalizeResult;
@end

@implementation NetworkQualityResult

- (NetworkQualityResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v98.receiver = self;
  v98.super_class = NetworkQualityResult;
  v5 = [(NetworkQualityResult *)&v98 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = objc_opt_class();
    v97 = [coderCopy decodeObjectOfClass:v8 forKey:@"index"];
    v5->_index = [v97 integerValue];
    v9 = objc_opt_class();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"downlinkCapacity"];
    downlinkCapacity = v5->_downlinkCapacity;
    v5->_downlinkCapacity = v10;

    v12 = [coderCopy decodeObjectOfClass:v8 forKey:@"downlinkBytesTransferred"];
    downlinkBytesTransferred = v5->_downlinkBytesTransferred;
    v5->_downlinkBytesTransferred = v12;

    v14 = [coderCopy decodeObjectOfClass:v8 forKey:@"downlinkFlows"];
    downlinkFlows = v5->_downlinkFlows;
    v5->_downlinkFlows = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v16;

    v5->_isCellular = [coderCopy decodeBoolForKey:@"isCellular"];
    v18 = [coderCopy decodeObjectOfClass:v9 forKey:@"uplinkCapacity"];
    uplinkCapacity = v5->_uplinkCapacity;
    v5->_uplinkCapacity = v18;

    v20 = [coderCopy decodeObjectOfClass:v8 forKey:@"uplinkBytesTransferred"];
    uplinkBytesTransferred = v5->_uplinkBytesTransferred;
    v5->_uplinkBytesTransferred = v20;

    v22 = [coderCopy decodeObjectOfClass:v8 forKey:@"uplinkFlows"];
    uplinkFlows = v5->_uplinkFlows;
    v5->_uplinkFlows = v22;

    v24 = [coderCopy decodeObjectOfClass:v9 forKey:@"downlinkResponsiveness"];
    downlinkResponsiveness = v5->_downlinkResponsiveness;
    v5->_downlinkResponsiveness = v24;

    v26 = [coderCopy decodeObjectOfClass:v8 forKey:@"downlinkTCPResponsiveness"];
    downlinkTCPResponsiveness = v5->_downlinkTCPResponsiveness;
    v5->_downlinkTCPResponsiveness = v26;

    v28 = [coderCopy decodeObjectOfClass:v8 forKey:@"downlinkTLSResponsiveness"];
    downlinkTLSResponsiveness = v5->_downlinkTLSResponsiveness;
    v5->_downlinkTLSResponsiveness = v28;

    v30 = [coderCopy decodeObjectOfClass:v8 forKey:@"downlinkHTTPForeignResponsiveness"];
    downlinkHTTPForeignResponsiveness = v5->_downlinkHTTPForeignResponsiveness;
    v5->_downlinkHTTPForeignResponsiveness = v30;

    v32 = [coderCopy decodeObjectOfClass:v8 forKey:@"downlinkHTTPSelfResponsiveness"];
    downlinkHTTPSelfResponsiveness = v5->_downlinkHTTPSelfResponsiveness;
    v5->_downlinkHTTPSelfResponsiveness = v32;

    v34 = [coderCopy decodeObjectOfClass:v9 forKey:@"uplinkResponsiveness"];
    uplinkResponsiveness = v5->_uplinkResponsiveness;
    v5->_uplinkResponsiveness = v34;

    v36 = [coderCopy decodeObjectOfClass:v8 forKey:@"uplinkTCPResponsiveness"];
    uplinkTCPResponsiveness = v5->_uplinkTCPResponsiveness;
    v5->_uplinkTCPResponsiveness = v36;

    v38 = [coderCopy decodeObjectOfClass:v8 forKey:@"uplinkTLSResponsiveness"];
    uplinkTLSResponsiveness = v5->_uplinkTLSResponsiveness;
    v5->_uplinkTLSResponsiveness = v38;

    v40 = [coderCopy decodeObjectOfClass:v8 forKey:@"uplinkHTTPForeignResponsiveness"];
    uplinkHTTPForeignResponsiveness = v5->_uplinkHTTPForeignResponsiveness;
    v5->_uplinkHTTPForeignResponsiveness = v40;

    v42 = [coderCopy decodeObjectOfClass:v8 forKey:@"uplinkHTTPSelfResponsiveness"];
    uplinkHTTPSelfResponsiveness = v5->_uplinkHTTPSelfResponsiveness;
    v5->_uplinkHTTPSelfResponsiveness = v42;

    v44 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = [v44 setWithObjects:{v45, v46, v47, objc_opt_class(), 0}];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"workingLatencyValues"];
    workingLatencyValues = v5->_workingLatencyValues;
    v5->_workingLatencyValues = v49;

    v51 = [coderCopy decodeObjectOfClass:v9 forKey:@"latency"];
    latency = v5->_latency;
    v5->_latency = v51;

    v53 = [coderCopy decodeObjectOfClass:v8 forKey:@"tcpLatency"];
    tcpLatency = v5->_tcpLatency;
    v5->_tcpLatency = v53;

    v55 = [coderCopy decodeObjectOfClass:v8 forKey:@"tlsLatency"];
    tlsLatency = v5->_tlsLatency;
    v5->_tlsLatency = v55;

    v57 = [coderCopy decodeObjectOfClass:v8 forKey:@"httpLatency"];
    httpLatency = v5->_httpLatency;
    v5->_httpLatency = v57;

    v59 = MEMORY[0x277CBEB98];
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = [v59 setWithObjects:{v60, v61, v62, objc_opt_class(), 0}];
    v64 = [coderCopy decodeObjectOfClasses:v63 forKey:@"idleLatencyValues"];
    idleLatencyValues = v5->_idleLatencyValues;
    v5->_idleLatencyValues = v64;

    v66 = MEMORY[0x277CBEB98];
    v67 = objc_opt_class();
    v68 = objc_opt_class();
    v69 = objc_opt_class();
    v70 = [v66 setWithObjects:{v67, v68, v69, objc_opt_class(), 0}];
    v71 = [coderCopy decodeObjectOfClasses:v70 forKey:@"protocolNamesValues"];
    protocolNames = v5->_protocolNames;
    v5->_protocolNames = v71;

    v73 = MEMORY[0x277CBEB98];
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v76 = objc_opt_class();
    v77 = [v73 setWithObjects:{v74, v75, v76, objc_opt_class(), 0}];
    v78 = [coderCopy decodeObjectOfClasses:v77 forKey:@"otherValues"];
    otherValues = v5->_otherValues;
    v5->_otherValues = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testEndpoint"];
    testEndpoint = v5->_testEndpoint;
    v5->_testEndpoint = v80;

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v84;

    v5->_proxied = [coderCopy decodeBoolForKey:@"proxied"];
    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appProtocol"];
    appProtocol = v5->_appProtocol;
    v5->_appProtocol = v86;

    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latencyMeasurementServiceType"];
    latencyMeasurementServiceType = v5->_latencyMeasurementServiceType;
    v5->_latencyMeasurementServiceType = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loadGeneratingNetworkServiceType"];
    loadGeneratingNetworkServiceType = v5->_loadGeneratingNetworkServiceType;
    v5->_loadGeneratingNetworkServiceType = v90;

    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asn"];
    asn = v5->_asn;
    v5->_asn = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asnName"];
    asnName = v5->_asnName;
    v5->_asnName = v94;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:self->_index];
  [coderCopy encodeObject:v6 forKey:@"index"];
  [coderCopy encodeObject:self->_downlinkCapacity forKey:@"downlinkCapacity"];
  [coderCopy encodeObject:self->_downlinkBytesTransferred forKey:@"downlinkBytesTransferred"];
  [coderCopy encodeObject:self->_downlinkFlows forKey:@"downlinkFlows"];
  [coderCopy encodeObject:self->_interfaceName forKey:@"interfaceName"];
  [coderCopy encodeBool:self->_isCellular forKey:@"isCellular"];
  [coderCopy encodeObject:self->_uplinkCapacity forKey:@"uplinkCapacity"];
  [coderCopy encodeObject:self->_uplinkBytesTransferred forKey:@"uplinkBytesTransferred"];
  [coderCopy encodeObject:self->_uplinkFlows forKey:@"uplinkFlows"];
  [coderCopy encodeObject:self->_downlinkResponsiveness forKey:@"downlinkResponsiveness"];
  [coderCopy encodeObject:self->_downlinkTCPResponsiveness forKey:@"downlinkTCPResponsiveness"];
  [coderCopy encodeObject:self->_downlinkTLSResponsiveness forKey:@"downlinkTLSResponsiveness"];
  [coderCopy encodeObject:self->_downlinkHTTPForeignResponsiveness forKey:@"downlinkHTTPForeignResponsiveness"];
  [coderCopy encodeObject:self->_downlinkHTTPSelfResponsiveness forKey:@"downlinkHTTPSelfResponsiveness"];
  [coderCopy encodeObject:self->_uplinkResponsiveness forKey:@"uplinkResponsiveness"];
  [coderCopy encodeObject:self->_uplinkTCPResponsiveness forKey:@"uplinkTCPResponsiveness"];
  [coderCopy encodeObject:self->_uplinkTLSResponsiveness forKey:@"uplinkTLSResponsiveness"];
  [coderCopy encodeObject:self->_uplinkHTTPForeignResponsiveness forKey:@"uplinkHTTPForeignResponsiveness"];
  [coderCopy encodeObject:self->_uplinkHTTPSelfResponsiveness forKey:@"uplinkHTTPSelfResponsiveness"];
  [coderCopy encodeObject:self->_workingLatencyValues forKey:@"workingLatencyValues"];
  [coderCopy encodeObject:self->_latency forKey:@"latency"];
  [coderCopy encodeObject:self->_tcpLatency forKey:@"tcpLatency"];
  [coderCopy encodeObject:self->_tlsLatency forKey:@"tlsLatency"];
  [coderCopy encodeObject:self->_httpLatency forKey:@"httpLatency"];
  [coderCopy encodeObject:self->_idleLatencyValues forKey:@"idleLatencyValues"];
  [coderCopy encodeObject:self->_protocolNames forKey:@"protocolNamesValues"];
  [coderCopy encodeObject:self->_otherValues forKey:@"otherValues"];
  [coderCopy encodeObject:self->_testEndpoint forKey:@"testEndpoint"];
  [coderCopy encodeObject:self->_osVersion forKey:@"osVersion"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
  [coderCopy encodeBool:self->_proxied forKey:@"proxied"];
  [coderCopy encodeObject:self->_appProtocol forKey:@"appProtocol"];
  [coderCopy encodeObject:self->_latencyMeasurementServiceType forKey:@"latencyMeasurementServiceType"];
  [coderCopy encodeObject:self->_loadGeneratingNetworkServiceType forKey:@"loadGeneratingNetworkServiceType"];
  [coderCopy encodeObject:self->_asn forKey:@"asn"];
  [coderCopy encodeObject:self->_asnName forKey:@"asnName"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  downlinkCapacity = self->_downlinkCapacity;
  downlinkResponsiveness = self->_downlinkResponsiveness;
  v8 = [v3 stringWithFormat:@"<%@: _downlinkCapacity=%@, _uplinkCapacity=%@, _downlinkResponsiveness=%@, _uplinkResponsiveness=%@>", v5, downlinkCapacity, self->_uplinkCapacity, downlinkResponsiveness, self->_uplinkResponsiveness];

  return v8;
}

+ (int64_t)ratingForResponsivenessScore:(int64_t)score
{
  if (score <= 1000)
  {
    return score > 200;
  }

  else
  {
    return 2;
  }
}

- (NetworkQualityResult)init
{
  v24.receiver = self;
  v24.super_class = NetworkQualityResult;
  v2 = [(NetworkQualityResult *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(NetworkQualityValue);
    downlinkCapacity = v2->_downlinkCapacity;
    v2->_downlinkCapacity = v3;

    v5 = objc_alloc_init(NetworkQualityValue);
    uplinkCapacity = v2->_uplinkCapacity;
    v2->_uplinkCapacity = v5;

    v7 = objc_alloc_init(NetworkQualityValue);
    downlinkResponsiveness = v2->_downlinkResponsiveness;
    v2->_downlinkResponsiveness = v7;

    v9 = objc_alloc_init(NetworkQualityValue);
    uplinkResponsiveness = v2->_uplinkResponsiveness;
    v2->_uplinkResponsiveness = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    workingLatencyValues = v2->_workingLatencyValues;
    v2->_workingLatencyValues = v11;

    v13 = objc_alloc_init(NetworkQualityValue);
    latency = v2->_latency;
    v2->_latency = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    idleLatencyValues = v2->_idleLatencyValues;
    v2->_idleLatencyValues = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    protocolNames = v2->_protocolNames;
    v2->_protocolNames = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    otherValues = v2->_otherValues;
    v2->_otherValues = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    urlSessionMetrics = v2->_urlSessionMetrics;
    v2->_urlSessionMetrics = v21;
  }

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NetworkQualityResult);
  timestamp = [(NetworkQualityResult *)self timestamp];
  v6 = [timestamp copy];
  [(NetworkQualityResult *)v4 setTimestamp:v6];

  [(NetworkQualityResult *)v4 setIndex:[(NetworkQualityResult *)self index]];
  downlinkCapacity = [(NetworkQualityResult *)self downlinkCapacity];
  v8 = [downlinkCapacity copy];
  [(NetworkQualityResult *)v4 setDownlinkCapacity:v8];

  downlinkBytesTransferred = [(NetworkQualityResult *)self downlinkBytesTransferred];
  v10 = [downlinkBytesTransferred copy];
  [(NetworkQualityResult *)v4 setDownlinkBytesTransferred:v10];

  downlinkFlows = [(NetworkQualityResult *)self downlinkFlows];
  v12 = [downlinkFlows copy];
  [(NetworkQualityResult *)v4 setDownlinkFlows:v12];

  interfaceName = [(NetworkQualityResult *)self interfaceName];
  v14 = [interfaceName copy];
  [(NetworkQualityResult *)v4 setInterfaceName:v14];

  [(NetworkQualityResult *)v4 setIsCellular:[(NetworkQualityResult *)self isCellular]];
  uplinkCapacity = [(NetworkQualityResult *)self uplinkCapacity];
  v16 = [uplinkCapacity copy];
  [(NetworkQualityResult *)v4 setUplinkCapacity:v16];

  uplinkBytesTransferred = [(NetworkQualityResult *)self uplinkBytesTransferred];
  v18 = [uplinkBytesTransferred copy];
  [(NetworkQualityResult *)v4 setUplinkBytesTransferred:v18];

  uplinkFlows = [(NetworkQualityResult *)self uplinkFlows];
  v20 = [uplinkFlows copy];
  [(NetworkQualityResult *)v4 setUplinkFlows:v20];

  downlinkResponsiveness = [(NetworkQualityResult *)self downlinkResponsiveness];
  v22 = [downlinkResponsiveness copy];
  [(NetworkQualityResult *)v4 setDownlinkResponsiveness:v22];

  downlinkTCPResponsiveness = [(NetworkQualityResult *)self downlinkTCPResponsiveness];
  v24 = [downlinkTCPResponsiveness copy];
  [(NetworkQualityResult *)v4 setDownlinkTCPResponsiveness:v24];

  downlinkTLSResponsiveness = [(NetworkQualityResult *)self downlinkTLSResponsiveness];
  v26 = [downlinkTLSResponsiveness copy];
  [(NetworkQualityResult *)v4 setDownlinkTLSResponsiveness:v26];

  downlinkHTTPForeignResponsiveness = [(NetworkQualityResult *)self downlinkHTTPForeignResponsiveness];
  v28 = [downlinkHTTPForeignResponsiveness copy];
  [(NetworkQualityResult *)v4 setDownlinkHTTPForeignResponsiveness:v28];

  downlinkHTTPSelfResponsiveness = [(NetworkQualityResult *)self downlinkHTTPSelfResponsiveness];
  v30 = [downlinkHTTPSelfResponsiveness copy];
  [(NetworkQualityResult *)v4 setDownlinkHTTPSelfResponsiveness:v30];

  uplinkResponsiveness = [(NetworkQualityResult *)self uplinkResponsiveness];
  v32 = [uplinkResponsiveness copy];
  [(NetworkQualityResult *)v4 setUplinkResponsiveness:v32];

  uplinkTCPResponsiveness = [(NetworkQualityResult *)self uplinkTCPResponsiveness];
  v34 = [uplinkTCPResponsiveness copy];
  [(NetworkQualityResult *)v4 setUplinkTCPResponsiveness:v34];

  uplinkTLSResponsiveness = [(NetworkQualityResult *)self uplinkTLSResponsiveness];
  v36 = [uplinkTLSResponsiveness copy];
  [(NetworkQualityResult *)v4 setUplinkTLSResponsiveness:v36];

  uplinkHTTPForeignResponsiveness = [(NetworkQualityResult *)self uplinkHTTPForeignResponsiveness];
  v38 = [uplinkHTTPForeignResponsiveness copy];
  [(NetworkQualityResult *)v4 setUplinkHTTPForeignResponsiveness:v38];

  uplinkHTTPSelfResponsiveness = [(NetworkQualityResult *)self uplinkHTTPSelfResponsiveness];
  v40 = [uplinkHTTPSelfResponsiveness copy];
  [(NetworkQualityResult *)v4 setUplinkHTTPSelfResponsiveness:v40];

  workingLatencyValues = [(NetworkQualityResult *)self workingLatencyValues];
  v42 = [workingLatencyValues copy];
  [(NetworkQualityResult *)v4 setWorkingLatencyValues:v42];

  latency = [(NetworkQualityResult *)self latency];
  v44 = [latency copy];
  [(NetworkQualityResult *)v4 setLatency:v44];

  tcpLatency = [(NetworkQualityResult *)self tcpLatency];
  v46 = [tcpLatency copy];
  [(NetworkQualityResult *)v4 setTcpLatency:v46];

  tlsLatency = [(NetworkQualityResult *)self tlsLatency];
  v48 = [tlsLatency copy];
  [(NetworkQualityResult *)v4 setTlsLatency:v48];

  httpLatency = [(NetworkQualityResult *)self httpLatency];
  v50 = [httpLatency copy];
  [(NetworkQualityResult *)v4 setHttpLatency:v50];

  idleLatencyValues = [(NetworkQualityResult *)self idleLatencyValues];
  v52 = [idleLatencyValues copy];
  [(NetworkQualityResult *)v4 setIdleLatencyValues:v52];

  protocolNames = [(NetworkQualityResult *)self protocolNames];
  v54 = [protocolNames copy];
  [(NetworkQualityResult *)v4 setProtocolNames:v54];

  otherValues = [(NetworkQualityResult *)self otherValues];
  v56 = [otherValues copy];
  [(NetworkQualityResult *)v4 setOtherValues:v56];

  urlSessionMetrics = [(NetworkQualityResult *)self urlSessionMetrics];
  v58 = [urlSessionMetrics copy];
  [(NetworkQualityResult *)v4 setUrlSessionMetrics:v58];

  testEndpoint = [(NetworkQualityResult *)self testEndpoint];
  v60 = [testEndpoint copy];
  [(NetworkQualityResult *)v4 setTestEndpoint:v60];

  osVersion = [(NetworkQualityResult *)self osVersion];
  v62 = [osVersion copy];
  [(NetworkQualityResult *)v4 setOsVersion:v62];

  error = [(NetworkQualityResult *)self error];
  v64 = [error copy];
  [(NetworkQualityResult *)v4 setError:v64];

  [(NetworkQualityResult *)v4 setProxied:[(NetworkQualityResult *)self proxied]];
  appProtocol = [(NetworkQualityResult *)self appProtocol];
  v66 = [appProtocol copy];
  [(NetworkQualityResult *)v4 setAppProtocol:v66];

  latencyMeasurementServiceType = [(NetworkQualityResult *)self latencyMeasurementServiceType];
  v68 = [latencyMeasurementServiceType copy];
  [(NetworkQualityResult *)v4 setLatencyMeasurementServiceType:v68];

  loadGeneratingNetworkServiceType = [(NetworkQualityResult *)self loadGeneratingNetworkServiceType];
  v70 = [loadGeneratingNetworkServiceType copy];
  [(NetworkQualityResult *)v4 setLoadGeneratingNetworkServiceType:v70];

  v71 = [(NetworkQualityResult *)self asn];
  v72 = [v71 copy];
  [(NetworkQualityResult *)v4 setAsn:v72];

  asnName = [(NetworkQualityResult *)self asnName];
  v74 = [asnName copy];
  [(NetworkQualityResult *)v4 setAsnName:v74];

  return v4;
}

- (void)finalizeResult
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [(NetworkQualityResult *)self setTimestamp:v3];

  v4 = MEMORY[0x277CCABB0];
  downlinkResponsiveness = [(NetworkQualityResult *)self downlinkResponsiveness];
  value = [downlinkResponsiveness value];
  v7 = [v4 numberWithInteger:{+[NetworkQualityResult ratingForResponsivenessScore:](NetworkQualityResult, "ratingForResponsivenessScore:", objc_msgSend(value, "integerValue"))}];
  downlinkResponsiveness2 = [(NetworkQualityResult *)self downlinkResponsiveness];
  [downlinkResponsiveness2 setRating:v7];

  v9 = MEMORY[0x277CCABB0];
  uplinkResponsiveness = [(NetworkQualityResult *)self uplinkResponsiveness];
  value2 = [uplinkResponsiveness value];
  v12 = [v9 numberWithInteger:{+[NetworkQualityResult ratingForResponsivenessScore:](NetworkQualityResult, "ratingForResponsivenessScore:", objc_msgSend(value2, "integerValue"))}];
  uplinkResponsiveness2 = [(NetworkQualityResult *)self uplinkResponsiveness];
  [uplinkResponsiveness2 setRating:v12];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  [(NetworkQualityResult *)self setOsVersion:operatingSystemVersionString];
}

@end