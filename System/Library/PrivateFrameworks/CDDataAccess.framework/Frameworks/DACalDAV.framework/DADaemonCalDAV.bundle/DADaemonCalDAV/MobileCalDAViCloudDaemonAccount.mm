@interface MobileCalDAViCloudDaemonAccount
- (BOOL)useSSL;
- (MobileCalDAViCloudDaemonAccount)initWithBackingAccountInfo:(id)info;
- (id)additionalHeaderValues;
- (id)getAppleIDSession;
- (id)host;
- (id)principalURL;
- (int64_t)port;
- (void)noteHomeSetOnDifferentHost:(id)host;
- (void)setHost:(id)host;
@end

@implementation MobileCalDAViCloudDaemonAccount

- (MobileCalDAViCloudDaemonAccount)initWithBackingAccountInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = MobileCalDAViCloudDaemonAccount;
  v3 = [(MobileCalDAVDaemonAccount *)&v7 initWithBackingAccountInfo:info];
  v4 = v3;
  if (v3)
  {
    host = v3->_host;
    v3->_host = 0;

    v4->_useSSL = -1;
    v4->_port = -1;
  }

  return v4;
}

- (void)setHost:(id)host
{
  if (self->_host != host)
  {
    v4 = [host copy];
    host = self->_host;
    self->_host = v4;

    _objc_release_x1();
  }
}

- (id)host
{
  host = self->_host;
  if (host)
  {
    v3 = host;
  }

  else
  {
    v5 = [(MobileCalDAViCloudDaemonAccount *)self hostFromDataclassPropertiesForDataclass:kAccountDataclassCalendars];
    v6 = v5;
    if (v5)
    {
      host = v5;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = MobileCalDAViCloudDaemonAccount;
      host = [(MobileCalDAViCloudDaemonAccount *)&v9 host];
    }

    v3 = host;
  }

  return v3;
}

- (BOOL)useSSL
{
  useSSL = self->_useSSL;
  if (useSSL < 0)
  {
    return [(MobileCalDAViCloudDaemonAccount *)self useSSLFromDataclassPropertiesForDataclass:kAccountDataclassCalendars];
  }

  else
  {
    return useSSL != 0;
  }
}

- (int64_t)port
{
  if (self->_port < 0)
  {
    return [(MobileCalDAViCloudDaemonAccount *)self portFromDataclassPropertiesForDataclass:kAccountDataclassCalendars];
  }

  else
  {
    return self->_port;
  }
}

- (id)principalURL
{
  v6.receiver = self;
  v6.super_class = MobileCalDAViCloudDaemonAccount;
  principalURL = [(MobileCalDAViCloudDaemonAccount *)&v6 principalURL];
  v4 = [(MobileCalDAViCloudDaemonAccount *)self addUsernameToURL:principalURL];

  return v4;
}

- (void)noteHomeSetOnDifferentHost:(id)host
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, v5, "Home set is on a different host. Fetching new AppleAccount properties", buf, 2u);
  }

  v6 = sharedDAAccountStore();
  backingAccountInfo = [(MobileCalDAViCloudDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2FC4;
  v9[3] = &unk_20550;
  v9[4] = self;
  [v6 aa_updatePropertiesForAppleAccount:parentAccount completion:v9];
}

- (id)additionalHeaderValues
{
  v11.receiver = self;
  v11.super_class = MobileCalDAViCloudDaemonAccount;
  additionalHeaderValues = [(MobileCalDAViCloudDaemonAccount *)&v11 additionalHeaderValues];
  v4 = +[DARefreshManager sharedManager];
  mainPrincipal = [(MobileCalDAViCloudDaemonAccount *)self mainPrincipal];
  aPSEnv = [mainPrincipal APSEnv];
  v7 = [v4 pushTokenForEnvironment:aPSEnv];

  if ([v7 length])
  {
    v8 = [additionalHeaderValues mutableCopy];
    if (!v8)
    {
      v8 = objc_opt_new();
    }

    da_lowercaseHexStringWithoutSpaces = [v7 da_lowercaseHexStringWithoutSpaces];
    [v8 setValue:da_lowercaseHexStringWithoutSpaces forKey:CalDAVHTTPHeader_XAppleDAVPushToken];

    additionalHeaderValues = v8;
  }

  return additionalHeaderValues;
}

- (id)getAppleIDSession
{
  if (qword_26A68 != -1)
  {
    sub_10144();
  }

  v3 = qword_26A60;

  return v3;
}

@end