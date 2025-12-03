@interface ESDClientShareResponseDelegate
- (ESDClientShareResponseDelegate)initWithAccountID:(id)d client:(id)client calendarID:(id)iD;
- (void)_doResponseWithBlock:(id)block;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)reportAsJunk;
- (void)respondToShareRequestWithResponse:(int64_t)response;
@end

@implementation ESDClientShareResponseDelegate

- (ESDClientShareResponseDelegate)initWithAccountID:(id)d client:(id)client calendarID:(id)iD
{
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = ESDClientShareResponseDelegate;
  v9 = [(ESDClientDelegate *)&v12 initWithAccountID:d client:client];
  v10 = v9;
  if (v9)
  {
    [(ESDClientShareResponseDelegate *)v9 setCalendarID:iDCopy];
  }

  return v10;
}

- (void)dealloc
{
  [(ESDClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = ESDClientShareResponseDelegate;
  [(ESDClientDelegate *)&v3 dealloc];
}

- (void)respondToShareRequestWithResponse:(int64_t)response
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__ESDClientShareResponseDelegate_respondToShareRequestWithResponse___block_invoke;
  v3[3] = &unk_278FCE1C0;
  v3[4] = self;
  v3[5] = response;
  [(ESDClientShareResponseDelegate *)self _doResponseWithBlock:v3];
}

- (void)reportAsJunk
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__ESDClientShareResponseDelegate_reportAsJunk__block_invoke;
  v2[3] = &unk_278FCE1E8;
  v2[4] = self;
  [(ESDClientShareResponseDelegate *)self _doResponseWithBlock:v2];
}

- (void)_doResponseWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (![(DADisableableObject *)self isDisabled])
  {
    v5 = +[ESDAgentManager sharedManager];
    accountID = [(ESDClientDelegate *)self accountID];
    v7 = [v5 accountWithAccountID:accountID andClassName:@"MobileCalDAVAccount"];

    if (v7)
    {
      v8 = blockCopy[2](blockCopy, v7);
      [(ESDClientShareResponseDelegate *)self setShareID:v8];
    }

    else
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v9, v10))
      {
        accountID2 = [(ESDClientDelegate *)self accountID];
        v13 = 138412290;
        v14 = accountID2;
        _os_log_impl(&dword_24A184000, v9, v10, "Could not get an account with the ID %@", &v13, 0xCu);
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(ESDClientShareResponseDelegate *)self finishWithError:v8];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(ESDClientDelegate *)self finished])
  {
    [(ESDClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      *buf = 138412290;
      v30 = errorCopy;
      _os_log_impl(&dword_24A184000, v5, v7, "DADClientShareResponseDelegate finished with error %@", buf, 0xCu);
    }

    shareID = [(ESDClientShareResponseDelegate *)self shareID];
    if (shareID)
    {
      v9 = shareID;
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x277D038E0]])
      {
        code = [errorCopy code];

        if (code == -1)
        {
          v12 = +[ESDAgentManager sharedManager];
          accountID = [(ESDClientDelegate *)self accountID];
          rawConnection = [v12 accountWithAccountID:accountID];

          if (rawConnection)
          {
            shareID2 = [(ESDClientShareResponseDelegate *)self shareID];
            [rawConnection cancelShareResponseInstance:shareID2 error:0];
          }

          else
          {
            shareID2 = DALoggingwithCategory();
            v25 = *(v6 + 3);
            if (os_log_type_enabled(shareID2, v25))
            {
              accountID2 = [(ESDClientDelegate *)self accountID];
              *buf = 138412290;
              v30 = accountID2;
              _os_log_impl(&dword_24A184000, shareID2, v25, "DADClientShareResponseDelegate finished, but could not find an account with the ID %@", buf, 0xCu);
            }
          }

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    client = [(ESDClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (!rawConnection)
    {
LABEL_14:

      client2 = [(ESDClientDelegate *)self client];
      delegateID = [(ESDClientDelegate *)self delegateID];
      [client2 delegateWithIDIsGoingAway:delegateID];

      goto LABEL_15;
    }

    v17 = *MEMORY[0x277D03C88];
    v28[0] = *MEMORY[0x277D03AB0];
    v18 = [(ESDClientShareResponseDelegate *)self calendarID:v17];
    v28[1] = v18;
    v27[2] = *MEMORY[0x277D03E10];
    delegateID2 = [(ESDClientDelegate *)self delegateID];
    v28[2] = delegateID2;
    v27[3] = *MEMORY[0x277D03B40];
    v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy];
    v28[3] = v20;
    shareID2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

    v21 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(rawConnection, v21);

LABEL_13:
    goto LABEL_14;
  }

LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
}

@end