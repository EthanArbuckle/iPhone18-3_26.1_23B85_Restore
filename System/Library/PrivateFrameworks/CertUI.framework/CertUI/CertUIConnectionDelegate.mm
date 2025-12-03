@interface CertUIConnectionDelegate
+ (id)defaultServiceForProtocol:(id)protocol;
- (BOOL)connection:(id)connection canAuthenticateAgainstProtectionSpace:(id)space;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)forwardingDelegate;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)_continueConnectionWithResponse:(int)response challenge:(id)challenge service:(id)service;
- (void)connection:(id)connection didReceiveAuthenticationChallenge:(id)challenge;
- (void)setForwardingDelegate:(id)delegate;
@end

@implementation CertUIConnectionDelegate

- (void)setForwardingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_forwardingDelegate, delegateCopy);
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

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_connection_canAuthenticateAgainstProtectionSpace_ == selector || sel_connection_didReceiveAuthenticationChallenge_ == selector)
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

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);

  return WeakRetained;
}

+ (id)defaultServiceForProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (protocolCopy)
  {
    v4 = defaultServiceForProtocol__sServiceDict;
    if (!defaultServiceForProtocol__sServiceDict)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"CertUIServiceTypeHTTPS", @"https", @"kCertUIServiceTypeIMAP", @"imap", @"kCertUIServiceTypePOP3", @"pop", @"kCertUIServiceTypeSMTP", @"smtp", @"kCertUIServiceTypeSSH", @"ssh", @"kCertUIServiceTypeLDAP", @"ldap", @"kCertUIServiceTypeLDAPS", @"ldaps", 0}];
      v6 = defaultServiceForProtocol__sServiceDict;
      defaultServiceForProtocol__sServiceDict = v5;

      v4 = defaultServiceForProtocol__sServiceDict;
    }

    v7 = [v4 objectForKey:protocolCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)connection:(id)connection canAuthenticateAgainstProtectionSpace:(id)space
{
  v22 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  spaceCopy = space;
  v9 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    v18 = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = spaceCopy;
    _os_log_impl(&dword_2433D3000, v10, OS_LOG_TYPE_INFO, "%@ %@", &v18, 0x16u);
  }

  authenticationMethod = [spaceCopy authenticationMethod];
  v13 = *MEMORY[0x277CCA720];

  if (authenticationMethod == v13)
  {
    v14 = 1;
  }

  else if (*&self->_delegateRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);
    v14 = [WeakRetained connection:connectionCopy canAuthenticateAgainstProtectionSpace:spaceCopy];
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_continueConnectionWithResponse:(int)response challenge:(id)challenge service:(id)service
{
  v28 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  serviceCopy = service;
  v10 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v24 = 138412546;
    v25 = v12;
    v26 = 1024;
    responseCopy = response;
    _os_log_impl(&dword_2433D3000, v11, OS_LOG_TYPE_INFO, "%@ %d", &v24, 0x12u);
  }

  if (response == 1)
  {
    v21 = objc_alloc(MEMORY[0x277CCACF0]);
    protectionSpace = [challengeCopy protectionSpace];
    sender2 = [v21 initWithTrust:{objc_msgSend(protectionSpace, "serverTrust")}];

    sender = [challengeCopy sender];
    [sender useCredential:sender2 forAuthenticationChallenge:challengeCopy];
  }

  else
  {
    if (response != 2)
    {
      sender2 = [challengeCopy sender];
      [sender2 cancelAuthenticationChallenge:challengeCopy];
      goto LABEL_9;
    }

    sender2 = [challengeCopy protectionSpace];
    v14 = +[CertUITrustManager defaultTrustManager];
    serverTrust = [sender2 serverTrust];
    host = [sender2 host];
    [v14 allowTrust:serverTrust forHost:host service:serviceCopy];

    v17 = objc_alloc(MEMORY[0x277CCACF0]);
    protectionSpace2 = [challengeCopy protectionSpace];
    sender = [v17 initWithTrust:{objc_msgSend(protectionSpace2, "serverTrust")}];

    sender3 = [challengeCopy sender];
    [sender3 useCredential:sender forAuthenticationChallenge:challengeCopy];
  }

LABEL_9:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceiveAuthenticationChallenge:(id)challenge
{
  v38 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  challengeCopy = challenge;
  v9 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138412546;
    v35 = v11;
    v36 = 2112;
    v37 = challengeCopy;
    _os_log_impl(&dword_2433D3000, v10, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v14 = *MEMORY[0x277CCA720];

  if (authenticationMethod == v14)
  {
    WeakRetained = [challengeCopy protectionSpace];
    v16 = objc_opt_class();
    protocol = [WeakRetained protocol];
    v18 = [v16 defaultServiceForProtocol:protocol];

    v19 = +[CertUITrustManager defaultTrustManager];
    serverTrust = [WeakRetained serverTrust];
    host = [WeakRetained host];
    v22 = [v19 actionForTrust:serverTrust forHost:host andService:v18];

    if (v22 == 2)
    {
      sender2 = objc_alloc_init(CertUIPrompt);
      protectionSpace2 = [challengeCopy protectionSpace];
      -[CertUIPrompt setTrust:](sender2, "setTrust:", [protectionSpace2 serverTrust]);

      protectionSpace3 = [challengeCopy protectionSpace];
      host2 = [protectionSpace3 host];
      [(CertUIPrompt *)sender2 setHost:host2];

      [(CertUIPrompt *)sender2 setService:v18];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __73__CertUIConnectionDelegate_connection_didReceiveAuthenticationChallenge___block_invoke;
      v31[3] = &unk_278DB2798;
      v31[4] = self;
      v32 = challengeCopy;
      v33 = v18;
      [(CertUIPrompt *)sender2 showPromptWithResponseBlock:v31];
    }

    else if (v22 == 1)
    {
      v23 = objc_alloc(MEMORY[0x277CCACF0]);
      protectionSpace4 = [challengeCopy protectionSpace];
      sender2 = [v23 initWithTrust:{objc_msgSend(protectionSpace4, "serverTrust")}];

      sender = [challengeCopy sender];
      [sender useCredential:sender2 forAuthenticationChallenge:challengeCopy];
    }

    else
    {
      sender2 = [challengeCopy sender];
      [(CertUIPrompt *)sender2 cancelAuthenticationChallenge:challengeCopy];
    }
  }

  else if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);
    [WeakRetained connection:connectionCopy didReceiveAuthenticationChallenge:challengeCopy];
  }

  else
  {
    WeakRetained = [challengeCopy sender];
    [WeakRetained continueWithoutCredentialForAuthenticationChallenge:challengeCopy];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)forwardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);

  return WeakRetained;
}

@end