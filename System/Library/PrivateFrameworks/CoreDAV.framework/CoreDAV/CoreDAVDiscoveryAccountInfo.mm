@interface CoreDAVDiscoveryAccountInfo
- (BOOL)handleAuthenticateAgainstProtectionSpace:(id)a3;
- (BOOL)handleShouldUseCredentialStorage;
- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4;
- (BOOL)renewCredential;
- (BOOL)shouldHandleHTTPCookiesForURL:(id)a3;
- (BOOL)shouldRetryUnauthorizedTask:(id)a3;
- (BOOL)shouldSendClientInfoHeaderForURL:(id)a3;
- (BOOL)shouldTryRenewingCredential;
- (BOOL)shouldUseOpportunisticSockets;
- (CoreDAVDiscoveryAccountInfo)initWithAccountInfoProvider:(id)a3;
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
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3;
@end

@implementation CoreDAVDiscoveryAccountInfo

- (CoreDAVDiscoveryAccountInfo)initWithAccountInfoProvider:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CoreDAVDiscoveryAccountInfo;
  v5 = [(CoreDAVDiscoveryAccountInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 scheme];
    [(CoreDAVDiscoveryAccountInfo *)v5 setScheme:v6];

    v7 = [v4 host];
    [(CoreDAVDiscoveryAccountInfo *)v5 setHost:v7];

    -[CoreDAVDiscoveryAccountInfo setPort:](v5, "setPort:", [v4 port]);
    v8 = [v4 serverRoot];
    [(CoreDAVDiscoveryAccountInfo *)v5 setServerRoot:v8];

    v9 = [v4 user];
    [(CoreDAVDiscoveryAccountInfo *)v5 setUser:v9];

    v10 = [v4 password];
    [(CoreDAVDiscoveryAccountInfo *)v5 setPassword:v10];

    v11 = [v4 userAgentHeader];
    [(CoreDAVDiscoveryAccountInfo *)v5 setUserAgentHeader:v11];

    v12 = [v4 accountID];
    [(CoreDAVDiscoveryAccountInfo *)v5 setAccountID:v12];

    [(CoreDAVDiscoveryAccountInfo *)v5 setBackingAccountInfoProvider:v4];
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

  v5 = [(CoreDAVDiscoveryAccountInfo *)self scheme];
  [v3 appendFormat:@"\n  Scheme: [%@]", v5];

  v6 = [(CoreDAVDiscoveryAccountInfo *)self host];
  [v3 appendFormat:@"\n  Host: [%@]", v6];

  [v3 appendFormat:@"\n  Port: [%ld]", -[CoreDAVDiscoveryAccountInfo port](self, "port")];
  v7 = [(CoreDAVDiscoveryAccountInfo *)self serverRoot];
  [v3 appendFormat:@"\n  Server root: [%@]", v7];

  v8 = [(CoreDAVDiscoveryAccountInfo *)self user];
  [v3 appendFormat:@"\n  User: [%@]", v8];

  v9 = [(CoreDAVDiscoveryAccountInfo *)self accountID];
  [v3 appendFormat:@"\n  Account ID: [%@]", v9];

  v10 = [(CoreDAVDiscoveryAccountInfo *)self principalURL];
  [v3 appendFormat:@"\n  Principal URL: [%@]", v10];

  v11 = [(CoreDAVDiscoveryAccountInfo *)self serverHeaders];
  [v3 appendFormat:@"\n  Server headers: [%@]", v11];

  v12 = [(CoreDAVDiscoveryAccountInfo *)self serverComplianceClasses];
  [v3 appendFormat:@"\n  Server compliance classes: [%@]", v12];

  v13 = [(CoreDAVDiscoveryAccountInfo *)self userAgentHeader];
  [v3 appendFormat:@"\n  User agent header: [%@]", v13];

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
  v5 = [(CoreDAVDiscoveryAccountInfo *)self scheme];
  v6 = [(CoreDAVDiscoveryAccountInfo *)self user];
  v7 = [(CoreDAVDiscoveryAccountInfo *)self host];
  v8 = [(CoreDAVDiscoveryAccountInfo *)self serverRoot];
  v9 = [v4 CDVURLWithScheme:v5 user:v6 password:0 host:v7 port:v3 path:v8];

  return v9;
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3
{
  v5 = a3;
  [(CoreDAVDiscoveryAccountInfo *)self setShouldFailAllTasks:1];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 2);
    v4 = v5;
  }
}

- (id)additionalHeaderValues
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider additionalHeaderValues];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v4 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider clientToken];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)clientCertificateInfoProvider
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider clientCertificateInfoProvider];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)oauthInfoProvider
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider oauthInfoProvider];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleTrustChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider handleTrustChallenge:v6 completionHandler:v7];
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

    v7[2](v7, 2, 0);
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldRetryUnauthorizedTask:(id)a3
{
  v4 = a3;
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider shouldRetryUnauthorizedTask:v4];
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

- (BOOL)handleAuthenticateAgainstProtectionSpace:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 authenticationMethod];
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    self = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider handleAuthenticateAgainstProtectionSpace:v4];
    v7 = +[CoreDAVLogging sharedLogging];
    v8 = [v7 logHandleForAccountInfoProvider:0];
    v9 = v8;
    if (!v8 || !os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:self];
    v16 = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v10;
    v11 = "_backingAccountInfoProvider: Can authenticate against protection space %{public}@? %{public}@";
LABEL_14:
    _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, v11, &v16, 0x16u);

LABEL_15:
    goto LABEL_16;
  }

  if (![v5 isEqualToString:*MEMORY[0x277CBAAF8]])
  {
    if ([v5 isEqualToString:*MEMORY[0x277CBAB00]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CBAAE0]))
    {
      self = 1;
    }

    else
    {
      self = [v5 isEqualToString:*MEMORY[0x277CBAAE8]];
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
    v17 = v5;
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

- (BOOL)shouldHandleHTTPCookiesForURL:(id)a3
{
  v4 = a3;
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider shouldHandleHTTPCookiesForURL:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldSendClientInfoHeaderForURL:(id)a3
{
  v4 = a3;
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider shouldSendClientInfoHeaderForURL:v4];
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
    v4 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider getAppleIDSession];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)customConnectionProperties
{
  backingAccountInfoProvider = self->_backingAccountInfoProvider;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CoreDAVAccountInfoProvider *)self->_backingAccountInfoProvider customConnectionProperties];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end