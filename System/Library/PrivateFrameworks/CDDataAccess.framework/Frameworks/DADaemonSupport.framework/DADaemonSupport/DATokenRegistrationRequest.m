@interface DATokenRegistrationRequest
+ (id)requestWithToken:(id)a3 pushKey:(id)a4 wrapper:(id)a5 onBehalfOf:(id)a6;
- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)a3;
- (DARefreshWrapper)wrapper;
- (DATokenRegistrationDelegate)delegate;
- (DATokenRegistrationRequest)initWithToken:(id)a3 pushKey:(id)a4 wrapper:(id)a5 onBehalfOf:(id)a6;
- (NSData)token;
- (NSString)pushKey;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_handleAuthenticationChallenge:(id)a3 completionHandler:(id)a4;
- (void)_reallyHandleAuthenticationChallenge:(id)a3 completionHandler:(id)a4;
- (void)cancel;
- (void)sendRegistrationRequestForAccount:(id)a3;
@end

@implementation DATokenRegistrationRequest

- (DATokenRegistrationRequest)initWithToken:(id)a3 pushKey:(id)a4 wrapper:(id)a5 onBehalfOf:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DATokenRegistrationRequest;
  v14 = [(DATokenRegistrationRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    [(DATokenRegistrationRequest *)v14 setWrapper:v12];
    [(DATokenRegistrationRequest *)v15 setToken:v10];
    [(DATokenRegistrationRequest *)v15 setPushKey:v11];
    [(DATokenRegistrationRequest *)v15 setOnBehalfOfBundleIdentifier:v13];
  }

  return v15;
}

+ (id)requestWithToken:(id)a3 pushKey:(id)a4 wrapper:(id)a5 onBehalfOf:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[DATokenRegistrationRequest alloc] initWithToken:v12 pushKey:v11 wrapper:v10 onBehalfOf:v9];

  return v13;
}

- (void)cancel
{
  v3 = [(DATokenRegistrationRequest *)self session];
  [v3 invalidateAndCancel];

  [(DATokenRegistrationRequest *)self setTask:0];

  [(DATokenRegistrationRequest *)self setRequest:0];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v5 = a4;
  v6 = dataaccess_get_global_queue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__DATokenRegistrationRequest_URLSession_didBecomeInvalidWithError___block_invoke;
  v8[3] = &unk_278D52AB0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v6 = a5;
  v7 = dataaccess_get_global_queue();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __67__DATokenRegistrationRequest_URLSession_task_didCompleteWithError___block_invoke;
  v13 = &unk_278D52AB0;
  v14 = self;
  v15 = v6;
  v8 = v6;
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

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a6;
  v10 = [v8 statusCode];
  v11 = DALoggingwithCategory();
  v12 = v11;
  if ((v10 - 200) > 0x63)
  {
    v17 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v17))
    {
      v18 = [v8 allHeaderFields];
      *buf = 67109378;
      v22 = v10;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_2424DF000, v12, v17, "The server returned a status of %d to our token registration request. Falling back to PC. Server response headers are %@", buf, 0x12u);
    }
  }

  else
  {
    v13 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v11, v13))
    {
      *buf = 67109120;
      v22 = v10;
      _os_log_impl(&dword_2424DF000, v12, v13, "The server accepted our push token request (status %d)", buf, 8u);
    }

    os_unfair_lock_lock(&self->_lock);
    v14 = [(DATokenRegistrationRequest *)self wrapper];
    [v14 setPushState:2];

    v15 = [MEMORY[0x277CBEAA8] date];
    v16 = [(DATokenRegistrationRequest *)self wrapper];
    [v16 setPushRegistrationTime:v15];

    os_unfair_lock_unlock(&self->_lock);
    v12 = +[DARefreshManager sharedManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__DATokenRegistrationRequest_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
    v20[3] = &unk_278D52C00;
    v20[4] = self;
    [v12 _performBlockOnRefreshManagerThread:v20];
  }

  v9[2](v9, 1);
  v19 = *MEMORY[0x277D85DE8];
}

void __87__DATokenRegistrationRequest_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) wrapper];
  [v1 cancelFetchActivity];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v5 length:"bytes") encoding:{objc_msgSend(v5, "length"), 4}];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_2424DF000, v6, v7, "The server returned a response of %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthenticationChallenge:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 protectionSpace];
  v8 = [v7 authenticationMethod];
  if ([v8 isEqualToString:*MEMORY[0x277CCA728]])
  {
    if ([v10 previousFailureCount] < 1)
    {
      v9 = [v10 proposedCredential];
      v6[2](v6, 0, v9);

      goto LABEL_11;
    }
  }

  else
  {
    if ([(DATokenRegistrationRequest *)self _canAuthenticateAgainstProtectionSpace:v7])
    {
      [(DATokenRegistrationRequest *)self _reallyHandleAuthenticationChallenge:v10 completionHandler:v6];
      goto LABEL_11;
    }

    if (([v8 isEqualToString:*MEMORY[0x277CCA720]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277CCA700]))
    {
      v6[2](v6, 1, 0);
      goto LABEL_11;
    }
  }

  v6[2](v6, 2, 0);
LABEL_11:
}

- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v13 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_2424DF000, v5, v6, "%s", &v13, 0xCu);
  }

  v7 = [v4 authenticationMethod];

  if ([v7 isEqualToString:*MEMORY[0x277CCA720]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCA710]) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCA718]))
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 isEqualToString:*MEMORY[0x277CCA728]];
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
    Name = v7;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_2424DF000, v9, v6, "Can authenticate against protection space %@? %@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_reallyHandleAuthenticationChallenge:(id)a3 completionHandler:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 previousFailureCount])
  {
    v10 = [v6 protectionSpace];
    v11 = [v10 authenticationMethod];
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v12, v13))
    {
      WeakRetained = objc_loadWeakRetained(&self->_wrapper);
      v15 = [WeakRetained delegate];
      v16 = [v15 scheduleIdentifier];
      *buf = 138412546;
      v40 = v16;
      v41 = 2112;
      v42 = v11;
      _os_log_impl(&dword_2424DF000, v12, v13, "Received an authentication challenge for account %@ method %@", buf, 0x16u);
    }

    if ([v11 isEqualToString:*MEMORY[0x277CCA728]])
    {
      v17 = [v6 proposedCredential];
      if (v17)
      {
LABEL_9:
        v7[2](v7, 0, v17);

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

      v7[2](v7, 1, 0);
      goto LABEL_31;
    }

    if (([v11 isEqualToString:*MEMORY[0x277CCA710]] & 1) == 0 && !objc_msgSend(v11, "isEqualToString:", *MEMORY[0x277CCA718]))
    {
      v38 = v10;
      v27 = [(DATokenRegistrationRequest *)self wrapper];
      v28 = [v27 delegate];
      v29 = [v28 trustHandler];
      v30 = [(DATokenRegistrationRequest *)self wrapper];
      v31 = [v30 delegate];
      v32 = [v31 getDAAccount];
      [v29 handleTrustChallenge:v6 forAccount:v32 completionHandler:v7];

      v33 = DALoggingwithCategory();
      if (os_log_type_enabled(v33, v13))
      {
        *buf = 0;
        _os_log_impl(&dword_2424DF000, v33, v13, "Token registration - Waiting for runloop callback to decide what to do", buf, 2u);
      }

      v10 = v38;
      goto LABEL_31;
    }

    v18 = [(DATokenRegistrationRequest *)self wrapper];
    v19 = [v18 delegate];
    if (objc_opt_respondsToSelector())
    {
      v37 = v10;
      v20 = [(DATokenRegistrationRequest *)self wrapper];
      v21 = [v20 delegate];
      v22 = objc_opt_respondsToSelector();

      if ((v22 & 1) == 0)
      {
        v26 = 0;
        v25 = 0;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = [(DATokenRegistrationRequest *)self wrapper];
      v24 = [v23 delegate];
      v25 = [v24 username];

      v18 = [(DATokenRegistrationRequest *)self wrapper];
      v19 = [v18 delegate];
      v26 = [v19 password];
      v10 = v37;
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

LABEL_21:
    if ([v25 length] && objc_msgSend(v26, "length"))
    {
      v17 = [MEMORY[0x277CCACF0] credentialWithUser:v25 password:v26 persistence:0];
    }

    else
    {
      v17 = 0;
    }

    v34 = DALoggingwithCategory();
    if (os_log_type_enabled(v34, v13))
    {
      *buf = 138412290;
      v40 = v25;
      _os_log_impl(&dword_2424DF000, v34, v13, "Responding to authentication challenge with username %@ and password", buf, 0xCu);
    }

    if (v17)
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

  v7[2](v7, 2, 0);
LABEL_32:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)sendRegistrationRequestForAccount:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DATokenRegistrationRequest *)self wrapper];
  v6 = [v5 delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v41 = v4;
    os_unfair_lock_lock(&self->_lock);
    v8 = [(DATokenRegistrationRequest *)self wrapper];
    [v8 setPushState:1];

    os_unfair_lock_unlock(&self->_lock);
    v9 = [(DATokenRegistrationRequest *)self token];
    v10 = [v9 da_lowercaseHexStringWithoutSpaces];

    v11 = MEMORY[0x277CCACA8];
    v12 = [(DATokenRegistrationRequest *)self wrapper];
    v13 = [v12 delegate];
    v14 = [v13 serverTokenRegistrationURL];
    v15 = [v14 absoluteString];
    v16 = [v10 stringByAddingPercentEscapes];
    v17 = [(DATokenRegistrationRequest *)self pushKey];
    v18 = [v17 stringByAddingPercentEscapes];
    v19 = [v11 stringWithFormat:@"%@?token=%@&key=%@", v15, v16, v18];

    v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];
    v21 = [MEMORY[0x277CCAB70] requestWithURL:v20 cachePolicy:1 timeoutInterval:10.0];
    [(DATokenRegistrationRequest *)self setRequest:v21];

    v22 = [(DATokenRegistrationRequest *)self request];
    [v22 setHTTPMethod:@"POST"];

    v23 = [(DATokenRegistrationRequest *)self request];
    v24 = DAUserAgent();
    [v23 setValue:v24 forHTTPHeaderField:@"User-Agent"];

    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v25, v26))
    {
      *buf = 138412546;
      v43 = v10;
      v44 = 2112;
      v45 = v20;
      _os_log_impl(&dword_2424DF000, v25, v26, "Registering token %@ with the server at %@", buf, 0x16u);
    }

    v4 = v41;
    v27 = [v41 getAppleIDSession];
    v28 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v28 set_appleIDContext:v27];
    v29 = [(DATokenRegistrationRequest *)self onBehalfOfBundleIdentifier];
    [v28 set_sourceApplicationBundleIdentifier:v29];

    [v28 setURLCache:0];
    [v28 setDiscretionary:0];
    v30 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v28 delegate:self delegateQueue:0];
    [(DATokenRegistrationRequest *)self setSession:v30];

    v31 = [(DATokenRegistrationRequest *)self session];
    v32 = [(DATokenRegistrationRequest *)self request];
    v33 = [v31 dataTaskWithRequest:v32];
    [(DATokenRegistrationRequest *)self setTask:v33];

    v34 = [(DATokenRegistrationRequest *)self task];
    [v34 resume];
  }

  else
  {
    v35 = DALoggingwithCategory();
    v36 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = [(DATokenRegistrationRequest *)self wrapper];
      v38 = [v37 delegate];
      v39 = [v38 scheduleIdentifier];
      *buf = 138412290;
      v43 = v39;
      _os_log_impl(&dword_2424DF000, v35, v36, "Can't send a token registration for %@ because it doesn't implement serverTokenRegistrationURL.", buf, 0xCu);
    }

    v10 = [(DATokenRegistrationRequest *)self delegate];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:65 userInfo:0];
    [v10 tokenRegistrationRequest:self finishedWithError:v19];
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