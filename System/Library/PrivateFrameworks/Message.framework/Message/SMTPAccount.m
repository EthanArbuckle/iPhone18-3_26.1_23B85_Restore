@interface SMTPAccount
+ (BOOL)isCommonPortNumber:(unsigned int)a3;
+ (OS_os_log)log;
- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)a3;
- (Class)connectionClass;
- (Class)deliveryClass;
- (__CFString)connectionServiceType;
- (id)authenticatedConnection:(BOOL)a3;
- (id)connectionSettingsForAuthentication:(BOOL)a3 secure:(id)a4 insecure:(id)a5;
- (id)customAuthenticationErrorStringForError:(id)a3 authScheme:(id)a4;
- (id)errorForResponse:(id)a3;
- (id)insecureConnectionSettings;
- (id)preferredAuthScheme;
- (id)secureConnectionSettings;
- (void)checkInConnection:(id)a3;
- (void)connectionExpired:(id)a3;
- (void)dealloc;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)setPreferredAuthScheme:(id)a3;
- (void)setSupportsOutboxCopy:(BOOL)a3;
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
  block[4] = a1;
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

+ (BOOL)isCommonPortNumber:(unsigned int)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___SMTPAccount;
  v4 = objc_msgSendSuper2(&v7, sel_isCommonPortNumber_);
  if (a3 == 587)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return a3 == 465 || v5;
}

- (Class)connectionClass
{
  v4.receiver = self;
  v4.super_class = SMTPAccount;
  v2 = [(MFAccount *)&v4 connectionClass];
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (id)connectionSettingsForAuthentication:(BOOL)a3 secure:(id)a4 insecure:(id)a5
{
  v6 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v29 = a4;
  v28 = a5;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = v6;
  v11 = [(MFAccount *)self defaultConnectionSettings];
  v30 = 0x190000024BLL;
  v31 = 465;
  v12 = [v11 portNumber];
  if ([v11 usesSSL])
  {
    v13 = [(SMTPAccount *)self _defaultSettingsWithPort:v12 useSSL:0 directSSL:0];
    [v8 addObject:v13];

    -[SMTPAccount _defaultSettingsWithPort:useSSL:directSSL:](self, "_defaultSettingsWithPort:useSSL:directSSL:", v12, 1, [v11 tryDirectSSL] ^ 1);
  }

  else
  {
    v15 = [(SMTPAccount *)self _defaultSettingsWithPort:v12 useSSL:1 directSSL:1];
    [v9 addObject:v15];

    [(SMTPAccount *)self _defaultSettingsWithPort:v12 useSSL:1 directSSL:0];
  }
  v14 = ;
  [v9 addObject:v14];

  for (i = 0; i != 12; i += 4)
  {
    v17 = *(&v30 + i);
    if (v12 != v17)
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
    v22 = v28;
    v21 = v29;
    [v10 addObjectsFromArray:v9];
    v23 = v8;
  }

  else
  {
    v22 = v28;
    v21 = v29;
    v24 = [v11 usesSSL];
    v23 = v9;
    if ((v24 & 1) == 0)
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MFAccount *)self defaultConnectionSettings];
  if ([v4 usesSSL])
  {
    [v3 addObject:v4];
  }

  v5 = [(SMTPAccount *)self connectionSettingsForAuthentication:1 secure:v3 insecure:0];

  return v3;
}

- (id)insecureConnectionSettings
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MFAccount *)self defaultConnectionSettings];
  if (([v4 usesSSL] & 1) == 0)
  {
    [v3 addObject:v4];
  }

  v5 = [(SMTPAccount *)self connectionSettingsForAuthentication:1 secure:0 insecure:v3];

  return v3;
}

- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)a3
{
  v3 = a3 == 465;
  v4 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLIsDirect"];
  v5 = v4;
  if (v4)
  {
    v3 = [v4 BOOLValue];
  }

  return v3;
}

- (id)preferredAuthScheme
{
  if ([(DeliveryAccount *)self shouldUseAuthentication])
  {
    v5.receiver = self;
    v5.super_class = SMTPAccount;
    v3 = [(MFAccount *)&v5 preferredAuthScheme];
    if (!v3)
    {
      v3 = [MEMORY[0x1E699B208] schemeWithName:*MEMORY[0x1E699B1E8]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPreferredAuthScheme:(id)a3
{
  v4 = a3;
  [(DeliveryAccount *)self setShouldUseAuthentication:v4 != 0];
  v5.receiver = self;
  v5.super_class = SMTPAccount;
  [(MFAccount *)&v5 setPreferredAuthScheme:v4];
}

- (id)customAuthenticationErrorStringForError:(id)a3 authScheme:(id)a4
{
  v4 = [a3 mf_shortDescription];
  if (![v4 length])
  {
    v5 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");

    v4 = v5;
  }

  return v4;
}

- (id)errorForResponse:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 status];
  v5 = v4 - 530;
  if ((v4 - 530) > 8 || ((1 << (v4 - 18)) & 0x111) == 0)
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
  v11 = [(DeliveryAccount *)self displayHostname];
  v12 = [v10 stringWithFormat:v8, v11];

  v18 = @"UserFriendlyErrorDescription";
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
  v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v12 title:v14 userInfo:v13];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setSupportsOutboxCopy:(BOOL)a3
{
  if (a3)
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

- (id)authenticatedConnection:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [(SMTPAccount *)self mf_lock];
  if (a3)
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
      v9 = v5;
      goto LABEL_15;
    }
  }

  v9 = [(MFAccount *)self _newConnection];
  if (v9)
  {
    if ([(MFAccount *)self _connectAndAuthenticate:v9])
    {
      v10 = [(MFSMTPConnection *)v9 maximumMessageBytes];
      if (v10)
      {
        [(DeliveryAccount *)self setMaximumMessageBytes:v10];
      }

      [(SMTPAccount *)self setSupportsPipelining:[(MFSMTPConnection *)v9 supportsPipelining]];
      [(SMTPAccount *)self setSupportsOutboxCopy:[(MFSMTPConnection *)v9 supportsOutboxCopy]];
    }

    else
    {

      v9 = 0;
    }
  }

LABEL_15:
  v11 = +[SMTPAccount log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MFSMTPConnection *)self->_connection domainName];
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "_connection domain name: %{public}@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)connectionExpired:(id)a3
{
  timer = self->_timer;
  self->_timer = 0;

  [(SMTPAccount *)self mf_lock];
  v9 = self->_connection;
  connection = self->_connection;
  self->_connection = 0;

  v6 = [(SMTPAccount *)self mf_unlock];
  if (v9)
  {
    v7 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel_disconnect_ target:self object:?];
    v8 = +[MFInvocationQueue sharedInvocationQueue];
    [v8 addInvocation:v7];
  }

  MEMORY[0x1EEE66C38](v6);
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

- (void)checkInConnection:(id)a3
{
  v10 = a3;
  v5 = MFUserAgent();
  v6 = [v5 isMobileMail];

  if (v6)
  {
    [(SMTPAccount *)self mf_lock];
    connection = self->_connection;
    if (!connection)
    {
      objc_storeStrong(&self->_connection, a3);
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
    [v10 quit];
  }
}

- (void)releaseAllForcedConnections
{
  v2.receiver = self;
  v2.super_class = SMTPAccount;
  [(MFAccount *)&v2 releaseAllForcedConnections];
}

@end