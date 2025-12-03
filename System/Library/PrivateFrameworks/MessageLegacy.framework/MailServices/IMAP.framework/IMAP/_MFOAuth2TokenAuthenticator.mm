@interface _MFOAuth2TokenAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFOAuth2TokenAuthenticator

- (id)responseForServerData:(id)data
{
  if ([(MFSASLAuthenticator *)self authenticationState]> 1)
  {
    return 0;
  }

  if (*(&self->super._authenticationState + 4) == 1)
  {
    [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy2 = self;
      v6 = 2;
LABEL_10:
      [(MFSASLAuthenticator *)selfCopy2 setAuthenticationState:v6];
      return 0;
    }

LABEL_9:
    selfCopy2 = self;
    v6 = 3;
    goto LABEL_10;
  }

  account = [(MFSASLAuthenticator *)self account];
  if (([account conformsToProtocol:&unk_2869EE2B0] & 1) == 0)
  {
    goto LABEL_9;
  }

  username = [account username];
  oauth2Token = [account oauth2Token];
  if (!username || (v10 = oauth2Token) == 0)
  {
    [(MFSASLAuthenticator *)self setMissingPasswordError];
    return 0;
  }

  data = [MEMORY[0x277CBEB28] data];
  v13 = 1;
  [data appendData:{objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"user=%@", username), "dataUsingEncoding:", 4)}];
  [data appendBytes:&v13 length:1];
  [data appendData:{objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"auth=Bearer %@", v10), "dataUsingEncoding:", 4)}];
  [data appendBytes:&v13 length:1];
  [data appendBytes:&v13 length:1];
  *(&self->super._authenticationState + 4) = 1;
  return data;
}

@end