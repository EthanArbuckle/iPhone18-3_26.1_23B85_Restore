@interface DADClientShareResponseDelegate
- (DADClientShareResponseDelegate)initWithAccountID:(id)a3 client:(id)a4 calendarID:(id)a5;
- (void)_doResponseWithBlock:(id)a3;
- (void)dealloc;
- (void)finishWithError:(id)a3;
- (void)reportAsJunk;
- (void)respondToShareRequestWithResponse:(int64_t)a3;
@end

@implementation DADClientShareResponseDelegate

- (DADClientShareResponseDelegate)initWithAccountID:(id)a3 client:(id)a4 calendarID:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = DADClientShareResponseDelegate;
  v9 = [(DADClientDelegate *)&v12 initWithAccountID:a3 client:a4];
  v10 = v9;
  if (v9)
  {
    [(DADClientShareResponseDelegate *)v9 setCalendarID:v8];
  }

  return v10;
}

- (void)dealloc
{
  [(DADClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = DADClientShareResponseDelegate;
  [(DADClientDelegate *)&v3 dealloc];
}

- (void)respondToShareRequestWithResponse:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__DADClientShareResponseDelegate_respondToShareRequestWithResponse___block_invoke;
  v3[3] = &unk_278F1D518;
  v3[4] = self;
  v3[5] = a3;
  [(DADClientShareResponseDelegate *)self _doResponseWithBlock:v3];
}

- (void)reportAsJunk
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__DADClientShareResponseDelegate_reportAsJunk__block_invoke;
  v2[3] = &unk_278F1D540;
  v2[4] = self;
  [(DADClientShareResponseDelegate *)self _doResponseWithBlock:v2];
}

- (void)_doResponseWithBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(DADisableableObject *)self isDisabled])
  {
    v5 = +[DADAgentManager sharedManager];
    v6 = [(DADClientDelegate *)self accountID];
    v7 = [v5 accountWithAccountID:v6 andClassName:@"MobileCalDAVDAAccount"];

    if (v7)
    {
      v8 = v4[2](v4, v7);
      [(DADClientShareResponseDelegate *)self setShareID:v8];
    }

    else
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = [(DADClientDelegate *)self accountID];
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_248524000, v9, v10, "Could not get an account with the ID %{public}@", &v13, 0xCu);
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(DADClientShareResponseDelegate *)self finishWithError:v8];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&dword_248524000, v5, v7, "DADClientShareResponseDelegate finished with error %@", buf, 0xCu);
    }

    v8 = [(DADClientShareResponseDelegate *)self shareID];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 domain];
      if ([v10 isEqualToString:*MEMORY[0x277D038E0]])
      {
        v11 = [v4 code];

        if (v11 == -1)
        {
          v12 = +[DADAgentManager sharedManager];
          v13 = [(DADClientDelegate *)self accountID];
          v14 = [v12 accountWithAccountID:v13];

          if (v14)
          {
            v15 = [(DADClientShareResponseDelegate *)self shareID];
            [v14 cancelShareResponseInstance:v15 error:0];
          }

          else
          {
            v15 = DALoggingwithCategory();
            v25 = *(v6 + 3);
            if (os_log_type_enabled(v15, v25))
            {
              v26 = [(DADClientDelegate *)self accountID];
              *buf = 138543362;
              v30 = v26;
              _os_log_impl(&dword_248524000, v15, v25, "DADClientShareResponseDelegate finished, but could not find an account with the ID %{public}@", buf, 0xCu);
            }
          }

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v16 = [(DADClientDelegate *)self client];
    v14 = [v16 rawConnection];

    if (!v14)
    {
LABEL_14:

      v22 = [(DADClientDelegate *)self client];
      v23 = [(DADClientDelegate *)self delegateID];
      [v22 delegateWithIDIsGoingAway:v23];

      goto LABEL_15;
    }

    v17 = *MEMORY[0x277D03C88];
    v28[0] = *MEMORY[0x277D03AB0];
    v18 = [(DADClientShareResponseDelegate *)self calendarID:v17];
    v28[1] = v18;
    v27[2] = *MEMORY[0x277D03E10];
    v19 = [(DADClientDelegate *)self delegateID];
    v28[2] = v19;
    v27[3] = *MEMORY[0x277D03B40];
    v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4];
    v28[3] = v20;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

    v21 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(v14, v21);

LABEL_13:
    goto LABEL_14;
  }

LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
}

@end