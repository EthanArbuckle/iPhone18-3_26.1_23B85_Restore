@interface OspreyAnalytics
+ (id)reporter;
- (void)_addURL:(id)l toContext:(id)context;
- (void)reportAbsintheMetrics:(id)metrics;
- (void)reportConnectionMetrics:(id)metrics;
- (void)reportError:(id)error forURL:(id)l;
- (void)reportEvent:(id)event payload:(id)payload;
- (void)reportHttpStatus:(int64_t)status grpcStatus:(int64_t)grpcStatus forURL:(id)l;
@end

@implementation OspreyAnalytics

+ (id)reporter
{
  if (reporter_sDispatchOnceToken != -1)
  {
    +[OspreyAnalytics reporter];
  }

  v3 = reporter_oReporter;

  return v3;
}

uint64_t __27__OspreyAnalytics_reporter__block_invoke()
{
  reporter_oReporter = objc_alloc_init(OspreyAnalytics);

  return MEMORY[0x2821F96F8]();
}

- (void)reportEvent:(id)event payload:(id)payload
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  payloadCopy = payload;
  OspreyLoggingInit();
  v7 = OspreyLogContextAnalytics;
  if (os_log_type_enabled(OspreyLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[OspreyAnalytics reportEvent:payload:]";
    v10 = 2112;
    v11 = eventCopy;
    v12 = 2112;
    v13 = payloadCopy;
    _os_log_impl(&dword_25DDE6000, v7, OS_LOG_TYPE_INFO, "%s Successfully reportEvent with domain %@ and payload %@", &v8, 0x20u);
  }

  AnalyticsSendEvent();
}

- (void)reportConnectionMetrics:(id)metrics
{
  v32[8] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v31[0] = @"ConnectionEstablishmentTime";
  v4 = MEMORY[0x277CCABB0];
  [metricsCopy connectionEstablishmentTime];
  v6 = [v4 numberWithDouble:OspreyTimeIntervalToNanoseconds(v5)];
  v32[0] = v6;
  v31[1] = @"DNSResolutionTime";
  v7 = MEMORY[0x277CCABB0];
  [metricsCopy dnsResolutionTime];
  v9 = [v7 numberWithDouble:OspreyTimeIntervalToNanoseconds(v8)];
  v32[1] = v9;
  v31[2] = @"ConnectionStartToTLSHandshake";
  v10 = MEMORY[0x277CCABB0];
  [metricsCopy tcpConnectTime];
  v12 = [v10 numberWithDouble:OspreyTimeIntervalToNanoseconds(v11)];
  v32[2] = v12;
  v31[3] = @"TLSHandshakeTime";
  v13 = MEMORY[0x277CCABB0];
  [metricsCopy secureConnectionTime];
  v15 = [v13 numberWithDouble:OspreyTimeIntervalToNanoseconds(v14)];
  v32[3] = v15;
  v31[4] = @"FetchStartToDNSResolution";
  v16 = MEMORY[0x277CCABB0];
  [metricsCopy fetchStartToDomainLookupStartTime];
  v18 = [v16 numberWithDouble:OspreyTimeIntervalToNanoseconds(v17)];
  v32[4] = v18;
  v31[5] = @"FetchStartToFirstByte";
  v19 = MEMORY[0x277CCABB0];
  [metricsCopy fetchStartToFirstByteTime];
  v21 = [v19 numberWithDouble:OspreyTimeIntervalToNanoseconds(v20)];
  v32[5] = v21;
  v31[6] = @"ConnectionMethod";
  connectionMethod = [metricsCopy connectionMethod];
  v32[6] = connectionMethod;
  v31[7] = @"ConnectionState";
  connectionState = [metricsCopy connectionState];
  v24 = @"warm";
  if (!connectionState)
  {
    v24 = @"cold";
  }

  v32[7] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:{8, self}];
  v26 = [v25 mutableCopy];

  requestURL = [metricsCopy requestURL];

  if (requestURL)
  {
    requestURL2 = [metricsCopy requestURL];
    [v30 _addURL:requestURL2 toContext:v26];
  }

  [v30 reportEvent:@"com.apple.Osprey.ConnectionMetrics" payload:v26];
}

- (void)reportAbsintheMetrics:(id)metrics
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"GetCertificateDuration";
  metricsCopy = metrics;
  getCertificateElapsed = [metricsCopy getCertificateElapsed];
  v12[0] = getCertificateElapsed;
  v11[1] = @"CreateSessionDuration";
  createSessionElapsed = [metricsCopy createSessionElapsed];
  v12[1] = createSessionElapsed;
  v11[2] = @"SessionEstablishedDuration";
  sessionEstablishedElapsed = [metricsCopy sessionEstablishedElapsed];
  v12[2] = sessionEstablishedElapsed;
  v11[3] = @"AbsintheAuthenticationDuration";
  absintheElapsed = [metricsCopy absintheElapsed];
  v12[3] = absintheElapsed;
  v11[4] = @"ConnectionMethod";
  connectionMethod = [metricsCopy connectionMethod];

  v12[4] = connectionMethod;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  [(OspreyAnalytics *)self reportEvent:@"com.apple.Osprey.AbsintheMetrics" payload:v10];
}

- (void)reportHttpStatus:(int64_t)status grpcStatus:(int64_t)grpcStatus forURL:(id)l
{
  v14[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v13[0] = @"httpStatus";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  v13[1] = @"grpcStatus";
  v14[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:grpcStatus];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12 = [v11 mutableCopy];

  if (lCopy)
  {
    [(OspreyAnalytics *)self _addURL:lCopy toContext:v12];
  }

  [(OspreyAnalytics *)self reportEvent:@"com.apple.Osprey.RequestStatus" payload:v12];
}

- (void)reportError:(id)error forURL:(id)l
{
  v19[3] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  lCopy = l;
  if (errorCopy)
  {
    domain = [errorCopy domain];

    if (domain)
    {
      v18[0] = @"domain";
      domain2 = [errorCopy domain];
      v10 = domain2;
      v11 = @"Unknown";
      if (domain2)
      {
        v11 = domain2;
      }

      v19[0] = v11;
      v18[1] = @"code";
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      v19[1] = v12;
      v18[2] = @"reason";
      localizedFailureReason = [errorCopy localizedFailureReason];
      v14 = localizedFailureReason;
      v15 = @"None";
      if (localizedFailureReason)
      {
        v15 = localizedFailureReason;
      }

      v19[2] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v17 = [v16 mutableCopy];

      if (lCopy)
      {
        [(OspreyAnalytics *)self _addURL:lCopy toContext:v17];
      }

      [(OspreyAnalytics *)self reportEvent:@"com.apple.Osprey.Error" payload:v17];
    }
  }
}

- (void)_addURL:(id)l toContext:(id)context
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (l)
  {
    v11[0] = @"urlPath";
    contextCopy = context;
    lCopy = l;
    path = [lCopy path];
    v12[0] = path;
    v11[1] = @"urlHost";
    host = [lCopy host];
    v12[1] = host;
    v11[2] = @"urlScheme";
    scheme = [lCopy scheme];

    v12[2] = scheme;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    [contextCopy addEntriesFromDictionary:v10];
  }
}

@end