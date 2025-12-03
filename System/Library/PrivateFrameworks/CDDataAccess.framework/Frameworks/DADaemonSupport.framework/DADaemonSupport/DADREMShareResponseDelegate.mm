@interface DADREMShareResponseDelegate
- (DADREMShareResponseDelegate)initWithAccountID:(id)d calendarID:(id)iD;
- (void)_doResponseWithBlock:(id)block;
- (void)finishWithError:(id)error;
- (void)reportAsJunk;
- (void)respondToShareRequestWithResponse:(int64_t)response;
@end

@implementation DADREMShareResponseDelegate

- (DADREMShareResponseDelegate)initWithAccountID:(id)d calendarID:(id)iD
{
  iDCopy = iD;
  v10.receiver = self;
  v10.super_class = DADREMShareResponseDelegate;
  v7 = [(DADREMXPCPerformerDelegate *)&v10 initWithAccountID:d];
  v8 = v7;
  if (v7)
  {
    [(DADREMShareResponseDelegate *)v7 setCalendarID:iDCopy];
  }

  return v8;
}

- (void)respondToShareRequestWithResponse:(int64_t)response
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__DADREMShareResponseDelegate_respondToShareRequestWithResponse___block_invoke;
  v3[3] = &unk_278D52C48;
  v3[4] = self;
  v3[5] = response;
  [(DADREMShareResponseDelegate *)self _doResponseWithBlock:v3];
}

- (void)reportAsJunk
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__DADREMShareResponseDelegate_reportAsJunk__block_invoke;
  v2[3] = &unk_278D52C70;
  v2[4] = self;
  [(DADREMShareResponseDelegate *)self _doResponseWithBlock:v2];
}

- (void)_doResponseWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = +[DADAgentManager sharedManager];
  accountID = [(DADREMXPCPerformerDelegate *)self accountID];
  v7 = [v5 accountWithAccountID:accountID andClassName:@"MobileCalDAVAccount"];

  if (v7)
  {
    v8 = blockCopy[2](blockCopy, v7);
    [(DADREMShareResponseDelegate *)self setShareID:v8];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      accountID2 = [(DADREMXPCPerformerDelegate *)self accountID];
      v13 = 138412290;
      v14 = accountID2;
      _os_log_impl(&dword_2424DF000, v9, v10, "DADREMShareResponseDelegate: Could not get an account with the ID %@", &v13, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:55 userInfo:0];
    [(DADREMShareResponseDelegate *)self finishWithError:v8];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(DADREMXPCPerformerDelegate *)self finished])
  {
    goto LABEL_15;
  }

  [(DADREMXPCPerformerDelegate *)self setFinished:1];
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277CF3AF0];
  v7 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v5, v7))
  {
    v19 = 138412290;
    v20 = errorCopy;
    _os_log_impl(&dword_2424DF000, v5, v7, "DADREMShareResponseDelegate finished with optional error %@", &v19, 0xCu);
  }

  shareID = [(DADREMShareResponseDelegate *)self shareID];
  if (shareID)
  {
    v9 = shareID;
    domain = [errorCopy domain];
    if (![domain isEqualToString:*MEMORY[0x277CF3AB0]])
    {
LABEL_11:

      goto LABEL_12;
    }

    code = [errorCopy code];

    if (code == -1)
    {
      v12 = +[DADAgentManager sharedManager];
      accountID = [(DADREMXPCPerformerDelegate *)self accountID];
      v9 = [v12 accountWithAccountID:accountID];

      if (v9)
      {
        domain = [(DADREMShareResponseDelegate *)self shareID];
        [v9 cancelShareResponseInstance:domain error:0];
      }

      else
      {
        domain = DALoggingwithCategory();
        v14 = *(v6 + 3);
        if (os_log_type_enabled(domain, v14))
        {
          accountID2 = [(DADREMXPCPerformerDelegate *)self accountID];
          v19 = 138412290;
          v20 = accountID2;
          _os_log_impl(&dword_2424DF000, domain, v14, "DADREMShareResponseDelegate finished, but could not find an account with the ID %@", &v19, 0xCu);
        }
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  remXPCCompletion = [(DADREMXPCPerformerDelegate *)self remXPCCompletion];
  v17 = remXPCCompletion;
  if (remXPCCompletion)
  {
    (*(remXPCCompletion + 16))(remXPCCompletion, errorCopy);
  }

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

@end