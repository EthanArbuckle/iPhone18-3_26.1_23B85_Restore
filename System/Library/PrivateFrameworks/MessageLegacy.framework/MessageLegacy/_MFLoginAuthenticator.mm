@interface _MFLoginAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFLoginAuthenticator

- (id)responseForServerData:(id)data
{
  *(&self->super._authenticationState + 4) = 0;
  if (!data)
  {
    return 0;
  }

  bytes = [data bytes];
  if ([data length] < 4)
  {
    return 0;
  }

  if (!strncasecmp(bytes, "user", 4uLL))
  {
    v7 = [-[MFSASLAuthenticator account](self "account")];
  }

  else
  {
    if (strncasecmp(bytes, "pass", 4uLL))
    {
      return 0;
    }

    *(&self->super._authenticationState + 4) = 1;
    v7 = [-[MFSASLAuthenticator account](self "account")];
  }

  return [v7 dataUsingEncoding:4];
}

@end