@interface CertUIConnectionDelegate
+ (id)defaultServiceForProtocol:(id)a3;
- (BOOL)connection:(id)a3 canAuthenticateAgainstProtectionSpace:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)forwardingDelegate;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)_continueConnectionWithResponse:(int)a3 challenge:(id)a4 service:(id)a5;
- (void)connection:(id)a3 didReceiveAuthenticationChallenge:(id)a4;
- (void)setForwardingDelegate:(id)a3;
@end

@implementation CertUIConnectionDelegate

- (void)setForwardingDelegate:(id)a3
{
  v8 = a3;
  v4 = objc_storeWeak(&self->_forwardingDelegate, v8);
  v5 = objc_opt_respondsToSelector();

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | v5 & 1;
  WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFD | v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_connection_canAuthenticateAgainstProtectionSpace_ == a3 || sel_connection_didReceiveAuthenticationChallenge_ == a3)
  {
    v5 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);

  return WeakRetained;
}

+ (id)defaultServiceForProtocol:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = defaultServiceForProtocol__sServiceDict;
    if (!defaultServiceForProtocol__sServiceDict)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"CertUIServiceTypeHTTPS", @"https", @"kCertUIServiceTypeIMAP", @"imap", @"kCertUIServiceTypePOP3", @"pop", @"kCertUIServiceTypeSMTP", @"smtp", @"kCertUIServiceTypeSSH", @"ssh", @"kCertUIServiceTypeLDAP", @"ldap", @"kCertUIServiceTypeLDAPS", @"ldaps", 0}];
      v6 = defaultServiceForProtocol__sServiceDict;
      defaultServiceForProtocol__sServiceDict = v5;

      v4 = defaultServiceForProtocol__sServiceDict;
    }

    v7 = [v4 objectForKey:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)connection:(id)a3 canAuthenticateAgainstProtectionSpace:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    v18 = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_2433D3000, v10, OS_LOG_TYPE_INFO, "%@ %@", &v18, 0x16u);
  }

  v12 = [v8 authenticationMethod];
  v13 = *MEMORY[0x277CCA720];

  if (v12 == v13)
  {
    v14 = 1;
  }

  else if (*&self->_delegateRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);
    v14 = [WeakRetained connection:v7 canAuthenticateAgainstProtectionSpace:v8];
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_continueConnectionWithResponse:(int)a3 challenge:(id)a4 service:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v24 = 138412546;
    v25 = v12;
    v26 = 1024;
    v27 = a3;
    _os_log_impl(&dword_2433D3000, v11, OS_LOG_TYPE_INFO, "%@ %d", &v24, 0x12u);
  }

  if (a3 == 1)
  {
    v21 = objc_alloc(MEMORY[0x277CCACF0]);
    v22 = [v8 protectionSpace];
    v13 = [v21 initWithTrust:{objc_msgSend(v22, "serverTrust")}];

    v19 = [v8 sender];
    [v19 useCredential:v13 forAuthenticationChallenge:v8];
  }

  else
  {
    if (a3 != 2)
    {
      v13 = [v8 sender];
      [v13 cancelAuthenticationChallenge:v8];
      goto LABEL_9;
    }

    v13 = [v8 protectionSpace];
    v14 = +[CertUITrustManager defaultTrustManager];
    v15 = [v13 serverTrust];
    v16 = [v13 host];
    [v14 allowTrust:v15 forHost:v16 service:v9];

    v17 = objc_alloc(MEMORY[0x277CCACF0]);
    v18 = [v8 protectionSpace];
    v19 = [v17 initWithTrust:{objc_msgSend(v18, "serverTrust")}];

    v20 = [v8 sender];
    [v20 useCredential:v19 forAuthenticationChallenge:v8];
  }

LABEL_9:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveAuthenticationChallenge:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138412546;
    v35 = v11;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_2433D3000, v10, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  v12 = [v8 protectionSpace];
  v13 = [v12 authenticationMethod];
  v14 = *MEMORY[0x277CCA720];

  if (v13 == v14)
  {
    WeakRetained = [v8 protectionSpace];
    v16 = objc_opt_class();
    v17 = [WeakRetained protocol];
    v18 = [v16 defaultServiceForProtocol:v17];

    v19 = +[CertUITrustManager defaultTrustManager];
    v20 = [WeakRetained serverTrust];
    v21 = [WeakRetained host];
    v22 = [v19 actionForTrust:v20 forHost:v21 andService:v18];

    if (v22 == 2)
    {
      v25 = objc_alloc_init(CertUIPrompt);
      v27 = [v8 protectionSpace];
      -[CertUIPrompt setTrust:](v25, "setTrust:", [v27 serverTrust]);

      v28 = [v8 protectionSpace];
      v29 = [v28 host];
      [(CertUIPrompt *)v25 setHost:v29];

      [(CertUIPrompt *)v25 setService:v18];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __73__CertUIConnectionDelegate_connection_didReceiveAuthenticationChallenge___block_invoke;
      v31[3] = &unk_278DB2798;
      v31[4] = self;
      v32 = v8;
      v33 = v18;
      [(CertUIPrompt *)v25 showPromptWithResponseBlock:v31];
    }

    else if (v22 == 1)
    {
      v23 = objc_alloc(MEMORY[0x277CCACF0]);
      v24 = [v8 protectionSpace];
      v25 = [v23 initWithTrust:{objc_msgSend(v24, "serverTrust")}];

      v26 = [v8 sender];
      [v26 useCredential:v25 forAuthenticationChallenge:v8];
    }

    else
    {
      v25 = [v8 sender];
      [(CertUIPrompt *)v25 cancelAuthenticationChallenge:v8];
    }
  }

  else if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);
    [WeakRetained connection:v7 didReceiveAuthenticationChallenge:v8];
  }

  else
  {
    WeakRetained = [v8 sender];
    [WeakRetained continueWithoutCredentialForAuthenticationChallenge:v8];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)forwardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);

  return WeakRetained;
}

@end