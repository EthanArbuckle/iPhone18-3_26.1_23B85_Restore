@interface DADClientOfficeHoursRequestDelegate
- (void)_doRequestWithBlock:(id)a3;
- (void)_finishedWithOfficeHours:(id)a3 error:(id)a4 canceled:(BOOL)a5;
- (void)fetchOfficeHours;
- (void)setOfficeHours:(id)a3;
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

- (void)setOfficeHours:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__DADClientOfficeHoursRequestDelegate_setOfficeHours___block_invoke;
  v6[3] = &unk_278F1D410;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(DADClientOfficeHoursRequestDelegate *)self _doRequestWithBlock:v6];
}

- (void)_doRequestWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(DADisableableObject *)self isDisabled])
  {
    v5 = +[DADAgentManager sharedManager];
    v6 = [(DADClientDelegate *)self accountID];
    v7 = [v5 accountWithAccountID:v6];

    if (v7)
    {
      v15 = 0;
      v8 = v4[2](v4, v7, &v15);
      v9 = v15;
      [(DADClientOfficeHoursRequestDelegate *)self setRequestID:v8];
    }

    else
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = [(DADClientDelegate *)self accountID];
        *buf = 138543362;
        v17 = v12;
        _os_log_impl(&dword_248524000, v10, v11, "Could not get an account with the ID %{public}@", buf, 0xCu);
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    }

    v13 = [(DADClientOfficeHoursRequestDelegate *)self requestID];

    if (!v13)
    {
      [(DADClientOfficeHoursRequestDelegate *)self _finishedWithOfficeHours:0 error:v9 canceled:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_finishedWithOfficeHours:(id)a3 error:(id)a4 canceled:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v10 = DALoggingwithCategory();
    v11 = MEMORY[0x277D03988];
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v10, v12))
    {
      *buf = 138412290;
      v34 = v9;
      _os_log_impl(&dword_248524000, v10, v12, "DADClientOfficeHoursRequestDelegate finished with error %@", buf, 0xCu);
    }

    if (v5)
    {
      v13 = [(DADClientOfficeHoursRequestDelegate *)self requestID];

      if (!v13)
      {
LABEL_17:
        v26 = [(DADClientDelegate *)self client];
        v27 = [(DADClientDelegate *)self delegateID];
        [v26 delegateWithIDIsGoingAway:v27];

        goto LABEL_18;
      }

      v14 = +[DADAgentManager sharedManager];
      v15 = [(DADClientDelegate *)self accountID];
      v16 = [v14 accountWithAccountID:v15];

      if (v16)
      {
        v17 = [(DADClientOfficeHoursRequestDelegate *)self requestID];
        [v16 cancelOfficeHoursRequestWithID:v17];
      }

      else
      {
        v17 = DALoggingwithCategory();
        v29 = *(v11 + 3);
        if (os_log_type_enabled(v17, v29))
        {
          v30 = [(DADClientDelegate *)self accountID];
          *buf = 138543362;
          v34 = v30;
          _os_log_impl(&dword_248524000, v17, v29, "DADClientOfficeHoursRequestDelegate canceled, but could not find an account with the ID %{public}@ to cancel the request", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = [(DADClientDelegate *)self client];
      v16 = [v18 rawConnection];

      if (!v16)
      {
LABEL_16:

        goto LABEL_17;
      }

      v19 = *MEMORY[0x277D03C88];
      v32[0] = *MEMORY[0x277D03CB0];
      v20 = [(DADClientDelegate *)self delegateID:v19];
      v32[1] = v20;
      v31[2] = *MEMORY[0x277D03B40];
      v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9];
      v32[2] = v21;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

      if (v8)
      {
        v22 = [MEMORY[0x277D03900] dataFromOfficeHours:v8];
        if (v22)
        {
          v23 = [v17 mutableCopy];
          [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x277D03CA8]];
          v24 = [v23 copy];

          v17 = v24;
        }
      }

      v25 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v16, v25);
    }

    goto LABEL_16;
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

@end