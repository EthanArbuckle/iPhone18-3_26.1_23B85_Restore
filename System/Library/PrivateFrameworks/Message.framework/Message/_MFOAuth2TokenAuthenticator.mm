@interface _MFOAuth2TokenAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFOAuth2TokenAuthenticator

- (id)responseForServerData:(id)data
{
  dataCopy = data;
  if ([(ECSASLAuthenticator *)self authenticationState]> 1)
  {
LABEL_7:
    data = 0;
    goto LABEL_16;
  }

  if (self->_sentResponse)
  {
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    [(ECSASLAuthenticator *)self setAuthenticationState:v6];

    goto LABEL_7;
  }

  account = [(ECSASLAuthenticator *)self account];
  if ([account conformsToProtocol:&unk_1F277AC40])
  {
    username = [account username];
    oauth2Token = [account oauth2Token];
    v11 = oauth2Token;
    if (username && oauth2Token)
    {
      data = [MEMORY[0x1E695DF88] data];
      v17 = 1;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user=%@", username];
      v13 = [v12 dataUsingEncoding:4];
      [data appendData:v13];

      [data appendBytes:&v17 length:1];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"auth=Bearer %@", v11];
      v15 = [v14 dataUsingEncoding:4];
      [data appendData:v15];

      [data appendBytes:&v17 length:1];
      [data appendBytes:&v17 length:1];
      self->_sentResponse = 1;
    }

    else
    {
      [(ECSASLAuthenticator *)self setMissingPasswordError];
      data = 0;
    }
  }

  else
  {
    [(ECSASLAuthenticator *)self setAuthenticationState:3];
    data = 0;
  }

LABEL_16:

  return data;
}

@end