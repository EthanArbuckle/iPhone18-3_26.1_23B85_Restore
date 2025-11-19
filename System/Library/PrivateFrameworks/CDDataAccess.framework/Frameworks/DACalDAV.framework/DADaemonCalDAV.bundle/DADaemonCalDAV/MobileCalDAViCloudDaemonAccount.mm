@interface MobileCalDAViCloudDaemonAccount
- (BOOL)useSSL;
- (MobileCalDAViCloudDaemonAccount)initWithBackingAccountInfo:(id)a3;
- (id)additionalHeaderValues;
- (id)getAppleIDSession;
- (id)host;
- (id)principalURL;
- (int64_t)port;
- (void)noteHomeSetOnDifferentHost:(id)a3;
- (void)setHost:(id)a3;
@end

@implementation MobileCalDAViCloudDaemonAccount

- (MobileCalDAViCloudDaemonAccount)initWithBackingAccountInfo:(id)a3
{
  v7.receiver = self;
  v7.super_class = MobileCalDAViCloudDaemonAccount;
  v3 = [(MobileCalDAVDaemonAccount *)&v7 initWithBackingAccountInfo:a3];
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

- (void)setHost:(id)a3
{
  if (self->_host != a3)
  {
    v4 = [a3 copy];
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
      v7 = v5;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = MobileCalDAViCloudDaemonAccount;
      v7 = [(MobileCalDAViCloudDaemonAccount *)&v9 host];
    }

    v3 = v7;
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
  v3 = [(MobileCalDAViCloudDaemonAccount *)&v6 principalURL];
  v4 = [(MobileCalDAViCloudDaemonAccount *)self addUsernameToURL:v3];

  return v4;
}

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, v5, "Home set is on a different host. Fetching new AppleAccount properties", buf, 2u);
  }

  v6 = sharedDAAccountStore();
  v7 = [(MobileCalDAViCloudDaemonAccount *)self backingAccountInfo];
  v8 = [v7 parentAccount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2FC4;
  v9[3] = &unk_20550;
  v9[4] = self;
  [v6 aa_updatePropertiesForAppleAccount:v8 completion:v9];
}

- (id)additionalHeaderValues
{
  v11.receiver = self;
  v11.super_class = MobileCalDAViCloudDaemonAccount;
  v3 = [(MobileCalDAViCloudDaemonAccount *)&v11 additionalHeaderValues];
  v4 = +[DARefreshManager sharedManager];
  v5 = [(MobileCalDAViCloudDaemonAccount *)self mainPrincipal];
  v6 = [v5 APSEnv];
  v7 = [v4 pushTokenForEnvironment:v6];

  if ([v7 length])
  {
    v8 = [v3 mutableCopy];
    if (!v8)
    {
      v8 = objc_opt_new();
    }

    v9 = [v7 da_lowercaseHexStringWithoutSpaces];
    [v8 setValue:v9 forKey:CalDAVHTTPHeader_XAppleDAVPushToken];

    v3 = v8;
  }

  return v3;
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