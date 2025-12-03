@interface DADClientSettingsDelegate
- (BOOL)isOofSupported;
- (void)beginSettingsRequest;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)error;
- (void)settingsRequestFinishedWithResults:(id)results status:(int64_t)status error:(id)error;
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
  accountID = [(DADClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:accountID];

  if (v5)
  {
    if (![(DADClientSettingsDelegate *)self isUpdate])
    {
      [v5 retrieveOofSettingsForConsumer:self];
      goto LABEL_9;
    }

    requestParams = [(DADClientSettingsDelegate *)self requestParams];
    [v5 updateOofSettingsWithParams:requestParams consumer:self];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      accountID2 = [(DADClientDelegate *)self accountID];
      v11 = 138543362;
      v12 = accountID2;
      _os_log_impl(&dword_248524000, v7, v8, "Could not get an account with the ID %{public}@", &v11, 0xCu);
    }

    requestParams = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    [(DADClientSettingsDelegate *)self finishWithError:requestParams];
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOofSupported
{
  v3 = +[DADAgentManager sharedManager];
  accountID = [(DADClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:accountID];

  LOBYTE(v3) = [v5 isOofSupported];
  client = [(DADClientDelegate *)self client];
  [client noteBlockedClientCallChange:1];

  return v3;
}

- (void)settingsRequestFinishedWithResults:(id)results status:(int64_t)status error:(id)error
{
  errorCopy = error;
  if (results)
  {
    [(DADClientSettingsDelegate *)self setResponseParams:results];
  }

  [(DADClientSettingsDelegate *)self finishWithError:errorCopy];
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

- (void)finishWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 134217984;
      code = [errorCopy code];
      _os_log_impl(&dword_248524000, v5, v6, "DADClientSettingsDelegate finished with status %ld.", buf, 0xCu);
    }

    client = [(DADClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (rawConnection)
    {
      v9 = *MEMORY[0x277D03C88];
      v30[0] = *MEMORY[0x277D03CD8];
      v10 = *MEMORY[0x277D03E38];
      v26 = v9;
      v27 = v10;
      v11 = MEMORY[0x277CCABB0];
      if (errorCopy)
      {
        code2 = [errorCopy code];
      }

      else
      {
        code2 = 2;
      }

      v13 = [v11 numberWithInteger:{code2, v26, v27}];
      v30[1] = v13;
      v28 = *MEMORY[0x277D03CC8];
      delegateID = [(DADClientDelegate *)self delegateID];
      v30[2] = delegateID;
      v29 = *MEMORY[0x277D03CC0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[DADClientSettingsDelegate isUpdate](self, "isUpdate")}];
      v30[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v26 count:4];
      v17 = [v16 mutableCopy];

      responseParams = [(DADClientSettingsDelegate *)self responseParams];

      if (responseParams)
      {
        responseParams2 = [(DADClientSettingsDelegate *)self responseParams];
        dictionaryRepresentation = [responseParams2 dictionaryRepresentation];
        [v17 setObject:dictionaryRepresentation forKeyedSubscript:*MEMORY[0x277D03CE8]];
      }

      v21 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v21);
    }

    client2 = [(DADClientDelegate *)self client];
    [client2 noteBlockedClientCallChange:1];

    client3 = [(DADClientDelegate *)self client];
    delegateID2 = [(DADClientDelegate *)self delegateID];
    [client3 delegateWithIDIsGoingAway:delegateID2];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end