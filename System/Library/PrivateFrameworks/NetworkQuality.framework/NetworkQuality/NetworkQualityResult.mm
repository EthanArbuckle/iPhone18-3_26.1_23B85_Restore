@interface NetworkQualityResult
+ (int64_t)ratingForResponsivenessScore:(int64_t)a3;
- (NetworkQualityResult)init;
- (NetworkQualityResult)initWithCoder:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finalizeResult;
@end

@implementation NetworkQualityResult

- (NetworkQualityResult)initWithCoder:(id)a3
{
  v4 = a3;
  v98.receiver = self;
  v98.super_class = NetworkQualityResult;
  v5 = [(NetworkQualityResult *)&v98 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = objc_opt_class();
    v97 = [v4 decodeObjectOfClass:v8 forKey:@"index"];
    v5->_index = [v97 integerValue];
    v9 = objc_opt_class();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"downlinkCapacity"];
    downlinkCapacity = v5->_downlinkCapacity;
    v5->_downlinkCapacity = v10;

    v12 = [v4 decodeObjectOfClass:v8 forKey:@"downlinkBytesTransferred"];
    downlinkBytesTransferred = v5->_downlinkBytesTransferred;
    v5->_downlinkBytesTransferred = v12;

    v14 = [v4 decodeObjectOfClass:v8 forKey:@"downlinkFlows"];
    downlinkFlows = v5->_downlinkFlows;
    v5->_downlinkFlows = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v16;

    v5->_isCellular = [v4 decodeBoolForKey:@"isCellular"];
    v18 = [v4 decodeObjectOfClass:v9 forKey:@"uplinkCapacity"];
    uplinkCapacity = v5->_uplinkCapacity;
    v5->_uplinkCapacity = v18;

    v20 = [v4 decodeObjectOfClass:v8 forKey:@"uplinkBytesTransferred"];
    uplinkBytesTransferred = v5->_uplinkBytesTransferred;
    v5->_uplinkBytesTransferred = v20;

    v22 = [v4 decodeObjectOfClass:v8 forKey:@"uplinkFlows"];
    uplinkFlows = v5->_uplinkFlows;
    v5->_uplinkFlows = v22;

    v24 = [v4 decodeObjectOfClass:v9 forKey:@"downlinkResponsiveness"];
    downlinkResponsiveness = v5->_downlinkResponsiveness;
    v5->_downlinkResponsiveness = v24;

    v26 = [v4 decodeObjectOfClass:v8 forKey:@"downlinkTCPResponsiveness"];
    downlinkTCPResponsiveness = v5->_downlinkTCPResponsiveness;
    v5->_downlinkTCPResponsiveness = v26;

    v28 = [v4 decodeObjectOfClass:v8 forKey:@"downlinkTLSResponsiveness"];
    downlinkTLSResponsiveness = v5->_downlinkTLSResponsiveness;
    v5->_downlinkTLSResponsiveness = v28;

    v30 = [v4 decodeObjectOfClass:v8 forKey:@"downlinkHTTPForeignResponsiveness"];
    downlinkHTTPForeignResponsiveness = v5->_downlinkHTTPForeignResponsiveness;
    v5->_downlinkHTTPForeignResponsiveness = v30;

    v32 = [v4 decodeObjectOfClass:v8 forKey:@"downlinkHTTPSelfResponsiveness"];
    downlinkHTTPSelfResponsiveness = v5->_downlinkHTTPSelfResponsiveness;
    v5->_downlinkHTTPSelfResponsiveness = v32;

    v34 = [v4 decodeObjectOfClass:v9 forKey:@"uplinkResponsiveness"];
    uplinkResponsiveness = v5->_uplinkResponsiveness;
    v5->_uplinkResponsiveness = v34;

    v36 = [v4 decodeObjectOfClass:v8 forKey:@"uplinkTCPResponsiveness"];
    uplinkTCPResponsiveness = v5->_uplinkTCPResponsiveness;
    v5->_uplinkTCPResponsiveness = v36;

    v38 = [v4 decodeObjectOfClass:v8 forKey:@"uplinkTLSResponsiveness"];
    uplinkTLSResponsiveness = v5->_uplinkTLSResponsiveness;
    v5->_uplinkTLSResponsiveness = v38;

    v40 = [v4 decodeObjectOfClass:v8 forKey:@"uplinkHTTPForeignResponsiveness"];
    uplinkHTTPForeignResponsiveness = v5->_uplinkHTTPForeignResponsiveness;
    v5->_uplinkHTTPForeignResponsiveness = v40;

    v42 = [v4 decodeObjectOfClass:v8 forKey:@"uplinkHTTPSelfResponsiveness"];
    uplinkHTTPSelfResponsiveness = v5->_uplinkHTTPSelfResponsiveness;
    v5->_uplinkHTTPSelfResponsiveness = v42;

    v44 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = [v44 setWithObjects:{v45, v46, v47, objc_opt_class(), 0}];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"workingLatencyValues"];
    workingLatencyValues = v5->_workingLatencyValues;
    v5->_workingLatencyValues = v49;

    v51 = [v4 decodeObjectOfClass:v9 forKey:@"latency"];
    latency = v5->_latency;
    v5->_latency = v51;

    v53 = [v4 decodeObjectOfClass:v8 forKey:@"tcpLatency"];
    tcpLatency = v5->_tcpLatency;
    v5->_tcpLatency = v53;

    v55 = [v4 decodeObjectOfClass:v8 forKey:@"tlsLatency"];
    tlsLatency = v5->_tlsLatency;
    v5->_tlsLatency = v55;

    v57 = [v4 decodeObjectOfClass:v8 forKey:@"httpLatency"];
    httpLatency = v5->_httpLatency;
    v5->_httpLatency = v57;

    v59 = MEMORY[0x277CBEB98];
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = [v59 setWithObjects:{v60, v61, v62, objc_opt_class(), 0}];
    v64 = [v4 decodeObjectOfClasses:v63 forKey:@"idleLatencyValues"];
    idleLatencyValues = v5->_idleLatencyValues;
    v5->_idleLatencyValues = v64;

    v66 = MEMORY[0x277CBEB98];
    v67 = objc_opt_class();
    v68 = objc_opt_class();
    v69 = objc_opt_class();
    v70 = [v66 setWithObjects:{v67, v68, v69, objc_opt_class(), 0}];
    v71 = [v4 decodeObjectOfClasses:v70 forKey:@"protocolNamesValues"];
    protocolNames = v5->_protocolNames;
    v5->_protocolNames = v71;

    v73 = MEMORY[0x277CBEB98];
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v76 = objc_opt_class();
    v77 = [v73 setWithObjects:{v74, v75, v76, objc_opt_class(), 0}];
    v78 = [v4 decodeObjectOfClasses:v77 forKey:@"otherValues"];
    otherValues = v5->_otherValues;
    v5->_otherValues = v78;

    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testEndpoint"];
    testEndpoint = v5->_testEndpoint;
    v5->_testEndpoint = v80;

    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v82;

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v84;

    v5->_proxied = [v4 decodeBoolForKey:@"proxied"];
    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appProtocol"];
    appProtocol = v5->_appProtocol;
    v5->_appProtocol = v86;

    v88 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latencyMeasurementServiceType"];
    latencyMeasurementServiceType = v5->_latencyMeasurementServiceType;
    v5->_latencyMeasurementServiceType = v88;

    v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loadGeneratingNetworkServiceType"];
    loadGeneratingNetworkServiceType = v5->_loadGeneratingNetworkServiceType;
    v5->_loadGeneratingNetworkServiceType = v90;

    v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asn"];
    asn = v5->_asn;
    v5->_asn = v92;

    v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asnName"];
    asnName = v5->_asnName;
    v5->_asnName = v94;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:self->_index];
  [v5 encodeObject:v6 forKey:@"index"];
  [v5 encodeObject:self->_downlinkCapacity forKey:@"downlinkCapacity"];
  [v5 encodeObject:self->_downlinkBytesTransferred forKey:@"downlinkBytesTransferred"];
  [v5 encodeObject:self->_downlinkFlows forKey:@"downlinkFlows"];
  [v5 encodeObject:self->_interfaceName forKey:@"interfaceName"];
  [v5 encodeBool:self->_isCellular forKey:@"isCellular"];
  [v5 encodeObject:self->_uplinkCapacity forKey:@"uplinkCapacity"];
  [v5 encodeObject:self->_uplinkBytesTransferred forKey:@"uplinkBytesTransferred"];
  [v5 encodeObject:self->_uplinkFlows forKey:@"uplinkFlows"];
  [v5 encodeObject:self->_downlinkResponsiveness forKey:@"downlinkResponsiveness"];
  [v5 encodeObject:self->_downlinkTCPResponsiveness forKey:@"downlinkTCPResponsiveness"];
  [v5 encodeObject:self->_downlinkTLSResponsiveness forKey:@"downlinkTLSResponsiveness"];
  [v5 encodeObject:self->_downlinkHTTPForeignResponsiveness forKey:@"downlinkHTTPForeignResponsiveness"];
  [v5 encodeObject:self->_downlinkHTTPSelfResponsiveness forKey:@"downlinkHTTPSelfResponsiveness"];
  [v5 encodeObject:self->_uplinkResponsiveness forKey:@"uplinkResponsiveness"];
  [v5 encodeObject:self->_uplinkTCPResponsiveness forKey:@"uplinkTCPResponsiveness"];
  [v5 encodeObject:self->_uplinkTLSResponsiveness forKey:@"uplinkTLSResponsiveness"];
  [v5 encodeObject:self->_uplinkHTTPForeignResponsiveness forKey:@"uplinkHTTPForeignResponsiveness"];
  [v5 encodeObject:self->_uplinkHTTPSelfResponsiveness forKey:@"uplinkHTTPSelfResponsiveness"];
  [v5 encodeObject:self->_workingLatencyValues forKey:@"workingLatencyValues"];
  [v5 encodeObject:self->_latency forKey:@"latency"];
  [v5 encodeObject:self->_tcpLatency forKey:@"tcpLatency"];
  [v5 encodeObject:self->_tlsLatency forKey:@"tlsLatency"];
  [v5 encodeObject:self->_httpLatency forKey:@"httpLatency"];
  [v5 encodeObject:self->_idleLatencyValues forKey:@"idleLatencyValues"];
  [v5 encodeObject:self->_protocolNames forKey:@"protocolNamesValues"];
  [v5 encodeObject:self->_otherValues forKey:@"otherValues"];
  [v5 encodeObject:self->_testEndpoint forKey:@"testEndpoint"];
  [v5 encodeObject:self->_osVersion forKey:@"osVersion"];
  [v5 encodeObject:self->_error forKey:@"error"];
  [v5 encodeBool:self->_proxied forKey:@"proxied"];
  [v5 encodeObject:self->_appProtocol forKey:@"appProtocol"];
  [v5 encodeObject:self->_latencyMeasurementServiceType forKey:@"latencyMeasurementServiceType"];
  [v5 encodeObject:self->_loadGeneratingNetworkServiceType forKey:@"loadGeneratingNetworkServiceType"];
  [v5 encodeObject:self->_asn forKey:@"asn"];
  [v5 encodeObject:self->_asnName forKey:@"asnName"];
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

+ (int64_t)ratingForResponsivenessScore:(int64_t)a3
{
  if (a3 <= 1000)
  {
    return a3 > 200;
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NetworkQualityResult);
  v5 = [(NetworkQualityResult *)self timestamp];
  v6 = [v5 copy];
  [(NetworkQualityResult *)v4 setTimestamp:v6];

  [(NetworkQualityResult *)v4 setIndex:[(NetworkQualityResult *)self index]];
  v7 = [(NetworkQualityResult *)self downlinkCapacity];
  v8 = [v7 copy];
  [(NetworkQualityResult *)v4 setDownlinkCapacity:v8];

  v9 = [(NetworkQualityResult *)self downlinkBytesTransferred];
  v10 = [v9 copy];
  [(NetworkQualityResult *)v4 setDownlinkBytesTransferred:v10];

  v11 = [(NetworkQualityResult *)self downlinkFlows];
  v12 = [v11 copy];
  [(NetworkQualityResult *)v4 setDownlinkFlows:v12];

  v13 = [(NetworkQualityResult *)self interfaceName];
  v14 = [v13 copy];
  [(NetworkQualityResult *)v4 setInterfaceName:v14];

  [(NetworkQualityResult *)v4 setIsCellular:[(NetworkQualityResult *)self isCellular]];
  v15 = [(NetworkQualityResult *)self uplinkCapacity];
  v16 = [v15 copy];
  [(NetworkQualityResult *)v4 setUplinkCapacity:v16];

  v17 = [(NetworkQualityResult *)self uplinkBytesTransferred];
  v18 = [v17 copy];
  [(NetworkQualityResult *)v4 setUplinkBytesTransferred:v18];

  v19 = [(NetworkQualityResult *)self uplinkFlows];
  v20 = [v19 copy];
  [(NetworkQualityResult *)v4 setUplinkFlows:v20];

  v21 = [(NetworkQualityResult *)self downlinkResponsiveness];
  v22 = [v21 copy];
  [(NetworkQualityResult *)v4 setDownlinkResponsiveness:v22];

  v23 = [(NetworkQualityResult *)self downlinkTCPResponsiveness];
  v24 = [v23 copy];
  [(NetworkQualityResult *)v4 setDownlinkTCPResponsiveness:v24];

  v25 = [(NetworkQualityResult *)self downlinkTLSResponsiveness];
  v26 = [v25 copy];
  [(NetworkQualityResult *)v4 setDownlinkTLSResponsiveness:v26];

  v27 = [(NetworkQualityResult *)self downlinkHTTPForeignResponsiveness];
  v28 = [v27 copy];
  [(NetworkQualityResult *)v4 setDownlinkHTTPForeignResponsiveness:v28];

  v29 = [(NetworkQualityResult *)self downlinkHTTPSelfResponsiveness];
  v30 = [v29 copy];
  [(NetworkQualityResult *)v4 setDownlinkHTTPSelfResponsiveness:v30];

  v31 = [(NetworkQualityResult *)self uplinkResponsiveness];
  v32 = [v31 copy];
  [(NetworkQualityResult *)v4 setUplinkResponsiveness:v32];

  v33 = [(NetworkQualityResult *)self uplinkTCPResponsiveness];
  v34 = [v33 copy];
  [(NetworkQualityResult *)v4 setUplinkTCPResponsiveness:v34];

  v35 = [(NetworkQualityResult *)self uplinkTLSResponsiveness];
  v36 = [v35 copy];
  [(NetworkQualityResult *)v4 setUplinkTLSResponsiveness:v36];

  v37 = [(NetworkQualityResult *)self uplinkHTTPForeignResponsiveness];
  v38 = [v37 copy];
  [(NetworkQualityResult *)v4 setUplinkHTTPForeignResponsiveness:v38];

  v39 = [(NetworkQualityResult *)self uplinkHTTPSelfResponsiveness];
  v40 = [v39 copy];
  [(NetworkQualityResult *)v4 setUplinkHTTPSelfResponsiveness:v40];

  v41 = [(NetworkQualityResult *)self workingLatencyValues];
  v42 = [v41 copy];
  [(NetworkQualityResult *)v4 setWorkingLatencyValues:v42];

  v43 = [(NetworkQualityResult *)self latency];
  v44 = [v43 copy];
  [(NetworkQualityResult *)v4 setLatency:v44];

  v45 = [(NetworkQualityResult *)self tcpLatency];
  v46 = [v45 copy];
  [(NetworkQualityResult *)v4 setTcpLatency:v46];

  v47 = [(NetworkQualityResult *)self tlsLatency];
  v48 = [v47 copy];
  [(NetworkQualityResult *)v4 setTlsLatency:v48];

  v49 = [(NetworkQualityResult *)self httpLatency];
  v50 = [v49 copy];
  [(NetworkQualityResult *)v4 setHttpLatency:v50];

  v51 = [(NetworkQualityResult *)self idleLatencyValues];
  v52 = [v51 copy];
  [(NetworkQualityResult *)v4 setIdleLatencyValues:v52];

  v53 = [(NetworkQualityResult *)self protocolNames];
  v54 = [v53 copy];
  [(NetworkQualityResult *)v4 setProtocolNames:v54];

  v55 = [(NetworkQualityResult *)self otherValues];
  v56 = [v55 copy];
  [(NetworkQualityResult *)v4 setOtherValues:v56];

  v57 = [(NetworkQualityResult *)self urlSessionMetrics];
  v58 = [v57 copy];
  [(NetworkQualityResult *)v4 setUrlSessionMetrics:v58];

  v59 = [(NetworkQualityResult *)self testEndpoint];
  v60 = [v59 copy];
  [(NetworkQualityResult *)v4 setTestEndpoint:v60];

  v61 = [(NetworkQualityResult *)self osVersion];
  v62 = [v61 copy];
  [(NetworkQualityResult *)v4 setOsVersion:v62];

  v63 = [(NetworkQualityResult *)self error];
  v64 = [v63 copy];
  [(NetworkQualityResult *)v4 setError:v64];

  [(NetworkQualityResult *)v4 setProxied:[(NetworkQualityResult *)self proxied]];
  v65 = [(NetworkQualityResult *)self appProtocol];
  v66 = [v65 copy];
  [(NetworkQualityResult *)v4 setAppProtocol:v66];

  v67 = [(NetworkQualityResult *)self latencyMeasurementServiceType];
  v68 = [v67 copy];
  [(NetworkQualityResult *)v4 setLatencyMeasurementServiceType:v68];

  v69 = [(NetworkQualityResult *)self loadGeneratingNetworkServiceType];
  v70 = [v69 copy];
  [(NetworkQualityResult *)v4 setLoadGeneratingNetworkServiceType:v70];

  v71 = [(NetworkQualityResult *)self asn];
  v72 = [v71 copy];
  [(NetworkQualityResult *)v4 setAsn:v72];

  v73 = [(NetworkQualityResult *)self asnName];
  v74 = [v73 copy];
  [(NetworkQualityResult *)v4 setAsnName:v74];

  return v4;
}

- (void)finalizeResult
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [(NetworkQualityResult *)self setTimestamp:v3];

  v4 = MEMORY[0x277CCABB0];
  v5 = [(NetworkQualityResult *)self downlinkResponsiveness];
  v6 = [v5 value];
  v7 = [v4 numberWithInteger:{+[NetworkQualityResult ratingForResponsivenessScore:](NetworkQualityResult, "ratingForResponsivenessScore:", objc_msgSend(v6, "integerValue"))}];
  v8 = [(NetworkQualityResult *)self downlinkResponsiveness];
  [v8 setRating:v7];

  v9 = MEMORY[0x277CCABB0];
  v10 = [(NetworkQualityResult *)self uplinkResponsiveness];
  v11 = [v10 value];
  v12 = [v9 numberWithInteger:{+[NetworkQualityResult ratingForResponsivenessScore:](NetworkQualityResult, "ratingForResponsivenessScore:", objc_msgSend(v11, "integerValue"))}];
  v13 = [(NetworkQualityResult *)self uplinkResponsiveness];
  [v13 setRating:v12];

  v15 = [MEMORY[0x277CCAC38] processInfo];
  v14 = [v15 operatingSystemVersionString];
  [(NetworkQualityResult *)self setOsVersion:v14];
}

@end