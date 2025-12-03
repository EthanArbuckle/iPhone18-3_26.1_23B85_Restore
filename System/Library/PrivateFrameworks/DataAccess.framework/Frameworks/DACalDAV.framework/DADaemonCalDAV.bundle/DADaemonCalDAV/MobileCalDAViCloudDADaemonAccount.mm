@interface MobileCalDAViCloudDADaemonAccount
- (BOOL)useSSL;
- (MobileCalDAViCloudDADaemonAccount)initWithBackingAccountInfo:(id)info;
- (id)additionalHeaderValues;
- (id)getAppleIDSession;
- (id)host;
- (id)principalURL;
- (int64_t)port;
- (void)noteHomeSetOnDifferentHost:(id)host;
- (void)setHost:(id)host;
@end

@implementation MobileCalDAViCloudDADaemonAccount

- (MobileCalDAViCloudDADaemonAccount)initWithBackingAccountInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = MobileCalDAViCloudDADaemonAccount;
  v3 = [(MobileCalDAVDADaemonAccount *)&v7 initWithBackingAccountInfo:info];
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
    v3 = [(MobileCalDAViCloudDADaemonAccount *)self hostFromDataclassPropertiesForDataclass:kAccountDataclassCalendars];
  }

  return v3;
}

- (BOOL)useSSL
{
  useSSL = self->_useSSL;
  if (useSSL < 0)
  {
    return [(MobileCalDAViCloudDADaemonAccount *)self useSSLFromDataclassPropertiesForDataclass:kAccountDataclassCalendars];
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
    return [(MobileCalDAViCloudDADaemonAccount *)self portFromDataclassPropertiesForDataclass:kAccountDataclassCalendars];
  }

  else
  {
    return self->_port;
  }
}

- (id)principalURL
{
  v6.receiver = self;
  v6.super_class = MobileCalDAViCloudDADaemonAccount;
  principalURL = [(MobileCalDAViCloudDADaemonAccount *)&v6 principalURL];
  v4 = [(MobileCalDAViCloudDADaemonAccount *)self addUsernameToURL:principalURL];

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
  backingAccountInfo = [(MobileCalDAViCloudDADaemonAccount *)self backingAccountInfo];
  calTopLevelAccount = [backingAccountInfo calTopLevelAccount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4570;
  v9[3] = &unk_28820;
  v9[4] = self;
  [v6 aa_updatePropertiesForAppleAccount:calTopLevelAccount completion:v9];
}

- (id)additionalHeaderValues
{
  v12.receiver = self;
  v12.super_class = MobileCalDAViCloudDADaemonAccount;
  additionalHeaderValues = [(MobileCalDAViCloudDADaemonAccount *)&v12 additionalHeaderValues];
  v4 = +[DARefreshManager sharedManager];
  mobileCalDAVAccount = [(MobileCalDAViCloudDADaemonAccount *)self mobileCalDAVAccount];
  mainPrincipal = [mobileCalDAVAccount mainPrincipal];
  aPSEnv = [mainPrincipal APSEnv];
  v8 = [v4 pushTokenForEnvironment:aPSEnv];

  if ([v8 length])
  {
    v9 = [additionalHeaderValues mutableCopy];
    if (!v9)
    {
      v9 = objc_opt_new();
    }

    da_lowercaseHexStringWithoutSpaces = [v8 da_lowercaseHexStringWithoutSpaces];
    [v9 setValue:da_lowercaseHexStringWithoutSpaces forKey:CalDAVHTTPHeader_XAppleDAVPushToken];

    additionalHeaderValues = v9;
  }

  return additionalHeaderValues;
}

- (id)getAppleIDSession
{
  if (qword_30C30 != -1)
  {
    sub_15DA8();
  }

  v3 = qword_30C28;

  return v3;
}

@end