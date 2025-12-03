@interface NPTMetricResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetricResult:(id)result;
- (NPTMetricResult)initWithCoder:(id)coder;
- (NSDictionary)asDictionary;
- (double)timeIntervalSinceDateWithLogging:(id)logging startDate:(id)date nameToLog:(id)log;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)populateWithMetrics:(id)metrics;
- (void)populateWithURLResponse:(id)response;
@end

@implementation NPTMetricResult

- (NSDictionary)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setValue:self->_fetchDate forKey:@"fetch_date"];
  [v3 setValue:self->_protocolName forKey:@"protocol_name"];
  [v3 setValue:self->_isReusedConnection forKey:@"is_reused_connection"];
  [v3 setValue:self->_isProxyConnection forKey:@"is_proxy_connection"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_fileSize];
  [v3 setValue:v4 forKey:@"file_size"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_speed];
  [v3 setValue:v5 forKey:@"speed"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxSpeedObserved];
  [v3 setValue:v6 forKey:@"max_speed_observed"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_stableSpeed];
  [v3 setValue:v7 forKey:@"stable_speed"];

  [v3 setValue:self->_speedRating forKey:@"speed_rating"];
  [v3 setValue:self->_speedConfidence forKey:@"speed_confidence"];
  [v3 setValue:self->_latency forKey:@"latency"];
  [v3 setValue:self->_nqTestEndPoint forKey:@"nq_test_end_point"];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_domainLookupTime];
  [v3 setValue:v8 forKey:@"domain_lookup_time"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_connectionTime];
  [v3 setValue:v9 forKey:@"connection_time"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_secureConnectionTime];
  [v3 setValue:v10 forKey:@"secure_connection_time"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_requestTime];
  [v3 setValue:v11 forKey:@"request_time"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_requestToResponseTime];
  [v3 setValue:v12 forKey:@"request_to_response_time"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_responseTime];
  [v3 setValue:v13 forKey:@"response_time"];

  [v3 setValue:self->_cdnpop forKey:@"cdn_pop"];
  [v3 setValue:self->_cdnuuid forKey:@"cdn_uuid"];
  [v3 setValue:self->_appleClientASN forKey:@"apple_client_asn"];
  [v3 setValue:self->_appleClientASNCompany forKey:@"apple_client_asn_company"];
  [v3 setValue:self->_server forKey:@"server"];
  [v3 setValue:self->_isCellular forKey:@"is_cellular"];
  [v3 setValue:self->_isConstrained forKey:@"is_constrained"];
  [v3 setValue:self->_isExpensive forKey:@"is_expensive"];
  [v3 setValue:self->_isMultipath forKey:@"is_multipath"];
  [v3 setValue:self->_localAddress forKey:@"local_address"];
  [v3 setValue:self->_remoteAddress forKey:@"remote_address"];
  [v3 setValue:self->_localPort forKey:@"local_port"];
  [v3 setValue:self->_remotePort forKey:@"remote_port"];
  [v3 setValue:self->_negotiatedTLSCipherSuite forKey:@"negotiated_tls_cipher_suite"];
  [v3 setValue:self->_negotiatedTLSProtocolVersion forKey:@"negotiated_tls_protocol_version"];
  [v3 setValue:self->_interfaceServiceName forKey:@"interface_service_name"];
  [v3 setValue:self->_interfaceName forKey:@"interface_name"];
  [v3 setValue:self->_concurrentStreams forKey:@"number_of_streams"];
  [v3 setValue:self->_responsiveness forKey:@"responsiveness"];
  [v3 setValue:self->_responsivenessRating forKey:@"responsiveness_rating"];
  [v3 setValue:self->_responsivenessConfidence forKey:@"responsiveness_confidence"];
  error = self->_error;
  if (error)
  {
    localizedDescription = [(NSError *)error localizedDescription];
    [v3 setValue:localizedDescription forKey:@"error"];

    domain = [(NSError *)self->_error domain];
    [v3 setValue:domain forKey:@"error_domain"];

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](self->_error, "code")}];
    [v3 setValue:v17 forKey:@"error_code"];
  }

  v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NPTMetricResult fileSize](self forKey:{"fileSize"), @"fileSize"}];
  fetchDate = [(NPTMetricResult *)self fetchDate];
  [coderCopy encodeObject:fetchDate forKey:@"fetchDate"];

  protocolName = [(NPTMetricResult *)self protocolName];
  [coderCopy encodeObject:protocolName forKey:@"protocolName"];

  isReusedConnection = [(NPTMetricResult *)self isReusedConnection];
  [coderCopy encodeObject:isReusedConnection forKey:@"isReusedConnection"];

  isProxyConnection = [(NPTMetricResult *)self isProxyConnection];
  [coderCopy encodeObject:isProxyConnection forKey:@"isProxtConnection"];

  [(NPTMetricResult *)self domainLookupTime];
  [coderCopy encodeDouble:@"domainLookupTime" forKey:?];
  [(NPTMetricResult *)self connectionTime];
  [coderCopy encodeDouble:@"connectionTime" forKey:?];
  [(NPTMetricResult *)self secureConnectionTime];
  [coderCopy encodeDouble:@"secureConnectionTime" forKey:?];
  [(NPTMetricResult *)self requestTime];
  [coderCopy encodeDouble:@"requestTime" forKey:?];
  [(NPTMetricResult *)self requestToResponseTime];
  [coderCopy encodeDouble:@"requestToResponseTime" forKey:?];
  [(NPTMetricResult *)self responseTime];
  [coderCopy encodeDouble:@"responseTime" forKey:?];
  [(NPTMetricResult *)self speed];
  [coderCopy encodeDouble:@"speed" forKey:?];
  speedRating = [(NPTMetricResult *)self speedRating];
  [coderCopy encodeObject:speedRating forKey:@"speedRating"];

  speedConfidence = [(NPTMetricResult *)self speedConfidence];
  [coderCopy encodeObject:speedConfidence forKey:@"speedConfidence"];

  latency = [(NPTMetricResult *)self latency];
  [coderCopy encodeObject:latency forKey:@"latency"];

  nqTestEndPoint = [(NPTMetricResult *)self nqTestEndPoint];
  [coderCopy encodeObject:nqTestEndPoint forKey:@"nqTestEndPoint"];

  [(NPTMetricResult *)self maxSpeedObserved];
  [coderCopy encodeDouble:@"maxSpeedObserved" forKey:?];
  [(NPTMetricResult *)self stableSpeed];
  [coderCopy encodeDouble:@"stableSpeed" forKey:?];
  cdnpop = [(NPTMetricResult *)self cdnpop];
  [coderCopy encodeObject:cdnpop forKey:@"cdnpop"];

  cdnuuid = [(NPTMetricResult *)self cdnuuid];
  [coderCopy encodeObject:cdnuuid forKey:@"cdnuuid"];

  appleClientASN = [(NPTMetricResult *)self appleClientASN];
  [coderCopy encodeObject:appleClientASN forKey:@"appleClientASN"];

  appleClientASNCompany = [(NPTMetricResult *)self appleClientASNCompany];
  [coderCopy encodeObject:appleClientASNCompany forKey:@"appleClientASNCompany"];

  server = [(NPTMetricResult *)self server];
  [coderCopy encodeObject:server forKey:@"server"];

  isCellular = [(NPTMetricResult *)self isCellular];
  [coderCopy encodeObject:isCellular forKey:@"isCellular"];

  isConstrained = [(NPTMetricResult *)self isConstrained];
  [coderCopy encodeObject:isConstrained forKey:@"isConstrained"];

  isExpensive = [(NPTMetricResult *)self isExpensive];
  [coderCopy encodeObject:isExpensive forKey:@"isExpensive"];

  isMultipath = [(NPTMetricResult *)self isMultipath];
  [coderCopy encodeObject:isMultipath forKey:@"isMultipath"];

  localAddress = [(NPTMetricResult *)self localAddress];
  [coderCopy encodeObject:localAddress forKey:@"localAddress"];

  remoteAddress = [(NPTMetricResult *)self remoteAddress];
  [coderCopy encodeObject:remoteAddress forKey:@"remoteAddress"];

  localPort = [(NPTMetricResult *)self localPort];
  [coderCopy encodeObject:localPort forKey:@"localPort"];

  remotePort = [(NPTMetricResult *)self remotePort];
  [coderCopy encodeObject:remotePort forKey:@"remotePort"];

  negotiatedTLSCipherSuite = [(NPTMetricResult *)self negotiatedTLSCipherSuite];
  [coderCopy encodeObject:negotiatedTLSCipherSuite forKey:@"negotiatedTLSCipherSuite"];

  negotiatedTLSProtocolVersion = [(NPTMetricResult *)self negotiatedTLSProtocolVersion];
  [coderCopy encodeObject:negotiatedTLSProtocolVersion forKey:@"negotiatedTLSProtocolVersion"];

  interfaceServiceName = [(NPTMetricResult *)self interfaceServiceName];
  [coderCopy encodeObject:interfaceServiceName forKey:@"interfaceServiceName"];

  interfaceName = [(NPTMetricResult *)self interfaceName];
  [coderCopy encodeObject:interfaceName forKey:@"interfaceName"];

  concurrentStreams = [(NPTMetricResult *)self concurrentStreams];
  [coderCopy encodeObject:concurrentStreams forKey:@"number_of_streams"];

  error = [(NPTMetricResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  responsiveness = [(NPTMetricResult *)self responsiveness];
  [coderCopy encodeObject:responsiveness forKey:@"responsiveness"];

  responsivenessRating = [(NPTMetricResult *)self responsivenessRating];
  [coderCopy encodeObject:responsivenessRating forKey:@"responsivenessRating"];

  responsivenessConfidence = [(NPTMetricResult *)self responsivenessConfidence];
  [coderCopy encodeObject:responsivenessConfidence forKey:@"responsivenessConfidence"];
}

- (NPTMetricResult)initWithCoder:(id)coder
{
  v36.receiver = self;
  v36.super_class = NPTMetricResult;
  coderCopy = coder;
  v4 = [(NPTMetricResult *)&v36 init];
  -[NPTMetricResult setFileSize:](v4, "setFileSize:", [coderCopy decodeIntegerForKey:{@"fileSize", v36.receiver, v36.super_class}]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchDate"];
  [(NPTMetricResult *)v4 setFetchDate:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protocolName"];
  [(NPTMetricResult *)v4 setProtocolName:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isReusedConnection"];
  [(NPTMetricResult *)v4 setIsReusedConnection:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isProxyConnection"];
  [(NPTMetricResult *)v4 setIsProxyConnection:v8];

  [coderCopy decodeDoubleForKey:@"domainLookupTime"];
  [(NPTMetricResult *)v4 setDomainLookupTime:?];
  [coderCopy decodeDoubleForKey:@"connectionTime"];
  [(NPTMetricResult *)v4 setConnectionTime:?];
  [coderCopy decodeDoubleForKey:@"secureConnectionTime"];
  [(NPTMetricResult *)v4 setSecureConnectionTime:?];
  [coderCopy decodeDoubleForKey:@"requestTime"];
  [(NPTMetricResult *)v4 setRequestTime:?];
  [coderCopy decodeDoubleForKey:@"requestToResponseTime"];
  [(NPTMetricResult *)v4 setRequestToResponseTime:?];
  [coderCopy decodeDoubleForKey:@"responseTime"];
  [(NPTMetricResult *)v4 setResponseTime:?];
  [coderCopy decodeDoubleForKey:@"speed"];
  [(NPTMetricResult *)v4 setSpeed:?];
  v9 = [coderCopy decodeObjectForKey:@"speedRating"];
  [(NPTMetricResult *)v4 setSpeedRating:v9];

  v10 = [coderCopy decodeObjectForKey:@"speedConfidence"];
  [(NPTMetricResult *)v4 setSpeedConfidence:v10];

  v11 = [coderCopy decodeObjectForKey:@"latency"];
  [(NPTMetricResult *)v4 setLatency:v11];

  v12 = [coderCopy decodeObjectForKey:@"nqTestEndPoint"];
  [(NPTMetricResult *)v4 setNqTestEndPoint:v12];

  [coderCopy decodeDoubleForKey:@"maxSpeedObserved"];
  [(NPTMetricResult *)v4 setMaxSpeedObserved:?];
  [coderCopy decodeDoubleForKey:@"stableSpeed"];
  [(NPTMetricResult *)v4 setStableSpeed:?];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cdnpop"];
  [(NPTMetricResult *)v4 setCdnpop:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cdnuuid"];
  [(NPTMetricResult *)v4 setCdnuuid:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleClientASN"];
  [(NPTMetricResult *)v4 setAppleClientASN:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleClientASNCompany"];
  [(NPTMetricResult *)v4 setAppleClientASNCompany:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"server"];
  [(NPTMetricResult *)v4 setServer:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isCellular"];
  [(NPTMetricResult *)v4 setIsCellular:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isConstrained"];
  [(NPTMetricResult *)v4 setIsConstrained:v19];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isExpensive"];
  [(NPTMetricResult *)v4 setIsExpensive:v20];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isMultipath"];
  [(NPTMetricResult *)v4 setIsMultipath:v21];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localAddress"];
  [(NPTMetricResult *)v4 setLocalAddress:v22];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteAddress"];
  [(NPTMetricResult *)v4 setRemoteAddress:v23];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localPort"];
  [(NPTMetricResult *)v4 setLocalPort:v24];

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remotePort"];
  [(NPTMetricResult *)v4 setRemotePort:v25];

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"negotiatedTLSCipherSuite"];
  [(NPTMetricResult *)v4 setNegotiatedTLSCipherSuite:v26];

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"negotiatedTLSProtocolVersion"];
  [(NPTMetricResult *)v4 setNegotiatedTLSProtocolVersion:v27];

  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interfaceServiceName"];
  [(NPTMetricResult *)v4 setInterfaceServiceName:v28];

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interfaceName"];
  [(NPTMetricResult *)v4 setInterfaceName:v29];

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"number_of_streams"];
  [(NPTMetricResult *)v4 setConcurrentStreams:v30];

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  [(NPTMetricResult *)v4 setError:v31];

  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responsiveness"];
  [(NPTMetricResult *)v4 setResponsiveness:v32];

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responsivenessRating"];
  [(NPTMetricResult *)v4 setResponsivenessRating:v33];

  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responsivenessConfidence"];

  [(NPTMetricResult *)v4 setResponsivenessConfidence:v34];
  return v4;
}

- (double)timeIntervalSinceDateWithLogging:(id)logging startDate:(id)date nameToLog:(id)log
{
  logCopy = log;
  if (logging && date)
  {
    [logging timeIntervalSinceDate:date];
    v9 = v8;
  }

  else
  {
    v10 = +[NPTLogger network];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [NPTMetricResult timeIntervalSinceDateWithLogging:logCopy startDate:v10 nameToLog:?];
    }

    v9 = 0.0;
  }

  return v9;
}

- (void)populateWithMetrics:(id)metrics
{
  transactionMetrics = [metrics transactionMetrics];
  firstObject = [transactionMetrics firstObject];

  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  fetchStartDate = [firstObject fetchStartDate];
  v7 = [v5 stringFromDate:fetchStartDate];
  [(NPTMetricResult *)self setFetchDate:v7];

  domainLookupEndDate = [firstObject domainLookupEndDate];
  domainLookupStartDate = [firstObject domainLookupStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:domainLookupEndDate startDate:domainLookupStartDate nameToLog:@"domainLookupTime"];
  [(NPTMetricResult *)self setDomainLookupTime:?];

  connectEndDate = [firstObject connectEndDate];
  connectStartDate = [firstObject connectStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:connectEndDate startDate:connectStartDate nameToLog:@"connectionTime"];
  [(NPTMetricResult *)self setConnectionTime:?];

  secureConnectionEndDate = [firstObject secureConnectionEndDate];
  secureConnectionStartDate = [firstObject secureConnectionStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:secureConnectionEndDate startDate:secureConnectionStartDate nameToLog:@"secureConnectionTime"];
  [(NPTMetricResult *)self setSecureConnectionTime:?];

  requestEndDate = [firstObject requestEndDate];
  requestStartDate = [firstObject requestStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:requestEndDate startDate:requestStartDate nameToLog:@"requestTime"];
  [(NPTMetricResult *)self setRequestTime:?];

  responseStartDate = [firstObject responseStartDate];
  requestEndDate2 = [firstObject requestEndDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:responseStartDate startDate:requestEndDate2 nameToLog:@"requestToResponseTime"];
  [(NPTMetricResult *)self setRequestToResponseTime:?];

  responseEndDate = [firstObject responseEndDate];
  responseStartDate2 = [firstObject responseStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:responseEndDate startDate:responseStartDate2 nameToLog:@"responseTime"];
  [(NPTMetricResult *)self setResponseTime:?];

  if ([firstObject isProxyConnection])
  {
    v20 = @"true";
  }

  else
  {
    v20 = @"false";
  }

  [(NPTMetricResult *)self setIsProxyConnection:v20];
  if ([firstObject isReusedConnection])
  {
    v21 = @"true";
  }

  else
  {
    v21 = @"false";
  }

  [(NPTMetricResult *)self setIsReusedConnection:v21];
  networkProtocolName = [firstObject networkProtocolName];
  [(NPTMetricResult *)self setProtocolName:networkProtocolName];

  if ([firstObject isCellular])
  {
    v23 = @"true";
  }

  else
  {
    v23 = @"false";
  }

  [(NPTMetricResult *)self setIsCellular:v23];
  if ([firstObject isConstrained])
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [(NPTMetricResult *)self setIsConstrained:v24];
  if ([firstObject isExpensive])
  {
    v25 = @"true";
  }

  else
  {
    v25 = @"false";
  }

  [(NPTMetricResult *)self setIsExpensive:v25];
  if ([firstObject isMultipath])
  {
    v26 = @"true";
  }

  else
  {
    v26 = @"false";
  }

  [(NPTMetricResult *)self setIsMultipath:v26];
  localAddress = [firstObject localAddress];
  [(NPTMetricResult *)self setLocalAddress:localAddress];

  remoteAddress = [firstObject remoteAddress];
  [(NPTMetricResult *)self setRemoteAddress:remoteAddress];

  localPort = [firstObject localPort];
  [(NPTMetricResult *)self setLocalPort:localPort];

  remotePort = [firstObject remotePort];
  [(NPTMetricResult *)self setRemotePort:remotePort];

  negotiatedTLSCipherSuite = [firstObject negotiatedTLSCipherSuite];
  [(NPTMetricResult *)self setNegotiatedTLSCipherSuite:negotiatedTLSCipherSuite];

  negotiatedTLSProtocolVersion = [firstObject negotiatedTLSProtocolVersion];
  [(NPTMetricResult *)self setNegotiatedTLSProtocolVersion:negotiatedTLSProtocolVersion];

  interfaceServiceName = [firstObject interfaceServiceName];
  [(NPTMetricResult *)self setInterfaceServiceName:interfaceServiceName];

  interfaceName = [firstObject interfaceName];
  [(NPTMetricResult *)self setInterfaceName:interfaceName];
}

- (void)populateWithURLResponse:(id)response
{
  allHeaderFields = [response allHeaderFields];
  v4 = [allHeaderFields objectForKey:@"cdnuuid"];
  [(NPTMetricResult *)self setCdnuuid:v4];

  v5 = [allHeaderFields objectForKey:@"Server"];
  [(NPTMetricResult *)self setServer:v5];

  v6 = [allHeaderFields objectForKey:@"Apple-Client-ASN"];
  v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v7 setNumberStyle:0];
  v8 = [v7 numberFromString:v6];
  [(NPTMetricResult *)self setAppleClientASN:v8];

  v9 = [allHeaderFields objectForKey:@"Apple-Client-ASN-Company"];
  [(NPTMetricResult *)self setAppleClientASNCompany:v9];

  v10 = [allHeaderFields objectForKey:@"Via"];
  v11 = [v10 componentsSeparatedByString:@" "];
  if ([v11 count] >= 2)
  {
    v12 = v11;
    v13 = 1;
LABEL_5:
    v14 = [v12 objectAtIndexedSubscript:v13];
    [(NPTMetricResult *)self setCdnpop:v14];

    goto LABEL_7;
  }

  if ([v11 count] == 1)
  {
    v12 = v11;
    v13 = 0;
    goto LABEL_5;
  }

  [(NPTMetricResult *)self setCdnpop:@"Unknown"];
LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPTMetricResult allocWithZone:?]];
  cdnpop = [(NPTMetricResult *)self cdnpop];
  [(NPTMetricResult *)v4 setCdnpop:cdnpop];

  server = [(NPTMetricResult *)self server];
  [(NPTMetricResult *)v4 setServer:server];

  cdnuuid = [(NPTMetricResult *)self cdnuuid];
  [(NPTMetricResult *)v4 setCdnuuid:cdnuuid];

  appleClientASN = [(NPTMetricResult *)self appleClientASN];
  [(NPTMetricResult *)v4 setAppleClientASN:appleClientASN];

  appleClientASNCompany = [(NPTMetricResult *)self appleClientASNCompany];
  [(NPTMetricResult *)v4 setAppleClientASNCompany:appleClientASNCompany];

  [(NPTMetricResult *)v4 setFileSize:[(NPTMetricResult *)self fileSize]];
  fetchDate = [(NPTMetricResult *)self fetchDate];
  [(NPTMetricResult *)v4 setFetchDate:fetchDate];

  protocolName = [(NPTMetricResult *)self protocolName];
  [(NPTMetricResult *)v4 setProtocolName:protocolName];

  isReusedConnection = [(NPTMetricResult *)self isReusedConnection];
  [(NPTMetricResult *)v4 setIsReusedConnection:isReusedConnection];

  isProxyConnection = [(NPTMetricResult *)self isProxyConnection];
  [(NPTMetricResult *)v4 setIsProxyConnection:isProxyConnection];

  [(NPTMetricResult *)self domainLookupTime];
  [(NPTMetricResult *)v4 setDomainLookupTime:?];
  [(NPTMetricResult *)self connectionTime];
  [(NPTMetricResult *)v4 setConnectionTime:?];
  [(NPTMetricResult *)self secureConnectionTime];
  [(NPTMetricResult *)v4 setSecureConnectionTime:?];
  [(NPTMetricResult *)self requestTime];
  [(NPTMetricResult *)v4 setRequestTime:?];
  [(NPTMetricResult *)self requestToResponseTime];
  [(NPTMetricResult *)v4 setRequestToResponseTime:?];
  [(NPTMetricResult *)self responseTime];
  [(NPTMetricResult *)v4 setResponseTime:?];
  [(NPTMetricResult *)self speed];
  [(NPTMetricResult *)v4 setSpeed:?];
  speedRating = [(NPTMetricResult *)self speedRating];
  [(NPTMetricResult *)v4 setSpeedRating:speedRating];

  speedConfidence = [(NPTMetricResult *)self speedConfidence];
  [(NPTMetricResult *)v4 setSpeedConfidence:speedConfidence];

  latency = [(NPTMetricResult *)self latency];
  [(NPTMetricResult *)v4 setLatency:latency];

  nqTestEndPoint = [(NPTMetricResult *)self nqTestEndPoint];
  [(NPTMetricResult *)v4 setNqTestEndPoint:nqTestEndPoint];

  [(NPTMetricResult *)self stableSpeed];
  [(NPTMetricResult *)v4 setStableSpeed:?];
  isCellular = [(NPTMetricResult *)self isCellular];
  [(NPTMetricResult *)v4 setIsCellular:isCellular];

  isExpensive = [(NPTMetricResult *)self isExpensive];
  [(NPTMetricResult *)v4 setIsExpensive:isExpensive];

  isConstrained = [(NPTMetricResult *)self isConstrained];
  [(NPTMetricResult *)v4 setIsConstrained:isConstrained];

  isMultipath = [(NPTMetricResult *)self isMultipath];
  [(NPTMetricResult *)v4 setIsMultipath:isMultipath];

  localAddress = [(NPTMetricResult *)self localAddress];
  [(NPTMetricResult *)v4 setLocalAddress:localAddress];

  remoteAddress = [(NPTMetricResult *)self remoteAddress];
  [(NPTMetricResult *)v4 setRemoteAddress:remoteAddress];

  negotiatedTLSCipherSuite = [(NPTMetricResult *)self negotiatedTLSCipherSuite];
  [(NPTMetricResult *)v4 setNegotiatedTLSCipherSuite:negotiatedTLSCipherSuite];

  negotiatedTLSProtocolVersion = [(NPTMetricResult *)self negotiatedTLSProtocolVersion];
  [(NPTMetricResult *)v4 setNegotiatedTLSProtocolVersion:negotiatedTLSProtocolVersion];

  localPort = [(NPTMetricResult *)self localPort];
  [(NPTMetricResult *)v4 setLocalPort:localPort];

  remotePort = [(NPTMetricResult *)self remotePort];
  [(NPTMetricResult *)v4 setRemotePort:remotePort];

  interfaceServiceName = [(NPTMetricResult *)self interfaceServiceName];
  [(NPTMetricResult *)v4 setInterfaceServiceName:interfaceServiceName];

  interfaceName = [(NPTMetricResult *)self interfaceName];
  [(NPTMetricResult *)v4 setInterfaceName:interfaceName];

  concurrentStreams = [(NPTMetricResult *)self concurrentStreams];
  [(NPTMetricResult *)v4 setConcurrentStreams:concurrentStreams];

  error = [(NPTMetricResult *)self error];
  [(NPTMetricResult *)v4 setError:error];

  responsiveness = [(NPTMetricResult *)self responsiveness];
  [(NPTMetricResult *)v4 setResponsiveness:responsiveness];

  responsivenessRating = [(NPTMetricResult *)self responsivenessRating];
  [(NPTMetricResult *)v4 setResponsivenessRating:responsivenessRating];

  responsivenessConfidence = [(NPTMetricResult *)self responsivenessConfidence];
  [(NPTMetricResult *)v4 setResponsivenessConfidence:responsivenessConfidence];

  return v4;
}

- (unint64_t)hash
{
  fetchDate = [(NPTMetricResult *)self fetchDate];
  v4 = [fetchDate hash];
  cdnuuid = [(NPTMetricResult *)self cdnuuid];
  v6 = [cdnuuid hash] ^ v4;
  cdnpop = [(NPTMetricResult *)self cdnpop];
  v8 = [cdnpop hash];

  return v6 ^ v8;
}

- (BOOL)isEqualToMetricResult:(id)result
{
  resultCopy = result;
  fetchDate = [(NPTMetricResult *)self fetchDate];
  fetchDate2 = [resultCopy fetchDate];
  if (![fetchDate isEqualToString:fetchDate2])
  {
    goto LABEL_8;
  }

  [(NPTMetricResult *)self requestToResponseTime];
  v8 = v7;
  [resultCopy requestToResponseTime];
  if (v8 != v9)
  {
    goto LABEL_8;
  }

  [(NPTMetricResult *)self requestTime];
  v11 = v10;
  [resultCopy requestTime];
  if (v11 == v12 && (-[NPTMetricResult domainLookupTime](self, "domainLookupTime"), v14 = v13, [resultCopy domainLookupTime], v14 == v15))
  {
    cdnuuid = [(NPTMetricResult *)self cdnuuid];
    cdnuuid2 = [resultCopy cdnuuid];
    if ([cdnuuid isEqualToString:cdnuuid2])
    {
      cdnpop = [(NPTMetricResult *)self cdnpop];
      cdnpop2 = [resultCopy cdnpop];
      if ([cdnpop isEqualToString:cdnpop2])
      {
        [(NPTMetricResult *)self responseTime];
        v21 = v20;
        [resultCopy responseTime];
        v23 = v21 == v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
LABEL_8:
    v23 = 0;
  }

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPTMetricResult *)self isEqualToMetricResult:v5];
  }

  return v6;
}

- (void)timeIntervalSinceDateWithLogging:(uint64_t)a1 startDate:(NSObject *)a2 nameToLog:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_233421000, a2, OS_LOG_TYPE_DEBUG, "%@ is NaN", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end