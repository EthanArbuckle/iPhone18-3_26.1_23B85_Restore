@interface SMTPAccount
+ (BOOL)isCommonPortNumber:(unsigned int)number;
+ (void)registerAppleServiceDeliveryHostname:(id)hostname;
- (BOOL)_isAppleServiceDeliveryHostname:(id)hostname;
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
- (void)disconnect:(id)disconnect;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)setPreferredAuthScheme:(id)scheme;
- (void)setSupportsOutboxCopy:(BOOL)copy;
- (void)setTimer;
@end

@implementation SMTPAccount

+ (void)registerAppleServiceDeliveryHostname:(id)hostname
{
  pthread_mutex_lock(&__asdHostnamesLock);
  v4 = __asdHostnames;
  if (!__asdHostnames)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    __asdHostnames = v4;
  }

  [v4 addObject:hostname];

  pthread_mutex_unlock(&__asdHostnamesLock);
}

- (Class)deliveryClass
{
  result = self->_deliveryClass;
  if (!result)
  {
    return objc_opt_class();
  }

  return result;
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
  v3.receiver = self;
  v3.super_class = SMTPAccount;
  result = [(MFAccount *)&v3 connectionClass];
  if (!result)
  {
    return objc_opt_class();
  }

  return result;
}

- (id)connectionSettingsForAuthentication:(BOOL)authentication secure:(id)secure insecure:(id)insecure
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  portNumber = [defaultConnectionSettings portNumber];
  if ([defaultConnectionSettings usesSSL])
  {
    [v7 addObject:{-[SMTPAccount _defaultSettingsWithPort:useSSL:directSSL:](self, "_defaultSettingsWithPort:useSSL:directSSL:", portNumber, 0, 0)}];
    v12 = [defaultConnectionSettings tryDirectSSL] ^ 1;
  }

  else
  {
    [v8 addObject:{-[SMTPAccount _defaultSettingsWithPort:useSSL:directSSL:](self, "_defaultSettingsWithPort:useSSL:directSSL:", portNumber, 1, 1)}];
    v12 = 0;
  }

  [v8 addObject:{-[SMTPAccount _defaultSettingsWithPort:useSSL:directSSL:](self, "_defaultSettingsWithPort:useSSL:directSSL:", portNumber, 1, v12)}];
  for (i = 0; i != 3; ++i)
  {
    v14 = dword_258C4B548[i];
    if (portNumber != v14)
    {
      [v8 addObject:{-[SMTPAccount _defaultSettingsWithPort:useSSL:directSSL:](self, "_defaultSettingsWithPort:useSSL:directSSL:", dword_258C4B548[i], 1, 1)}];
      [v8 addObject:{-[SMTPAccount _defaultSettingsWithPort:useSSL:directSSL:](self, "_defaultSettingsWithPort:useSSL:directSSL:", v14, 1, 0)}];
      [v7 addObject:{-[SMTPAccount _defaultSettingsWithPort:useSSL:directSSL:](self, "_defaultSettingsWithPort:useSSL:directSSL:", v14, 0, 0)}];
    }
  }

  v15 = v8;
  v16 = v7;
  if (authentication || (v17 = [defaultConnectionSettings usesSSL], v15 = v7, v16 = v8, (v17 & 1) == 0))
  {
    [v9 addObjectsFromArray:v15];
  }

  [v9 addObjectsFromArray:v16];
  if (secure)
  {
    [secure addObjectsFromArray:v8];
  }

  if (insecure)
  {
    [insecure addObjectsFromArray:v7];
  }

  return v9;
}

- (id)secureConnectionSettings
{
  array = [MEMORY[0x277CBEB18] array];
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  if ([defaultConnectionSettings usesSSL])
  {
    [array addObject:defaultConnectionSettings];
  }

  [(SMTPAccount *)self connectionSettingsForAuthentication:1 secure:array insecure:0];
  return array;
}

- (id)insecureConnectionSettings
{
  array = [MEMORY[0x277CBEB18] array];
  defaultConnectionSettings = [(MFAccount *)self defaultConnectionSettings];
  if (([defaultConnectionSettings usesSSL] & 1) == 0)
  {
    [array addObject:defaultConnectionSettings];
  }

  [(SMTPAccount *)self connectionSettingsForAuthentication:1 secure:0 insecure:array];
  return array;
}

- (BOOL)_shouldTryDirectSSLConnectionOnPort:(unsigned int)port
{
  v4 = [(MFAccount *)self _objectForAccountInfoKey:@"SSLIsDirect"];
  if (v4)
  {

    LOBYTE(v5) = [v4 BOOLValue];
  }

  else
  {
    return port == 465;
  }

  return v5;
}

- (id)preferredAuthScheme
{
  if (![(DeliveryAccount *)self shouldUseAuthentication])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SMTPAccount;
  result = [(MFAccount *)&v4 preferredAuthScheme];
  if (!result)
  {
    return [MFAuthScheme schemeWithName:&stru_2869ED3E0];
  }

  return result;
}

- (void)setPreferredAuthScheme:(id)scheme
{
  [(DeliveryAccount *)self setShouldUseAuthentication:scheme != 0];
  v5.receiver = self;
  v5.super_class = SMTPAccount;
  [(MFAccount *)&v5 setPreferredAuthScheme:scheme];
}

- (id)customAuthenticationErrorStringForError:(id)error authScheme:(id)scheme
{
  mf_shortDescription = [error mf_shortDescription];
  if ([mf_shortDescription length])
  {
    return mf_shortDescription;
  }

  return MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
}

- (id)errorForResponse:(id)response
{
  v11[1] = *MEMORY[0x277D85DE8];
  status = [response status];
  if ((status - 530) > 8 || ((1 << (status - 18)) & 0x111) == 0)
  {
    v6 = @"FAILED_SEND";
    v7 = @"Check the account settings for the outgoing server “%@”.";
  }

  else
  {
    v6 = @"FAILED_SEND_SSL_NEEDED";
    v7 = @"Check the SSL setting for the outgoing server “%@”.";
  }

  v10 = @"UserFriendlyErrorDescription";
  v11[0] = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(v6, v7, @"Delayed", -[DeliveryAccount displayHostname](self, "displayHostname")];
  result = +[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", @"MFMessageErrorDomain", 1032, v11[0], MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed"), [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1]);
  v9 = *MEMORY[0x277D85DE8];
  return result;
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

  *(self + 72) = *(self + 72) & 0xFD | v3;
}

- (__CFString)connectionServiceType
{
  v4.receiver = self;
  v4.super_class = SMTPAccount;
  result = [(MFAccount *)&v4 connectionServiceType];
  if ((*(self + 72) & 4) != 0)
  {
    return *MEMORY[0x277CC39E0];
  }

  return result;
}

- (id)authenticatedConnection:(BOOL)connection
{
  _MFLockGlobalLock();
  if (connection)
  {
    connection = 0;
    v6 = 4;
  }

  else
  {
    v6 = 0;
    connection = self->_connection;
  }

  self->_connection = 0;
  *(self + 72) = *(self + 72) & 0xFB | v6;
  _MFUnlockGlobalLock();
  if (connection)
  {
    v7 = time(0);
    if (v7 <= [(MFSMTPConnection *)connection timeLastCommandWasSent]+ 30 || [(MFSMTPConnection *)connection noop]== 2)
    {
      goto LABEL_14;
    }
  }

  connection = [(MFAccount *)self _newConnection];
  if (connection)
  {
    if ([(MFAccount *)self _connectAndAuthenticate:connection])
    {
      maximumMessageBytes = [(MFSMTPConnection *)connection maximumMessageBytes];
      if (maximumMessageBytes)
      {
        [(DeliveryAccount *)self setMaximumMessageBytes:maximumMessageBytes];
      }

      [(SMTPAccount *)self setSupportsPipelining:[(MFSMTPConnection *)connection supportsPipelining]];
      [(SMTPAccount *)self setSupportsOutboxCopy:[(MFSMTPConnection *)connection supportsOutboxCopy]];
    }

    else
    {

      connection = 0;
    }
  }

LABEL_14:

  return connection;
}

- (void)disconnect:(id)disconnect
{
  [disconnect quit];
}

- (void)connectionExpired:(id)expired
{
  self->_timer = 0;
  _MFLockGlobalLock();
  connection = self->_connection;
  self->_connection = 0;
  _MFUnlockGlobalLock();
  if (connection)
  {
    v5 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_disconnect_ target:self object:connection];
    v6 = +[MFInvocationQueue sharedInvocationQueue];

    [v6 addInvocation:v5];
  }
}

- (void)setTimer
{
  _MFLockGlobalLock();
  [(NSTimer *)self->_timer invalidate];
  self->_timer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_connectionExpired_ selector:0 userInfo:0 repeats:60.0];

  _MFUnlockGlobalLock();
}

- (void)checkInConnection:(id)connection
{
  if ([MFUserAgent() isMobileMail])
  {
    _MFLockGlobalLock();
    connection = self->_connection;
    if (!connection)
    {
      self->_connection = connection;
    }

    _MFUnlockGlobalLock();
    v6 = time(0);
    if (!connection)
    {
      v7 = v6;
      if (v6 > self->_lastTimerSetTime + 10)
      {
        [(SMTPAccount *)self performSelectorOnMainThread:sel_setTimer withObject:0 waitUntilDone:0];
        self->_lastTimerSetTime = v7;
      }
    }
  }

  else
  {

    [connection quit];
  }
}

- (void)releaseAllConnections
{
  _MFLockGlobalLock();
  [(NSTimer *)self->_timer invalidate];
  self->_timer = 0;
  connection = self->_connection;
  self->_connection = 0;
  _MFUnlockGlobalLock();
  [(MFSMTPConnection *)connection quit];

  v4.receiver = self;
  v4.super_class = SMTPAccount;
  [(MFAccount *)&v4 releaseAllConnections];
}

- (void)releaseAllForcedConnections
{
  v2.receiver = self;
  v2.super_class = SMTPAccount;
  [(MFAccount *)&v2 releaseAllForcedConnections];
}

- (BOOL)_isAppleServiceDeliveryHostname:(id)hostname
{
  pthread_mutex_lock(&__asdHostnamesLock);
  LOBYTE(hostname) = [__asdHostnames containsObject:hostname];
  pthread_mutex_unlock(&__asdHostnamesLock);
  return hostname;
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];

  v3.receiver = self;
  v3.super_class = SMTPAccount;
  [(MFAccount *)&v3 dealloc];
}

@end