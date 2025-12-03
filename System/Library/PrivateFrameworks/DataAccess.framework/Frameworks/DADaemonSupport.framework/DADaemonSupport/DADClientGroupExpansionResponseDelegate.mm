@interface DADClientGroupExpansionResponseDelegate
- (DADClientGroupExpansionResponseDelegate)initWithAccountID:(id)d client:(id)client principalPath:(id)path;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)groupExpansionFinishedWithResults:(id)results error:(id)error;
- (void)performRequest;
@end

@implementation DADClientGroupExpansionResponseDelegate

- (DADClientGroupExpansionResponseDelegate)initWithAccountID:(id)d client:(id)client principalPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = DADClientGroupExpansionResponseDelegate;
  v10 = [(DADClientDelegate *)&v13 initWithAccountID:d client:client];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_principalPath, path);
  }

  return v11;
}

- (void)dealloc
{
  [(DADClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = DADClientGroupExpansionResponseDelegate;
  [(DADClientDelegate *)&v3 dealloc];
}

- (void)finishWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *v18 = 138412546;
      *&v18[4] = objc_opt_class();
      *&v18[12] = 2112;
      *&v18[14] = errorCopy;
      v7 = *&v18[4];
      _os_log_impl(&dword_248524000, v5, v6, "[%@] finished with error %@", v18, 0x16u);
    }

    client = [(DADClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (rawConnection)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v10 setObject:*MEMORY[0x277D03C08] forKey:*MEMORY[0x277D03C88]];
      delegateID = [(DADClientDelegate *)self delegateID];
      [v10 setObject:delegateID forKey:*MEMORY[0x277D03C10]];

      if (errorCopy)
      {
        v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy];
        [v10 setObject:v12 forKey:*MEMORY[0x277D03B40]];
      }

      resultsData = self->_resultsData;
      if (resultsData)
      {
        [v10 setObject:resultsData forKey:*MEMORY[0x277D03A98]];
      }

      v14 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v14);
    }

    v15 = [(DADClientDelegate *)self client:*v18];
    delegateID2 = [(DADClientDelegate *)self delegateID];
    [v15 delegateWithIDIsGoingAway:delegateID2];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)performRequest
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = +[DADAgentManager sharedManager];
    accountID = [(DADClientDelegate *)self accountID];
    v5 = [v3 accountWithAccountID:accountID];

    if (v5)
    {
      [v5 performGroupExpansionForPrincipalPath:self->_principalPath consumer:self];
    }

    else
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v6, v7))
      {
        accountID2 = [(DADClientDelegate *)self accountID];
        v11 = 138543362;
        v12 = accountID2;
        _os_log_impl(&dword_248524000, v6, v7, "Could not get an account with the ID [%{public}@]", &v11, 0xCu);
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(DADClientGroupExpansionResponseDelegate *)self finishWithError:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)groupExpansionFinishedWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  if (resultsCopy && !-[DADisableableObject isDisabled](self, "isDisabled") && [resultsCopy count])
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:resultsCopy];
    resultsData = self->_resultsData;
    self->_resultsData = v7;
  }

  [(DADClientGroupExpansionResponseDelegate *)self finishWithError:errorCopy];
}

@end