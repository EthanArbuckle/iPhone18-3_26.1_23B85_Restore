@interface _MFOAuth2TokenAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFOAuth2TokenAuthenticator

- (id)responseForServerData:(id)a3
{
  v4 = a3;
  if ([(ECSASLAuthenticator *)self authenticationState]> 1)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_16;
  }

  if (self->_sentResponse)
  {
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:0];
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

  v8 = [(ECSASLAuthenticator *)self account];
  if ([v8 conformsToProtocol:&unk_1F277AC40])
  {
    v9 = [v8 username];
    v10 = [v8 oauth2Token];
    v11 = v10;
    if (v9 && v10)
    {
      v7 = [MEMORY[0x1E695DF88] data];
      v17 = 1;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user=%@", v9];
      v13 = [v12 dataUsingEncoding:4];
      [v7 appendData:v13];

      [v7 appendBytes:&v17 length:1];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"auth=Bearer %@", v11];
      v15 = [v14 dataUsingEncoding:4];
      [v7 appendData:v15];

      [v7 appendBytes:&v17 length:1];
      [v7 appendBytes:&v17 length:1];
      self->_sentResponse = 1;
    }

    else
    {
      [(ECSASLAuthenticator *)self setMissingPasswordError];
      v7 = 0;
    }
  }

  else
  {
    [(ECSASLAuthenticator *)self setAuthenticationState:3];
    v7 = 0;
  }

LABEL_16:

  return v7;
}

@end