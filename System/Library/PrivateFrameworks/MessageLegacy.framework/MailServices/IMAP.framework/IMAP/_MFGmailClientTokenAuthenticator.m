@interface _MFGmailClientTokenAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFGmailClientTokenAuthenticator

- (id)responseForServerData:(id)a3
{
  if ([(MFSASLAuthenticator *)self authenticationState]== 4)
  {
    return 0;
  }

  if (*(&self->super._authenticationState + 4) == 1 || (v4 = -[MFSASLAuthenticator account](self, "account"), ([v4 conformsToProtocol:&unk_2869F5680] & 1) == 0))
  {
    v10 = self;
    v11 = 3;
LABEL_9:
    [(MFSASLAuthenticator *)v10 setAuthenticationState:v11];
    return 0;
  }

  v5 = [v4 username];
  v6 = [v4 password];
  v7 = [v4 clientToken];
  if (!v5 || !v6 || (v8 = v7) == 0)
  {
    [(MFSASLAuthenticator *)self setMissingPasswordError];
    v10 = self;
    v11 = 2;
    goto LABEL_9;
  }

  v9 = [MEMORY[0x277CBEB28] data];
  v13 = 0;
  [v9 appendBytes:&v13 length:1];
  [v9 appendData:{objc_msgSend(v5, "dataUsingEncoding:", 4)}];
  [v9 appendBytes:&v13 length:1];
  [v9 appendData:{objc_msgSend(v6, "dataUsingEncoding:", 4)}];
  [v9 appendBytes:&v13 length:1];
  [v9 appendData:{objc_msgSend(v8, "dataUsingEncoding:", 4)}];
  *(&self->super._authenticationState + 4) = 1;
  return v9;
}

@end