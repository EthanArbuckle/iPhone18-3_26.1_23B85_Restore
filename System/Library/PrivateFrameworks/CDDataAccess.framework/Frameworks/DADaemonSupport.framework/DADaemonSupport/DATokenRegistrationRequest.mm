@interface DATokenRegistrationRequest
+ (id)requestWithToken:(id)token pushKey:(id)key wrapper:(id)wrapper onBehalfOf:(id)of;
- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)space;
- (DARefreshWrapper)wrapper;
- (DATokenRegistrationDelegate)delegate;
- (DATokenRegistrationRequest)initWithToken:(id)token pushKey:(id)key wrapper:(id)wrapper onBehalfOf:(id)of;
- (NSData)token;
- (NSString)pushKey;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_handleAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)_reallyHandleAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)cancel;
- (void)sendRegistrationRequestForAccount:(id)account;
@end

@implementation DATokenRegistrationRequest

- (DATokenRegistrationRequest)initWithToken:(id)token pushKey:(id)key wrapper:(id)wrapper onBehalfOf:(id)of
{
  tokenCopy = token;
  keyCopy = key;
  wrapperCopy = wrapper;
  ofCopy = of;
  v17.receiver = self;
  v17.super_class = DATokenRegistrationRequest;
  v14 = [(DATokenRegistrationRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    [(DATokenRegistrationRequest *)v14 setWrapper:wrapperCopy];
    [(DATokenRegistrationRequest *)v15 setToken:tokenCopy];
    [(DATokenRegistrationRequest *)v15 setPushKey:keyCopy];
    [(DATokenRegistrationRequest *)v15 setOnBehalfOfBundleIdentifier:ofCopy];
  }

  return v15;
}

+ (id)requestWithToken:(id)token pushKey:(id)key wrapper:(id)wrapper onBehalfOf:(id)of
{
  ofCopy = of;
  wrapperCopy = wrapper;
  keyCopy = key;
  tokenCopy = token;
  v13 = [[DATokenRegistrationRequest alloc] initWithToken:tokenCopy pushKey:keyCopy wrapper:wrapperCopy onBehalfOf:ofCopy];

  return v13;
}

- (void)cancel
{
  session = [(DATokenRegistrationRequest *)self session];
  [session invalidateAndCancel];

  [(DATokenRegistrationRequest *)self setTask:0];

  [(DATokenRegistrationRequest *)self setRequest:0];
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  v6 = dataaccess_get_global_queue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__DATokenRegistrationRequest_URLSession_didBecomeInvalidWithError___block_invoke;
  v8[3] = &unk_278D52AB0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_sync(v6, v8);
}

void __67__DATokenRegistrationRequest_URLSession_didBecomeInvalidWithError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) finished] & 1) == 0)
  {
    [*(a1 + 32) setFinished:1];
    v2 = *(a1 + 40);
    v3 = DALoggingwithCategory();
    v4 = v3;
    if (v2)
    {
      v5 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v3, v5))
      {
        v6 = [*(a1 + 32) wrapper];
        v7 = [v6 delegate];
        v8 = [v7 scheduleIdentifier];
        v9 = *(a1 + 40);
        v20 = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_2424DF000, v4, v5, "The token registration session became invalid for account ID %@: %@", &v20, 0x16u);
      }

      os_unfair_lock_lock((*(a1 + 32) + 12));
      v10 = [*(a1 + 32) wrapper];
      [v10 setPushState:3];

      os_unfair_lock_unlock((*(a1 + 32) + 12));
      v11 = [*(a1 + 32) delegate];
      v12 = v11;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
    }

    else
    {
      v15 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v3, *(MEMORY[0x277CF3AF0] + 6)))
      {
        v16 = [*(a1 + 32) wrapper];
        v17 = [v16 delegate];
        v18 = [v17 scheduleIdentifier];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_2424DF000, v4, v15, "Token registration session became invalid for account %@", &v20, 0xCu);
      }

      v11 = [*(a1 + 32) delegate];
      v12 = v11;
      v13 = *(a1 + 32);
      v14 = 0;
    }

    [v11 tokenRegistrationRequest:v13 finishedWithError:v14];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  v7 = dataaccess_get_global_queue();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__DATokenRegistrationRequest_URLSession_task_didCompleteWithError___block_invoke;
  v13 = &unk_278D52AB0;
  selfCopy = self;
  v15 = errorCopy;
  v8 = errorCopy;
  dispatch_sync(v7, &v10);

  v9 = [(DATokenRegistrationRequest *)self session:v10];
  [v9 finishTasksAndInvalidate];
}

void __67__DATokenRegistrationRequest_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) finished] & 1) == 0)
  {
    [*(a1 + 32) setFinished:1];
    v2 = *(a1 + 40);
    v3 = DALoggingwithCategory();
    v4 = v3;
    if (v2)
    {
      v5 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v3, v5))
      {
        v6 = [*(a1 + 32) wrapper];
        v7 = [v6 delegate];
        v8 = [v7 scheduleIdentifier];
        v9 = *(a1 + 40);
        v20 = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_2424DF000, v4, v5, "The token registration task failed to load for account ID %@: %@", &v20, 0x16u);
      }

      os_unfair_lock_lock((*(a1 + 32) + 12));
      v10 = [*(a1 + 32) wrapper];
      [v10 setPushState:3];

      os_unfair_lock_unlock((*(a1 + 32) + 12));
      v11 = [*(a1 + 32) delegate];
      v12 = v11;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
    }

    else
    {
      v15 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v3, *(MEMORY[0x277CF3AF0] + 6)))
      {
        v16 = [*(a1 + 32) wrapper];
        v17 = [v16 delegate];
        v18 = [v17 scheduleIdentifier];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_2424DF000, v4, v15, "Token registration task finished for account %@", &v20, 0xCu);
      }

      v11 = [*(a1 + 32) delegate];
      v12 = v11;
      v13 = *(a1 + 32);
      v14 = 0;
    }

    [v11 tokenRegistrationRequest:v13 finishedWithError:v14];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  statusCode = [responseCopy statusCode];
  v11 = DALoggingwithCategory();
  v12 = v11;
  if ((statusCode - 200) > 0x63)
  {
    v17 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v17))
    {
      allHeaderFields = [responseCopy allHeaderFields];
      *buf = 67109378;
      v22 = statusCode;
      v23 = 2112;
      v24 = allHeaderFields;
      _os_log_impl(&dword_2424DF000, v12, v17, "The server returned a status of %d to our token registration request. Falling back to PC. Server response headers are %@", buf, 0x12u);
    }
  }

  else
  {
    v13 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v11, v13))
    {
      *buf = 67109120;
      v22 = statusCode;
      _os_log_impl(&dword_2424DF000, v12, v13, "The server accepted our push token request (status %d)", buf, 8u);
    }

    os_unfair_lock_lock(&self->_lock);
    wrapper = [(DATokenRegistrationRequest *)self wrapper];
    [wrapper setPushState:2];

    date = [MEMORY[0x277CBEAA8] date];
    wrapper2 = [(DATokenRegistrationRequest *)self wrapper];
    [wrapper2 setPushRegistrationTime:date];

    os_unfair_lock_unlock(&self->_lock);
    v12 = +[DARefreshManager sharedManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__DATokenRegistrationRequest_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
    v20[3] = &unk_278D52C00;
    v20[4] = self;
    [v12 _performBlockOnRefreshManagerThread:v20];
  }

  handlerCopy[2](handlerCopy, 1);
  v19 = *MEMORY[0x277D85DE8];
}

void __87__DATokenRegistrationRequest_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) wrapper];
  [v1 cancelFetchActivity];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(dataCopy length:"bytes") encoding:{objc_msgSend(dataCopy, "length"), 4}];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_2424DF000, v6, v7, "The server returned a response of %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  if ([authenticationMethod isEqualToString:*MEMORY[0x277CCA728]])
  {
    if ([challengeCopy previousFailureCount] < 1)
    {
      proposedCredential = [challengeCopy proposedCredential];
      handlerCopy[2](handlerCopy, 0, proposedCredential);

      goto LABEL_11;
    }
  }

  else
  {
    if ([(DATokenRegistrationRequest *)self _canAuthenticateAgainstProtectionSpace:protectionSpace])
    {
      [(DATokenRegistrationRequest *)self _reallyHandleAuthenticationChallenge:challengeCopy completionHandler:handlerCopy];
      goto LABEL_11;
    }

    if (([authenticationMethod isEqualToString:*MEMORY[0x277CCA720]] & 1) != 0 || objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x277CCA700]))
    {
      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_11;
    }
  }

  handlerCopy[2](handlerCopy, 2, 0);
LABEL_11:
}

- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)space
{
  v17 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v13 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_2424DF000, v5, v6, "%s", &v13, 0xCu);
  }

  authenticationMethod = [spaceCopy authenticationMethod];

  if ([authenticationMethod isEqualToString:*MEMORY[0x277CCA720]] & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x277CCA710]) & 1) != 0 || (objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x277CCA718]))
  {
    v8 = 1;
  }

  else
  {
    v8 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA728]];
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v6))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v13 = 138412546;
    Name = authenticationMethod;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_2424DF000, v9, v6, "Can authenticate against protection space %@? %@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_reallyHandleAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (![challengeCopy previousFailureCount])
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v12, v13))
    {
      WeakRetained = objc_loadWeakRetained(&self->_wrapper);
      delegate = [WeakRetained delegate];
      scheduleIdentifier = [delegate scheduleIdentifier];
      *buf = 138412546;
      v40 = scheduleIdentifier;
      v41 = 2112;
      v42 = authenticationMethod;
      _os_log_impl(&dword_2424DF000, v12, v13, "Received an authentication challenge for account %@ method %@", buf, 0x16u);
    }

    if ([authenticationMethod isEqualToString:*MEMORY[0x277CCA728]])
    {
      proposedCredential = [challengeCopy proposedCredential];
      if (proposedCredential)
      {
LABEL_9:
        handlerCopy[2](handlerCopy, 0, proposedCredential);

LABEL_31:
        goto LABEL_32;
      }

LABEL_28:
      v35 = DALoggingwithCategory();
      if (os_log_type_enabled(v35, v13))
      {
        *buf = 0;
        _os_log_impl(&dword_2424DF000, v35, v13, "Token registration - Continuing without credential for challenge", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_31;
    }

    if (([authenticationMethod isEqualToString:*MEMORY[0x277CCA710]] & 1) == 0 && !objc_msgSend(authenticationMethod, "isEqualToString:", *MEMORY[0x277CCA718]))
    {
      v38 = protectionSpace;
      wrapper = [(DATokenRegistrationRequest *)self wrapper];
      delegate2 = [wrapper delegate];
      trustHandler = [delegate2 trustHandler];
      wrapper2 = [(DATokenRegistrationRequest *)self wrapper];
      delegate3 = [wrapper2 delegate];
      getDAAccount = [delegate3 getDAAccount];
      [trustHandler handleTrustChallenge:challengeCopy forAccount:getDAAccount completionHandler:handlerCopy];

      v33 = DALoggingwithCategory();
      if (os_log_type_enabled(v33, v13))
      {
        *buf = 0;
        _os_log_impl(&dword_2424DF000, v33, v13, "Token registration - Waiting for runloop callback to decide what to do", buf, 2u);
      }

      protectionSpace = v38;
      goto LABEL_31;
    }

    wrapper3 = [(DATokenRegistrationRequest *)self wrapper];
    delegate4 = [wrapper3 delegate];
    if (objc_opt_respondsToSelector())
    {
      v37 = protectionSpace;
      wrapper4 = [(DATokenRegistrationRequest *)self wrapper];
      delegate5 = [wrapper4 delegate];
      v22 = objc_opt_respondsToSelector();

      if ((v22 & 1) == 0)
      {
        password = 0;
        username = 0;
        protectionSpace = v37;
        goto LABEL_21;
      }

      wrapper5 = [(DATokenRegistrationRequest *)self wrapper];
      delegate6 = [wrapper5 delegate];
      username = [delegate6 username];

      wrapper3 = [(DATokenRegistrationRequest *)self wrapper];
      delegate4 = [wrapper3 delegate];
      password = [delegate4 password];
      protectionSpace = v37;
    }

    else
    {
      password = 0;
      username = 0;
    }

LABEL_21:
    if ([username length] && objc_msgSend(password, "length"))
    {
      proposedCredential = [MEMORY[0x277CCACF0] credentialWithUser:username password:password persistence:0];
    }

    else
    {
      proposedCredential = 0;
    }

    v34 = DALoggingwithCategory();
    if (os_log_type_enabled(v34, v13))
    {
      *buf = 138412290;
      v40 = username;
      _os_log_impl(&dword_2424DF000, v34, v13, "Responding to authentication challenge with username %@ and password", buf, 0xCu);
    }

    if (proposedCredential)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v8, v9))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v8, v9, "Cancelling authentication because it's already failed", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 2, 0);
LABEL_32:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)sendRegistrationRequestForAccount:(id)account
{
  v46 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  wrapper = [(DATokenRegistrationRequest *)self wrapper];
  delegate = [wrapper delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v41 = accountCopy;
    os_unfair_lock_lock(&self->_lock);
    wrapper2 = [(DATokenRegistrationRequest *)self wrapper];
    [wrapper2 setPushState:1];

    os_unfair_lock_unlock(&self->_lock);
    token = [(DATokenRegistrationRequest *)self token];
    da_lowercaseHexStringWithoutSpaces = [token da_lowercaseHexStringWithoutSpaces];

    v11 = MEMORY[0x277CCACA8];
    wrapper3 = [(DATokenRegistrationRequest *)self wrapper];
    delegate2 = [wrapper3 delegate];
    serverTokenRegistrationURL = [delegate2 serverTokenRegistrationURL];
    absoluteString = [serverTokenRegistrationURL absoluteString];
    stringByAddingPercentEscapes = [da_lowercaseHexStringWithoutSpaces stringByAddingPercentEscapes];
    pushKey = [(DATokenRegistrationRequest *)self pushKey];
    stringByAddingPercentEscapes2 = [pushKey stringByAddingPercentEscapes];
    v19 = [v11 stringWithFormat:@"%@?token=%@&key=%@", absoluteString, stringByAddingPercentEscapes, stringByAddingPercentEscapes2];

    v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];
    v21 = [MEMORY[0x277CCAB70] requestWithURL:v20 cachePolicy:1 timeoutInterval:10.0];
    [(DATokenRegistrationRequest *)self setRequest:v21];

    request = [(DATokenRegistrationRequest *)self request];
    [request setHTTPMethod:@"POST"];

    request2 = [(DATokenRegistrationRequest *)self request];
    v24 = DAUserAgent();
    [request2 setValue:v24 forHTTPHeaderField:@"User-Agent"];

    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v25, v26))
    {
      *buf = 138412546;
      v43 = da_lowercaseHexStringWithoutSpaces;
      v44 = 2112;
      v45 = v20;
      _os_log_impl(&dword_2424DF000, v25, v26, "Registering token %@ with the server at %@", buf, 0x16u);
    }

    accountCopy = v41;
    getAppleIDSession = [v41 getAppleIDSession];
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration set_appleIDContext:getAppleIDSession];
    onBehalfOfBundleIdentifier = [(DATokenRegistrationRequest *)self onBehalfOfBundleIdentifier];
    [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:onBehalfOfBundleIdentifier];

    [defaultSessionConfiguration setURLCache:0];
    [defaultSessionConfiguration setDiscretionary:0];
    v30 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:0];
    [(DATokenRegistrationRequest *)self setSession:v30];

    session = [(DATokenRegistrationRequest *)self session];
    request3 = [(DATokenRegistrationRequest *)self request];
    v33 = [session dataTaskWithRequest:request3];
    [(DATokenRegistrationRequest *)self setTask:v33];

    task = [(DATokenRegistrationRequest *)self task];
    [task resume];
  }

  else
  {
    v35 = DALoggingwithCategory();
    v36 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v35, v36))
    {
      wrapper4 = [(DATokenRegistrationRequest *)self wrapper];
      delegate3 = [wrapper4 delegate];
      scheduleIdentifier = [delegate3 scheduleIdentifier];
      *buf = 138412290;
      v43 = scheduleIdentifier;
      _os_log_impl(&dword_2424DF000, v35, v36, "Can't send a token registration for %@ because it doesn't implement serverTokenRegistrationURL.", buf, 0xCu);
    }

    da_lowercaseHexStringWithoutSpaces = [(DATokenRegistrationRequest *)self delegate];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:65 userInfo:0];
    [da_lowercaseHexStringWithoutSpaces tokenRegistrationRequest:self finishedWithError:v19];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (DATokenRegistrationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DARefreshWrapper)wrapper
{
  WeakRetained = objc_loadWeakRetained(&self->_wrapper);

  return WeakRetained;
}

- (NSData)token
{
  WeakRetained = objc_loadWeakRetained(&self->_token);

  return WeakRetained;
}

- (NSString)pushKey
{
  WeakRetained = objc_loadWeakRetained(&self->_pushKey);

  return WeakRetained;
}

@end