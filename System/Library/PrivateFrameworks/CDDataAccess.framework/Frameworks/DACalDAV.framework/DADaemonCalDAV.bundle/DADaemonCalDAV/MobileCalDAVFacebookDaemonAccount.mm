@interface MobileCalDAVFacebookDaemonAccount
- (BOOL)_rem_updateAccountProperties;
- (id)host;
@end

@implementation MobileCalDAVFacebookDaemonAccount

- (id)host
{
  if ((+[DABehaviorOptions useThunderhillBetaServers]& 1) != 0)
  {
    host = @"webdav.beta.facebook.com";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVFacebookDaemonAccount;
    host = [(MobileCalDAVFacebookDaemonAccount *)&v5 host];
  }

  return host;
}

- (BOOL)_rem_updateAccountProperties
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v3, v4))
  {
    accountDescription = [(MobileCalDAVFacebookDaemonAccount *)self accountDescription];
    *buf = 138412290;
    v9 = accountDescription;
    _os_log_impl(&dword_0, v3, v4, "XXXXXXXXX: remindd.DataAccess should disable add/modify/delete calendars for Facebook CalDAV account: %@.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = MobileCalDAVFacebookDaemonAccount;
  return [(MobileCalDAVFacebookDaemonAccount *)&v7 _rem_updateAccountProperties];
}

@end