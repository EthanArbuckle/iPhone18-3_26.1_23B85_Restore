@interface _MFOAuth2TokenAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFOAuth2TokenAuthenticator

- (id)responseForServerData:(id)a3
{
  if ([(MFSASLAuthenticator *)self authenticationState]> 1)
  {
    return 0;
  }

  if (*(&self->super._authenticationState + 4) == 1)
  {
    [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self;
      v6 = 2;
LABEL_10:
      [(MFSASLAuthenticator *)v5 setAuthenticationState:v6];
      return 0;
    }

LABEL_9:
    v5 = self;
    v6 = 3;
    goto LABEL_10;
  }

  v7 = [(MFSASLAuthenticator *)self account];
  if (([v7 conformsToProtocol:&unk_2869EE2B0] & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 username];
  v9 = [v7 oauth2Token];
  if (!v8 || (v10 = v9) == 0)
  {
    [(MFSASLAuthenticator *)self setMissingPasswordError];
    return 0;
  }

  v11 = [MEMORY[0x277CBEB28] data];
  v13 = 1;
  [v11 appendData:{objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"user=%@", v8), "dataUsingEncoding:", 4)}];
  [v11 appendBytes:&v13 length:1];
  [v11 appendData:{objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"auth=Bearer %@", v10), "dataUsingEncoding:", 4)}];
  [v11 appendBytes:&v13 length:1];
  [v11 appendBytes:&v13 length:1];
  *(&self->super._authenticationState + 4) = 1;
  return v11;
}

@end