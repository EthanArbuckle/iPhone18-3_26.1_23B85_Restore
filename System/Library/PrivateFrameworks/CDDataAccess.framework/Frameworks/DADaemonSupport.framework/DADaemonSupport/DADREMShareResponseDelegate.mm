@interface DADREMShareResponseDelegate
- (DADREMShareResponseDelegate)initWithAccountID:(id)a3 calendarID:(id)a4;
- (void)_doResponseWithBlock:(id)a3;
- (void)finishWithError:(id)a3;
- (void)reportAsJunk;
- (void)respondToShareRequestWithResponse:(int64_t)a3;
@end

@implementation DADREMShareResponseDelegate

- (DADREMShareResponseDelegate)initWithAccountID:(id)a3 calendarID:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = DADREMShareResponseDelegate;
  v7 = [(DADREMXPCPerformerDelegate *)&v10 initWithAccountID:a3];
  v8 = v7;
  if (v7)
  {
    [(DADREMShareResponseDelegate *)v7 setCalendarID:v6];
  }

  return v8;
}

- (void)respondToShareRequestWithResponse:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__DADREMShareResponseDelegate_respondToShareRequestWithResponse___block_invoke;
  v3[3] = &unk_278D52C48;
  v3[4] = self;
  v3[5] = a3;
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

- (void)_doResponseWithBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[DADAgentManager sharedManager];
  v6 = [(DADREMXPCPerformerDelegate *)self accountID];
  v7 = [v5 accountWithAccountID:v6 andClassName:@"MobileCalDAVAccount"];

  if (v7)
  {
    v8 = v4[2](v4, v7);
    [(DADREMShareResponseDelegate *)self setShareID:v8];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = [(DADREMXPCPerformerDelegate *)self accountID];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_2424DF000, v9, v10, "DADREMShareResponseDelegate: Could not get an account with the ID %@", &v13, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:55 userInfo:0];
    [(DADREMShareResponseDelegate *)self finishWithError:v8];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v20 = v4;
    _os_log_impl(&dword_2424DF000, v5, v7, "DADREMShareResponseDelegate finished with optional error %@", &v19, 0xCu);
  }

  v8 = [(DADREMShareResponseDelegate *)self shareID];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CF3AB0]])
    {
LABEL_11:

      goto LABEL_12;
    }

    v11 = [v4 code];

    if (v11 == -1)
    {
      v12 = +[DADAgentManager sharedManager];
      v13 = [(DADREMXPCPerformerDelegate *)self accountID];
      v9 = [v12 accountWithAccountID:v13];

      if (v9)
      {
        v10 = [(DADREMShareResponseDelegate *)self shareID];
        [v9 cancelShareResponseInstance:v10 error:0];
      }

      else
      {
        v10 = DALoggingwithCategory();
        v14 = *(v6 + 3);
        if (os_log_type_enabled(v10, v14))
        {
          v15 = [(DADREMXPCPerformerDelegate *)self accountID];
          v19 = 138412290;
          v20 = v15;
          _os_log_impl(&dword_2424DF000, v10, v14, "DADREMShareResponseDelegate finished, but could not find an account with the ID %@", &v19, 0xCu);
        }
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  v16 = [(DADREMXPCPerformerDelegate *)self remXPCCompletion];
  v17 = v16;
  if (v16)
  {
    (*(v16 + 16))(v16, v4);
  }

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

@end