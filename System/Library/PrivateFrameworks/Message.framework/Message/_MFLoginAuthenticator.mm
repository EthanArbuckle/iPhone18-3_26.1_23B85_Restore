@interface _MFLoginAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFLoginAuthenticator

- (id)responseForServerData:(id)a3
{
  v4 = a3;
  v5 = v4;
  self->_justSentPassword = 0;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = [v4 bytes];
  if ([v5 length] < 4)
  {
    goto LABEL_5;
  }

  if (!strncasecmp(v6, "user", 4uLL))
  {
    v9 = [(ECSASLAuthenticator *)self account];
    v10 = [v9 username];
    v11 = [v10 dataUsingEncoding:4];
  }

  else
  {
    if (strncasecmp(v6, "pass", 4uLL))
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    self->_justSentPassword = 1;
    v9 = [(ECSASLAuthenticator *)self account];
    v10 = [v9 password];
    v11 = [v10 dataUsingEncoding:4];
  }

  v7 = v11;

LABEL_6:

  return v7;
}

@end