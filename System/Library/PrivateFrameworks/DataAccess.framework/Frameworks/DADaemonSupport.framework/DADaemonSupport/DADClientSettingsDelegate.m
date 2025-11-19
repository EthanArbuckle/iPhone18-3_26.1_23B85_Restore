@interface DADClientSettingsDelegate
- (BOOL)isOofSupported;
- (void)beginSettingsRequest;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)a3;
- (void)settingsRequestFinishedWithResults:(id)a3 status:(int64_t)a4 error:(id)a5;
@end

@implementation DADClientSettingsDelegate

- (void)dealloc
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "DADClientSettingsDelegate dealloced.", buf, 2u);
  }

  [(DADClientSettingsDelegate *)self disable];
  v5.receiver = self;
  v5.super_class = DADClientSettingsDelegate;
  [(DADClientDelegate *)&v5 dealloc];
}

- (void)beginSettingsRequest
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[DADAgentManager sharedManager];
  v4 = [(DADClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:v4];

  if (v5)
  {
    if (![(DADClientSettingsDelegate *)self isUpdate])
    {
      [v5 retrieveOofSettingsForConsumer:self];
      goto LABEL_9;
    }

    v6 = [(DADClientSettingsDelegate *)self requestParams];
    [v5 updateOofSettingsWithParams:v6 consumer:self];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = [(DADClientDelegate *)self accountID];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_248524000, v7, v8, "Could not get an account with the ID %{public}@", &v11, 0xCu);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    [(DADClientSettingsDelegate *)self finishWithError:v6];
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOofSupported
{
  v3 = +[DADAgentManager sharedManager];
  v4 = [(DADClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:v4];

  LOBYTE(v3) = [v5 isOofSupported];
  v6 = [(DADClientDelegate *)self client];
  [v6 noteBlockedClientCallChange:1];

  return v3;
}

- (void)settingsRequestFinishedWithResults:(id)a3 status:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  if (a3)
  {
    [(DADClientSettingsDelegate *)self setResponseParams:a3];
  }

  [(DADClientSettingsDelegate *)self finishWithError:v7];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v3.receiver = self;
    v3.super_class = DADClientSettingsDelegate;
    [(DADClientDelegate *)&v3 disable];
  }
}

- (void)finishWithError:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 134217984;
      v32 = [v4 code];
      _os_log_impl(&dword_248524000, v5, v6, "DADClientSettingsDelegate finished with status %ld.", buf, 0xCu);
    }

    v7 = [(DADClientDelegate *)self client];
    v8 = [v7 rawConnection];

    if (v8)
    {
      v9 = *MEMORY[0x277D03C88];
      v30[0] = *MEMORY[0x277D03CD8];
      v10 = *MEMORY[0x277D03E38];
      v26 = v9;
      v27 = v10;
      v11 = MEMORY[0x277CCABB0];
      if (v4)
      {
        v12 = [v4 code];
      }

      else
      {
        v12 = 2;
      }

      v13 = [v11 numberWithInteger:{v12, v26, v27}];
      v30[1] = v13;
      v28 = *MEMORY[0x277D03CC8];
      v14 = [(DADClientDelegate *)self delegateID];
      v30[2] = v14;
      v29 = *MEMORY[0x277D03CC0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[DADClientSettingsDelegate isUpdate](self, "isUpdate")}];
      v30[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v26 count:4];
      v17 = [v16 mutableCopy];

      v18 = [(DADClientSettingsDelegate *)self responseParams];

      if (v18)
      {
        v19 = [(DADClientSettingsDelegate *)self responseParams];
        v20 = [v19 dictionaryRepresentation];
        [v17 setObject:v20 forKeyedSubscript:*MEMORY[0x277D03CE8]];
      }

      v21 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v8, v21);
    }

    v22 = [(DADClientDelegate *)self client];
    [v22 noteBlockedClientCallChange:1];

    v23 = [(DADClientDelegate *)self client];
    v24 = [(DADClientDelegate *)self delegateID];
    [v23 delegateWithIDIsGoingAway:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end