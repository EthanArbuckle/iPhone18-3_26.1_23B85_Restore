@interface OspreyRequest
+ (id)requestWithMethodName:(id)name;
- (OspreyRequest)initWithMethodName:(id)name;
- (id)grpcRequestWithBaseURL:(id)l;
@end

@implementation OspreyRequest

- (OspreyRequest)initWithMethodName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = OspreyRequest;
  v6 = [(OspreyRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_forceHTTPv2 = 1;
    *&v6->_enableDeviceAuthentication = 257;
    objc_storeStrong(&v6->_methodName, name);
    if (OspreyCreateGlobalUserAgentString_onceToken != -1)
    {
      [OspreyRequest initWithMethodName:];
    }

    objc_storeStrong(&v7->_userAgent, OspreyCreateGlobalUserAgentString_globalUserAgent);
    v7->_allowsCellularAccess = 1;
    v8 = v7;
  }

  return v7;
}

+ (id)requestWithMethodName:(id)name
{
  nameCopy = name;
  v4 = [[OspreyRequest alloc] initWithMethodName:nameCopy];

  return v4;
}

- (id)grpcRequestWithBaseURL:(id)l
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [l URLByAppendingPathComponent:self->_methodName];
  v5 = [MEMORY[0x277CCAB70] requestWithURL:v4];
  [v5 setAllowsCellularAccess:self->_allowsCellularAccess];
  [v5 setHTTPMethod:@"POST"];
  [v5 setValue:@"application/grpc" forHTTPHeaderField:@"content-type"];
  [v5 setValue:@"60S" forHTTPHeaderField:@"grpc-timeout"];
  [v5 setValue:@"trailers" forHTTPHeaderField:@"te"];
  [v5 setValue:@"1" forHTTPHeaderField:@"siri-osprey"];
  [v5 setValue:self->_userAgent forHTTPHeaderField:@"user-agent"];
  if (self->_useCompression)
  {
    v6 = @"gzip,identity";
  }

  else
  {
    v6 = @"identity";
  }

  if (self->_useCompression)
  {
    v7 = @"gzip";
  }

  else
  {
    v7 = @"identity";
  }

  [v5 setValue:v6 forHTTPHeaderField:@"grpc-accept-encoding"];
  [v5 setValue:v6 forHTTPHeaderField:@"accept-encoding"];
  [v5 setValue:v7 forHTTPHeaderField:@"grpc-encoding"];
  if (self->_enableDeviceAuthentication)
  {
    signedDeviceAuthenticationData = self->_signedDeviceAuthenticationData;
    if (signedDeviceAuthenticationData)
    {
      v9 = [(NSData *)signedDeviceAuthenticationData base64EncodedStringWithOptions:0];
      [v5 setValue:v9 forHTTPHeaderField:@"siri-absinthe-token-bin"];
    }
  }

  else
  {
    [v5 setValue:@"true" forHTTPHeaderField:@"siri-absinthe-ignore"];
  }

  deviceAuthenticationVersion = self->_deviceAuthenticationVersion;
  if (deviceAuthenticationVersion)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[NSNumber integerValue](deviceAuthenticationVersion, "integerValue")];
    [v5 setValue:v11 forHTTPHeaderField:@"siri-device-auth-version"];
  }

  if (self->_forceHTTPv2)
  {
    OspreyLoggingInit();
    v12 = OspreyLogContextRequest;
    if (os_log_type_enabled(OspreyLogContextRequest, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[OspreyRequest grpcRequestWithBaseURL:]";
      _os_log_impl(&dword_25DDE6000, v12, OS_LOG_TYPE_INFO, "%s Force usage of HTTP/2 for request", buf, 0xCu);
    }

    [v5 _CFURLRequest];
    _CFURLRequestSetAllowedProtocolTypes();
  }

  clientTraceId = self->_clientTraceId;
  if (clientTraceId)
  {
    [v5 setValue:clientTraceId forHTTPHeaderField:@"siri-osprey-trace-id"];
  }

  headers = self->_headers;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__OspreyRequest_grpcRequestWithBaseURL___block_invoke;
  v22[3] = &unk_2799F1F70;
  v15 = v5;
  v23 = v15;
  [(NSDictionary *)headers enumerateKeysAndObjectsUsingBlock:v22];
  OspreyLoggingInit();
  v16 = OspreyLogContextRequest;
  if (os_log_type_enabled(OspreyLogContextRequest, OS_LOG_TYPE_INFO))
  {
    methodName = self->_methodName;
    data = self->_data;
    v19 = v16;
    LODWORD(data) = [(NSData *)data length];
    allHTTPHeaderFields = [v15 allHTTPHeaderFields];
    *buf = 136315906;
    v25 = "[OspreyRequest grpcRequestWithBaseURL:]";
    v26 = 2112;
    v27 = methodName;
    v28 = 1024;
    v29 = data;
    v30 = 2112;
    v31 = allHTTPHeaderFields;
    _os_log_impl(&dword_25DDE6000, v19, OS_LOG_TYPE_INFO, "%s Request method: %@ data_length: %d headers: %@", buf, 0x26u);
  }

  return v15;
}

void __40__OspreyRequest_grpcRequestWithBaseURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) allHTTPHeaderFields];
  v8 = [v7 objectForKey:v5];

  if (v8)
  {
    OspreyLoggingInit();
    v9 = OspreyLogContextRequest;
    if (os_log_type_enabled(OspreyLogContextRequest, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "[OspreyRequest grpcRequestWithBaseURL:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_debug_impl(&dword_25DDE6000, v9, OS_LOG_TYPE_DEBUG, "%s Overriding HTTP header: '%@' previous value: '%@' with: '%@'", &v10, 0x2Au);
    }
  }

  [*(a1 + 32) setValue:v6 forHTTPHeaderField:v5];
}

@end