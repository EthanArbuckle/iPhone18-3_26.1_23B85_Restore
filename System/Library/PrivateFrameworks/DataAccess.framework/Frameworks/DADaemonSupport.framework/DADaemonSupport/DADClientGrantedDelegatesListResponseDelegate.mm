@interface DADClientGrantedDelegatesListResponseDelegate
- (void)finishWithError:(id)error;
- (void)grantedDelegatesListRequestFinishedWithResults:(id)results error:(id)error;
- (void)performRequest;
@end

@implementation DADClientGrantedDelegatesListResponseDelegate

- (void)performRequest
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = +[DADAgentManager sharedManager];
    accountID = [(DADClientDelegate *)self accountID];
    v5 = [v3 accountWithAccountID:accountID];

    if (v5)
    {
      v6 = [v5 requestGrantedDelegatesListWithConsumer:self];
      requestID = self->_requestID;
      self->_requestID = v6;
    }

    else
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v8, v9))
      {
        accountID2 = [(DADClientDelegate *)self accountID];
        v13 = 138543362;
        v14 = accountID2;
        _os_log_impl(&dword_248524000, v8, v9, "Could not get an account with the ID [%{public}@]", &v13, 0xCu);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(DADClientGrantedDelegatesListResponseDelegate *)self finishWithError:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)grantedDelegatesListRequestFinishedWithResults:(id)results error:(id)error
{
  objc_storeStrong(&self->_results, results);
  errorCopy = error;
  [(DADClientGrantedDelegatesListResponseDelegate *)self finishWithError:errorCopy];
}

- (void)finishWithError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      *v27 = 138412546;
      *&v27[4] = objc_opt_class();
      *&v27[12] = 2112;
      *&v27[14] = errorCopy;
      v8 = *&v27[4];
      _os_log_impl(&dword_248524000, v5, v7, "[%@] finished with error %@", v27, 0x16u);
    }

    if (self->_requestID)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x277D038E0]])
      {
        code = [errorCopy code];

        if (code == -1)
        {
          v11 = +[DADAgentManager sharedManager];
          accountID = [(DADClientDelegate *)self accountID];
          rawConnection = [v11 accountWithAccountID:accountID];

          if (rawConnection)
          {
            [rawConnection cancelGrantedDelegatesListRequestWithID:self->_requestID];
LABEL_18:

            client = [(DADClientDelegate *)self client];
            delegateID = [(DADClientDelegate *)self delegateID];
            [client delegateWithIDIsGoingAway:delegateID];

            goto LABEL_19;
          }

          v15 = DALoggingwithCategory();
          v23 = *(v6 + 3);
          if (os_log_type_enabled(v15, v23))
          {
            v24 = objc_opt_class();
            v25 = v24;
            accountID2 = [(DADClientDelegate *)self accountID];
            *v27 = 138412546;
            *&v27[4] = v24;
            *&v27[12] = 2114;
            *&v27[14] = accountID2;
            _os_log_impl(&dword_248524000, v15, v23, "[%@] finished, but could not find an account with the ID %{public}@", v27, 0x16u);
          }

LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v14 = [(DADClientDelegate *)self client:*v27];
    rawConnection = [v14 rawConnection];

    if (!rawConnection)
    {
      goto LABEL_18;
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v15 setObject:*MEMORY[0x277D03BF0] forKeyedSubscript:*MEMORY[0x277D03C88]];
    delegateID2 = [(DADClientDelegate *)self delegateID];
    [v15 setObject:delegateID2 forKeyedSubscript:*MEMORY[0x277D03BF8]];

    if (errorCopy)
    {
      v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy];
      [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D03B40]];
    }

    if (self->_results)
    {
      v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:?];
      [v15 setObject:v18 forKeyedSubscript:*MEMORY[0x277D03C00]];
    }

    v19 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(rawConnection, v19);

    goto LABEL_17;
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
}

@end