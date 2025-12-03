@interface CardDAVFacebookDaemonAccount
- (id)host;
@end

@implementation CardDAVFacebookDaemonAccount

- (id)host
{
  if ((+[DABehaviorOptions useThunderhillBetaServers]& 1) != 0)
  {
    host = @"webdav.beta.facebook.com";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CardDAVFacebookDaemonAccount;
    host = [(CardDAVFacebookDaemonAccount *)&v5 host];
  }

  return host;
}

@end