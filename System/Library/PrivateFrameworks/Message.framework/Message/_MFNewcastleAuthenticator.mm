@interface _MFNewcastleAuthenticator
- (_MFNewcastleAuthenticator)initWithAuthenticationScheme:(id)scheme account:(id)account connection:(id)connection;
- (id)responseForServerData:(id)data;
- (id)responseForServerDataATOKEN2:(id)n2;
- (id)responseForServerDataATOKEN:(id)n;
@end

@implementation _MFNewcastleAuthenticator

- (_MFNewcastleAuthenticator)initWithAuthenticationScheme:(id)scheme account:(id)account connection:(id)connection
{
  v22 = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  accountCopy = account;
  connectionCopy = connection;
  v19.receiver = self;
  v19.super_class = _MFNewcastleAuthenticator;
  v11 = [(ECSASLAuthenticator *)&v19 initWithAuthenticationScheme:schemeCopy account:accountCopy connection:connectionCopy];
  if (!v11)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    mailAccountIfAvailable = [accountCopy mailAccountIfAvailable];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      castleAccount = v11->_castleAccount;
      v11->_castleAccount = mailAccountIfAvailable;
      goto LABEL_4;
    }

    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = accountCopy;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "#Warning couldn't find our CastleAccount for our sending account: %@", buf, 0xCu);
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v12 = accountCopy;
  castleAccount = v11->_castleAccount;
  v11->_castleAccount = v12;
LABEL_4:

LABEL_8:
  v15 = v11;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)responseForServerData:(id)data
{
  v3 = [(_MFNewcastleAuthenticator *)self responseForServerDataATOKEN2:data];

  return v3;
}

- (id)responseForServerDataATOKEN:(id)n
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "[NewcastleAuthentication responseForServerDataATOKEN]", buf, 2u);
  }

  if ([(ECSASLAuthenticator *)self authenticationState]== 4)
  {
    goto LABEL_6;
  }

  if (self->_sentResponse)
  {
    [(ECSASLAuthenticator *)self setAuthenticationState:3];
LABEL_6:
    v5 = 0;
    goto LABEL_22;
  }

  castleAccount = [(_MFNewcastleAuthenticator *)self castleAccount];
  personID = [castleAccount personID];
  v21 = [personID dataUsingEncoding:4];

  castleAccount2 = [(_MFNewcastleAuthenticator *)self castleAccount];
  authToken = [castleAccount2 authToken];
  v10 = [authToken dataUsingEncoding:4];

  if (v10 && v21)
  {
    castleAccount3 = [(_MFNewcastleAuthenticator *)self castleAccount];
    v12 = [castleAccount3 anisetteDataWithError:0];

    if (v12)
    {
      machineID = [v12 machineID];
      v14 = [machineID dataUsingEncoding:4];

      oneTimePassword = [v12 oneTimePassword];
      v16 = [oneTimePassword dataUsingEncoding:4];
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    if ([v14 length] && objc_msgSend(v16, "length"))
    {
      castleAccount4 = [(_MFNewcastleAuthenticator *)self castleAccount];
      clientInfo = [castleAccount4 clientInfo];
      v19 = [clientInfo dataUsingEncoding:4];

      if ([v19 length])
      {
        v5 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v21, "length") + objc_msgSend(v10, "length") + objc_msgSend(v14, "length") + objc_msgSend(v16, "length") + objc_msgSend(v19, "length") + 5}];
        v22 = 0;
        [v5 appendBytes:&v22 length:1];
        [v5 appendData:v21];
        [v5 appendBytes:&v22 length:1];
        [v5 appendData:v10];
        [v5 appendBytes:&v22 length:1];
        [v5 appendData:v14];
        [v5 appendBytes:&v22 length:1];
        [v5 appendData:v16];
        [v5 appendBytes:&v22 length:1];
        [v5 appendData:v19];
        self->_sentResponse = 1;
      }

      else
      {
        [(ECSASLAuthenticator *)self setMissingPasswordError];
        v5 = 0;
      }
    }

    else
    {
      [(ECSASLAuthenticator *)self setMissingPasswordError];
      v5 = 0;
    }
  }

  else
  {
    [(ECSASLAuthenticator *)self setMissingPasswordError];
    v5 = 0;
  }

LABEL_22:

  return v5;
}

- (id)responseForServerDataATOKEN2:(id)n2
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "[NewcastleAuthentication responseForServerDataATOKEN2]", buf, 2u);
  }

  if ([(ECSASLAuthenticator *)self authenticationState]== 4)
  {
    goto LABEL_6;
  }

  if (self->_sentResponse)
  {
    [(ECSASLAuthenticator *)self setAuthenticationState:3];
LABEL_6:
    v5 = 0;
    goto LABEL_18;
  }

  castleAccount = [(_MFNewcastleAuthenticator *)self castleAccount];

  if (castleAccount)
  {
    promise = [MEMORY[0x1E699B868] promise];
    castleAccount2 = [(_MFNewcastleAuthenticator *)self castleAccount];
    completionHandlerAdapter = [promise completionHandlerAdapter];
    [castleAccount2 appleID2AuthWithCompletion:completionHandlerAdapter];

    future = [promise future];
    v14 = 0;
    v5 = [future result:&v14];
    v11 = v14;

    if (v5)
    {
      self->_sentResponse = 1;
    }

    else
    {
      v12 = MFLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(_MFNewcastleAuthenticator *)v11 responseForServerDataATOKEN2:v12];
      }
    }
  }

  else
  {
    promise = MFLogGeneral();
    if (os_log_type_enabled(promise, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B0389000, promise, OS_LOG_TYPE_DEFAULT, "Account type not CastleIMAPAccount", v15, 2u);
    }

    v5 = 0;
  }

LABEL_18:

  return v5;
}

- (void)responseForServerDataATOKEN2:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Error getting auth details - %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end