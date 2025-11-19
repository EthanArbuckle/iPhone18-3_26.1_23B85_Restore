@interface OspreyAnalytics
+ (id)reporter;
- (void)_addURL:(id)a3 toContext:(id)a4;
- (void)reportAbsintheMetrics:(id)a3;
- (void)reportConnectionMetrics:(id)a3;
- (void)reportError:(id)a3 forURL:(id)a4;
- (void)reportEvent:(id)a3 payload:(id)a4;
- (void)reportHttpStatus:(int64_t)a3 grpcStatus:(int64_t)a4 forURL:(id)a5;
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

- (void)reportEvent:(id)a3 payload:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  OspreyLoggingInit();
  v7 = OspreyLogContextAnalytics;
  if (os_log_type_enabled(OspreyLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[OspreyAnalytics reportEvent:payload:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25DDE6000, v7, OS_LOG_TYPE_INFO, "%s Successfully reportEvent with domain %@ and payload %@", &v8, 0x20u);
  }

  AnalyticsSendEvent();
}

- (void)reportConnectionMetrics:(id)a3
{
  v32[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v31[0] = @"ConnectionEstablishmentTime";
  v4 = MEMORY[0x277CCABB0];
  [v3 connectionEstablishmentTime];
  v6 = [v4 numberWithDouble:OspreyTimeIntervalToNanoseconds(v5)];
  v32[0] = v6;
  v31[1] = @"DNSResolutionTime";
  v7 = MEMORY[0x277CCABB0];
  [v3 dnsResolutionTime];
  v9 = [v7 numberWithDouble:OspreyTimeIntervalToNanoseconds(v8)];
  v32[1] = v9;
  v31[2] = @"ConnectionStartToTLSHandshake";
  v10 = MEMORY[0x277CCABB0];
  [v3 tcpConnectTime];
  v12 = [v10 numberWithDouble:OspreyTimeIntervalToNanoseconds(v11)];
  v32[2] = v12;
  v31[3] = @"TLSHandshakeTime";
  v13 = MEMORY[0x277CCABB0];
  [v3 secureConnectionTime];
  v15 = [v13 numberWithDouble:OspreyTimeIntervalToNanoseconds(v14)];
  v32[3] = v15;
  v31[4] = @"FetchStartToDNSResolution";
  v16 = MEMORY[0x277CCABB0];
  [v3 fetchStartToDomainLookupStartTime];
  v18 = [v16 numberWithDouble:OspreyTimeIntervalToNanoseconds(v17)];
  v32[4] = v18;
  v31[5] = @"FetchStartToFirstByte";
  v19 = MEMORY[0x277CCABB0];
  [v3 fetchStartToFirstByteTime];
  v21 = [v19 numberWithDouble:OspreyTimeIntervalToNanoseconds(v20)];
  v32[5] = v21;
  v31[6] = @"ConnectionMethod";
  v22 = [v3 connectionMethod];
  v32[6] = v22;
  v31[7] = @"ConnectionState";
  v23 = [v3 connectionState];
  v24 = @"warm";
  if (!v23)
  {
    v24 = @"cold";
  }

  v32[7] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:{8, self}];
  v26 = [v25 mutableCopy];

  v27 = [v3 requestURL];

  if (v27)
  {
    v28 = [v3 requestURL];
    [v30 _addURL:v28 toContext:v26];
  }

  [v30 reportEvent:@"com.apple.Osprey.ConnectionMetrics" payload:v26];
}

- (void)reportAbsintheMetrics:(id)a3
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"GetCertificateDuration";
  v4 = a3;
  v5 = [v4 getCertificateElapsed];
  v12[0] = v5;
  v11[1] = @"CreateSessionDuration";
  v6 = [v4 createSessionElapsed];
  v12[1] = v6;
  v11[2] = @"SessionEstablishedDuration";
  v7 = [v4 sessionEstablishedElapsed];
  v12[2] = v7;
  v11[3] = @"AbsintheAuthenticationDuration";
  v8 = [v4 absintheElapsed];
  v12[3] = v8;
  v11[4] = @"ConnectionMethod";
  v9 = [v4 connectionMethod];

  v12[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  [(OspreyAnalytics *)self reportEvent:@"com.apple.Osprey.AbsintheMetrics" payload:v10];
}

- (void)reportHttpStatus:(int64_t)a3 grpcStatus:(int64_t)a4 forURL:(id)a5
{
  v14[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v13[0] = @"httpStatus";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v13[1] = @"grpcStatus";
  v14[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12 = [v11 mutableCopy];

  if (v8)
  {
    [(OspreyAnalytics *)self _addURL:v8 toContext:v12];
  }

  [(OspreyAnalytics *)self reportEvent:@"com.apple.Osprey.RequestStatus" payload:v12];
}

- (void)reportError:(id)a3 forURL:(id)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 domain];

    if (v8)
    {
      v18[0] = @"domain";
      v9 = [v6 domain];
      v10 = v9;
      v11 = @"Unknown";
      if (v9)
      {
        v11 = v9;
      }

      v19[0] = v11;
      v18[1] = @"code";
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
      v19[1] = v12;
      v18[2] = @"reason";
      v13 = [v6 localizedFailureReason];
      v14 = v13;
      v15 = @"None";
      if (v13)
      {
        v15 = v13;
      }

      v19[2] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v17 = [v16 mutableCopy];

      if (v7)
      {
        [(OspreyAnalytics *)self _addURL:v7 toContext:v17];
      }

      [(OspreyAnalytics *)self reportEvent:@"com.apple.Osprey.Error" payload:v17];
    }
  }
}

- (void)_addURL:(id)a3 toContext:(id)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11[0] = @"urlPath";
    v5 = a4;
    v6 = a3;
    v7 = [v6 path];
    v12[0] = v7;
    v11[1] = @"urlHost";
    v8 = [v6 host];
    v12[1] = v8;
    v11[2] = @"urlScheme";
    v9 = [v6 scheme];

    v12[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v5 addEntriesFromDictionary:v10];
  }
}

@end