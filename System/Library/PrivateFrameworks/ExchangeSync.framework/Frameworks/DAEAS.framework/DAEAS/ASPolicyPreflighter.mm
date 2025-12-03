@interface ASPolicyPreflighter
- (ASAccount)account;
- (ASPolicyPreflighter)initWithAccount:(id)account policyKey:(id)key;
- (ASPolicyPreflighterDelegate)delegate;
- (id)_originalKey;
- (id)contextInfo;
- (void)acknowledgeIntentionToRemoteWipe;
- (void)acknowledgePolicyCompliance;
- (void)cancelPendingPreflightRequest;
- (void)dealloc;
- (void)invalidate;
- (void)provisionTask:(id)task failedWithError:(id)error;
- (void)provisionTask:(id)task wipeRequested:(BOOL)requested accountOnlyRipeRequested:(BOOL)ripeRequested policies:(id)policies status:(int64_t)status;
- (void)startPreflight;
@end

@implementation ASPolicyPreflighter

- (void)invalidate
{
  [(ASPolicyPreflighter *)self setInvalidated:1];
  taskManager = [(ASPolicyPreflighter *)self taskManager];
  [taskManager shutdown];
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ASPolicyPreflighter.m" lineNumber:42 description:@"The preflighter should be invalidated before it is deallocated"];
}

- (ASPolicyPreflighter)initWithAccount:(id)account policyKey:(id)key
{
  accountCopy = account;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = ASPolicyPreflighter;
  v8 = [(ASPolicyPreflighter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(ASPolicyPreflighter *)v8 setAccount:accountCopy];
    v10 = [ASTaskManager alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_account);
    v12 = [(ASTaskManager *)v10 initWithAccount:WeakRetained policyManager:0];
    [(ASPolicyPreflighter *)v9 setTaskManager:v12];

    [(ASPolicyPreflighter *)v9 setOriginalKey:keyCopy];
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

- (void)provisionTask:(id)task failedWithError:(id)error
{
  errorCopy = error;
  delegate = [(ASPolicyPreflighter *)self delegate];
  [delegate preflighter:self error:errorCopy];
}

- (void)provisionTask:(id)task wipeRequested:(BOOL)requested accountOnlyRipeRequested:(BOOL)ripeRequested policies:(id)policies status:(int64_t)status
{
  ripeRequestedCopy = ripeRequested;
  requestedCopy = requested;
  v47 = *MEMORY[0x277D85DE8];
  policiesCopy = policies;
  type = [task type];
  if (status != 2)
  {
    delegate = [(ASPolicyPreflighter *)self delegate];
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASPolicyRequestError" code:status userInfo:0];
    [delegate preflighter:self error:v23];

    goto LABEL_38;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      delegate2 = [(ASPolicyPreflighter *)self delegate];
      [delegate2 preflighterRemoteWipeRequestResponseAcknowledged:self];

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
      if (type != 3)
      {
        goto LABEL_38;
      }

      delegate3 = [(ASPolicyPreflighter *)self delegate];
      [delegate3 preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:self];

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

  if (!type)
  {
    delegate7 = [policiesCopy objectAtIndexedSubscript:0];
    [(ASPolicyPreflighter *)self setPolicy:delegate7];
    if (requestedCopy)
    {
      account = [(ASPolicyPreflighter *)self account];
      v29 = [account objectForKeyedSubscript:*MEMORY[0x277D07B00]];

      if (!v29)
      {
        delegate4 = [(ASPolicyPreflighter *)self delegate];
        [delegate4 preflighterRemoteWipeRequested:self];
        goto LABEL_36;
      }

      v30 = DALoggingwithCategory();
      v31 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v30, v31))
      {
        account2 = [(ASPolicyPreflighter *)self account];
        accountID = [account2 accountID];
        v45 = 138412290;
        v46 = accountID;
        _os_log_impl(&dword_24A0AC000, v30, v31, "Exchange device wipe command is converted to account wipe for account: %@", &v45, 0xCu);
      }
    }

    else if (!ripeRequestedCopy)
    {
      if (![policiesCopy count])
      {
LABEL_37:

        goto LABEL_38;
      }

      status = [delegate7 status];
      if (status == 2)
      {
        delegate4 = [(ASPolicyPreflighter *)self delegate];
        [delegate4 preflighter:self needsComplianceWithMCFeatures:0 perAccountPolicies:0];
        goto LABEL_36;
      }

      v39 = status;
      if (status != 1)
      {
        v41 = DALoggingwithCategory();
        v42 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v41, v42))
        {
          v45 = 67109120;
          LODWORD(v46) = v39;
          _os_log_impl(&dword_24A0AC000, v41, v42, "policy request failed with policy status: %d", &v45, 8u);
        }

        delegate5 = [(ASPolicyPreflighter *)self delegate];
        v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASPolicyStatusError" code:v39 userInfo:0];
        [delegate5 preflighter:self error:v44];

        goto LABEL_37;
      }

      delegate4 = [delegate7 perDomainDictsForPolicy];
      delegate6 = [(ASPolicyPreflighter *)self delegate];
      delegate8 = [delegate4 objectForKeyedSubscript:@"ASPolicyMCFeatures"];
      v20 = [delegate4 objectForKeyedSubscript:@"ASPolicyPerAccountEASPolicies"];
      [delegate6 preflighter:self needsComplianceWithMCFeatures:delegate8 perAccountPolicies:v20];
      goto LABEL_8;
    }

    delegate4 = [(ASPolicyPreflighter *)self delegate];
    [delegate4 preflighterAccountOnlyRemoteWipeRequested:self];
LABEL_36:

    goto LABEL_37;
  }

  if (type == 1)
  {
    if (![policiesCopy count])
    {
      v35 = DALoggingwithCategory();
      v36 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v35, v36))
      {
        LOWORD(v45) = 0;
        _os_log_impl(&dword_24A0AC000, v35, v36, "no policies to acknowledge!", &v45, 2u);
      }

      delegate7 = [(ASPolicyPreflighter *)self delegate];
      [delegate7 preflighter:self error:0];
      goto LABEL_37;
    }

    delegate7 = [policiesCopy objectAtIndexedSubscript:0];
    status2 = [delegate7 status];
    if (status2 != 1)
    {
      v37 = status2;
      delegate4 = [(ASPolicyPreflighter *)self delegate];
      delegate6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASPolicyStatusError" code:v37 userInfo:0];
      [delegate4 preflighter:self error:delegate6];
      goto LABEL_29;
    }

    delegate4 = [delegate7 key];
    acknowledgedPolicy = [(ASPolicyPreflighter *)self acknowledgedPolicy];
    delegate6 = [acknowledgedPolicy perDomainDictsForPolicy];

    delegate8 = [(ASPolicyPreflighter *)self delegate];
    v20 = [delegate6 objectForKeyedSubscript:@"ASPolicyMCFeatures"];
    v21 = [delegate6 objectForKeyedSubscript:@"ASPolicyPerAccountEASPolicies"];
    [delegate8 preflighter:self successWithMCFeatures:v20 perAccountPolicies:v21 policyKey:delegate4];

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
  originalKey = [(ASPolicyPreflighter *)self originalKey];
  v9 = [(ASProvisionTask *)v3 initWithOriginalKeyForPolicyRequest:originalKey];

  account = [(ASPolicyPreflighter *)self account];
  if (([account isGoogleAccount] & 1) == 0)
  {
    account2 = [(ASPolicyPreflighter *)self account];
    isHotmailAccount = [account2 isHotmailAccount];

    if (isHotmailAccount)
    {
      goto LABEL_5;
    }

    account = ASDeviceInfo();
    [(ASProvisionTask *)v9 setDeviceInfo:account];
  }

LABEL_5:
  [(ASTask *)v9 setDelegate:self];
  taskManager = [(ASPolicyPreflighter *)self taskManager];
  [taskManager submitExclusiveTask:v9];
}

- (void)acknowledgePolicyCompliance
{
  policy = [(ASPolicyPreflighter *)self policy];
  [(ASPolicyPreflighter *)self setAcknowledgedPolicy:policy];

  v4 = [ASProvisionTask alloc];
  policy2 = [(ASPolicyPreflighter *)self policy];
  policy3 = [(ASPolicyPreflighter *)self policy];
  v7 = [policy3 key];
  v9 = [(ASProvisionTask *)v4 initWithPolicyAcknowledgement:policy2 withKey:v7];

  [(ASTask *)v9 setDelegate:self];
  taskManager = [(ASPolicyPreflighter *)self taskManager];
  [taskManager submitExclusiveTask:v9];
}

- (void)acknowledgeIntentionToRemoteWipe
{
  v3 = [ASProvisionTask alloc];
  policy = [(ASPolicyPreflighter *)self policy];
  policy2 = [(ASPolicyPreflighter *)self policy];
  v6 = [policy2 key];
  v8 = [(ASProvisionTask *)v3 initWithRemoteWipeAcknowledgement:policy withKey:v6];

  [(ASTask *)v8 setDelegate:self];
  taskManager = [(ASPolicyPreflighter *)self taskManager];
  [taskManager submitExclusiveTask:v8];
}

- (void)cancelPendingPreflightRequest
{
  [(ASPolicyPreflighter *)self setDelegate:0];
  taskManager = [(ASPolicyPreflighter *)self taskManager];
  [taskManager cancelAllTasks];
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