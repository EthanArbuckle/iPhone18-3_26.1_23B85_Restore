@interface MFConnection
+ (BOOL)shouldTryFallbacksAfterError:(id)a3;
+ (id)logClasses;
+ (void)initialize;
+ (void)logConnection:(id)a3 type:(int64_t)a4 data:(id)a5;
+ (void)readLoggingDefaults;
+ (void)setLogActivityOnHosts:(id)a3;
+ (void)setLogActivityOnPorts:(id)a3;
+ (void)setLogClasses:(id)a3;
- (BOOL)authenticateUsingAccount:(id)a3;
- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4;
- (BOOL)connectUsingAccount:(id)a3;
- (BOOL)connectUsingFallbacksForAccount:(id)a3;
- (BOOL)connectUsingSettings:(id)a3;
- (BOOL)isCellularConnection;
- (BOOL)isValid;
- (BOOL)readBytesIntoData:(id)a3 desiredLength:(unint64_t)a4;
- (BOOL)readLineIntoData:(id)a3;
- (BOOL)startCompression;
- (BOOL)startTLSForAccount:(id)a3;
- (BOOL)writeBytes:(const char *)a3 length:(unint64_t)a4 dontLogBytesInRange:(_NSRange)a5;
- (BOOL)writeData:(id)a3 dontLogBytesInRange:(_NSRange)a4;
- (MFConnection)init;
- (NSArray)authenticationMechanisms;
- (NSString)description;
- (NSString)securityProtocol;
- (id)copyDiagnosticInformation;
- (void)_setupSocketWithSettings:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)endCompression;
- (void)logReadChars:(const char *)a3 length:(unint64_t)a4;
- (void)setAllowsFallbacks:(BOOL)a3;
- (void)setConnectionSettings:(id)a3;
- (void)setIsFetching:(BOOL)a3;
- (void)startCompression;
@end

@implementation MFConnection

+ (void)readLoggingDefaults
{
  [_LogLock lock];

  _LogClasses = 0;
  _LoggedPorts = 0;

  _LoggedHosts = 0;
  keyExistsAndHasValidFormat = 0;
  v3 = *MEMORY[0x277CBF028];
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(*MEMORY[0x277CBF028], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LogActivityOnAllPorts", v3, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat || (v7 = *MEMORY[0x277D28648], CFPreferencesSynchronize(*MEMORY[0x277D28648], v4, v5), AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LogActivityOnAllPorts", v7, &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat))
  {
    _LogAllConnectionActivity = AppIntegerValue != 0;
    if (AppIntegerValue)
    {
      goto LABEL_14;
    }
  }

  else if (_LogAllConnectionActivity)
  {
    goto LABEL_14;
  }

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 stringArrayForKey:@"LogActivityOnPort"];
  v10 = [v8 stringArrayForKey:@"LogActivityOnHost"];
  if (v9)
  {
    goto LABEL_7;
  }

  v11 = [objc_msgSend(v8 stringForKey:{@"LogActivityOnPort", "componentsSeparatedByString:", @", "}];
  if (v11)
  {
    v9 = v11;
LABEL_7:
    if ([v9 count])
    {
      _LoggedPorts = v9;
    }
  }

  if (v10 || (v10 = [objc_msgSend(v8 stringForKey:{@"LogActivityOnHost", "componentsSeparatedByString:", @", "}]) != 0)
  {
    if ([v10 count])
    {
      _LoggedHosts = v10;
    }
  }

LABEL_14:
  if ((_LogAllConnectionActivity & 1) != 0 || [_LoggedPorts count] || objc_msgSend(_LoggedHosts, "count"))
  {
    _LogClasses = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{a1, 0}];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [_LogLock unlock];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if (!_LogLock)
    {
      _MFLockGlobalLock();
      if (!_LogLock)
      {
        _LogLock = [objc_alloc(MEMORY[0x277D24FA8]) initWithName:@"logLock" andDelegate:0];
      }

      _MFUnlockGlobalLock();
    }

    [a1 readLoggingDefaults];
    if (initialize_once != -1)
    {
      +[MFConnection initialize];
    }
  }
}

uint64_t __26__MFConnection_initialize__block_invoke()
{
  v0 = MEMORY[0x277D85CD0];
  notify_register_dispatch(*MEMORY[0x277D28670], &initialize_token, MEMORY[0x277D85CD0], &__block_literal_global_23);
  v1 = *MEMORY[0x277D28660];

  return notify_register_dispatch(v1, &initialize_token, v0, &__block_literal_global_25);
}

+ (void)logConnection:(id)a3 type:(int64_t)a4 data:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = [a5 bytes];
  v9 = [a5 length];
  v10 = v9;
  if (v9 >= 0x400)
  {
    v11 = 1024;
  }

  else
  {
    v11 = v9;
  }

  if ((a4 - 1) > 3)
  {
    v12 = "CONNECTED";
  }

  else
  {
    v12 = off_2798B65E0[a4 - 1];
  }

  v22 = v12;
  v13 = *(a3 + 2);
  v14 = [*(a3 + 3) securityProtocol];
  if (v14)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@":%@", v14];
    if (a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v21 = &stru_2869ED3E0;
    if (a4)
    {
      goto LABEL_13;
    }
  }

  v15 = MFLogNetwork();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136447490;
    v24 = v22;
    v25 = 2114;
    v26 = objc_opt_class();
    v27 = 2048;
    v28 = a3;
    v29 = 2112;
    v30 = [v13 hostname];
    v31 = 1024;
    v32 = [v13 portNumber];
    v33 = 2114;
    v34 = v21;
    _os_log_impl(&dword_258BDA000, v15, OS_LOG_TYPE_INFO, "%{public}s <%{public}@:%p> [%@:%u%{public}@]", buf, 0x3Au);
  }

LABEL_13:
  while (v10)
  {
    v16 = MFLogNetwork();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = [v13 hostname];
      v19 = [v13 portNumber];
      *buf = 136448002;
      v24 = v22;
      v25 = 2114;
      v26 = v17;
      v27 = 2048;
      v28 = a3;
      v29 = 2112;
      v30 = v18;
      v31 = 1024;
      v32 = v19;
      v33 = 2114;
      v34 = v21;
      v35 = 1040;
      v36 = v11;
      v37 = 2096;
      v38 = v8;
      _os_log_impl(&dword_258BDA000, v16, OS_LOG_TYPE_INFO, "%{public}s <%{public}@:%p> [%@:%u%{public}@] %{mobilemail:networkData}.*P", buf, 0x4Au);
    }

    v8 += v11;
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

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)logClasses
{
  [_LogLock lock];
  v2 = _LogClasses;
  [_LogLock unlock];

  return v2;
}

+ (void)setLogClasses:(id)a3
{
  [_LogLock lock];

  _LogClasses = a3;
  v4 = _LogLock;

  [v4 unlock];
}

+ (void)setLogActivityOnPorts:(id)a3
{
  v4 = a3;

  _LoggedPorts = a3;
}

+ (void)setLogActivityOnHosts:(id)a3
{
  v4 = a3;

  _LoggedHosts = a3;
}

- (MFConnection)init
{
  v4.receiver = self;
  v4.super_class = MFConnection;
  v2 = [(MFConnection *)&v4 init];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x277D24F10] "sharedController")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277D24F10] "sharedController")];
  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  socket = self->_socket;
  if (socket)
  {
    [(_MFSocket *)socket abort];
  }

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

  v8.receiver = self;
  v8.super_class = MFConnection;
  [(MFConnection *)&v8 dealloc];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = MFConnection;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ _socket: %p\n", -[MFConnection description](&v3, sel_description), self->_socket];
}

- (BOOL)isCellularConnection
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(_MFSocket *)self->_socket isCellularConnection];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = v3;
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_INFO, "#Network %d for %@", v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setIsFetching:(BOOL)a3
{
  v3 = *(self + 108);
  if ((v3 & 1) != a3)
  {
    *(self + 108) = v3 & 0xFE | a3;
    [(MFConnection *)self enableThroughputMonitoring:?];
  }
}

- (void)_setupSocketWithSettings:(id)a3
{
  socket = self->_socket;
  if (!socket)
  {
    [MFConnection _setupSocketWithSettings:];
  }

  -[_MFSocket setConnectionServiceType:](socket, "setConnectionServiceType:", [a3 connectionServiceType]);
  -[_MFSocket setAllowsTrustPrompt:](self->_socket, "setAllowsTrustPrompt:", [a3 allowsTrustPrompt]);
  -[_MFSocket setUsesOpportunisticSockets:](self->_socket, "setUsesOpportunisticSockets:", [a3 usesOpportunisticSockets]);
  -[_MFSocket setSourceApplicationBundleIdentifier:](self->_socket, "setSourceApplicationBundleIdentifier:", [a3 sourceApplicationBundleIdentifier]);
  -[_MFSocket setAccountIdentifier:](self->_socket, "setAccountIdentifier:", [a3 accountIdentifier]);
  -[_MFSocket setNetworkAccountIdentifier:](self->_socket, "setNetworkAccountIdentifier:", [a3 networkAccountIdentifier]);
  if ([a3 clientCertificates])
  {
    -[_MFSocket setClientCertificates:](self->_socket, "setClientCertificates:", [a3 clientCertificates]);
  }

  if ([a3 tryDirectSSL])
  {
    v6 = self->_socket;
    v7 = *MEMORY[0x277CBF098];

    [(_MFSocket *)v6 setSecurityProtocol:v7];
  }
}

- (BOOL)connectUsingSettings:(id)a3
{
  v5 = a3;
  self->_connectionSettings = v5;
  v6 = [(MFConnectionSettings *)v5 portNumber];
  if (!self->_socket)
  {
    self->_socket = objc_alloc_init(_MFSocket);
  }

  [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  [(MFConnection *)self _setupSocketWithSettings:self->_connectionSettings];
  if (!v6)
  {
    v8 = getservbyname([(NSString *)[(MFConnectionSettings *)self->_connectionSettings serviceName] UTF8String], "tcp");
    if (!v8 || !LOWORD(v8->s_port))
    {
      v9 = +[MFActivityMonitor currentMonitor];
      [v9 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1031, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", MFLookupLocalizedString(@"DONT_KNOW_SERVICE_PORT", @"Can’t determine port to use for the TCP/IP service “%@”.", @"Delayed", -[MFConnectionSettings serviceName](self->_connectionSettings, "serviceName")))}];
      v6 = 0;
      goto LABEL_10;
    }

    v6 = __rev16(LOWORD(v8->s_port));
  }

  if (-[_MFSocket connectToHost:withPort:service:](self->_socket, "connectToHost:withPort:service:", -[MFConnectionSettings hostname](self->_connectionSettings, "hostname"), v6, [a3 certUIService]))
  {
LABEL_5:
    _logEvent(self, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0);
    return 1;
  }

LABEL_10:
  v10 = [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA590]])
    {
      if ([v11 code] == -9850)
      {
        v13 = MFLogGeneral();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_258BDA000, v13, OS_LOG_TYPE_INFO, "Detected server with low-grade DH cipher. Re-trying with DH disabled.", buf, 2u);
        }

        [(_MFSocket *)self->_socket abort];

        self->_socket = objc_alloc_init(_MFSocket);
        [(MFConnection *)self _setupSocketWithSettings:self->_connectionSettings];
        [(_MFSocket *)self->_socket setDisableEphemeralDiffieHellmanCiphers:1];
        [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
        if ([(_MFSocket *)self->_socket connectToHost:[(MFConnectionSettings *)self->_connectionSettings hostname] withPort:v6 service:[(MFConnectionSettings *)self->_connectionSettings certUIService]])
        {
          goto LABEL_5;
        }
      }
    }
  }

  v14 = +[MFActivityMonitor currentMonitor];
  v15 = [(MFConnectionSettings *)self->_connectionSettings hostname];
  v16 = [(MFConnectionSettings *)self->_connectionSettings tryDirectSSL];
  v17 = [v14 error];
  if (!v17)
  {
    v18 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
    [v14 setError:v18];
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

  v18 = v17;
  if ([*MEMORY[0x277CCA5B8] isEqualToString:{-[MFError domain](v17, "domain")}])
  {
    v19 = [(MFError *)v18 code];
    v20 = MEMORY[0x277CCACA8];
    switch(v19)
    {
      case 'A':
        v21 = @"HOST_UNREACHABLE";
        v22 = @"The server “%@” cannot be contacted on port %d.";
        goto LABEL_35;
      case '=':
        if (!v16)
        {
          v21 = @"CONNECTION_REFUSED";
          v22 = @"The server “%@” refused to allow a connection on port %d.";
          goto LABEL_35;
        }

        break;
      case '<':
        v21 = @"CONNECTION_TIMED_OUT";
        v22 = @"The connection to the server “%@” on port %d timed out.";
LABEL_35:
        v25 = MFLookupLocalizedString(v21, v22, @"Delayed");
        goto LABEL_36;
      default:
        if (!v16)
        {
          v25 = MFLookupLocalizedString(@"CONNECTION_FAILED", @"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", @"Delayed");
          goto LABEL_37;
        }

        break;
    }

    v21 = @"MF_SSL_CONNECTION_FAILURE";
    v22 = @"Mail was unable to connect to server “%@” using SSL on port %d. Verify that this server supports SSL and that your account settings are correct.";
    goto LABEL_35;
  }

  if (![*MEMORY[0x277CCA670] isEqualToString:{-[MFError domain](v18, "domain")}])
  {
LABEL_28:
    if ([(NSError *)v18 mf_isUserCancelledError])
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  _setupSSLDomainError(v18, v15, [(_MFSocket *)self->_socket serverCertificates]);
  v23 = [(MFError *)v18 localizedDescription];
  if (!v23 || (v24 = v23, [&stru_2869ED3E0 isEqualToString:v23]))
  {
    v20 = MEMORY[0x277CCACA8];
    v25 = MFLookupLocalizedString(@"MF_SSL_CONNECTION_FAILURE", @"Mail was unable to connect to server “%@” using SSL on port %d. Verify that this server supports SSL and that your account settings are correct.", @"Delayed");
LABEL_36:
    v26 = v6;
LABEL_37:
    v24 = [v20 stringWithFormat:v25, v15, v26];
  }

  if (![(NSError *)v18 mf_isUserCancelledError])
  {
    if (v24)
    {
LABEL_41:
      [(MFError *)v18 setLocalizedDescription:v24];
      goto LABEL_42;
    }

LABEL_40:
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"CONNECTION_FAILED", @"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", @"Delayed", v15];
    goto LABEL_41;
  }

LABEL_42:
  [(_MFSocket *)self->_socket abort];

  result = 0;
  self->_socket = 0;
  return result;
}

- (BOOL)connectUsingAccount:(id)a3
{
  v4 = [a3 defaultConnectionSettings];

  return [(MFConnection *)self connectUsingSettings:v4];
}

+ (BOOL)shouldTryFallbacksAfterError:(id)a3
{
  v4 = [a3 domain];
  if ([v4 isEqual:*MEMORY[0x277CBACE8]])
  {
    if ([a3 code] == 2 || objc_msgSend(a3, "code") == 1)
    {
      return 0;
    }
  }

  else
  {
    v6 = [a3 domain];
    if ([v6 isEqual:*MEMORY[0x277CCA670]])
    {
      return [a3 code] != -9829;
    }
  }

  return 1;
}

- (BOOL)connectUsingFallbacksForAccount:(id)a3
{
  v5 = [a3 defaultConnectionSettings];
  if ([(MFConnection *)self connectUsingAccount:a3])
  {
LABEL_2:
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = +[MFActivityMonitor currentMonitor];
    v8 = [v7 error];
    if (!v8 || (v6 = [objc_opt_class() shouldTryFallbacksAfterError:v8]) != 0)
    {
      v9 = [a3 alternateConnectionSettings];
      v10 = [v9 count];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = 1;
        while (!v12 || [objc_opt_class() shouldTryFallbacksAfterError:v12])
        {
          [a3 applySettingsAsDefault:{objc_msgSend(v9, "objectAtIndex:", v13 - 1)}];
          v14 = [(MFConnection *)self connectUsingAccount:a3];
          v15 = [v7 error];
          if (!v14)
          {
            v12 = v15;
            if (v13++ < v11)
            {
              continue;
            }
          }

          if (v14)
          {
            goto LABEL_2;
          }

          break;
        }
      }

      [a3 applySettingsAsDefault:v5];
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)setAllowsFallbacks:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 108) = *(self + 108) & 0xFD | v3;
}

- (BOOL)authenticateUsingAccount:(id)a3
{
  v5 = [a3 preferredAuthScheme];
  v6 = [v5 authenticatorForAccount:a3 connection:self];

  self->_securityLayer = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(MFConnection *)self authenticationMechanisms];
  if (!v7 || -[NSArray indexOfObject:](v7, "indexOfObject:", [v6 saslName]) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = MFLookupLocalizedString(@"AUTH_NOT_SUPPORTED_FORMAT", @"The %@ server “%@” doesn’t support %@ authentication. Please check your account settings and try again.", @"Delayed");
    [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
LABEL_5:
    LOBYTE(v10) = 0;
    return v10;
  }

  v10 = [(MFConnection *)self authenticateUsingAccount:a3 authenticator:v6];
  if (v10)
  {
    if (!self->_securityLayer)
    {
      self->_securityLayer = [v6 securityLayer];
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (NSArray)authenticationMechanisms
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(MFConnection *)self capabilities];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 rangeOfString:@"AUTH=" options:9 range:{0, objc_msgSend(v8, "length")}];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v9;
          v12 = v10;
          if (!v5)
          {
            v5 = [MEMORY[0x277CBEB18] array];
          }

          -[NSArray addObject:](v5, "addObject:", [objc_msgSend(v8 substringFromIndex:{v11 + v12), "uppercaseString"}]);
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)writeBytes:(const char *)a3 length:(unint64_t)a4 dontLogBytesInRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v10 = [(MFSASLSecurityLayer *)self->_securityLayer encryptionBufferSize];
  v42 = a4;
  if ((*(self + 108) & 4) != 0)
  {
    v11 = objc_alloc_init(MEMORY[0x277D24F70]);
    deflater = self->_deflater;
    deflater->avail_in = a4;
    deflater->next_in = a3;
    v14 = self->_deflater;
    do
    {
      v14->next_out = self->_zbuffer;
      v15 = NSPageSize();
      v16 = self->_deflater;
      v16->avail_out = v15;
      if (deflate(v16, 2) == -2)
      {
        [MFConnection writeBytes:length:dontLogBytesInRange:];
      }

      [v11 appendBytes:self->_zbuffer length:NSPageSize() - self->_deflater->avail_out];
      v14 = self->_deflater;
    }

    while (!v14->avail_out);
    a4 = [v11 length];
    v12 = [v11 bytes];
  }

  else
  {
    v11 = 0;
    v12 = a3;
  }

  v41 = location;
  if (v10)
  {
    if (v10 >= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = v10;
    }

    v43 = [objc_allocWithZone(MEMORY[0x277D24F70]) initWithCapacity:v17 + 4];
    v12 = 0;
    if (!a4)
    {
      goto LABEL_32;
    }

LABEL_14:
    v18 = &a3[a4];
    v39 = *MEMORY[0x277CCA5B8];
    v38 = *MEMORY[0x277CCA670];
    v40 = a3;
    while (1)
    {
      v19 = a4;
      if (!v43)
      {
        break;
      }

      if (v17 >= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = v17;
      }

      v21 = [(MFSASLSecurityLayer *)self->_securityLayer createEncryptedDataForBytes:&v18[-a4] length:v20];
      [v43 setLength:0];
      if (v21)
      {
        v44 = bswap32([v21 length]) >> 16;
        [v43 appendBytes:&v44 length:4];
        [v43 appendData:v21];
      }

      v12 = [v43 bytes];
      v22 = [v43 length];
      if (!v21)
      {
        v29 = 0;
        v28 = v43;
        goto LABEL_52;
      }

      v19 = v22;
      if (v22)
      {
        break;
      }

LABEL_28:
      v27 = a4 > v17;
      if (a4 >= v17)
      {
        a4 -= v17;
      }

      else
      {
        a4 = 0;
      }

      a3 = v40;
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    v23 = v18;
    v24 = length;
    v25 = v12;
    while (1)
    {
      v26 = [(_MFSocket *)self->_socket writeBytes:v25 length:v19];
      if (v26 < 0)
      {
        break;
      }

      self->_lastUsedTime = CFAbsoluteTimeGetCurrent();
      if (!v26)
      {
        break;
      }

      [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
      v25 += v26;
      v19 -= v26;
      if (!v19)
      {
        length = v24;
        v18 = v23;
        goto LABEL_28;
      }
    }

    v30 = +[MFActivityMonitor currentMonitor];
    socket = self->_socket;
    v32 = [v30 error];
    v33 = [(_MFSocket *)socket remoteHostname];
    if (!v32)
    {
      v32 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
      [v30 setError:v32];
      if (!v32 || [(NSError *)v32 mf_isUserCancelledError])
      {
LABEL_51:
        [(_MFSocket *)self->_socket abort];
        v29 = 0;
        v36 = 0;
        v28 = v43;
        if (!v43)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

LABEL_49:
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"CONNECTION_FAILED", @"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", @"Delayed", v33];
LABEL_50:
      [(MFError *)v32 setLocalizedDescription:v35];
      goto LABEL_51;
    }

    if ([v39 isEqualToString:{-[MFError domain](v32, "domain")}])
    {
      if ([(MFError *)v32 code]== 60)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"CONNECTION_TIMED_OUT", @"The connection to the server “%@” on port %d timed out.", @"Delayed", v33, -[_MFSocket remotePortNumber](socket, "remotePortNumber")];
LABEL_45:
        v35 = v34;
        goto LABEL_47;
      }
    }

    else if ([v38 isEqualToString:{-[MFError domain](v32, "domain")}])
    {
      _setupSSLDomainError(v32, v33, [(_MFSocket *)self->_socket serverCertificates]);
      v35 = [(MFError *)v32 localizedDescription];
      if (!v35 || [&stru_2869ED3E0 isEqualToString:v35])
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SSL_GENERIC_WRITE_ERROR", @"An SSL error occurred while trying to provide data to the server “%@”. Verify that this server supports SSL and that your account settings are correct.", @"Delayed", v33];
        goto LABEL_45;
      }

LABEL_47:
      if ([(NSError *)v32 mf_isUserCancelledError])
      {
        goto LABEL_51;
      }

      if (v35)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v35 = 0;
    goto LABEL_47;
  }

  v43 = 0;
  v17 = a4;
  if (a4)
  {
    goto LABEL_14;
  }

LABEL_32:
  v28 = v43;
  if (!v43)
  {
    _logEvent(self, 3, a3, v42, v41, length);
    v36 = 1;
    if (!v11)
    {
      return v36;
    }

    goto LABEL_54;
  }

  _logEvent(self, 4, a3, v42, v41, length);
  v29 = 1;
LABEL_52:

  v36 = v29;
LABEL_53:
  if (v11)
  {
LABEL_54:
  }

  return v36;
}

- (BOOL)writeData:(id)a3 dontLogBytesInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = [a3 bytes];
  v9 = [a3 length];

  return [(MFConnection *)self writeBytes:v8 length:v9 dontLogBytesInRange:location, length];
}

- (void)logReadChars:(const char *)a3 length:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;

    self->_readBytesNotLogged -= v4;
  }
}

- (BOOL)readLineIntoData:(id)a3
{
  v5 = 0;
  while (1)
  {
    if (!self->_bufferRemainingBytes)
    {
      v6 = _fillBuffer(self);
      if (!v6)
      {
        return v6;
      }
    }

    buffer = self->_buffer;
    bufferStart = self->_bufferStart;
    if (v5 && buffer[bufferStart] == 10)
    {
      v9 = 0;
      v10 = 1;
    }

    else
    {
      bufferRemainingBytes = self->_bufferRemainingBytes;
      if (bufferRemainingBytes < 2)
      {
LABEL_11:
        v10 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = 0;
        v12 = bufferRemainingBytes - 1;
        while (*&buffer[bufferStart + v9] != 2573)
        {
          if (v12 == ++v9)
          {
            goto LABEL_11;
          }
        }

        v10 = 2;
      }
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = self->_bufferRemainingBytes;
      v5 = buffer[bufferStart - 1 + v13] == 13;
    }

    else
    {
      v5 = 0;
      v13 = v9 + v10;
    }

    [a3 appendBytes:&buffer[bufferStart] length:v13];
    v14 = self->_bufferStart + v13;
    self->_bufferRemainingBytes -= v13;
    self->_bufferStart = v14;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      LOBYTE(v6) = 1;
      return v6;
    }
  }
}

- (BOOL)readBytesIntoData:(id)a3 desiredLength:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    do
    {
      bufferRemainingBytes = self->_bufferRemainingBytes;
      if (!bufferRemainingBytes)
      {
        v8 = _fillBuffer(self);
        if (!v8)
        {
          return v8;
        }

        bufferRemainingBytes = self->_bufferRemainingBytes;
      }

      if (bufferRemainingBytes >= 1)
      {
        if (bufferRemainingBytes >= v4)
        {
          v9 = v4;
        }

        else
        {
          v9 = bufferRemainingBytes;
        }

        [a3 appendBytes:&self->_buffer[self->_bufferStart] length:v9];
        v10 = self->_bufferStart + v9;
        self->_bufferRemainingBytes -= v9;
        self->_bufferStart = v10;
        v4 -= v9;
      }
    }

    while (v4);
    LOBYTE(v8) = 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  return 0;
}

- (BOOL)startTLSForAccount:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  return 0;
}

- (NSString)securityProtocol
{
  socket = self->_socket;
  if (socket)
  {
    return [(_MFSocket *)socket securityProtocol];
  }

  else
  {
    return *MEMORY[0x277CBF0A0];
  }
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
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MFConnection *)v10 startCompression];
    }

    goto LABEL_9;
  }

  self->_inflater = v4;
  v13 = NSPageSize();
  self->_zbuffer = malloc_type_malloc(v13, 0xAE3CAA82uLL);
  *(self + 108) |= 4u;
  return 1;
}

- (void)endCompression
{
  *(self + 108) &= ~4u;
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
    LOBYTE(socket) = [(_MFSocket *)socket isValid];
  }

  return socket;
}

- (void)disconnect
{
  [(_MFSocket *)self->_socket abort];

  self->_socket = 0;

  [(MFConnection *)self endCompression];
}

- (void)setConnectionSettings:(id)a3
{
  v5 = a3;

  self->_connectionSettings = a3;
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(MFConnection *)self mf_lock];
  [v3 appendString:@"\n==== Connection State ====\n"];
  [v3 appendFormat:@"    Host: %@\n", -[_MFSocket remoteHostname](self->_socket, "remoteHostname")];
  [v3 appendFormat:@"    Port Number: %u\n", -[_MFSocket remotePortNumber](self->_socket, "remotePortNumber")];
  [v3 appendFormat:@"    SSL Version: %@\n", -[_MFSocket securityProtocol](self->_socket, "securityProtocol")];
  [v3 appendFormat:@"    Socket: %p\n", self->_socket];
  [v3 appendFormat:@"    Thread: %p\n", objc_msgSend(MEMORY[0x277CCACC8], "currentThread")];
  [(MFConnection *)self mf_unlock];
  return v3;
}

- (void)startCompression
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "inflateInit2 failed with error %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end