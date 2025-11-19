@interface DADClientGroupExpansionResponseDelegate
- (DADClientGroupExpansionResponseDelegate)initWithAccountID:(id)a3 client:(id)a4 principalPath:(id)a5;
- (void)dealloc;
- (void)finishWithError:(id)a3;
- (void)groupExpansionFinishedWithResults:(id)a3 error:(id)a4;
- (void)performRequest;
@end

@implementation DADClientGroupExpansionResponseDelegate

- (DADClientGroupExpansionResponseDelegate)initWithAccountID:(id)a3 client:(id)a4 principalPath:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = DADClientGroupExpansionResponseDelegate;
  v10 = [(DADClientDelegate *)&v13 initWithAccountID:a3 client:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_principalPath, a5);
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

- (void)finishWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      *&v18[14] = v4;
      v7 = *&v18[4];
      _os_log_impl(&dword_248524000, v5, v6, "[%@] finished with error %@", v18, 0x16u);
    }

    v8 = [(DADClientDelegate *)self client];
    v9 = [v8 rawConnection];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v10 setObject:*MEMORY[0x277D03C08] forKey:*MEMORY[0x277D03C88]];
      v11 = [(DADClientDelegate *)self delegateID];
      [v10 setObject:v11 forKey:*MEMORY[0x277D03C10]];

      if (v4)
      {
        v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4];
        [v10 setObject:v12 forKey:*MEMORY[0x277D03B40]];
      }

      resultsData = self->_resultsData;
      if (resultsData)
      {
        [v10 setObject:resultsData forKey:*MEMORY[0x277D03A98]];
      }

      v14 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v9, v14);
    }

    v15 = [(DADClientDelegate *)self client:*v18];
    v16 = [(DADClientDelegate *)self delegateID];
    [v15 delegateWithIDIsGoingAway:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)performRequest
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = +[DADAgentManager sharedManager];
    v4 = [(DADClientDelegate *)self accountID];
    v5 = [v3 accountWithAccountID:v4];

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
        v8 = [(DADClientDelegate *)self accountID];
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_248524000, v6, v7, "Could not get an account with the ID [%{public}@]", &v11, 0xCu);
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(DADClientGroupExpansionResponseDelegate *)self finishWithError:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)groupExpansionFinishedWithResults:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 && !-[DADisableableObject isDisabled](self, "isDisabled") && [v9 count])
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9];
    resultsData = self->_resultsData;
    self->_resultsData = v7;
  }

  [(DADClientGroupExpansionResponseDelegate *)self finishWithError:v6];
}

@end