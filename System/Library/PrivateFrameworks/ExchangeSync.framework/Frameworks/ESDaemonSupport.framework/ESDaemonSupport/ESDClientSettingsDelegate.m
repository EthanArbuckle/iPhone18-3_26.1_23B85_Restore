@interface ESDClientSettingsDelegate
- (BOOL)isOofSupported;
- (void)beginSettingsRequest;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)a3;
- (void)settingsRequestFinishedWithResults:(id)a3 status:(int64_t)a4 error:(id)a5;
@end

@implementation ESDClientSettingsDelegate

- (void)dealloc
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v3, v4, "ESDClientSettingsDelegate dealloced.", buf, 2u);
  }

  [(ESDClientSettingsDelegate *)self disable];
  v5.receiver = self;
  v5.super_class = ESDClientSettingsDelegate;
  [(ESDClientDelegate *)&v5 dealloc];
}

- (void)beginSettingsRequest
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[ESDAgentManager sharedManager];
  v4 = [(ESDClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:v4];

  if (v5)
  {
    if (![(ESDClientSettingsDelegate *)self isUpdate])
    {
      [v5 retrieveOofSettingsForConsumer:self];
      goto LABEL_9;
    }

    v6 = [(ESDClientSettingsDelegate *)self requestParams];
    [v5 updateOofSettingsWithParams:v6 consumer:self];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = [(ESDClientDelegate *)self accountID];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_24A184000, v7, v8, "Could not get an account with the ID %@", &v11, 0xCu);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    [(ESDClientSettingsDelegate *)self finishWithError:v6];
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOofSupported
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[ESDAgentManager sharedManager];
  v4 = [(ESDClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:v4];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (([v6 isHotmailAccount]& 1) != 0)
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v7, v8))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_24A184000, v7, v8, "Account %@ is a hotmail account", &v17, 0xCu);
      }

      LOBYTE(v9) = 0;
    }

    else
    {
      v11 = [v6 protocol];
      v9 = [v11 supportsSettingsCommand];

      v7 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v7, v12))
      {
        v13 = @"NO";
        if (v9)
        {
          v13 = @"YES";
        }

        v17 = 138412546;
        v18 = v6;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_24A184000, v7, v12, "Account %@ supports oof %@", &v17, 0x16u);
      }
    }
  }

  else
  {
    v6 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v6, v10))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_24A184000, v6, v10, "Account %@ is not ASAccount class", &v17, 0xCu);
    }

    LOBYTE(v9) = 0;
  }

  v14 = [(ESDClientDelegate *)self client];
  [v14 noteBlockedClientCallChange:1];

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)settingsRequestFinishedWithResults:(id)a3 status:(int64_t)a4 error:(id)a5
{
  v15 = a3;
  v7 = a5;
  if (v15)
  {
    v8 = [v15 oof];
    if (v8)
    {
      v9 = v8;
      v10 = [v15 oof];
      v11 = [v10 oofGetResult];

      if (v11)
      {
        v12 = [v15 oof];
        v13 = [v12 oofGetResult];
        v14 = [v13 convertToDAOofParams];
        [(ESDClientSettingsDelegate *)self setResponseParams:v14];
      }
    }
  }

  [(ESDClientSettingsDelegate *)self finishWithError:v7];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v3.receiver = self;
    v3.super_class = ESDClientSettingsDelegate;
    [(ESDClientDelegate *)&v3 disable];
  }
}

- (void)finishWithError:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(ESDClientDelegate *)self finished])
  {
    [(ESDClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 134217984;
      v32 = [v4 code];
      _os_log_impl(&dword_24A184000, v5, v6, "ESDClientSettingsDelegate finished with status %ld.", buf, 0xCu);
    }

    v7 = [(ESDClientDelegate *)self client];
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
      v14 = [(ESDClientDelegate *)self delegateID];
      v30[2] = v14;
      v29 = *MEMORY[0x277D03CC0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ESDClientSettingsDelegate isUpdate](self, "isUpdate")}];
      v30[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v26 count:4];
      v17 = [v16 mutableCopy];

      v18 = [(ESDClientSettingsDelegate *)self responseParams];

      if (v18)
      {
        v19 = [(ESDClientSettingsDelegate *)self responseParams];
        v20 = [v19 dictionaryRepresentation];
        [v17 setObject:v20 forKeyedSubscript:*MEMORY[0x277D03CE8]];
      }

      v21 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v8, v21);
    }

    v22 = [(ESDClientDelegate *)self client];
    [v22 noteBlockedClientCallChange:1];

    v23 = [(ESDClientDelegate *)self client];
    v24 = [(ESDClientDelegate *)self delegateID];
    [v23 delegateWithIDIsGoingAway:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end