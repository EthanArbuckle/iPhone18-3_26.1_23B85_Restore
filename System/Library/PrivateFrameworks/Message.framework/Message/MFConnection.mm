@interface MFConnection
+ (BOOL)shouldTryFallbacksAfterError:(id)error;
+ (id)certUIPromptScheduler;
+ (id)logClasses;
+ (void)initialize;
+ (void)logConnection:(id)connection type:(int64_t)type data:(id)data;
+ (void)readLoggingDefaults;
+ (void)setLogClasses:(id)classes;
- (BOOL)_certificateIsTrustedForAccount:(id)account;
- (BOOL)_evaluateTrust:(__SecTrust *)trust errorPtr:(id *)ptr;
- (BOOL)authenticateUsingAccount:(id)account;
- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator;
- (BOOL)connectUsingAccount:(id)account;
- (BOOL)connectUsingFallbacksForAccount:(id)account;
- (BOOL)connectUsingSettings:(id)settings;
- (BOOL)enableSSL;
- (BOOL)isCellularConnection;
- (BOOL)isConstrained;
- (BOOL)isValid;
- (BOOL)readBytesIntoData:(id)data desiredLength:(unint64_t)length;
- (BOOL)readLineIntoData:(id)data;
- (BOOL)startCompression;
- (BOOL)startTLSForAccount:(id)account;
- (BOOL)writeBytes:(const char *)bytes length:(unint64_t)length dontLogBytesInRange:(_NSRange)range;
- (BOOL)writeData:(id)data dontLogBytesInRange:(_NSRange)range;
- (MFConnection)init;
- (NSArray)authenticationMechanisms;
- (NSString)description;
- (NSString)securityProtocol;
- (id)copyDiagnosticInformation;
- (void)_setupSocketWithSettings:(id)settings;
- (void)clearBuffer;
- (void)dealloc;
- (void)disconnect;
- (void)endCompression;
- (void)logReadChars:(const char *)chars length:(unint64_t)length;
- (void)setIsFetching:(BOOL)fetching;
- (void)startCompression;
- (void)test_setSocket:(id)socket;
@end

@implementation MFConnection

+ (void)readLoggingDefaults
{
  [sLogLock lock];
  v3 = sLogClasses;
  sLogClasses = 0;

  v4 = sLoggedPorts;
  sLoggedPorts = 0;

  v5 = sLoggedHosts;
  sLoggedHosts = 0;

  keyExistsAndHasValidFormat = 0;
  v6 = *MEMORY[0x1E695E8A8];
  v7 = *MEMORY[0x1E695E8B8];
  v8 = *MEMORY[0x1E695E8B0];
  CFPreferencesSynchronize(*MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LogActivityOnAllPorts", v6, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat || (v10 = *MEMORY[0x1E69B17D8], CFPreferencesSynchronize(*MEMORY[0x1E69B17D8], v7, v8), AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LogActivityOnAllPorts", v10, &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat))
  {
    sLogAllConnectionActivity = AppIntegerValue != 0;
    if (!AppIntegerValue)
    {
      goto LABEL_4;
    }

LABEL_17:
    v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{self, 0}];
    v17 = sLogClasses;
    sLogClasses = v16;

    goto LABEL_18;
  }

  if (sLogAllConnectionActivity)
  {
    goto LABEL_17;
  }

LABEL_4:
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [standardUserDefaults stringArrayForKey:@"LogActivityOnPort"];
  v13 = [standardUserDefaults stringArrayForKey:@"LogActivityOnHost"];
  if (v12 || ([standardUserDefaults stringForKey:@"LogActivityOnPort"], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "componentsSeparatedByString:", @","), v12 = objc_claimAutoreleasedReturnValue(), v14, v12))
  {
    if ([v12 count])
    {
      objc_storeStrong(&sLoggedPorts, v12);
    }
  }

  if (v13 || ([standardUserDefaults stringForKey:@"LogActivityOnHost"], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "componentsSeparatedByString:", @","), v13 = objc_claimAutoreleasedReturnValue(), v15, v13))
  {
    if ([v13 count])
    {
      objc_storeStrong(&sLoggedHosts, v13);
    }
  }

  if ((sLogAllConnectionActivity & 1) != 0 || [sLoggedPorts count] || objc_msgSend(sLoggedHosts, "count"))
  {
    goto LABEL_17;
  }

LABEL_18:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MFReloadNetworkLoggingNotification" object:self];

  [sLogLock unlock];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (!sLogLock)
    {
      _MFLockGlobalLock();
      if (!sLogLock)
      {
        v3 = [objc_alloc(MEMORY[0x1E69AD770]) initWithName:@"logLock" andDelegate:0];
        v4 = sLogLock;
        sLogLock = v3;
      }

      _MFUnlockGlobalLock();
    }

    [self readLoggingDefaults];
    if (initialize_once != -1)
    {
      +[MFConnection initialize];
    }
  }
}

void __26__MFConnection_initialize__block_invoke()
{
  v0 = MEMORY[0x1E69E96A0];
  notify_register_dispatch(*MEMORY[0x1E69B17F8], &initialize_token, MEMORY[0x1E69E96A0], &__block_literal_global_23);
  notify_register_dispatch(*MEMORY[0x1E69B17E0], &initialize_token, v0, &__block_literal_global_25);
  v1 = MEMORY[0x1E69E96A0];
}

+ (void)logConnection:(id)connection type:(int64_t)type data:(id)data
{
  v44 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  v25 = dataCopy;
  bytes = [v25 bytes];
  v9 = [dataCopy length];
  v10 = v9;
  if (v9 >= 0x400)
  {
    v11 = 1024;
  }

  else
  {
    v11 = v9;
  }

  if ((type - 1) > 3)
  {
    v12 = "CONNECTED";
  }

  else
  {
    v12 = off_1E7AA23C8[type - 1];
  }

  v26 = v12;
  v13 = connectionCopy[2];
  securityProtocol = [connectionCopy[3] securityProtocol];
  if (securityProtocol)
  {
    i = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@", securityProtocol];
  }

  else
  {
    i = &stru_1F273A5E0;
  }

  v16 = i;
  if (type)
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v17 = MFLogNetwork();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    hostname = [v13 hostname];
    *buf = 136447490;
    v29 = v26;
    v30 = 2114;
    v31 = v18;
    v32 = 2048;
    v33 = connectionCopy;
    v34 = 2112;
    v35 = hostname;
    v36 = 1024;
    portNumber = [v13 portNumber];
    v38 = 2114;
    v39 = v16;
    _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "%{public}s <%{public}@:%p> [%@:%u%{public}@]", buf, 0x3Au);
  }

  for (i = v16; v10; i = v16)
  {
LABEL_16:
    v20 = MFLogNetwork();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      hostname2 = [v13 hostname];
      portNumber2 = [v13 portNumber];
      *buf = 136448002;
      v29 = v26;
      v30 = 2114;
      v31 = v21;
      v32 = 2048;
      v33 = connectionCopy;
      v34 = 2112;
      v35 = hostname2;
      v36 = 1024;
      portNumber = portNumber2;
      v38 = 2114;
      v39 = v16;
      v40 = 1040;
      v41 = v11;
      v42 = 2096;
      v43 = bytes;
      _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_INFO, "%{public}s <%{public}@:%p> [%@:%u%{public}@] %{mobilemail:networkData}.*P", buf, 0x4Au);
    }

    bytes += v11;
    v10 -= v11;
    if (v10 >= 0x400)
    {
      v11 = 1024;
    }

    else
    {
      v11 = v10;
    }
  }

LABEL_22:

  v24 = *MEMORY[0x1E69E9840];
}

+ (id)logClasses
{
  [sLogLock lock];
  v2 = sLogClasses;
  [sLogLock unlock];

  return v2;
}

+ (void)setLogClasses:(id)classes
{
  classesCopy = classes;
  [sLogLock lock];
  objc_storeStrong(&sLogClasses, classes);
  [sLogLock unlock];
}

- (MFConnection)init
{
  v5.receiver = self;
  v5.super_class = MFConnection;
  v2 = [(MFConnection *)&v5 init];
  if (v2)
  {
    mEMORY[0x1E69AD6C0] = [MEMORY[0x1E69AD6C0] sharedController];
    [mEMORY[0x1E69AD6C0] addDiagnosticsGenerator:v2];

    atomic_store(0, &v2->_isFetching);
  }

  return v2;
}

- (void)dealloc
{
  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  [(MFNWConnectionWrapper *)self->_socket close];
  deflater = self->_deflater;
  if (deflater)
  {
    deflateEnd(deflater);
    free(self->_deflater);
    self->_deflater = 0;
  }

  inflater = self->_inflater;
  if (inflater)
  {
    inflateEnd(inflater);
    free(self->_inflater);
    self->_inflater = 0;
  }

  zbuffer = self->_zbuffer;
  if (zbuffer)
  {
    free(zbuffer);
  }

  v7.receiver = self;
  v7.super_class = MFConnection;
  [(MFConnection *)&v7 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MFConnection;
  v4 = [(MFConnection *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ _socket: %p\n", v4, self->_socket];

  return v5;
}

+ (id)certUIPromptScheduler
{
  if (certUIPromptScheduler_onceToken != -1)
  {
    +[MFConnection certUIPromptScheduler];
  }

  v3 = certUIPromptScheduler_scheduler;

  return v3;
}

void __37__MFConnection_certUIPromptScheduler__block_invoke()
{
  v0 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.Message.CertUIPromptScheduler" qualityOfService:17];
  v1 = certUIPromptScheduler_scheduler;
  certUIPromptScheduler_scheduler = v0;
}

- (BOOL)isCellularConnection
{
  v10 = *MEMORY[0x1E69E9840];
  [(MFConnection *)self mf_lock];
  isCellularConnection = [(MFNWConnectionWrapper *)self->_socket isCellularConnection];
  [(MFConnection *)self mf_unlock];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = isCellularConnection;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "#Network %d for %@", v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return isCellularConnection;
}

- (BOOL)isConstrained
{
  v8 = *MEMORY[0x1E69E9840];
  [(MFConnection *)self mf_lock];
  isConstrained = [(MFNWConnectionWrapper *)self->_socket isConstrained];
  [(MFConnection *)self mf_unlock];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = isConstrained;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "#Network low data mode (constrained): %d", v7, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return isConstrained;
}

- (void)setIsFetching:(BOOL)fetching
{
  if ((atomic_exchange(&self->_isFetching, fetching) & 1) != fetching)
  {
    [(MFConnection *)self enableThroughputMonitoring:?];
  }
}

- (void)_setupSocketWithSettings:(id)settings
{
  settingsCopy = settings;
  v11 = settingsCopy;
  if (!self->_socket)
  {
    __assert_rtn("[MFConnection _setupSocketWithSettings:]", "Connection.m", 475, "_socket");
  }

  -[MFNWConnectionWrapper setConnectionServiceType:](self->_socket, "setConnectionServiceType:", [settingsCopy connectionServiceType]);
  -[MFNWConnectionWrapper setAllowsTrustPrompt:](self->_socket, "setAllowsTrustPrompt:", [v11 allowsTrustPrompt]);
  -[MFNWConnectionWrapper setUsesOpportunisticSockets:](self->_socket, "setUsesOpportunisticSockets:", [v11 usesOpportunisticSockets]);
  sourceApplicationBundleIdentifier = [v11 sourceApplicationBundleIdentifier];
  [(MFNWConnectionWrapper *)self->_socket setSourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];

  accountIdentifier = [v11 accountIdentifier];
  [(MFNWConnectionWrapper *)self->_socket setAccountIdentifier:accountIdentifier];

  networkAccountIdentifier = [v11 networkAccountIdentifier];
  [(MFNWConnectionWrapper *)self->_socket setNetworkAccountIdentifier:networkAccountIdentifier];

  -[MFNWConnectionWrapper setIsNonAppInitiated:](self->_socket, "setIsNonAppInitiated:", [v11 isNonAppInitiated]);
  clientCertificates = [v11 clientCertificates];

  if (clientCertificates)
  {
    socket = self->_socket;
    clientCertificates2 = [v11 clientCertificates];
    [(MFNWConnectionWrapper *)socket setClientCertificates:clientCertificates2];
  }

  if ([v11 tryDirectSSL])
  {
    [(MFNWConnectionWrapper *)self->_socket setSecurityProtocol:*MEMORY[0x1E695E960]];
  }
}

- (BOOL)connectUsingSettings:(id)settings
{
  settingsCopy = settings;
  objc_storeStrong(&self->_connectionSettings, settings);
  portNumber = [(MFConnectionSettings *)self->_connectionSettings portNumber];
  if (!self->_socket)
  {
    v7 = objc_alloc_init(MFNWConnectionWrapper);
    socket = self->_socket;
    self->_socket = v7;

    objc_initWeak(location, self);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __37__MFConnection_connectUsingSettings___block_invoke;
    v54[3] = &unk_1E7AA2330;
    objc_copyWeak(&v55, location);
    [(MFNWConnectionWrapper *)self->_socket setNetworkActivityChangeBlock:v54];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __37__MFConnection_connectUsingSettings___block_invoke_2;
    v52[3] = &unk_1E7AA2358;
    objc_copyWeak(&v53, location);
    [(MFNWConnectionWrapper *)self->_socket setServerTrustHandler:v52];
    objc_destroyWeak(&v53);
    objc_destroyWeak(&v55);
    objc_destroyWeak(location);
  }

  v9 = +[MFActivityMonitor currentMonitor];
  [v9 setError:0];
  [(MFConnection *)self _setupSocketWithSettings:self->_connectionSettings];
  [v9 addCancelable:self->_socket];
  if (!portNumber)
  {
    serviceName = [(MFConnectionSettings *)self->_connectionSettings serviceName];
    v17 = getservbyname([serviceName UTF8String], "tcp");

    if (!v17 || !LOWORD(v17->s_port))
    {
      hostname = +[MFActivityMonitor currentMonitor];
      v18 = MEMORY[0x1E696AEC0];
      certUIService = MFLookupLocalizedString(@"DONT_KNOW_SERVICE_PORT", @"Can’t determine port to use for the TCP/IP service “%@”.", @"Delayed");
      serviceName2 = [(MFConnectionSettings *)self->_connectionSettings serviceName];
      v20 = [v18 stringWithFormat:certUIService, serviceName2];
      v21 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1031 localizedDescription:v20];
      [hostname setError:v21];

      portNumber = 0;
      v12 = 0;
      goto LABEL_11;
    }

    portNumber = __rev16(LOWORD(v17->s_port));
  }

  v10 = +[MFNetworkController sharedInstance];
  inAirplaneMode = [v10 inAirplaneMode];

  if (inAirplaneMode)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v13 = self->_socket;
  hostname = [(MFConnectionSettings *)self->_connectionSettings hostname];
  certUIService = [settingsCopy certUIService];
  v12 = [(MFNWConnectionWrapper *)v13 connectToHost:hostname withPort:portNumber service:certUIService];
LABEL_11:

LABEL_12:
  [v9 removeCancelable:self->_socket];
  if (!v12)
  {
    v49 = v12;
    v51 = settingsCopy;
    error = [(MFNWConnectionWrapper *)self->_socket error];
    v22 = +[MFActivityMonitor currentMonitor];
    domain = [error domain];
    v24 = +[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", domain, [error code], 0);
    [v22 setError:v24];

    v25 = +[MFActivityMonitor currentMonitor];
    hostname2 = [(MFConnectionSettings *)self->_connectionSettings hostname];
    tryDirectSSL = [(MFConnectionSettings *)self->_connectionSettings tryDirectSSL];
    v27 = v25;
    v28 = hostname2;
    error2 = [v27 error];
    v30 = error2;
    if (error2)
    {
      domain2 = [error2 domain];
      v32 = [*MEMORY[0x1E696A798] isEqualToString:domain2];

      if (v32)
      {
        code = [v30 code];
        v47 = MEMORY[0x1E696AEC0];
        switch(code)
        {
          case '<':
            v34 = MFLookupLocalizedString(@"CONNECTION_TIMED_OUT", @"The connection to the server “%@” on port %d timed out.", @"Delayed");
            v35 = [v47 stringWithFormat:v34, v28, portNumber];
            break;
          case '=':
            if (tryDirectSSL)
            {
              MFLookupLocalizedString(@"MF_SSL_CONNECTION_FAILURE", @"Mail was unable to connect to server “%@” using SSL on port %d. Verify that this server supports SSL and that your account settings are correct.", @"Delayed");
            }

            else
            {
              MFLookupLocalizedString(@"CONNECTION_REFUSED", @"The server “%@” refused to allow a connection on port %d.", @"Delayed");
            }
            v34 = ;
            v35 = [v47 stringWithFormat:v34, v28, portNumber];
            break;
          case 'A':
            v34 = MFLookupLocalizedString(@"HOST_UNREACHABLE", @"The server “%@” cannot be contacted on port %d.", @"Delayed");
            v35 = [v47 stringWithFormat:v34, v28, portNumber];
            break;
          default:
            if (tryDirectSSL)
            {
              v34 = MFLookupLocalizedString(@"MF_SSL_CONNECTION_FAILURE", @"Mail was unable to connect to server “%@” using SSL on port %d. Verify that this server supports SSL and that your account settings are correct.", @"Delayed");
              [v47 stringWithFormat:v34, v28, portNumber];
            }

            else
            {
              v34 = MFLookupLocalizedString(@"CONNECTION_FAILED", @"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", @"Delayed");
              [v47 stringWithFormat:v34, v28];
            }
            v35 = ;
            break;
        }

        localizedDescription = v35;
        goto LABEL_37;
      }

      domain3 = [v30 domain];
      v40 = [*MEMORY[0x1E696A8B8] isEqualToString:domain3];

      if (!v40)
      {
        localizedDescription = 0;
        goto LABEL_38;
      }

      _setupSSLDomainError(v30, v28);
      localizedDescription = [v30 localizedDescription];
      if (!localizedDescription || [&stru_1F273A5E0 isEqualToString:localizedDescription])
      {
        v41 = MEMORY[0x1E696AEC0];
        v34 = MFLookupLocalizedString(@"MF_SSL_CONNECTION_FAILURE", @"Mail was unable to connect to server “%@” using SSL on port %d. Verify that this server supports SSL and that your account settings are correct.", @"Delayed");
        v42 = [v41 stringWithFormat:v34, v28, portNumber];

        localizedDescription = v42;
LABEL_37:
      }
    }

    else
    {
      v36 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
      [v27 setError:v36];
      localizedDescription = 0;
      v38 = 0;
      v30 = v36;
      if (!v36)
      {
LABEL_43:

        settingsCopy = v51;
        [(MFNWConnectionWrapper *)self->_socket close];
        v45 = self->_socket;
        self->_socket = 0;

        v12 = v49;
        goto LABEL_44;
      }
    }

LABEL_38:
    if ([v30 mf_isUserCancelledError])
    {
      v38 = v30;
    }

    else
    {
      if (!localizedDescription)
      {
        v43 = MEMORY[0x1E696AEC0];
        v44 = MFLookupLocalizedString(@"CONNECTION_FAILED", @"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", @"Delayed");
        localizedDescription = [v43 stringWithFormat:v44, v28];
      }

      [v30 setLocalizedDescription:localizedDescription];
      v38 = v30;
    }

    goto LABEL_43;
  }

  _logEvent(self, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0);
LABEL_44:

  return v12;
}

void __37__MFConnection_connectUsingSettings___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  MFUserAgent();
  if (a2)
    v3 = {;
    [v3 networkActivityStarted:WeakRetained];
  }

  else
    v3 = {;
    [v3 networkActivityEnded:WeakRetained];
  }
}

uint64_t __37__MFConnection_connectUsingSettings___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained _evaluateTrust:a2 errorPtr:a3];

  return v6;
}

- (BOOL)connectUsingAccount:(id)account
{
  accountCopy = account;
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    defaultConnectionSettings = [accountCopy defaultConnectionSettings];
    hostname = [defaultConnectionSettings hostname];
    accountLogString = self->_accountLogString;
    self->_accountLogString = hostname;
  }

  else
  {
    identifier = [accountCopy identifier];
    defaultConnectionSettings = self->_accountLogString;
    self->_accountLogString = identifier;
  }

  defaultConnectionSettings2 = [accountCopy defaultConnectionSettings];
  v12 = [(MFConnection *)self connectUsingSettings:defaultConnectionSettings2];

  return v12;
}

+ (BOOL)shouldTryFallbacksAfterError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqual:*MEMORY[0x1E695AD78]];

  if (!v5)
  {
    domain2 = [errorCopy domain];
    v8 = [domain2 isEqual:*MEMORY[0x1E696A8B8]];

    if (v8)
    {
      v6 = [errorCopy code] != -9829;
      goto LABEL_8;
    }

LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  if ([errorCopy code] != 2 && objc_msgSend(errorCopy, "code") != 1)
  {
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (BOOL)connectUsingFallbacksForAccount:(id)account
{
  accountCopy = account;
  defaultConnectionSettings = [accountCopy defaultConnectionSettings];
  if ([(MFConnection *)self connectUsingAccount:accountCopy])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[MFActivityMonitor currentMonitor];
    error = [v7 error];
    if (error && ![objc_opt_class() shouldTryFallbacksAfterError:error])
    {
      v6 = 0;
    }

    else
    {

      alternateConnectionSettings = [accountCopy alternateConnectionSettings];
      v10 = [alternateConnectionSettings count];
      if (v10)
      {
        v11 = 0;
        v12 = 1;
        do
        {
          if (v11 && ![objc_opt_class() shouldTryFallbacksAfterError:v11])
          {
            error = v11;
            goto LABEL_18;
          }

          v13 = [alternateConnectionSettings objectAtIndex:v12 - 1];
          [accountCopy applySettingsAsDefault:v13];

          v14 = [(MFConnection *)self connectUsingAccount:accountCopy];
          error = [v7 error];

          v15 = v12++ >= v10 || v14;
          v11 = error;
        }

        while ((v15 & 1) == 0);
        if (!v14)
        {
          goto LABEL_18;
        }

        v6 = 1;
      }

      else
      {
        error = 0;
LABEL_18:
        [accountCopy applySettingsAsDefault:defaultConnectionSettings];
        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)test_setSocket:(id)socket
{
  socketCopy = socket;
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"Connection.m" lineNumber:636 description:{@"%s can only be called from unit tests", "-[MFConnection test_setSocket:]"}];
  }

  socket = self->_socket;
  self->_socket = socketCopy;
}

- (BOOL)authenticateUsingAccount:(id)account
{
  accountCopy = account;
  preferredAuthScheme = [accountCopy preferredAuthScheme];
  v6 = [preferredAuthScheme authenticatorForAccount:accountCopy connection:self];

  if (!v6)
  {
LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_9;
  }

  authenticationMechanisms = [(MFConnection *)self authenticationMechanisms];
  saslName = [v6 saslName];
  v9 = [authenticationMechanisms containsObject:saslName];

  if (v9)
  {
    v9 = [(MFConnection *)self authenticateUsingAccount:accountCopy authenticator:v6];
    if (v9)
    {
      securityLayer = [v6 securityLayer];
      securityLayer = self->_securityLayer;
      self->_securityLayer = securityLayer;
LABEL_8:

      goto LABEL_9;
    }

    v12 = +[MFActivityMonitor currentMonitor];
    error = [v12 error];

    if (!error)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = MFLookupLocalizedString(@"AUTH_NOT_SUPPORTED_FORMAT", @"The %@ server “%@” doesn’t support %@ authentication. Please check your account settings and try again.", @"Delayed");
      accountTypeString = [objc_opt_class() accountTypeString];
      hostname = [accountCopy hostname];
      preferredAuthScheme2 = [accountCopy preferredAuthScheme];
      humanReadableName = [preferredAuthScheme2 humanReadableName];
      securityLayer = [v14 stringWithFormat:v15, accountTypeString, hostname, humanReadableName];

      v20 = +[MFActivityMonitor currentMonitor];
      v21 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:securityLayer];
      [v20 setError:v21];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_9:

  return v9;
}

- (NSArray)authenticationMechanisms
{
  v20 = *MEMORY[0x1E69E9840];
  [(MFConnection *)self capabilities];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  array = 0;
  v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v9 = [v7 rangeOfString:@"AUTH=" options:9 range:{0, objc_msgSend(v7, "length", v15)}];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v8;
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          v11 = [v7 substringFromIndex:v9 + v10];
          uppercaseString = [v11 uppercaseString];
          [array addObject:uppercaseString];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)writeBytes:(const char *)bytes length:(unint64_t)length dontLogBytesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  encryptionBufferSize = [(ECSASLSecurityLayer *)self->_securityLayer encryptionBufferSize];
  if (self->_compressionEnabled)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69AD730]);
    deflater = self->_deflater;
    deflater->avail_in = length;
    deflater->next_in = bytes;
    v13 = self->_deflater;
    do
    {
      v13->next_out = self->_zbuffer;
      v14 = NSPageSize();
      v15 = self->_deflater;
      v15->avail_out = v14;
      if (deflate(v15, 2) == -2)
      {
        __assert_rtn("[MFConnection writeBytes:length:dontLogBytesInRange:]", "Connection.m", 707, "Z_STREAM_ERROR != err");
      }

      [v11 appendBytes:self->_zbuffer length:NSPageSize() - self->_deflater->avail_out];
      v13 = self->_deflater;
    }

    while (!v13->avail_out);
    lengthCopy = [v11 length];
    bytesCopy = [v11 bytes];
  }

  else
  {
    v11 = 0;
    bytesCopy = bytes;
    lengthCopy = length;
  }

  lengthCopy2 = length;
  if (encryptionBufferSize)
  {
    v18 = objc_allocWithZone(MEMORY[0x1E69AD730]);
    bytesCopy = 0;
    if (encryptionBufferSize >= lengthCopy)
    {
      encryptionBufferSize = lengthCopy;
    }

    v57 = [v18 initWithCapacity:encryptionBufferSize + 4];
    if (!lengthCopy)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v57 = 0;
    encryptionBufferSize = lengthCopy;
    if (!lengthCopy)
    {
LABEL_31:
      if (v57)
      {
        _logEvent(self, 4, bytes, lengthCopy2, location, length);
      }

      else
      {
        _logEvent(self, 3, bytes, lengthCopy2, location, length);
      }

      v49 = 1;
      goto LABEL_57;
    }
  }

  v55 = &bytes[lengthCopy];
  v53 = *MEMORY[0x1E696A798];
  v51 = *MEMORY[0x1E696A8B8];
  v52 = location;
  bytesCopy2 = bytes;
  while (1)
  {
    v19 = lengthCopy;
    if (!v57)
    {
      break;
    }

    if (encryptionBufferSize >= lengthCopy)
    {
      v20 = lengthCopy;
    }

    else
    {
      v20 = encryptionBufferSize;
    }

    v21 = [(ECSASLSecurityLayer *)self->_securityLayer createEncryptedDataForBytes:&v55[-lengthCopy] length:v20];
    [v57 setLength:0];
    if (v21)
    {
      v58 = bswap32([v21 length]) >> 16;
      [v57 appendBytes:&v58 length:4];
      [v57 appendData:v21];
    }

    bytesCopy = [v57 bytes];
    v19 = [v57 length];

    if (!v21)
    {
      goto LABEL_54;
    }

    if (v19)
    {
      break;
    }

LABEL_27:
    v26 = lengthCopy > encryptionBufferSize;
    if (lengthCopy >= encryptionBufferSize)
    {
      lengthCopy -= encryptionBufferSize;
    }

    else
    {
      lengthCopy = 0;
    }

    bytes = bytesCopy2;
    if (!v26)
    {
      goto LABEL_31;
    }
  }

  lengthCopy3 = length;
  v23 = bytesCopy;
  while (1)
  {
    v24 = [(MFNWConnectionWrapper *)self->_socket writeBytes:v23 length:v19];
    if (v24 < 0)
    {
      break;
    }

    self->_lastUsedTime = CFAbsoluteTimeGetCurrent();
    if (!v24)
    {
      break;
    }

    v25 = +[MFActivityMonitor currentMonitor];
    [v25 recordBytesWritten:v24];
    v23 += v24;
    v19 -= v24;

    if (!v19)
    {
      length = lengthCopy3;
      location = v52;
      goto LABEL_27;
    }
  }

  v27 = +[MFActivityMonitor currentMonitor];
  socket = self->_socket;
  v29 = v27;
  v30 = socket;
  error = [(MFNWConnectionWrapper *)v30 error];
  if (error)
  {
    error2 = [(MFNWConnectionWrapper *)v30 error];
    domain = [error2 domain];
    error3 = [(MFNWConnectionWrapper *)v30 error];
    v35 = +[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", domain, [error3 code], 0);
  }

  else
  {
    v35 = 0;
  }

  remoteHostname = [(MFNWConnectionWrapper *)v30 remoteHostname];
  if (!v35)
  {
    [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
    localizedDescription = 0;
    v35 = v42 = 0;
    if (!v35)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  domain2 = [v35 domain];
  v38 = [v53 isEqualToString:domain2];

  if (v38)
  {
    if ([v35 code] == 60)
    {
      v39 = MEMORY[0x1E696AEC0];
      v40 = MFLookupLocalizedString(@"CONNECTION_TIMED_OUT", @"The connection to the server “%@” on port %d timed out.", @"Delayed");
      localizedDescription = [v39 stringWithFormat:v40, remoteHostname, -[MFNWConnectionWrapper remotePortNumber](v30, "remotePortNumber")];
LABEL_46:

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  domain3 = [v35 domain];
  v44 = [v51 isEqualToString:domain3];

  if (!v44)
  {
LABEL_47:
    localizedDescription = 0;
    goto LABEL_48;
  }

  _setupSSLDomainError(v35, remoteHostname);
  localizedDescription = [v35 localizedDescription];
  if (!localizedDescription || [&stru_1F273A5E0 isEqualToString:localizedDescription])
  {
    v45 = MEMORY[0x1E696AEC0];
    v40 = MFLookupLocalizedString(@"SSL_GENERIC_WRITE_ERROR", @"An SSL error occurred while trying to provide data to the server “%@”. Verify that this server supports SSL and that your account settings are correct.", @"Delayed");
    v46 = [v45 stringWithFormat:v40, remoteHostname];

    localizedDescription = v46;
    goto LABEL_46;
  }

LABEL_48:
  if ([v35 mf_isUserCancelledError])
  {
    v42 = v35;
  }

  else
  {
    if (!localizedDescription)
    {
      v47 = MEMORY[0x1E696AEC0];
      v48 = MFLookupLocalizedString(@"CONNECTION_FAILED", @"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", @"Delayed");
      localizedDescription = [v47 stringWithFormat:v48, remoteHostname];
    }

    [v35 setLocalizedDescription:localizedDescription];
    v42 = v35;
  }

LABEL_53:
  [v29 setError:v42];

  [(MFNWConnectionWrapper *)self->_socket close];
LABEL_54:
  v49 = 0;
LABEL_57:

  return v49;
}

- (BOOL)writeData:(id)data dontLogBytesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  dataCopy = data;
  LOBYTE(length) = -[MFConnection writeBytes:length:dontLogBytesInRange:](self, "writeBytes:length:dontLogBytesInRange:", [dataCopy bytes], objc_msgSend(dataCopy, "length"), location, length);

  return length;
}

- (void)logReadChars:(const char *)chars length:(unint64_t)length
{
  if (length)
  {
    self->_readBytesNotLogged -= length;
  }
}

- (BOOL)readLineIntoData:(id)data
{
  dataCopy = data;
  v5 = 0;
  v6 = 1;
  do
  {
    if (!self->_bufferRemainingBytes)
    {
      v6 = _fillBuffer(self);
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    bufferRemainingBytes = self->_bufferRemainingBytes;
    if (bufferRemainingBytes)
    {
      buffer = self->_buffer;
      bufferStart = self->_bufferStart;
      if (v5 && buffer[bufferStart] == 10)
      {
        v10 = 0;
        v11 = 1;
      }

      else
      {
        v11 = bufferRemainingBytes - 1;
        if (bufferRemainingBytes == 1)
        {
LABEL_14:
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = 0;
          while (*&buffer[bufferStart + v10] != 2573)
          {
            if (v11 == ++v10)
            {
              v11 = 0;
              goto LABEL_14;
            }
          }

          v11 = 2;
        }
      }

      v12 = v10 != 0x7FFFFFFFFFFFFFFFLL;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = buffer[bufferStart - 1 + bufferRemainingBytes] == 13;
      }

      else
      {
        v5 = 0;
        bufferRemainingBytes = v10 + v11;
      }

      [dataCopy appendBytes:&buffer[bufferStart] length:bufferRemainingBytes];
      v13 = self->_bufferStart + bufferRemainingBytes;
      self->_bufferRemainingBytes -= bufferRemainingBytes;
      self->_bufferStart = v13;
      if (v12)
      {
        break;
      }
    }
  }

  while (((v6 ^ 1) & 1) == 0);

  return v6 & 1;
}

- (BOOL)readBytesIntoData:(id)data desiredLength:(unint64_t)length
{
  dataCopy = data;
  while (length)
  {
    bufferRemainingBytes = self->_bufferRemainingBytes;
    if (!bufferRemainingBytes)
    {
      if (!_fillBuffer(self))
      {
        v10 = 0;
        goto LABEL_12;
      }

      bufferRemainingBytes = self->_bufferRemainingBytes;
    }

    if (bufferRemainingBytes >= 1)
    {
      if (bufferRemainingBytes >= length)
      {
        lengthCopy = length;
      }

      else
      {
        lengthCopy = bufferRemainingBytes;
      }

      [dataCopy appendBytes:&self->_buffer[self->_bufferStart] length:lengthCopy];
      v9 = self->_bufferStart + lengthCopy;
      self->_bufferRemainingBytes -= lengthCopy;
      self->_bufferStart = v9;
      length -= lengthCopy;
    }
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"Internal error: -[%@ %@] needs to be implemented in a concrete subclass.", v7, v8];

  v10 = +[MFActivityMonitor currentMonitor];
  v11 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:v9];
  [v10 setError:v11];

  return 0;
}

- (BOOL)startTLSForAccount:(id)account
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [v4 stringWithFormat:@"Internal error: -[%@ %@] needs to be implemented in a concrete subclass.", v6, v7];

  v9 = +[MFActivityMonitor currentMonitor];
  v10 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:v8];
  [v9 setError:v10];

  return 0;
}

- (BOOL)enableSSL
{
  [(MFConnection *)self clearBuffer];
  socket = self->_socket;
  v4 = *MEMORY[0x1E695E960];

  return [(MFNWConnectionWrapper *)socket setSecurityProtocol:v4];
}

- (void)clearBuffer
{
  v8 = *MEMORY[0x1E69E9840];
  p_bufferRemainingBytes = &self->_bufferRemainingBytes;
  if (self->_bufferRemainingBytes >= 1)
  {
    v3 = MFLogNetwork();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *p_bufferRemainingBytes;
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Making sure buffer is empty, currently has %lu bytes", &v6, 0xCu);
    }

    *p_bufferRemainingBytes = 0;
    p_bufferRemainingBytes[1] = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)securityProtocol
{
  socket = self->_socket;
  if (socket)
  {
    securityProtocol = [(MFNWConnectionWrapper *)socket securityProtocol];
  }

  else
  {
    securityProtocol = *MEMORY[0x1E695E968];
  }

  return securityProtocol;
}

- (BOOL)startCompression
{
  v3 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
  if (!v3)
  {
    [MFConnection startCompression];
  }

  v4 = v3;
  v3->zalloc = 0;
  v3->zfree = 0;
  v3->opaque = 0;
  v5 = deflateInit2_(v3, -1, 8, -15, 8, 0, "1.2.12", 112);
  if (v5)
  {
    v6 = v5;
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MFConnection *)v6 startCompression];
    }

LABEL_9:

    free(v4);
    [(MFConnection *)self endCompression];
    return 0;
  }

  self->_deflater = v4;
  v8 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
  if (!v8)
  {
    [MFConnection startCompression];
  }

  v4 = v8;
  v8->avail_in = 0;
  v8->next_in = 0;
  v8->zfree = 0;
  v8->opaque = 0;
  v8->zalloc = 0;
  v9 = inflateInit2_(v8, -15, "1.2.12", 112);
  if (v9)
  {
    v10 = v9;
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MFConnection *)v10 startCompression];
    }

    goto LABEL_9;
  }

  self->_inflater = v4;
  v12 = NSPageSize();
  self->_zbuffer = malloc_type_malloc(v12, 0xCDDC2E6EuLL);
  result = 1;
  self->_compressionEnabled = 1;
  return result;
}

- (void)endCompression
{
  self->_compressionEnabled = 0;
  deflater = self->_deflater;
  if (deflater)
  {
    deflateEnd(deflater);
    free(self->_deflater);
    self->_deflater = 0;
  }

  inflater = self->_inflater;
  if (inflater)
  {
    inflateEnd(inflater);
    free(self->_inflater);
    self->_inflater = 0;
  }

  zbuffer = self->_zbuffer;
  if (zbuffer)
  {
    free(zbuffer);
    self->_zbuffer = 0;
  }
}

- (BOOL)isValid
{
  socket = self->_socket;
  if (socket)
  {
    LOBYTE(socket) = [(MFNWConnectionWrapper *)socket isValid];
  }

  return socket;
}

- (void)disconnect
{
  [(MFNWConnectionWrapper *)self->_socket close];
  socket = self->_socket;
  self->_socket = 0;

  [(MFConnection *)self endCompression];
}

- (BOOL)_certificateIsTrustedForAccount:(id)account
{
  v3 = [account valueInAccountPropertiesForKey:@"MFServerSSLCertificateIsTrusted"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_evaluateTrust:(__SecTrust *)trust errorPtr:(id *)ptr
{
  v62 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  service = [(MFNWConnectionWrapper *)self->_socket service];
  if (service == *MEMORY[0x1E6993C38])
  {
    v8 = off_1E7A9F150;
  }

  else
  {
    v8 = off_1E7A9F748;
  }

  v9 = *v8;
  v10 = objc_opt_class();

  accountIdentifier = [(MFNWConnectionWrapper *)self->_socket accountIdentifier];
  v12 = [v10 existingAccountForUniqueID:accountIdentifier];

  v13 = [(MFConnection *)self _certificateIsTrustedForAccount:v12];
  defaultTrustManager = [MEMORY[0x1E6993C28] defaultTrustManager];
  remoteHostname = [(MFNWConnectionWrapper *)self->_socket remoteHostname];
  service2 = [(MFNWConnectionWrapper *)self->_socket service];
  v17 = [defaultTrustManager rawTrustResultForSSLTrust:trust hostname:remoteHostname service:service2];

  v18 = MFLogNetwork();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    *buf = 138544130;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 1024;
    v59 = v17;
    v60 = 2112;
    v61 = v12;
    _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Got SecTrustResultType %u for %@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v59) = 0;
  switch(v17)
  {
    case 1:
      LOBYTE(v59) = 1;
      break;
    case 5:
      if ([(MFNWConnectionWrapper *)self->_socket allowsTrustPrompt])
      {
        v21 = objc_alloc_init(MEMORY[0x1E6993C20]);
        remoteHostname2 = [(MFNWConnectionWrapper *)self->_socket remoteHostname];
        [v21 setHost:remoteHostname2];

        service3 = [(MFNWConnectionWrapper *)self->_socket service];
        [v21 setService:service3];

        [v21 setTrust:trust];
        if (v13)
        {
          v24 = *MEMORY[0x1E6993C40];
          v52[0] = *MEMORY[0x1E6993C48];
          v52[1] = v24;
          v53[0] = MEMORY[0x1E695E110];
          v53[1] = MEMORY[0x1E695E110];
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
        }

        else
        {
          v25 = 0;
        }

        v31 = +[MFConnection certUIPromptScheduler];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __40__MFConnection__evaluateTrust_errorPtr___block_invoke;
        v38[3] = &unk_1E7AA23A8;
        v39 = v12;
        selfCopy = self;
        v43 = &v46;
        v44 = buf;
        v32 = v21;
        v41 = v32;
        v33 = v25;
        v42 = v33;
        trustCopy = trust;
        [v31 performSyncBlock:v38];

        if (ptr)
        {
          v34 = v47[5];
          if (v34)
          {
            *ptr = v34;
          }
        }
      }

      break;
    case 4:
      if (v13)
      {
        v20 = buf;
      }

      else
      {
        [(MFConnection *)self _setCertificateIsTrusted:1 forAccount:v12];
        v20 = *&buf[8];
      }

      v20[24] = 1;
      break;
    default:
      v26 = [MFError errorWithDomain:*MEMORY[0x1E696A8B8] code:-9825 localizedDescription:0];
      v27 = v47[5];
      v47[5] = v26;

      v28 = MFLogNetwork();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        socket = self->_socket;
        v30 = v47[5];
        *v54 = 134218242;
        v55 = socket;
        v56 = 2112;
        v57 = v30;
        _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_DEFAULT, "trust manager said DENY for connection %p (error: %@)", v54, 0x16u);
      }

      break;
  }

  v35 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v46, 8);
  v36 = *MEMORY[0x1E69E9840];
  return v35 & 1;
}

void __40__MFConnection__evaluateTrust_errorPtr___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) allowsTrustPrompt])
  {
    v2 = dispatch_semaphore_create(0);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__MFConnection__evaluateTrust_errorPtr___block_invoke_96;
    v14[3] = &unk_1E7AA2380;
    v18 = *(a1 + 72);
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    v7 = *(a1 + 40);
    v15 = v5;
    v16 = v7;
    v8 = *(a1 + 80);
    v19 = v6;
    v20 = v8;
    v17 = v2;
    v9 = v2;
    [v3 showPromptWithOptions:v4 responseBlock:v14];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = MFLogNetwork();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 40) + 24);
      v12 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218242;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Supressing trust prompt as user denied earlier for connection %p (error: %@).", buf, 0x16u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

intptr_t __40__MFConnection__evaluateTrust_errorPtr___block_invoke_96(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 2:
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v9 = a1 + 40;
      [*(a1 + 40) _setCertificateIsTrusted:1 forAccount:*(a1 + 32)];
      v10 = [MEMORY[0x1E6993C28] defaultTrustManager];
      v11 = *(a1 + 72);
      v12 = [*(*v9 + 24) remoteHostname];
      v13 = [*(*(a1 + 40) + 24) service];
      [v10 allowTrust:v11 forHost:v12 service:v13];

      break;
    case 1:
      *(*(*(a1 + 56) + 8) + 24) = 1;
      break;
    case 0:
      *(*(*(a1 + 56) + 8) + 24) = 0;
      [*(a1 + 32) setAllowsTrustPrompt:0];
      v3 = [MFError errorWithDomain:*MEMORY[0x1E696A8B8] code:-9825 localizedDescription:0];
      v4 = *(*(a1 + 64) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      v6 = MFLogNetwork();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 40) + 24);
        v8 = *(*(*(a1 + 64) + 8) + 40);
        v16 = 134218242;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "user said DENY for connection %p (error: %@). Supressing trust prompt till maild restarts", &v16, 0x16u);
      }

      break;
  }

  result = dispatch_semaphore_signal(*(a1 + 48));
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(MFConnection *)self mf_lock];
  [v3 appendString:@"\n==== Connection State ====\n"];
  remoteHostname = [(MFNWConnectionWrapper *)self->_socket remoteHostname];
  [v3 appendFormat:@"    Host: %@\n", remoteHostname];

  [v3 appendFormat:@"    Port Number: %u\n", -[MFNWConnectionWrapper remotePortNumber](self->_socket, "remotePortNumber")];
  securityProtocol = [(MFNWConnectionWrapper *)self->_socket securityProtocol];
  [v3 appendFormat:@"    SSL Version: %@\n", securityProtocol];

  [v3 appendFormat:@"    Socket: %@\n", self->_socket];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  [v3 appendFormat:@"    Thread: %p\n", currentThread];

  [(MFConnection *)self mf_unlock];
  return v3;
}

- (void)startCompression
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "inflateInit2 failed with error %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end