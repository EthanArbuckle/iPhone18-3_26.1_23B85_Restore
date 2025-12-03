@interface _MFLoginAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFLoginAuthenticator

- (id)responseForServerData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  self->_justSentPassword = 0;
  if (!dataCopy)
  {
    goto LABEL_5;
  }

  bytes = [dataCopy bytes];
  if ([v5 length] < 4)
  {
    goto LABEL_5;
  }

  if (!strncasecmp(bytes, "user", 4uLL))
  {
    account = [(ECSASLAuthenticator *)self account];
    username = [account username];
    v11 = [username dataUsingEncoding:4];
  }

  else
  {
    if (strncasecmp(bytes, "pass", 4uLL))
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    self->_justSentPassword = 1;
    account = [(ECSASLAuthenticator *)self account];
    username = [account password];
    v11 = [username dataUsingEncoding:4];
  }

  v7 = v11;

LABEL_6:

  return v7;
}

@end