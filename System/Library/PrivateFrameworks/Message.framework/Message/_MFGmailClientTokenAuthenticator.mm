@interface _MFGmailClientTokenAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFGmailClientTokenAuthenticator

- (id)responseForServerData:(id)a3
{
  if ([(ECSASLAuthenticator *)self authenticationState]== 4)
  {
    goto LABEL_4;
  }

  if (self->_sentResponse)
  {
    [(ECSASLAuthenticator *)self setAuthenticationState:3];
LABEL_4:
    v4 = 0;
    goto LABEL_14;
  }

  v5 = [(ECSASLAuthenticator *)self account];
  if ([v5 conformsToProtocol:&unk_1F2781C58])
  {
    v6 = [v5 username];
    v7 = [v5 password];
    v8 = [v5 clientToken];
    v9 = v8;
    if (v6 && v7 && v8)
    {
      v4 = [MEMORY[0x1E695DF88] data];
      v14 = 0;
      [v4 appendBytes:&v14 length:1];
      v10 = [v6 dataUsingEncoding:4];
      [v4 appendData:v10];

      [v4 appendBytes:&v14 length:1];
      v11 = [v7 dataUsingEncoding:4];
      [v4 appendData:v11];

      [v4 appendBytes:&v14 length:1];
      v12 = [v9 dataUsingEncoding:4];
      [v4 appendData:v12];

      self->_sentResponse = 1;
    }

    else
    {
      [(ECSASLAuthenticator *)self setMissingPasswordError];
      [(ECSASLAuthenticator *)self setAuthenticationState:2];
      v4 = 0;
    }
  }

  else
  {
    [(ECSASLAuthenticator *)self setAuthenticationState:3];
    v4 = 0;
  }

LABEL_14:

  return v4;
}

@end