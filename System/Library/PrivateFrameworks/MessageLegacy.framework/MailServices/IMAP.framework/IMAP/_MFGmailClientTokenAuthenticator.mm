@interface _MFGmailClientTokenAuthenticator
- (id)responseForServerData:(id)data;
@end

@implementation _MFGmailClientTokenAuthenticator

- (id)responseForServerData:(id)data
{
  if ([(MFSASLAuthenticator *)self authenticationState]== 4)
  {
    return 0;
  }

  if (*(&self->super._authenticationState + 4) == 1 || (v4 = -[MFSASLAuthenticator account](self, "account"), ([v4 conformsToProtocol:&unk_2869F5680] & 1) == 0))
  {
    selfCopy2 = self;
    v11 = 3;
LABEL_9:
    [(MFSASLAuthenticator *)selfCopy2 setAuthenticationState:v11];
    return 0;
  }

  username = [v4 username];
  password = [v4 password];
  clientToken = [v4 clientToken];
  if (!username || !password || (v8 = clientToken) == 0)
  {
    [(MFSASLAuthenticator *)self setMissingPasswordError];
    selfCopy2 = self;
    v11 = 2;
    goto LABEL_9;
  }

  data = [MEMORY[0x277CBEB28] data];
  v13 = 0;
  [data appendBytes:&v13 length:1];
  [data appendData:{objc_msgSend(username, "dataUsingEncoding:", 4)}];
  [data appendBytes:&v13 length:1];
  [data appendData:{objc_msgSend(password, "dataUsingEncoding:", 4)}];
  [data appendBytes:&v13 length:1];
  [data appendData:{objc_msgSend(v8, "dataUsingEncoding:", 4)}];
  *(&self->super._authenticationState + 4) = 1;
  return data;
}

@end