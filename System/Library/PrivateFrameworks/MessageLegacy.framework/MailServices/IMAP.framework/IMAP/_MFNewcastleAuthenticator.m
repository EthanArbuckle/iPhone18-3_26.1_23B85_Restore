@interface _MFNewcastleAuthenticator
- (_MFNewcastleAuthenticator)initWithAuthScheme:(id)a3 account:(id)a4 connection:(id)a5;
- (id)responseForServerData:(id)a3;
- (void)dealloc;
@end

@implementation _MFNewcastleAuthenticator

- (_MFNewcastleAuthenticator)initWithAuthScheme:(id)a3 account:(id)a4 connection:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = _MFNewcastleAuthenticator;
  v6 = [(MFSASLAuthenticator *)&v12 initWithAuthScheme:a3 account:a4 connection:a5];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = a4;
LABEL_4:
      *&v6->_sentResponse = v7;
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = [a4 mailAccountIfAvailable];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v8;
      goto LABEL_4;
    }

    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = a4;
      _os_log_impl(&dword_258B7A000, v9, OS_LOG_TYPE_DEFAULT, "#Warning couldn't find our CastleAccount for our sending account: %@", buf, 0xCu);
    }

    v6 = 0;
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFNewcastleAuthenticator;
  [(MFSASLAuthenticator *)&v3 dealloc];
}

- (id)responseForServerData:(id)a3
{
  if ([(MFSASLAuthenticator *)self authenticationState]== 4)
  {
    return 0;
  }

  if (*(&self->super._authenticationState + 4) == 1)
  {
    [(MFSASLAuthenticator *)self setAuthenticationState:3];
    return 0;
  }

  v4 = [(NSString *)[(CastleIMAPAccount *)[(_MFNewcastleAuthenticator *)self castleAccount] personID] dataUsingEncoding:4];
  v5 = [(NSString *)[(CastleIMAPAccount *)[(_MFNewcastleAuthenticator *)self castleAccount] authToken] dataUsingEncoding:4];
  if (!v5 || !v4 || ((v6 = v5, v7 = -[CastleIMAPAccount anisetteDataWithError:](-[_MFNewcastleAuthenticator castleAccount](self, "castleAccount"), "anisetteDataWithError:", 0), (v8 = v7) == 0) ? (v9 = 0) : (v9 = [objc_msgSend(v7 "machineID")], v8 = objc_msgSend(objc_msgSend(v8, "oneTimePassword"), "dataUsingEncoding:", 4)), !objc_msgSend(v9, "length") || !objc_msgSend(v8, "length") || (v10 = -[NSString dataUsingEncoding:](-[CastleIMAPAccount clientInfo](-[_MFNewcastleAuthenticator castleAccount](self, "castleAccount"), "clientInfo"), "dataUsingEncoding:", 4), !-[NSData length](v10, "length"))))
  {
    [(MFSASLAuthenticator *)self setMissingPasswordError];
    return 0;
  }

  v13 = v10;
  v11 = [MEMORY[0x277CBEB28] dataWithCapacity:{-[NSData length](v4, "length") + -[NSData length](v6, "length") + objc_msgSend(v9, "length") + objc_msgSend(v8, "length") + -[NSData length](v10, "length") + 5}];
  v14 = 0;
  [v11 appendBytes:&v14 length:1];
  [v11 appendData:v4];
  [v11 appendBytes:&v14 length:1];
  [v11 appendData:v6];
  [v11 appendBytes:&v14 length:1];
  [v11 appendData:v9];
  [v11 appendBytes:&v14 length:1];
  [v11 appendData:v8];
  [v11 appendBytes:&v14 length:1];
  [v11 appendData:v13];
  *(&self->super._authenticationState + 4) = 1;
  return v11;
}

@end