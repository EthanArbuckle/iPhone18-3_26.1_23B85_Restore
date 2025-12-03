@interface CoreDAVDiscoveryAccountInfo
- (BOOL)handleAuthenticateAgainstProtectionSpace:(id)space;
- (BOOL)handleShouldUseCredentialStorage;
- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler;
- (BOOL)renewCredential;
- (BOOL)shouldHandleHTTPCookiesForURL:(id)l;
- (BOOL)shouldRetryUnauthorizedTask:(id)task;
- (BOOL)shouldSendClientInfoHeaderForURL:(id)l;
- (BOOL)shouldTryRenewingCredential;
- (BOOL)shouldUseOpportunisticSockets;
- (CoreDAVDiscoveryAccountInfo)initWithAccountInfoProvider:(id)provider;
- (NSString)description;
- (__CFURLStorageSession)copyStorageSession;
- (id)additionalHeaderValues;
- (id)clientCertificateInfoProvider;
- (id)clientToken;
- (id)customConnectionProperties;
- (id)getAppleIDSession;
- (id)oauthInfoProvider;
- (id)url;
- (void)clientTokenRequestedByServer;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block;
@end

@implementation CoreDAVDiscoveryAccountInfo

- (CoreDAVDiscoveryAccountInfo)initWithAccountInfoProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = CoreDAVDiscoveryAccountInfo;
  v5 = [(CoreDAVDiscoveryAccountInfo *)&v14 init];
  if (v5)
  {
    scheme = [providerCopy scheme];
    [(CoreDAVDiscoveryAccountInfo *)v5 setScheme:scheme];

    host = [providerCopy host];
    [(CoreDAVDiscoveryAccountInfo *)v5 setHost:host];

    -[CoreDAVDiscoveryAccountInfo setPort:](v5, "setPort:", [providerCopy port]);
    serverRoot = [providerCopy serverRoot];
    [(CoreDAVDiscoveryAccountInfo *)v5 setServerRoot:serverRoot];

    user = [providerCopy user];
    [(CoreDAVDiscoveryAccountInfo *)v5 setUser:user];

    password = [providerCopy password];
    [(CoreDAVDiscoveryAccountInfo *)v5 setPassword:password];

    userAgentHeader = [providerCopy userAgentHeader];
    [(CoreDAVDiscoveryAccountInfo *)v5 setUserAgentHeader:userAgentHeader];

    accountID = [providerCopy accountID];
    [(CoreDAVDiscoveryAccountInfo *)v5 setAccountID:accountID];

    [(CoreDAVDiscoveryAccountInfo *)v5 setBackingAccountInfoProvider:providerCopy];
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15.receiver = self;
  v15.super_class = CoreDAVDiscoveryAccountInfo;
  v4 = [(CoreDAVDiscoveryAccountInfo *)&v15 description];
  [v3 appendFormat:@"[%@]", v4];

  scheme = [(CoreDAVDiscoveryAccountInfo *)self scheme];
  [v3 appendFormat:@"\n  Scheme: [%@]", scheme];

  host = [(CoreDAVDiscoveryAccountInfo *)self host];
  [v3 appendFormat:@"\n  Host: [%@]", host];

  [v3 appendFormat:@"\n  Port: [%ld]", -[CoreDAVDiscoveryAccountInfo port](self, "port")];
  serverRoot = [(CoreDAVDiscoveryAccountInfo *)self serverRoot];
  [v3 appendFormat:@"\n  Server root: [%@]", serverRoot];

  user = [(CoreDAVDiscoveryAccountInfo *)self user];
  [v3 appendFormat:@"\n  User: [%@]", user];

  accountID = [(CoreDAVDiscoveryAccountInfo *)self accountID];
  [v3 appendFormat:@"\n  Account ID: [%@]", accountID];

  principalURL = [(CoreDAVDiscoveryAccountInfo *)self principalURL];
  [v3 appendFormat:@"\n  Principal URL: [%@]", principalURL];

  serverHeaders = [(CoreDAVDiscoveryAccountInfo *)self serverHeaders];
  [v3 appendFormat:@"\n  Server headers: [%@]", serverHeaders];

  serverComplianceClasses = [(CoreDAVDiscoveryAccountInfo *)self serverComplianceClasses];
  [v3 appendFormat:@"\n  Server compliance classes: [%@]", serverComplianceClasses];

  userAgentHeader = [(CoreDAVDiscoveryAccountInfo *)self userAgentHeader];
  [v3 appendFormat:@"\n  User agent header: [%@]", userAgentHeader];

  return v3;
}

- (id)url
{
  if ([(CoreDAVDiscoveryAccountInfo *)self port])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CoreDAVDiscoveryAccountInfo port](self, "port")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x277CBEBC0];
  scheme = [(CoreDAVDiscoveryAccountInfo *)self scheme];
  user = [(CoreDAVDiscoveryAccountInfo *)self user];
  host = [(CoreDAVDiscoveryAccountInfo *)self host];
  serverRoot = [(CoreDAVDiscoveryAccountInfo *)self serverRoot];
  v9 = [v4 CDVURLWithScheme:scheme user:user password:0 host:host port:v3 path:serverRoot];

  return v9;
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(CoreDAVDiscoveryAccountInfo *)self setShouldFailAllTasks:1];
  v4 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 2);
    v4 = blockCopy;
  }
}

- (id)additionalHeaderValues
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    additionalHeaderValues = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider additionalHeaderValues];
  }

  else
  {
    additionalHeaderValues = 0;
  }

  return additionalHeaderValues;
}

- (void)clientTokenRequestedByServer
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_backingAccountInfoProvider;

    [(CoreDAVAccountInfoProvider *)v4 clientTokenRequestedByServer];
  }
}

- (id)clientToken
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    clientToken = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider clientToken];
  }

  else
  {
    clientToken = 0;
  }

  return clientToken;
}

- (id)clientCertificateInfoProvider
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    clientCertificateInfoProvider = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider clientCertificateInfoProvider];
  }

  else
  {
    clientCertificateInfoProvider = 0;
  }

  return clientCertificateInfoProvider;
}

- (id)oauthInfoProvider
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    oauthInfoProvider = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider oauthInfoProvider];
  }

  else
  {
    oauthInfoProvider = 0;
  }

  return oauthInfoProvider;
}

- (BOOL)handleTrustChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider handleTrustChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = +[CoreDAVLogging sharedLogging];
    v11 = [v10 logHandleForAccountInfoProvider:0];
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "BackingAccountInfoProvider doesn't know how to handle a trust challenge, so we're just going to have to cancel.", v14, 2u);
    }

    handlerCopy[2](handlerCopy, 2, 0);
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldRetryUnauthorizedTask:(id)task
{
  taskCopy = task;
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider shouldRetryUnauthorizedTask:taskCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldTryRenewingCredential
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_backingAccountInfoProvider;

  return [(CoreDAVAccountInfoProvider *)v4 shouldTryRenewingCredential];
}

- (BOOL)renewCredential
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_backingAccountInfoProvider;

  return [(CoreDAVAccountInfoProvider *)v4 renewCredential];
}

- (BOOL)handleAuthenticateAgainstProtectionSpace:(id)space
{
  v20 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  authenticationMethod = [spaceCopy authenticationMethod];
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    self = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider handleAuthenticateAgainstProtectionSpace:spaceCopy];
    v7 = +[CoreDAVLogging sharedLogging];
    v8 = [v7 logHandleForAccountInfoProvider:0];
    v9 = v8;
    if (!v8 || !os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:self];
    v16 = 138543618;
    v17 = authenticationMethod;
    v18 = 2114;
    v19 = v10;
    v11 = "_backingAccountInfoProvider: Can authenticate against protection space %{public}@? %{public}@";
LABEL_14:
    _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, v11, &v16, 0x16u);

LABEL_15:
    goto LABEL_16;
  }

  if (![authenticationMethod isEqualToString:*MEMORY[0x277CBAAF8]])
  {
    if ([authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]] & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x277CBAAE0]))
    {
      self = 1;
    }

    else
    {
      self = [authenticationMethod isEqualToString:*MEMORY[0x277CBAAE8]];
    }

    v7 = +[CoreDAVLogging sharedLogging];
    v13 = [v7 logHandleForAccountInfoProvider:0];
    v9 = v13;
    if (!v13 || !os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:self];
    v16 = 138543618;
    v17 = authenticationMethod;
    v18 = 2114;
    v19 = v10;
    v11 = "CoreDAVDiscoveryAccountInfo: Can authenticate against protection space %{public}@? %{public}@";
    goto LABEL_14;
  }

  v12 = self->_backingAccountInfoProvider;
  LOBYTE(self) = objc_opt_respondsToSelector();
LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
  return self & 1;
}

- (BOOL)handleShouldUseCredentialStorage
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = self->_backingAccountInfoProvider;

  return [(CoreDAVAccountInfoProvider *)v4 handleShouldUseCredentialStorage];
}

- (BOOL)shouldHandleHTTPCookiesForURL:(id)l
{
  lCopy = l;
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider shouldHandleHTTPCookiesForURL:lCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldSendClientInfoHeaderForURL:(id)l
{
  lCopy = l;
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider shouldSendClientInfoHeaderForURL:lCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (__CFURLStorageSession)copyStorageSession
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_backingAccountInfoProvider;

  return [(CoreDAVAccountInfoProvider *)v4 copyStorageSession];
}

- (BOOL)shouldUseOpportunisticSockets
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_backingAccountInfoProvider;

  return [(CoreDAVAccountInfoProvider *)v4 shouldUseOpportunisticSockets];
}

- (id)getAppleIDSession
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    getAppleIDSession = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider getAppleIDSession];
  }

  else
  {
    getAppleIDSession = 0;
  }

  return getAppleIDSession;
}

- (id)customConnectionProperties
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    customConnectionProperties = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider customConnectionProperties];
  }

  else
  {
    customConnectionProperties = 0;
  }

  return customConnectionProperties;
}

@end