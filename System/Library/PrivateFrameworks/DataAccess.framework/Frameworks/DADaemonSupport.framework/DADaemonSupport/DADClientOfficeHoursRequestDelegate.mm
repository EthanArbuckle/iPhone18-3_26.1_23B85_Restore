@interface DADClientOfficeHoursRequestDelegate
- (void)_doRequestWithBlock:(id)block;
- (void)_finishedWithOfficeHours:(id)hours error:(id)error canceled:(BOOL)canceled;
- (void)fetchOfficeHours;
- (void)setOfficeHours:(id)hours;
@end

@implementation DADClientOfficeHoursRequestDelegate

- (void)fetchOfficeHours
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__DADClientOfficeHoursRequestDelegate_fetchOfficeHours__block_invoke;
  v2[3] = &unk_278F1D3E8;
  v2[4] = self;
  [(DADClientOfficeHoursRequestDelegate *)self _doRequestWithBlock:v2];
}

- (void)setOfficeHours:(id)hours
{
  hoursCopy = hours;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__DADClientOfficeHoursRequestDelegate_setOfficeHours___block_invoke;
  v6[3] = &unk_278F1D410;
  v7 = hoursCopy;
  selfCopy = self;
  v5 = hoursCopy;
  [(DADClientOfficeHoursRequestDelegate *)self _doRequestWithBlock:v6];
}

- (void)_doRequestWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (![(DADisableableObject *)self isDisabled])
  {
    v5 = +[DADAgentManager sharedManager];
    accountID = [(DADClientDelegate *)self accountID];
    v7 = [v5 accountWithAccountID:accountID];

    if (v7)
    {
      v15 = 0;
      v8 = blockCopy[2](blockCopy, v7, &v15);
      v9 = v15;
      [(DADClientOfficeHoursRequestDelegate *)self setRequestID:v8];
    }

    else
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        accountID2 = [(DADClientDelegate *)self accountID];
        *buf = 138543362;
        v17 = accountID2;
        _os_log_impl(&dword_248524000, v10, v11, "Could not get an account with the ID %{public}@", buf, 0xCu);
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    }

    requestID = [(DADClientOfficeHoursRequestDelegate *)self requestID];

    if (!requestID)
    {
      [(DADClientOfficeHoursRequestDelegate *)self _finishedWithOfficeHours:0 error:v9 canceled:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_finishedWithOfficeHours:(id)hours error:(id)error canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  v35 = *MEMORY[0x277D85DE8];
  hoursCopy = hours;
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v10 = DALoggingwithCategory();
    v11 = MEMORY[0x277D03988];
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v10, v12))
    {
      *buf = 138412290;
      v34 = errorCopy;
      _os_log_impl(&dword_248524000, v10, v12, "DADClientOfficeHoursRequestDelegate finished with error %@", buf, 0xCu);
    }

    if (canceledCopy)
    {
      requestID = [(DADClientOfficeHoursRequestDelegate *)self requestID];

      if (!requestID)
      {
LABEL_17:
        client = [(DADClientDelegate *)self client];
        delegateID = [(DADClientDelegate *)self delegateID];
        [client delegateWithIDIsGoingAway:delegateID];

        goto LABEL_18;
      }

      v14 = +[DADAgentManager sharedManager];
      accountID = [(DADClientDelegate *)self accountID];
      rawConnection = [v14 accountWithAccountID:accountID];

      if (rawConnection)
      {
        requestID2 = [(DADClientOfficeHoursRequestDelegate *)self requestID];
        [rawConnection cancelOfficeHoursRequestWithID:requestID2];
      }

      else
      {
        requestID2 = DALoggingwithCategory();
        v29 = *(v11 + 3);
        if (os_log_type_enabled(requestID2, v29))
        {
          accountID2 = [(DADClientDelegate *)self accountID];
          *buf = 138543362;
          v34 = accountID2;
          _os_log_impl(&dword_248524000, requestID2, v29, "DADClientOfficeHoursRequestDelegate canceled, but could not find an account with the ID %{public}@ to cancel the request", buf, 0xCu);
        }
      }
    }

    else
    {
      client2 = [(DADClientDelegate *)self client];
      rawConnection = [client2 rawConnection];

      if (!rawConnection)
      {
LABEL_16:

        goto LABEL_17;
      }

      v19 = *MEMORY[0x277D03C88];
      v32[0] = *MEMORY[0x277D03CB0];
      v20 = [(DADClientDelegate *)self delegateID:v19];
      v32[1] = v20;
      v31[2] = *MEMORY[0x277D03B40];
      v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy];
      v32[2] = v21;
      requestID2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

      if (hoursCopy)
      {
        v22 = [MEMORY[0x277D03900] dataFromOfficeHours:hoursCopy];
        if (v22)
        {
          v23 = [requestID2 mutableCopy];
          [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x277D03CA8]];
          v24 = [v23 copy];

          requestID2 = v24;
        }
      }

      v25 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v25);
    }

    goto LABEL_16;
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

@end