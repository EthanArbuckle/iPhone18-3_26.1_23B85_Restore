@interface ASPolicyPreflighter
- (ASAccount)account;
- (ASPolicyPreflighter)initWithAccount:(id)a3 policyKey:(id)a4;
- (ASPolicyPreflighterDelegate)delegate;
- (id)_originalKey;
- (id)contextInfo;
- (void)acknowledgeIntentionToRemoteWipe;
- (void)acknowledgePolicyCompliance;
- (void)cancelPendingPreflightRequest;
- (void)dealloc;
- (void)invalidate;
- (void)provisionTask:(id)a3 failedWithError:(id)a4;
- (void)provisionTask:(id)a3 wipeRequested:(BOOL)a4 accountOnlyRipeRequested:(BOOL)a5 policies:(id)a6 status:(int64_t)a7;
- (void)startPreflight;
@end

@implementation ASPolicyPreflighter

- (void)invalidate
{
  [(ASPolicyPreflighter *)self setInvalidated:1];
  v3 = [(ASPolicyPreflighter *)self taskManager];
  [v3 shutdown];
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASPolicyPreflighter.m" lineNumber:42 description:@"The preflighter should be invalidated before it is deallocated"];
}

- (ASPolicyPreflighter)initWithAccount:(id)a3 policyKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASPolicyPreflighter;
  v8 = [(ASPolicyPreflighter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(ASPolicyPreflighter *)v8 setAccount:v6];
    v10 = [ASTaskManager alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_account);
    v12 = [(ASTaskManager *)v10 initWithAccount:WeakRetained policyManager:0];
    [(ASPolicyPreflighter *)v9 setTaskManager:v12];

    [(ASPolicyPreflighter *)v9 setOriginalKey:v7];
  }

  return v9;
}

- (id)_originalKey
{
  if (self->_originalKey)
  {
    return self->_originalKey;
  }

  else
  {
    return @"0";
  }
}

- (void)provisionTask:(id)a3 failedWithError:(id)a4
{
  v5 = a4;
  v6 = [(ASPolicyPreflighter *)self delegate];
  [v6 preflighter:self error:v5];
}

- (void)provisionTask:(id)a3 wipeRequested:(BOOL)a4 accountOnlyRipeRequested:(BOOL)a5 policies:(id)a6 status:(int64_t)a7
{
  v8 = a5;
  v9 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = [a3 type];
  if (a7 != 2)
  {
    v22 = [(ASPolicyPreflighter *)self delegate];
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASPolicyRequestError" code:a7 userInfo:0];
    [v22 preflighter:self error:v23];

    goto LABEL_38;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v34 = [(ASPolicyPreflighter *)self delegate];
      [v34 preflighterRemoteWipeRequestResponseAcknowledged:self];

      v25 = DALoggingwithCategory();
      v26 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v25, v26))
      {
        LOWORD(v45) = 0;
        v27 = "Remote Wipe acknowledgement ack'd by server";
        goto LABEL_21;
      }
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_38;
      }

      v24 = [(ASPolicyPreflighter *)self delegate];
      [v24 preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:self];

      v25 = DALoggingwithCategory();
      v26 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v25, v26))
      {
        LOWORD(v45) = 0;
        v27 = "Account Only Remote Wipe acknowledgement ack'd by server";
LABEL_21:
        _os_log_impl(&dword_24A0AC000, v25, v26, v27, &v45, 2u);
      }
    }

    goto LABEL_38;
  }

  if (!v13)
  {
    v14 = [v12 objectAtIndexedSubscript:0];
    [(ASPolicyPreflighter *)self setPolicy:v14];
    if (v9)
    {
      v28 = [(ASPolicyPreflighter *)self account];
      v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277D07B00]];

      if (!v29)
      {
        v16 = [(ASPolicyPreflighter *)self delegate];
        [v16 preflighterRemoteWipeRequested:self];
        goto LABEL_36;
      }

      v30 = DALoggingwithCategory();
      v31 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = [(ASPolicyPreflighter *)self account];
        v33 = [v32 accountID];
        v45 = 138412290;
        v46 = v33;
        _os_log_impl(&dword_24A0AC000, v30, v31, "Exchange device wipe command is converted to account wipe for account: %@", &v45, 0xCu);
      }
    }

    else if (!v8)
    {
      if (![v12 count])
      {
LABEL_37:

        goto LABEL_38;
      }

      v38 = [v14 status];
      if (v38 == 2)
      {
        v16 = [(ASPolicyPreflighter *)self delegate];
        [v16 preflighter:self needsComplianceWithMCFeatures:0 perAccountPolicies:0];
        goto LABEL_36;
      }

      v39 = v38;
      if (v38 != 1)
      {
        v41 = DALoggingwithCategory();
        v42 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v41, v42))
        {
          v45 = 67109120;
          LODWORD(v46) = v39;
          _os_log_impl(&dword_24A0AC000, v41, v42, "policy request failed with policy status: %d", &v45, 8u);
        }

        v43 = [(ASPolicyPreflighter *)self delegate];
        v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASPolicyStatusError" code:v39 userInfo:0];
        [v43 preflighter:self error:v44];

        goto LABEL_37;
      }

      v16 = [v14 perDomainDictsForPolicy];
      v18 = [(ASPolicyPreflighter *)self delegate];
      v19 = [v16 objectForKeyedSubscript:@"ASPolicyMCFeatures"];
      v20 = [v16 objectForKeyedSubscript:@"ASPolicyPerAccountEASPolicies"];
      [v18 preflighter:self needsComplianceWithMCFeatures:v19 perAccountPolicies:v20];
      goto LABEL_8;
    }

    v16 = [(ASPolicyPreflighter *)self delegate];
    [v16 preflighterAccountOnlyRemoteWipeRequested:self];
LABEL_36:

    goto LABEL_37;
  }

  if (v13 == 1)
  {
    if (![v12 count])
    {
      v35 = DALoggingwithCategory();
      v36 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v35, v36))
      {
        LOWORD(v45) = 0;
        _os_log_impl(&dword_24A0AC000, v35, v36, "no policies to acknowledge!", &v45, 2u);
      }

      v14 = [(ASPolicyPreflighter *)self delegate];
      [v14 preflighter:self error:0];
      goto LABEL_37;
    }

    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = [v14 status];
    if (v15 != 1)
    {
      v37 = v15;
      v16 = [(ASPolicyPreflighter *)self delegate];
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASPolicyStatusError" code:v37 userInfo:0];
      [v16 preflighter:self error:v18];
      goto LABEL_29;
    }

    v16 = [v14 key];
    v17 = [(ASPolicyPreflighter *)self acknowledgedPolicy];
    v18 = [v17 perDomainDictsForPolicy];

    v19 = [(ASPolicyPreflighter *)self delegate];
    v20 = [v18 objectForKeyedSubscript:@"ASPolicyMCFeatures"];
    v21 = [v18 objectForKeyedSubscript:@"ASPolicyPerAccountEASPolicies"];
    [v19 preflighter:self successWithMCFeatures:v20 perAccountPolicies:v21 policyKey:v16];

LABEL_8:
LABEL_29:

    goto LABEL_36;
  }

LABEL_38:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)startPreflight
{
  v3 = [ASProvisionTask alloc];
  v4 = [(ASPolicyPreflighter *)self originalKey];
  v9 = [(ASProvisionTask *)v3 initWithOriginalKeyForPolicyRequest:v4];

  v5 = [(ASPolicyPreflighter *)self account];
  if (([v5 isGoogleAccount] & 1) == 0)
  {
    v6 = [(ASPolicyPreflighter *)self account];
    v7 = [v6 isHotmailAccount];

    if (v7)
    {
      goto LABEL_5;
    }

    v5 = ASDeviceInfo();
    [(ASProvisionTask *)v9 setDeviceInfo:v5];
  }

LABEL_5:
  [(ASTask *)v9 setDelegate:self];
  v8 = [(ASPolicyPreflighter *)self taskManager];
  [v8 submitExclusiveTask:v9];
}

- (void)acknowledgePolicyCompliance
{
  v3 = [(ASPolicyPreflighter *)self policy];
  [(ASPolicyPreflighter *)self setAcknowledgedPolicy:v3];

  v4 = [ASProvisionTask alloc];
  v5 = [(ASPolicyPreflighter *)self policy];
  v6 = [(ASPolicyPreflighter *)self policy];
  v7 = [v6 key];
  v9 = [(ASProvisionTask *)v4 initWithPolicyAcknowledgement:v5 withKey:v7];

  [(ASTask *)v9 setDelegate:self];
  v8 = [(ASPolicyPreflighter *)self taskManager];
  [v8 submitExclusiveTask:v9];
}

- (void)acknowledgeIntentionToRemoteWipe
{
  v3 = [ASProvisionTask alloc];
  v4 = [(ASPolicyPreflighter *)self policy];
  v5 = [(ASPolicyPreflighter *)self policy];
  v6 = [v5 key];
  v8 = [(ASProvisionTask *)v3 initWithRemoteWipeAcknowledgement:v4 withKey:v6];

  [(ASTask *)v8 setDelegate:self];
  v7 = [(ASPolicyPreflighter *)self taskManager];
  [v7 submitExclusiveTask:v8];
}

- (void)cancelPendingPreflightRequest
{
  [(ASPolicyPreflighter *)self setDelegate:0];
  v3 = [(ASPolicyPreflighter *)self taskManager];
  [v3 cancelAllTasks];
}

- (ASAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

- (ASPolicyPreflighterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)contextInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_contextInfo);

  return WeakRetained;
}

@end