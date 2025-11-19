@interface CardDAVFacebookDaemonAccount
- (id)host;
@end

@implementation CardDAVFacebookDaemonAccount

- (id)host
{
  if ((+[DABehaviorOptions useThunderhillBetaServers]& 1) != 0)
  {
    v3 = @"webdav.beta.facebook.com";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CardDAVFacebookDaemonAccount;
    v3 = [(CardDAVFacebookDaemonAccount *)&v5 host];
  }

  return v3;
}

@end