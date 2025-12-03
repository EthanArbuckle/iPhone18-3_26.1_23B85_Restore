@interface _MFGmailClientTokenAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFGmailClientTokenAuthenticator

- (id)responseForServerData:(id)data
{
  if ([(ECSASLAuthenticator *)self authenticationState]== 4)
  {
    goto LABEL_4;
  }

  if (self->_sentResponse)
  {
    [(ECSASLAuthenticator *)self setAuthenticationState:3];
LABEL_4:
    data = 0;
    goto LABEL_14;
  }

  account = [(ECSASLAuthenticator *)self account];
  if ([account conformsToProtocol:&unk_1F2781C58])
  {
    username = [account username];
    password = [account password];
    clientToken = [account clientToken];
    v9 = clientToken;
    if (username && password && clientToken)
    {
      data = [MEMORY[0x1E695DF88] data];
      v14 = 0;
      [data appendBytes:&v14 length:1];
      v10 = [username dataUsingEncoding:4];
      [data appendData:v10];

      [data appendBytes:&v14 length:1];
      v11 = [password dataUsingEncoding:4];
      [data appendData:v11];

      [data appendBytes:&v14 length:1];
      v12 = [v9 dataUsingEncoding:4];
      [data appendData:v12];

      self->_sentResponse = 1;
    }

    else
    {
      [(ECSASLAuthenticator *)self setMissingPasswordError];
      [(ECSASLAuthenticator *)self setAuthenticationState:2];
      data = 0;
    }
  }

  else
  {
    [(ECSASLAuthenticator *)self setAuthenticationState:3];
    data = 0;
  }

LABEL_14:

  return data;
}

@end