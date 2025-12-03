@interface NPTPerformanceTestConfiguration
+ (id)defaultConfiguration;
+ (id)defaultConfigurationCellular;
+ (id)defaultConfigurationWiFi;
+ (id)defaultConfigurationWiredEthernet;
+ (id)evaluateInterfaceName:(int)name;
+ (id)interfaceServiceName:(int)name;
- (NPTPerformanceTestConfiguration)init;
- (NPTPerformanceTestConfiguration)initWithCoder:(id)coder;
- (NSDictionary)asDictionary;
- (NSString)clientName;
- (NSString)pingHost;
- (NSURL)downloadURL;
- (NSURL)uploadURL;
- (NetworkQualityConfiguration)NQConfiguration;
- (NetworkQualityConfiguration)NQDownloadConfiguration;
- (NetworkQualityConfiguration)NQUploadConfiguration;
- (id)cdnDownloadURL;
- (id)cdnUploadURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setInterfaceType:(int)type;
@end

@implementation NPTPerformanceTestConfiguration

- (NetworkQualityConfiguration)NQConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x277D2C9A8]);
  [v3 setMaxRuntime:180];
  if (![(NPTPerformanceTestConfiguration *)self multiStream])
  {
    [v3 setMaxDownloadFlows:1];
    [v3 setMaxUploadFlows:1];
  }

  if ([(NPTPerformanceTestConfiguration *)self interfaceType]!= 3)
  {
    interfaceName = [(NPTPerformanceTestConfiguration *)self interfaceName];
    [v3 setNetworkInterfaceName:interfaceName];
  }

  if ([(NPTPerformanceTestConfiguration *)self testDuration])
  {
    [v3 setMaxRuntime:{-[NPTPerformanceTestConfiguration testDuration](self, "testDuration")}];
    if (![(NPTPerformanceTestConfiguration *)self endWhenStable])
    {
      [v3 setMinRuntime:{-[NPTPerformanceTestConfiguration testDuration](self, "testDuration")}];
    }
  }

  if ([(NPTPerformanceTestConfiguration *)self downloadSize]!= 1001 && (![(NPTPerformanceTestConfiguration *)self testDuration]|| [(NPTPerformanceTestConfiguration *)self stopAtFileSize]))
  {
    [v3 setMaxDownlinkData:{+[NPTFileSizeConverter getFileSizeInBytes:](NPTFileSizeConverter, "getFileSizeInBytes:", -[NPTPerformanceTestConfiguration downloadSize](self, "downloadSize"))}];
  }

  if ([(NPTPerformanceTestConfiguration *)self uploadSize]!= 1001 && (![(NPTPerformanceTestConfiguration *)self testDuration]|| [(NPTPerformanceTestConfiguration *)self stopAtFileSize]))
  {
    [v3 setMaxUplinkData:{+[NPTFileSizeConverter getFileSizeInBytes:](NPTFileSizeConverter, "getFileSizeInBytes:", -[NPTPerformanceTestConfiguration uploadSize](self, "uploadSize"))}];
  }

  return v3;
}

- (NetworkQualityConfiguration)NQDownloadConfiguration
{
  nQConfiguration = [(NPTPerformanceTestConfiguration *)self NQConfiguration];
  [nQConfiguration setParallel:0];
  [nQConfiguration setDownload:1];
  [nQConfiguration setUpload:0];

  return nQConfiguration;
}

- (NetworkQualityConfiguration)NQUploadConfiguration
{
  nQConfiguration = [(NPTPerformanceTestConfiguration *)self NQConfiguration];
  [nQConfiguration setParallel:0];
  [nQConfiguration setDownload:0];
  [nQConfiguration setUpload:1];

  return nQConfiguration;
}

- (NPTPerformanceTestConfiguration)init
{
  v5.receiver = self;
  v5.super_class = NPTPerformanceTestConfiguration;
  v2 = [(NPTPerformanceTestConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NPTPerformanceTestConfiguration *)v2 setDownloadSize:1000];
    [(NPTPerformanceTestConfiguration *)v3 setUploadSize:50];
    [(NPTPerformanceTestConfiguration *)v3 setUseSecureConnection:1];
    [(NPTPerformanceTestConfiguration *)v3 setPingAddressStyle:0];
    [(NPTPerformanceTestConfiguration *)v3 setPingCount:10];
    [(NPTPerformanceTestConfiguration *)v3 setCollectMetadata:1];
    [(NPTPerformanceTestConfiguration *)v3 setInterfaceType:3];
    [(NPTPerformanceTestConfiguration *)v3 setConcurrentStreams:1];
    [(NPTPerformanceTestConfiguration *)v3 setUuid:0];
    [(NPTPerformanceTestConfiguration *)v3 setTestDuration:0];
    [(NPTPerformanceTestConfiguration *)v3 setStopAtFileSize:0];
    [(NPTPerformanceTestConfiguration *)v3 setCollectWRMMetrics:0];
    [(NPTPerformanceTestConfiguration *)v3 setMultiStream:1];
    v3->privateLegacyMode = 1;
  }

  return v3;
}

- (NSURL)uploadURL
{
  privateUploadURL = self->privateUploadURL;
  if (privateUploadURL)
  {
    cdnUploadURL = privateUploadURL;
  }

  else
  {
    cdnUploadURL = [(NPTPerformanceTestConfiguration *)self cdnUploadURL];
  }

  return cdnUploadURL;
}

- (id)cdnUploadURL
{
  v3 = @"https://npt.cdn-apple.com/slurp";
  if (![(NPTPerformanceTestConfiguration *)self useSecureConnection])
  {
    v4 = [(__CFString *)v3 stringByReplacingOccurrencesOfString:@"https://" withString:@"http://"];

    v3 = v4;
  }

  v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v5;
}

- (NSURL)downloadURL
{
  privateDownloadURL = self->privateDownloadURL;
  if (privateDownloadURL)
  {
    cdnDownloadURL = privateDownloadURL;
  }

  else
  {
    cdnDownloadURL = [(NPTPerformanceTestConfiguration *)self cdnDownloadURL];
  }

  return cdnDownloadURL;
}

- (id)cdnDownloadURL
{
  v3 = @"https://npt.cdn-apple.com/salty";
  if (![(NPTPerformanceTestConfiguration *)self useSecureConnection])
  {
    v4 = [(__CFString *)v3 stringByReplacingOccurrencesOfString:@"https://" withString:@"http://"];

    v3 = v4;
  }

  v5 = [NPTFileSizeConverter getFileSizeAsString:[(NPTPerformanceTestConfiguration *)self downloadSize]];
  if ([(NPTPerformanceTestConfiguration *)self testDuration]&& ![(NPTPerformanceTestConfiguration *)self stopAtFileSize]&& [(NPTPerformanceTestConfiguration *)self downloadSize]== 1001)
  {
    v6 = [NPTFileSizeConverter getFileSizeAsString:1000];

    v5 = v6;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", v5];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v3, v7];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  return v9;
}

- (NSString)pingHost
{
  if (self->privatePingHost)
  {
    return self->privatePingHost;
  }

  else
  {
    return @"npt.cdn-apple.com";
  }
}

- (NSString)clientName
{
  privateClientName = self->privateClientName;
  if (privateClientName)
  {
    bundleIdentifier = privateClientName;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(NPTPerformanceTestConfiguration);

  return v2;
}

+ (id)defaultConfigurationWiFi
{
  v2 = objc_alloc_init(NPTPerformanceTestConfiguration);
  [(NPTPerformanceTestConfiguration *)v2 setInterfaceType:1];

  return v2;
}

+ (id)defaultConfigurationWiredEthernet
{
  v2 = objc_alloc_init(NPTPerformanceTestConfiguration);
  [(NPTPerformanceTestConfiguration *)v2 setInterfaceType:2];

  return v2;
}

+ (id)defaultConfigurationCellular
{
  v2 = objc_alloc_init(NPTPerformanceTestConfiguration);
  [(NPTPerformanceTestConfiguration *)v2 setInterfaceType:0];

  return v2;
}

- (void)setInterfaceType:(int)type
{
  self->_interfaceType = type;
  v4 = [NPTPerformanceTestConfiguration evaluateInterfaceName:[(NPTPerformanceTestConfiguration *)self interfaceType]];
  [(NPTPerformanceTestConfiguration *)self setInterfaceName:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPTPerformanceTestConfiguration allocWithZone:?]];
  [(NPTPerformanceTestConfiguration *)v4 setInterfaceType:[(NPTPerformanceTestConfiguration *)self interfaceType]];
  [(NPTPerformanceTestConfiguration *)v4 setDownloadSize:[(NPTPerformanceTestConfiguration *)self downloadSize]];
  [(NPTPerformanceTestConfiguration *)v4 setUploadSize:[(NPTPerformanceTestConfiguration *)self uploadSize]];
  [(NPTPerformanceTestConfiguration *)v4 setUseSecureConnection:[(NPTPerformanceTestConfiguration *)self useSecureConnection]];
  [(NPTPerformanceTestConfiguration *)v4 setPingAddressStyle:[(NPTPerformanceTestConfiguration *)self pingAddressStyle]];
  [(NPTPerformanceTestConfiguration *)v4 setPingCount:[(NPTPerformanceTestConfiguration *)self pingCount]];
  [(NPTPerformanceTestConfiguration *)v4 setCollectMetadata:[(NPTPerformanceTestConfiguration *)self collectMetadata]];
  downloadURL = [(NPTPerformanceTestConfiguration *)self downloadURL];
  [(NPTPerformanceTestConfiguration *)v4 setDownloadURL:downloadURL];

  uploadURL = [(NPTPerformanceTestConfiguration *)self uploadURL];
  [(NPTPerformanceTestConfiguration *)v4 setUploadURL:uploadURL];

  pingHost = [(NPTPerformanceTestConfiguration *)self pingHost];
  [(NPTPerformanceTestConfiguration *)v4 setPingHost:pingHost];

  [(NPTPerformanceTestConfiguration *)v4 setConcurrentStreams:[(NPTPerformanceTestConfiguration *)self concurrentStreams]];
  uuid = [(NPTPerformanceTestConfiguration *)self uuid];
  [(NPTPerformanceTestConfiguration *)v4 setUuid:uuid];

  clientName = [(NPTPerformanceTestConfiguration *)self clientName];
  [(NPTPerformanceTestConfiguration *)v4 setClientName:clientName];

  [(NPTPerformanceTestConfiguration *)v4 setTestDuration:[(NPTPerformanceTestConfiguration *)self testDuration]];
  [(NPTPerformanceTestConfiguration *)v4 setEndWhenStable:[(NPTPerformanceTestConfiguration *)self endWhenStable]];
  [(NPTPerformanceTestConfiguration *)v4 setStopAtFileSize:[(NPTPerformanceTestConfiguration *)self stopAtFileSize]];
  [(NPTPerformanceTestConfiguration *)v4 setCollectWRMMetrics:[(NPTPerformanceTestConfiguration *)self collectWRMMetrics]];
  [(NPTPerformanceTestConfiguration *)v4 setLegacyMode:[(NPTPerformanceTestConfiguration *)self legacyMode]];
  [(NPTPerformanceTestConfiguration *)v4 setMultiStream:[(NPTPerformanceTestConfiguration *)self multiStream]];
  return v4;
}

+ (id)evaluateInterfaceName:(int)name
{
  v4 = objc_alloc_init(MEMORY[0x277CD91F0]);
  v5 = v4;
  if (name > 2)
  {
    v6 = 0;
    interfaceName = 0;
  }

  else
  {
    [v4 setRequiredInterfaceType:qword_233476AC0[name]];
    v6 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v5];
    path = [v6 path];
    interface = [path interface];
    interfaceName = [interface interfaceName];
  }

  return interfaceName;
}

+ (id)interfaceServiceName:(int)name
{
  if (name > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_2789D4318[name];
  }
}

- (NSDictionary)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  clientName = [(NPTPerformanceTestConfiguration *)self clientName];
  v5 = clientName;
  if (clientName)
  {
    v6 = clientName;
  }

  else
  {
    v6 = @"Unknown";
  }

  [v3 setObject:v6 forKeyedSubscript:@"calling_client"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[NPTPerformanceTestConfiguration collectMetadata](self, "collectMetadata")}];
  [v3 setObject:v7 forKeyedSubscript:@"collect_metadata"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NPTPerformanceTestConfiguration concurrentStreams](self, "concurrentStreams")}];
  [v3 setObject:v8 forKeyedSubscript:@"concurrent_stream_count"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NPTPerformanceTestConfiguration testDuration](self, "testDuration")}];
  [v3 setObject:v9 forKeyedSubscript:@"duration"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[NPTPerformanceTestConfiguration endWhenStable](self, "endWhenStable")}];
  [v3 setObject:v10 forKeyedSubscript:@"end_when_stable"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[NPTPerformanceTestConfiguration collectWRMMetrics](self, "collectWRMMetrics")}];
  [v3 setObject:v11 forKeyedSubscript:@"collect_wrm_metrics"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[NPTPerformanceTestConfiguration stopAtFileSize](self, "stopAtFileSize")}];
  [v3 setObject:v12 forKeyedSubscript:@"stop_at_file_size"];

  interfaceName = [(NPTPerformanceTestConfiguration *)self interfaceName];
  v14 = interfaceName;
  if (interfaceName)
  {
    v15 = interfaceName;
  }

  else
  {
    v15 = @"Unknown";
  }

  [v3 setObject:v15 forKeyedSubscript:@"interface_name"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NPTPerformanceTestConfiguration interfaceType](self, "interfaceType")}];
  [v3 setObject:v16 forKeyedSubscript:@"interface_type"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[NPTFileSizeConverter getFileSizeInBytes:](NPTFileSizeConverter, "getFileSizeInBytes:", -[NPTPerformanceTestConfiguration downloadSize](self, "downloadSize"))}];
  [v3 setObject:v17 forKeyedSubscript:@"download_file_size"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[NPTFileSizeConverter getFileSizeInBytes:](NPTFileSizeConverter, "getFileSizeInBytes:", -[NPTPerformanceTestConfiguration uploadSize](self, "uploadSize"))}];
  [v3 setObject:v18 forKeyedSubscript:@"upload_file_size"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[NPTPerformanceTestConfiguration customURLSet](self, "customURLSet")}];
  [v3 setObject:v19 forKeyedSubscript:@"custom_url_set"];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->privateDownloadURL != 0];
  [v3 setObject:v20 forKeyedSubscript:@"custom_download_url_set"];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:self->privateUploadURL != 0];
  [v3 setObject:v21 forKeyedSubscript:@"custom_upload_url_set"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[NPTPerformanceTestConfiguration legacyMode](self, "legacyMode")}];
  [v3 setObject:v22 forKeyedSubscript:@"legacy"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[NPTPerformanceTestConfiguration multiStream](self, "multiStream")}];
  [v3 setObject:v23 forKeyedSubscript:@"multi_stream"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  testDuration = [(NPTPerformanceTestConfiguration *)self testDuration];
  if ([(NPTPerformanceTestConfiguration *)self endWhenStable])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  concurrentStreams = [(NPTPerformanceTestConfiguration *)self concurrentStreams];
  if ([(NPTPerformanceTestConfiguration *)self customURLSet])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(NPTPerformanceTestConfiguration *)self useSecureConnection])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [NPTPerformanceTestConfiguration interfaceServiceName:[(NPTPerformanceTestConfiguration *)self interfaceType]];
  if ([(NPTPerformanceTestConfiguration *)self legacyMode])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"Test Duration: %lu, End when stable: %@, Number of concurrent streams: %lu, \nCustom URL set: %@, Use Secure Connection: %@, Interface type: %@, Legacy Mode: %@ \n", testDuration, v5, concurrentStreams, v7, v8, v9, v10];

  interfaceName = [(NPTPerformanceTestConfiguration *)self interfaceName];

  if (interfaceName)
  {
    v13 = MEMORY[0x277CCACA8];
    interfaceName2 = [(NPTPerformanceTestConfiguration *)self interfaceName];
    v15 = [v13 stringWithFormat:@", interface name: %@", interfaceName2];

    v16 = [v11 stringByAppendingString:v15];

    v11 = v16;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NPTPerformanceTestConfiguration interfaceType](self forKey:{"interfaceType"), @"interfaceType"}];
  [coderCopy encodeInteger:-[NPTPerformanceTestConfiguration downloadSize](self forKey:{"downloadSize"), @"downloadSize"}];
  [coderCopy encodeInteger:-[NPTPerformanceTestConfiguration uploadSize](self forKey:{"uploadSize"), @"uploadSize"}];
  [coderCopy encodeBool:-[NPTPerformanceTestConfiguration useSecureConnection](self forKey:{"useSecureConnection"), @"useSecureConnection"}];
  [coderCopy encodeInteger:-[NPTPerformanceTestConfiguration pingAddressStyle](self forKey:{"pingAddressStyle"), @"pingAddressStyle"}];
  [coderCopy encodeInt64:-[NPTPerformanceTestConfiguration pingCount](self forKey:{"pingCount"), @"pingCount"}];
  [coderCopy encodeBool:-[NPTPerformanceTestConfiguration collectMetadata](self forKey:{"collectMetadata"), @"collectMetadata"}];
  downloadURL = [(NPTPerformanceTestConfiguration *)self downloadURL];
  [coderCopy encodeObject:downloadURL forKey:@"downloadURL"];

  uploadURL = [(NPTPerformanceTestConfiguration *)self uploadURL];
  [coderCopy encodeObject:uploadURL forKey:@"uploadURL"];

  pingHost = [(NPTPerformanceTestConfiguration *)self pingHost];
  [coderCopy encodeObject:pingHost forKey:@"pingHost"];

  [coderCopy encodeInteger:-[NPTPerformanceTestConfiguration concurrentStreams](self forKey:{"concurrentStreams"), @"concurrentStreams"}];
  uuid = [(NPTPerformanceTestConfiguration *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  clientName = [(NPTPerformanceTestConfiguration *)self clientName];
  [coderCopy encodeObject:clientName forKey:@"clientName"];

  [coderCopy encodeInt64:-[NPTPerformanceTestConfiguration testDuration](self forKey:{"testDuration"), @"testDuration"}];
  [coderCopy encodeBool:-[NPTPerformanceTestConfiguration endWhenStable](self forKey:{"endWhenStable"), @"endWhenStable"}];
  [coderCopy encodeBool:-[NPTPerformanceTestConfiguration stopAtFileSize](self forKey:{"stopAtFileSize"), @"stopAtFileSize"}];
  [coderCopy encodeBool:-[NPTPerformanceTestConfiguration collectWRMMetrics](self forKey:{"collectWRMMetrics"), @"collectWRMMetrics"}];
  [coderCopy encodeBool:-[NPTPerformanceTestConfiguration legacyMode](self forKey:{"legacyMode"), @"legacyMode"}];
  [coderCopy encodeBool:-[NPTPerformanceTestConfiguration multiStream](self forKey:{"multiStream"), @"multiStream"}];
}

- (NPTPerformanceTestConfiguration)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = NPTPerformanceTestConfiguration;
  coderCopy = coder;
  v4 = [(NPTPerformanceTestConfiguration *)&v12 init];
  -[NPTPerformanceTestConfiguration setInterfaceType:](v4, "setInterfaceType:", [coderCopy decodeIntegerForKey:{@"interfaceType", v12.receiver, v12.super_class}]);
  -[NPTPerformanceTestConfiguration setDownloadSize:](v4, "setDownloadSize:", [coderCopy decodeIntegerForKey:@"downloadSize"]);
  -[NPTPerformanceTestConfiguration setUploadSize:](v4, "setUploadSize:", [coderCopy decodeIntegerForKey:@"uploadSize"]);
  -[NPTPerformanceTestConfiguration setUseSecureConnection:](v4, "setUseSecureConnection:", [coderCopy decodeBoolForKey:@"useSecureConnection"]);
  -[NPTPerformanceTestConfiguration setPingAddressStyle:](v4, "setPingAddressStyle:", [coderCopy decodeIntegerForKey:@"pingAddressStyle"]);
  -[NPTPerformanceTestConfiguration setPingCount:](v4, "setPingCount:", [coderCopy decodeInt64ForKey:@"pingCount"]);
  -[NPTPerformanceTestConfiguration setCollectMetadata:](v4, "setCollectMetadata:", [coderCopy decodeBoolForKey:@"collectMetadata"]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadURL"];
  [(NPTPerformanceTestConfiguration *)v4 setDownloadURL:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uploadURL"];
  [(NPTPerformanceTestConfiguration *)v4 setUploadURL:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pingHost"];
  [(NPTPerformanceTestConfiguration *)v4 setPingHost:v7];

  -[NPTPerformanceTestConfiguration setConcurrentStreams:](v4, "setConcurrentStreams:", [coderCopy decodeIntegerForKey:@"concurrentStreams"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  [(NPTPerformanceTestConfiguration *)v4 setUuid:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
  [(NPTPerformanceTestConfiguration *)v4 setClientName:v9];

  -[NPTPerformanceTestConfiguration setTestDuration:](v4, "setTestDuration:", [coderCopy decodeInt64ForKey:@"testDuration"]);
  -[NPTPerformanceTestConfiguration setEndWhenStable:](v4, "setEndWhenStable:", [coderCopy decodeBoolForKey:@"endWhenStable"]);
  -[NPTPerformanceTestConfiguration setStopAtFileSize:](v4, "setStopAtFileSize:", [coderCopy decodeBoolForKey:@"stopAtFileSize"]);
  -[NPTPerformanceTestConfiguration setCollectWRMMetrics:](v4, "setCollectWRMMetrics:", [coderCopy decodeBoolForKey:@"collectWRMMetrics"]);
  -[NPTPerformanceTestConfiguration setLegacyMode:](v4, "setLegacyMode:", [coderCopy decodeBoolForKey:@"legacyMode"]);
  v10 = [coderCopy decodeBoolForKey:@"multiStream"];

  [(NPTPerformanceTestConfiguration *)v4 setMultiStream:v10];
  return v4;
}

@end