@interface _MFLoginAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFLoginAuthenticator

- (id)responseForServerData:(id)a3
{
  *(&self->super._authenticationState + 4) = 0;
  if (!a3)
  {
    return 0;
  }

  v5 = [a3 bytes];
  if ([a3 length] < 4)
  {
    return 0;
  }

  if (!strncasecmp(v5, "user", 4uLL))
  {
    v7 = [-[MFSASLAuthenticator account](self "account")];
  }

  else
  {
    if (strncasecmp(v5, "pass", 4uLL))
    {
      return 0;
    }

    *(&self->super._authenticationState + 4) = 1;
    v7 = [-[MFSASLAuthenticator account](self "account")];
  }

  return [v7 dataUsingEncoding:4];
}

@end