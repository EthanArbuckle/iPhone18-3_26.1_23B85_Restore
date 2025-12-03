@interface SMTPAccount
+ (BOOL)isCommonPortNumber:(unsigned int)number;
+ (OS_os_log)log;
- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)port;
- (Class)connectionClass;
- (Class)deliveryClass;
- (__CFString)connectionServiceType;
- (id)authenticatedConnection:(BOOL)connection;
- (id)connectionSettingsForAuthentication:(BOOL)authentication secure:(id)secure insecure:(id)insecure;
- (id)customAuthenticationErrorStringForError:(id)error authScheme:(id)scheme;
- (id)errorForResponse:(id)response;
- (id)insecureConnectionSettings;
- (id)preferredAuthScheme;
- (id)secureConnectionSettings;
- (void)checkInConnection:(id)connection;
- (void)connectionExpired:(id)expired;
- (void)dealloc;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)setPreferredAuthScheme:(id)scheme;
- (void)setSupportsOutboxCopy:(BOOL)copy;
- (void)setTimer;
@end

@implementation SMTPAccount

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = SMTPAccount;
  [(SMTPAccount *)&v3 dealloc];
}

- (void)releaseAllConnections
{
  [(SMTPAccount *)self mf_lock];
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  v4 = self->_connection;
  connection = self->_connection;
  self->_connection = 0;

  [(SMTPAccount *)self mf_unlock];
  [(MFSMTPConnection *)v4 quit];
  v6.receiver = self;
  v6.super_class = SMTPAccount;
  [(MFAccount *)&v6 releaseAllConnections];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__SMTPAccount_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_37 != -1)
  {
    dispatch_once(&log_onceToken_37, block);
  }

  v2 = log_log_37;

  return v2;
}

void __18__SMTPAccount_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_37;
  log_log_37 = v1;
}

- (Class)deliveryClass
{
  deliveryClass = self->_deliveryClass;
  if (deliveryClass)
  {
    v3 = deliveryClass;
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

+ (BOOL)isCommonPortNumber:(unsigned int)number
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___SMTPAccount;
  v4 = objc_msgSendSuper2(&v7, sel_isCommonPortNumber_);
  if (number == 587)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return number == 465 || v5;
}

- (Class)connectionClass
{
  v4.receiver = self;
  v4.super_class = SMTPAccount;
  connectionClass = [(MFAccount *)&v4 connectionClass];
  if (!connectionClass)
  {
    connectionClass = objc_opt_class();
  }

  return connectionClass;
}

- (id)connectionSettingsForAuthentication:(BOOL)authentication secure:(id)secure insecure:(id)insecure
{
  authenticationCopy = authentication;
  v32 = *MEMORY[0x1E69E9840];
  secureCopy = secure;
  insecureCopy = insecure;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = authenticationCopy;
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  v30 = 0x190000024BLL;
  v31 = 465;
  portNumber = [defaultConnectionSettings portNumber];
  if ([defaultConnectionSettings usesSSL])
  {
    v13 = [(SMTPAccount *)self _defaultSettingsWithPort:portNumber useSSL:0 directSSL:0];
    [v8 addObject:v13];

    -[SMTPAccount _defaultSettingsWithPort:useSSL:directSSL:](self, "_defaultSettingsWithPort:useSSL:directSSL:", portNumber, 1, [defaultConnectionSettings tryDirectSSL] ^ 1);
  }

  else
  {
    v15 = [(SMTPAccount *)self _defaultSettingsWithPort:portNumber useSSL:1 directSSL:1];
    [v9 addObject:v15];

    [(SMTPAccount *)self _defaultSettingsWithPort:portNumber useSSL:1 directSSL:0];
  }
  v14 = ;
  [v9 addObject:v14];

  for (i = 0; i != 12; i += 4)
  {
    v17 = *(&v30 + i);
    if (portNumber != v17)
    {
      v18 = [(SMTPAccount *)self _defaultSettingsWithPort:*(&v30 + i) useSSL:1 directSSL:1];
      [v9 addObject:v18];

      v19 = [(SMTPAccount *)self _defaultSettingsWithPort:v17 useSSL:1 directSSL:0];
      [v9 addObject:v19];

      v20 = [(SMTPAccount *)self _defaultSettingsWithPort:v17 useSSL:0 directSSL:0];
      [v8 addObject:v20];
    }
  }

  if (v27)
  {
    v22 = insecureCopy;
    v21 = secureCopy;
    [v10 addObjectsFromArray:v9];
    v23 = v8;
  }

  else
  {
    v22 = insecureCopy;
    v21 = secureCopy;
    usesSSL = [defaultConnectionSettings usesSSL];
    v23 = v9;
    if ((usesSSL & 1) == 0)
    {
      [v10 addObjectsFromArray:v8];
      v23 = v9;
    }
  }

  [v10 addObjectsFromArray:v23];
  if (v21)
  {
    [v21 addObjectsFromArray:v9];
  }

  if (v22)
  {
    [v22 addObjectsFromArray:v8];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)secureConnectionSettings
{
  array = [MEMORY[0x1E695DF70] array];
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  if ([defaultConnectionSettings usesSSL])
  {
    [array addObject:defaultConnectionSettings];
  }

  v5 = [(SMTPAccount *)self connectionSettingsForAuthentication:1 secure:array insecure:0];

  return array;
}

- (id)insecureConnectionSettings
{
  array = [MEMORY[0x1E695DF70] array];
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  if (([defaultConnectionSettings usesSSL] & 1) == 0)
  {
    [array addObject:defaultConnectionSettings];
  }

  v5 = [(SMTPAccount *)self connectionSettingsForAuthentication:1 secure:0 insecure:array];

  return array;
}

- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)port
{
  bOOLValue = port == 465;
  v4 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLIsDirect"];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  return bOOLValue;
}

- (id)preferredAuthScheme
{
  if ([(DeliveryAccount *)self shouldUseAuthentication])
  {
    v5.receiver = self;
    v5.super_class = SMTPAccount;
    preferredAuthScheme = [(MFAccount *)&v5 preferredAuthScheme];
    if (!preferredAuthScheme)
    {
      preferredAuthScheme = [MEMORY[0x1E699B208] schemeWithName:*MEMORY[0x1E699B1E8]];
    }
  }

  else
  {
    preferredAuthScheme = 0;
  }

  return preferredAuthScheme;
}

- (void)setPreferredAuthScheme:(id)scheme
{
  schemeCopy = scheme;
  [(DeliveryAccount *)self setShouldUseAuthentication:schemeCopy != 0];
  v5.receiver = self;
  v5.super_class = SMTPAccount;
  [(MFAccount *)&v5 setPreferredAuthScheme:schemeCopy];
}

- (id)customAuthenticationErrorStringForError:(id)error authScheme:(id)scheme
{
  mf_shortDescription = [error mf_shortDescription];
  if (![mf_shortDescription length])
  {
    v5 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");

    mf_shortDescription = v5;
  }

  return mf_shortDescription;
}

- (id)errorForResponse:(id)response
{
  v19[1] = *MEMORY[0x1E69E9840];
  status = [response status];
  v5 = status - 530;
  if ((status - 530) > 8 || ((1 << (status - 18)) & 0x111) == 0)
  {
    MFLookupLocalizedString(@"FAILED_SEND", @"Check the account settings for the outgoing server “%@”.", @"Delayed");
  }

  else
  {
    MFLookupLocalizedString(@"FAILED_SEND_SSL_NEEDED", @"Check the SSL setting for the outgoing server “%@”.", @"Delayed");
  }
  v7 = ;
  v8 = v7;
  v9 = v7;
  if (v5 > 8)
  {
    v9 = v7;
  }

  v10 = MEMORY[0x1E696AEC0];
  displayHostname = [(DeliveryAccount *)self displayHostname];
  v12 = [v10 stringWithFormat:v8, displayHostname];

  v18 = @"UserFriendlyErrorDescription";
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
  v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v12 title:v14 userInfo:v13];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setSupportsOutboxCopy:(BOOL)copy
{
  if (copy)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 120) = *(self + 120) & 0xFD | v3;
}

- (__CFString)connectionServiceType
{
  v4.receiver = self;
  v4.super_class = SMTPAccount;
  result = [(MFAccount *)&v4 connectionServiceType];
  if ((*(self + 120) & 4) != 0)
  {
    return *MEMORY[0x1E6965270];
  }

  return result;
}

- (id)authenticatedConnection:(BOOL)connection
{
  v17 = *MEMORY[0x1E69E9840];
  [(SMTPAccount *)self mf_lock];
  if (connection)
  {
    v5 = 0;
    v6 = 4;
  }

  else
  {
    v5 = self->_connection;
    v6 = 0;
  }

  connection = self->_connection;
  self->_connection = 0;

  *(self + 120) = *(self + 120) & 0xFB | v6;
  [(SMTPAccount *)self mf_unlock];
  if (v5)
  {
    v8 = time(0);
    if (v8 <= [(MFSMTPConnection *)v5 timeLastCommandWasSent]+ 30 || [(MFSMTPConnection *)v5 noop]== 2)
    {
      _newConnection = v5;
      goto LABEL_15;
    }
  }

  _newConnection = [(MFAccount *)self _newConnection];
  if (_newConnection)
  {
    if ([(MFAccount *)self _connectAndAuthenticate:_newConnection])
    {
      maximumMessageBytes = [(MFSMTPConnection *)_newConnection maximumMessageBytes];
      if (maximumMessageBytes)
      {
        [(DeliveryAccount *)self setMaximumMessageBytes:maximumMessageBytes];
      }

      [(SMTPAccount *)self setSupportsPipelining:[(MFSMTPConnection *)_newConnection supportsPipelining]];
      [(SMTPAccount *)self setSupportsOutboxCopy:[(MFSMTPConnection *)_newConnection supportsOutboxCopy]];
    }

    else
    {

      _newConnection = 0;
    }
  }

LABEL_15:
  v11 = +[SMTPAccount log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    domainName = [(MFSMTPConnection *)self->_connection domainName];
    v15 = 138543362;
    v16 = domainName;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "_connection domain name: %{public}@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];

  return _newConnection;
}

- (void)connectionExpired:(id)expired
{
  timer = self->_timer;
  self->_timer = 0;

  [(SMTPAccount *)self mf_lock];
  v9 = self->_connection;
  connection = self->_connection;
  self->_connection = 0;

  mf_unlock = [(SMTPAccount *)self mf_unlock];
  if (v9)
  {
    v7 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel_disconnect_ target:self object:?];
    v8 = +[MFInvocationQueue sharedInvocationQueue];
    [v8 addInvocation:v7];
  }

  MEMORY[0x1EEE66C38](mf_unlock);
}

- (void)setTimer
{
  [(SMTPAccount *)self mf_lock];
  [(NSTimer *)self->_timer invalidate];
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_connectionExpired_ selector:0 userInfo:0 repeats:60.0];
  timer = self->_timer;
  self->_timer = v3;

  [(SMTPAccount *)self mf_unlock];
}

- (void)checkInConnection:(id)connection
{
  connectionCopy = connection;
  v5 = MFUserAgent();
  isMobileMail = [v5 isMobileMail];

  if (isMobileMail)
  {
    [(SMTPAccount *)self mf_lock];
    connection = self->_connection;
    if (!connection)
    {
      objc_storeStrong(&self->_connection, connection);
    }

    [(SMTPAccount *)self mf_unlock];
    v8 = time(0);
    if (!connection)
    {
      v9 = v8;
      if (v8 > self->_lastTimerSetTime + 10)
      {
        [(SMTPAccount *)self performSelectorOnMainThread:sel_setTimer withObject:0 waitUntilDone:0];
        self->_lastTimerSetTime = v9;
      }
    }
  }

  else
  {
    [connectionCopy quit];
  }
}

- (void)releaseAllForcedConnections
{
  v2.receiver = self;
  v2.super_class = SMTPAccount;
  [(MFAccount *)&v2 releaseAllForcedConnections];
}

@end