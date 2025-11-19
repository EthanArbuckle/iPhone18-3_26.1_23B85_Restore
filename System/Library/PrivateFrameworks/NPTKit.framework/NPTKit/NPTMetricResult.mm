@interface NPTMetricResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMetricResult:(id)a3;
- (NPTMetricResult)initWithCoder:(id)a3;
- (NSDictionary)asDictionary;
- (double)timeIntervalSinceDateWithLogging:(id)a3 startDate:(id)a4 nameToLog:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)populateWithMetrics:(id)a3;
- (void)populateWithURLResponse:(id)a3;
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
    v15 = [(NSError *)error localizedDescription];
    [v3 setValue:v15 forKey:@"error"];

    v16 = [(NSError *)self->_error domain];
    [v3 setValue:v16 forKey:@"error_domain"];

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](self->_error, "code")}];
    [v3 setValue:v17 forKey:@"error_code"];
  }

  v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[NPTMetricResult fileSize](self forKey:{"fileSize"), @"fileSize"}];
  v5 = [(NPTMetricResult *)self fetchDate];
  [v4 encodeObject:v5 forKey:@"fetchDate"];

  v6 = [(NPTMetricResult *)self protocolName];
  [v4 encodeObject:v6 forKey:@"protocolName"];

  v7 = [(NPTMetricResult *)self isReusedConnection];
  [v4 encodeObject:v7 forKey:@"isReusedConnection"];

  v8 = [(NPTMetricResult *)self isProxyConnection];
  [v4 encodeObject:v8 forKey:@"isProxtConnection"];

  [(NPTMetricResult *)self domainLookupTime];
  [v4 encodeDouble:@"domainLookupTime" forKey:?];
  [(NPTMetricResult *)self connectionTime];
  [v4 encodeDouble:@"connectionTime" forKey:?];
  [(NPTMetricResult *)self secureConnectionTime];
  [v4 encodeDouble:@"secureConnectionTime" forKey:?];
  [(NPTMetricResult *)self requestTime];
  [v4 encodeDouble:@"requestTime" forKey:?];
  [(NPTMetricResult *)self requestToResponseTime];
  [v4 encodeDouble:@"requestToResponseTime" forKey:?];
  [(NPTMetricResult *)self responseTime];
  [v4 encodeDouble:@"responseTime" forKey:?];
  [(NPTMetricResult *)self speed];
  [v4 encodeDouble:@"speed" forKey:?];
  v9 = [(NPTMetricResult *)self speedRating];
  [v4 encodeObject:v9 forKey:@"speedRating"];

  v10 = [(NPTMetricResult *)self speedConfidence];
  [v4 encodeObject:v10 forKey:@"speedConfidence"];

  v11 = [(NPTMetricResult *)self latency];
  [v4 encodeObject:v11 forKey:@"latency"];

  v12 = [(NPTMetricResult *)self nqTestEndPoint];
  [v4 encodeObject:v12 forKey:@"nqTestEndPoint"];

  [(NPTMetricResult *)self maxSpeedObserved];
  [v4 encodeDouble:@"maxSpeedObserved" forKey:?];
  [(NPTMetricResult *)self stableSpeed];
  [v4 encodeDouble:@"stableSpeed" forKey:?];
  v13 = [(NPTMetricResult *)self cdnpop];
  [v4 encodeObject:v13 forKey:@"cdnpop"];

  v14 = [(NPTMetricResult *)self cdnuuid];
  [v4 encodeObject:v14 forKey:@"cdnuuid"];

  v15 = [(NPTMetricResult *)self appleClientASN];
  [v4 encodeObject:v15 forKey:@"appleClientASN"];

  v16 = [(NPTMetricResult *)self appleClientASNCompany];
  [v4 encodeObject:v16 forKey:@"appleClientASNCompany"];

  v17 = [(NPTMetricResult *)self server];
  [v4 encodeObject:v17 forKey:@"server"];

  v18 = [(NPTMetricResult *)self isCellular];
  [v4 encodeObject:v18 forKey:@"isCellular"];

  v19 = [(NPTMetricResult *)self isConstrained];
  [v4 encodeObject:v19 forKey:@"isConstrained"];

  v20 = [(NPTMetricResult *)self isExpensive];
  [v4 encodeObject:v20 forKey:@"isExpensive"];

  v21 = [(NPTMetricResult *)self isMultipath];
  [v4 encodeObject:v21 forKey:@"isMultipath"];

  v22 = [(NPTMetricResult *)self localAddress];
  [v4 encodeObject:v22 forKey:@"localAddress"];

  v23 = [(NPTMetricResult *)self remoteAddress];
  [v4 encodeObject:v23 forKey:@"remoteAddress"];

  v24 = [(NPTMetricResult *)self localPort];
  [v4 encodeObject:v24 forKey:@"localPort"];

  v25 = [(NPTMetricResult *)self remotePort];
  [v4 encodeObject:v25 forKey:@"remotePort"];

  v26 = [(NPTMetricResult *)self negotiatedTLSCipherSuite];
  [v4 encodeObject:v26 forKey:@"negotiatedTLSCipherSuite"];

  v27 = [(NPTMetricResult *)self negotiatedTLSProtocolVersion];
  [v4 encodeObject:v27 forKey:@"negotiatedTLSProtocolVersion"];

  v28 = [(NPTMetricResult *)self interfaceServiceName];
  [v4 encodeObject:v28 forKey:@"interfaceServiceName"];

  v29 = [(NPTMetricResult *)self interfaceName];
  [v4 encodeObject:v29 forKey:@"interfaceName"];

  v30 = [(NPTMetricResult *)self concurrentStreams];
  [v4 encodeObject:v30 forKey:@"number_of_streams"];

  v31 = [(NPTMetricResult *)self error];
  [v4 encodeObject:v31 forKey:@"error"];

  v32 = [(NPTMetricResult *)self responsiveness];
  [v4 encodeObject:v32 forKey:@"responsiveness"];

  v33 = [(NPTMetricResult *)self responsivenessRating];
  [v4 encodeObject:v33 forKey:@"responsivenessRating"];

  v34 = [(NPTMetricResult *)self responsivenessConfidence];
  [v4 encodeObject:v34 forKey:@"responsivenessConfidence"];
}

- (NPTMetricResult)initWithCoder:(id)a3
{
  v36.receiver = self;
  v36.super_class = NPTMetricResult;
  v3 = a3;
  v4 = [(NPTMetricResult *)&v36 init];
  -[NPTMetricResult setFileSize:](v4, "setFileSize:", [v3 decodeIntegerForKey:{@"fileSize", v36.receiver, v36.super_class}]);
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"fetchDate"];
  [(NPTMetricResult *)v4 setFetchDate:v5];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"protocolName"];
  [(NPTMetricResult *)v4 setProtocolName:v6];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isReusedConnection"];
  [(NPTMetricResult *)v4 setIsReusedConnection:v7];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isProxyConnection"];
  [(NPTMetricResult *)v4 setIsProxyConnection:v8];

  [v3 decodeDoubleForKey:@"domainLookupTime"];
  [(NPTMetricResult *)v4 setDomainLookupTime:?];
  [v3 decodeDoubleForKey:@"connectionTime"];
  [(NPTMetricResult *)v4 setConnectionTime:?];
  [v3 decodeDoubleForKey:@"secureConnectionTime"];
  [(NPTMetricResult *)v4 setSecureConnectionTime:?];
  [v3 decodeDoubleForKey:@"requestTime"];
  [(NPTMetricResult *)v4 setRequestTime:?];
  [v3 decodeDoubleForKey:@"requestToResponseTime"];
  [(NPTMetricResult *)v4 setRequestToResponseTime:?];
  [v3 decodeDoubleForKey:@"responseTime"];
  [(NPTMetricResult *)v4 setResponseTime:?];
  [v3 decodeDoubleForKey:@"speed"];
  [(NPTMetricResult *)v4 setSpeed:?];
  v9 = [v3 decodeObjectForKey:@"speedRating"];
  [(NPTMetricResult *)v4 setSpeedRating:v9];

  v10 = [v3 decodeObjectForKey:@"speedConfidence"];
  [(NPTMetricResult *)v4 setSpeedConfidence:v10];

  v11 = [v3 decodeObjectForKey:@"latency"];
  [(NPTMetricResult *)v4 setLatency:v11];

  v12 = [v3 decodeObjectForKey:@"nqTestEndPoint"];
  [(NPTMetricResult *)v4 setNqTestEndPoint:v12];

  [v3 decodeDoubleForKey:@"maxSpeedObserved"];
  [(NPTMetricResult *)v4 setMaxSpeedObserved:?];
  [v3 decodeDoubleForKey:@"stableSpeed"];
  [(NPTMetricResult *)v4 setStableSpeed:?];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cdnpop"];
  [(NPTMetricResult *)v4 setCdnpop:v13];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cdnuuid"];
  [(NPTMetricResult *)v4 setCdnuuid:v14];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appleClientASN"];
  [(NPTMetricResult *)v4 setAppleClientASN:v15];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appleClientASNCompany"];
  [(NPTMetricResult *)v4 setAppleClientASNCompany:v16];

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"server"];
  [(NPTMetricResult *)v4 setServer:v17];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isCellular"];
  [(NPTMetricResult *)v4 setIsCellular:v18];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isConstrained"];
  [(NPTMetricResult *)v4 setIsConstrained:v19];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isExpensive"];
  [(NPTMetricResult *)v4 setIsExpensive:v20];

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isMultipath"];
  [(NPTMetricResult *)v4 setIsMultipath:v21];

  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localAddress"];
  [(NPTMetricResult *)v4 setLocalAddress:v22];

  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"remoteAddress"];
  [(NPTMetricResult *)v4 setRemoteAddress:v23];

  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localPort"];
  [(NPTMetricResult *)v4 setLocalPort:v24];

  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"remotePort"];
  [(NPTMetricResult *)v4 setRemotePort:v25];

  v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"negotiatedTLSCipherSuite"];
  [(NPTMetricResult *)v4 setNegotiatedTLSCipherSuite:v26];

  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"negotiatedTLSProtocolVersion"];
  [(NPTMetricResult *)v4 setNegotiatedTLSProtocolVersion:v27];

  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"interfaceServiceName"];
  [(NPTMetricResult *)v4 setInterfaceServiceName:v28];

  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"interfaceName"];
  [(NPTMetricResult *)v4 setInterfaceName:v29];

  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"number_of_streams"];
  [(NPTMetricResult *)v4 setConcurrentStreams:v30];

  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  [(NPTMetricResult *)v4 setError:v31];

  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"responsiveness"];
  [(NPTMetricResult *)v4 setResponsiveness:v32];

  v33 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"responsivenessRating"];
  [(NPTMetricResult *)v4 setResponsivenessRating:v33];

  v34 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"responsivenessConfidence"];

  [(NPTMetricResult *)v4 setResponsivenessConfidence:v34];
  return v4;
}

- (double)timeIntervalSinceDateWithLogging:(id)a3 startDate:(id)a4 nameToLog:(id)a5
{
  v7 = a5;
  if (a3 && a4)
  {
    [a3 timeIntervalSinceDate:a4];
    v9 = v8;
  }

  else
  {
    v10 = +[NPTLogger network];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [NPTMetricResult timeIntervalSinceDateWithLogging:v7 startDate:v10 nameToLog:?];
    }

    v9 = 0.0;
  }

  return v9;
}

- (void)populateWithMetrics:(id)a3
{
  v4 = [a3 transactionMetrics];
  v35 = [v4 firstObject];

  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v6 = [v35 fetchStartDate];
  v7 = [v5 stringFromDate:v6];
  [(NPTMetricResult *)self setFetchDate:v7];

  v8 = [v35 domainLookupEndDate];
  v9 = [v35 domainLookupStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:v8 startDate:v9 nameToLog:@"domainLookupTime"];
  [(NPTMetricResult *)self setDomainLookupTime:?];

  v10 = [v35 connectEndDate];
  v11 = [v35 connectStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:v10 startDate:v11 nameToLog:@"connectionTime"];
  [(NPTMetricResult *)self setConnectionTime:?];

  v12 = [v35 secureConnectionEndDate];
  v13 = [v35 secureConnectionStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:v12 startDate:v13 nameToLog:@"secureConnectionTime"];
  [(NPTMetricResult *)self setSecureConnectionTime:?];

  v14 = [v35 requestEndDate];
  v15 = [v35 requestStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:v14 startDate:v15 nameToLog:@"requestTime"];
  [(NPTMetricResult *)self setRequestTime:?];

  v16 = [v35 responseStartDate];
  v17 = [v35 requestEndDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:v16 startDate:v17 nameToLog:@"requestToResponseTime"];
  [(NPTMetricResult *)self setRequestToResponseTime:?];

  v18 = [v35 responseEndDate];
  v19 = [v35 responseStartDate];
  [(NPTMetricResult *)self timeIntervalSinceDateWithLogging:v18 startDate:v19 nameToLog:@"responseTime"];
  [(NPTMetricResult *)self setResponseTime:?];

  if ([v35 isProxyConnection])
  {
    v20 = @"true";
  }

  else
  {
    v20 = @"false";
  }

  [(NPTMetricResult *)self setIsProxyConnection:v20];
  if ([v35 isReusedConnection])
  {
    v21 = @"true";
  }

  else
  {
    v21 = @"false";
  }

  [(NPTMetricResult *)self setIsReusedConnection:v21];
  v22 = [v35 networkProtocolName];
  [(NPTMetricResult *)self setProtocolName:v22];

  if ([v35 isCellular])
  {
    v23 = @"true";
  }

  else
  {
    v23 = @"false";
  }

  [(NPTMetricResult *)self setIsCellular:v23];
  if ([v35 isConstrained])
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [(NPTMetricResult *)self setIsConstrained:v24];
  if ([v35 isExpensive])
  {
    v25 = @"true";
  }

  else
  {
    v25 = @"false";
  }

  [(NPTMetricResult *)self setIsExpensive:v25];
  if ([v35 isMultipath])
  {
    v26 = @"true";
  }

  else
  {
    v26 = @"false";
  }

  [(NPTMetricResult *)self setIsMultipath:v26];
  v27 = [v35 localAddress];
  [(NPTMetricResult *)self setLocalAddress:v27];

  v28 = [v35 remoteAddress];
  [(NPTMetricResult *)self setRemoteAddress:v28];

  v29 = [v35 localPort];
  [(NPTMetricResult *)self setLocalPort:v29];

  v30 = [v35 remotePort];
  [(NPTMetricResult *)self setRemotePort:v30];

  v31 = [v35 negotiatedTLSCipherSuite];
  [(NPTMetricResult *)self setNegotiatedTLSCipherSuite:v31];

  v32 = [v35 negotiatedTLSProtocolVersion];
  [(NPTMetricResult *)self setNegotiatedTLSProtocolVersion:v32];

  v33 = [v35 interfaceServiceName];
  [(NPTMetricResult *)self setInterfaceServiceName:v33];

  v34 = [v35 interfaceName];
  [(NPTMetricResult *)self setInterfaceName:v34];
}

- (void)populateWithURLResponse:(id)a3
{
  v15 = [a3 allHeaderFields];
  v4 = [v15 objectForKey:@"cdnuuid"];
  [(NPTMetricResult *)self setCdnuuid:v4];

  v5 = [v15 objectForKey:@"Server"];
  [(NPTMetricResult *)self setServer:v5];

  v6 = [v15 objectForKey:@"Apple-Client-ASN"];
  v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v7 setNumberStyle:0];
  v8 = [v7 numberFromString:v6];
  [(NPTMetricResult *)self setAppleClientASN:v8];

  v9 = [v15 objectForKey:@"Apple-Client-ASN-Company"];
  [(NPTMetricResult *)self setAppleClientASNCompany:v9];

  v10 = [v15 objectForKey:@"Via"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NPTMetricResult allocWithZone:?]];
  v5 = [(NPTMetricResult *)self cdnpop];
  [(NPTMetricResult *)v4 setCdnpop:v5];

  v6 = [(NPTMetricResult *)self server];
  [(NPTMetricResult *)v4 setServer:v6];

  v7 = [(NPTMetricResult *)self cdnuuid];
  [(NPTMetricResult *)v4 setCdnuuid:v7];

  v8 = [(NPTMetricResult *)self appleClientASN];
  [(NPTMetricResult *)v4 setAppleClientASN:v8];

  v9 = [(NPTMetricResult *)self appleClientASNCompany];
  [(NPTMetricResult *)v4 setAppleClientASNCompany:v9];

  [(NPTMetricResult *)v4 setFileSize:[(NPTMetricResult *)self fileSize]];
  v10 = [(NPTMetricResult *)self fetchDate];
  [(NPTMetricResult *)v4 setFetchDate:v10];

  v11 = [(NPTMetricResult *)self protocolName];
  [(NPTMetricResult *)v4 setProtocolName:v11];

  v12 = [(NPTMetricResult *)self isReusedConnection];
  [(NPTMetricResult *)v4 setIsReusedConnection:v12];

  v13 = [(NPTMetricResult *)self isProxyConnection];
  [(NPTMetricResult *)v4 setIsProxyConnection:v13];

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
  v14 = [(NPTMetricResult *)self speedRating];
  [(NPTMetricResult *)v4 setSpeedRating:v14];

  v15 = [(NPTMetricResult *)self speedConfidence];
  [(NPTMetricResult *)v4 setSpeedConfidence:v15];

  v16 = [(NPTMetricResult *)self latency];
  [(NPTMetricResult *)v4 setLatency:v16];

  v17 = [(NPTMetricResult *)self nqTestEndPoint];
  [(NPTMetricResult *)v4 setNqTestEndPoint:v17];

  [(NPTMetricResult *)self stableSpeed];
  [(NPTMetricResult *)v4 setStableSpeed:?];
  v18 = [(NPTMetricResult *)self isCellular];
  [(NPTMetricResult *)v4 setIsCellular:v18];

  v19 = [(NPTMetricResult *)self isExpensive];
  [(NPTMetricResult *)v4 setIsExpensive:v19];

  v20 = [(NPTMetricResult *)self isConstrained];
  [(NPTMetricResult *)v4 setIsConstrained:v20];

  v21 = [(NPTMetricResult *)self isMultipath];
  [(NPTMetricResult *)v4 setIsMultipath:v21];

  v22 = [(NPTMetricResult *)self localAddress];
  [(NPTMetricResult *)v4 setLocalAddress:v22];

  v23 = [(NPTMetricResult *)self remoteAddress];
  [(NPTMetricResult *)v4 setRemoteAddress:v23];

  v24 = [(NPTMetricResult *)self negotiatedTLSCipherSuite];
  [(NPTMetricResult *)v4 setNegotiatedTLSCipherSuite:v24];

  v25 = [(NPTMetricResult *)self negotiatedTLSProtocolVersion];
  [(NPTMetricResult *)v4 setNegotiatedTLSProtocolVersion:v25];

  v26 = [(NPTMetricResult *)self localPort];
  [(NPTMetricResult *)v4 setLocalPort:v26];

  v27 = [(NPTMetricResult *)self remotePort];
  [(NPTMetricResult *)v4 setRemotePort:v27];

  v28 = [(NPTMetricResult *)self interfaceServiceName];
  [(NPTMetricResult *)v4 setInterfaceServiceName:v28];

  v29 = [(NPTMetricResult *)self interfaceName];
  [(NPTMetricResult *)v4 setInterfaceName:v29];

  v30 = [(NPTMetricResult *)self concurrentStreams];
  [(NPTMetricResult *)v4 setConcurrentStreams:v30];

  v31 = [(NPTMetricResult *)self error];
  [(NPTMetricResult *)v4 setError:v31];

  v32 = [(NPTMetricResult *)self responsiveness];
  [(NPTMetricResult *)v4 setResponsiveness:v32];

  v33 = [(NPTMetricResult *)self responsivenessRating];
  [(NPTMetricResult *)v4 setResponsivenessRating:v33];

  v34 = [(NPTMetricResult *)self responsivenessConfidence];
  [(NPTMetricResult *)v4 setResponsivenessConfidence:v34];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(NPTMetricResult *)self fetchDate];
  v4 = [v3 hash];
  v5 = [(NPTMetricResult *)self cdnuuid];
  v6 = [v5 hash] ^ v4;
  v7 = [(NPTMetricResult *)self cdnpop];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqualToMetricResult:(id)a3
{
  v4 = a3;
  v5 = [(NPTMetricResult *)self fetchDate];
  v6 = [v4 fetchDate];
  if (![v5 isEqualToString:v6])
  {
    goto LABEL_8;
  }

  [(NPTMetricResult *)self requestToResponseTime];
  v8 = v7;
  [v4 requestToResponseTime];
  if (v8 != v9)
  {
    goto LABEL_8;
  }

  [(NPTMetricResult *)self requestTime];
  v11 = v10;
  [v4 requestTime];
  if (v11 == v12 && (-[NPTMetricResult domainLookupTime](self, "domainLookupTime"), v14 = v13, [v4 domainLookupTime], v14 == v15))
  {
    v16 = [(NPTMetricResult *)self cdnuuid];
    v17 = [v4 cdnuuid];
    if ([v16 isEqualToString:v17])
    {
      v18 = [(NPTMetricResult *)self cdnpop];
      v19 = [v4 cdnpop];
      if ([v18 isEqualToString:v19])
      {
        [(NPTMetricResult *)self responseTime];
        v21 = v20;
        [v4 responseTime];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPTMetricResult *)self isEqualToMetricResult:v5];
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