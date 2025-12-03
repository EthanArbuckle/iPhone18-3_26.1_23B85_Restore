@interface HUIncomingInvitationResponseController
- (HUIncomingInvitationResponseController)init;
- (HUIncomingInvitationResponseController)initWithDelegate:(id)delegate invitation:(id)invitation;
- (HUIncomingInvitationResponseControllerDelegate)delegate;
- (id)_acceptInvitation;
- (id)_declineInvitation;
- (id)_ignoreInvitation;
- (id)_reportJunk;
- (void)respondToInvitationWithResponse:(unint64_t)response;
- (void)setState:(unint64_t)state;
@end

@implementation HUIncomingInvitationResponseController

- (HUIncomingInvitationResponseController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDelegate_invitation_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUIncomingInvitationResponseController.m" lineNumber:40 description:{@"%s is unavailable; use %@ instead", "-[HUIncomingInvitationResponseController init]", v5}];

  return 0;
}

- (HUIncomingInvitationResponseController)initWithDelegate:(id)delegate invitation:(id)invitation
{
  delegateCopy = delegate;
  invitationCopy = invitation;
  v11.receiver = self;
  v11.super_class = HUIncomingInvitationResponseController;
  v8 = [(HUIncomingInvitationResponseController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_invitation, invitation);
  }

  return v9;
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    delegate = [(HUIncomingInvitationResponseController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(HUIncomingInvitationResponseController *)self delegate];
      [delegate2 invitationResponseController:self stateDidChange:state];
    }
  }
}

- (void)respondToInvitationWithResponse:(unint64_t)response
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HUIncomingInvitationResponseController *)self state])
  {
    NSLog(&cfstr_RespondingTwic.isa);
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      responseCopy = response;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUIncomingInvitationResponseController respondToInvitationWithResponse]: %ld", buf, 0xCu);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__HUIncomingInvitationResponseController_respondToInvitationWithResponse___block_invoke;
    v11[3] = &unk_277DBDDF0;
    v11[4] = self;
    v11[5] = response;
    v6 = __74__HUIncomingInvitationResponseController_respondToInvitationWithResponse___block_invoke(v11);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HUIncomingInvitationResponseController_respondToInvitationWithResponse___block_invoke_2;
    v10[3] = &unk_277DBA338;
    v10[4] = self;
    v7 = [v6 addSuccessBlock:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__HUIncomingInvitationResponseController_respondToInvitationWithResponse___block_invoke_3;
    v9[3] = &unk_277DB8E70;
    v9[4] = self;
    v9[5] = response;
    v8 = [v7 addFailureBlock:v9];
  }
}

id __74__HUIncomingInvitationResponseController_respondToInvitationWithResponse___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setResponse:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = [MEMORY[0x277D2C900] futureWithNoResult];
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = [*(a1 + 32) _acceptInvitation];
      goto LABEL_12;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v3 = [*(a1 + 32) _declineInvitation];
        goto LABEL_12;
      case 3:
        v3 = [*(a1 + 32) _ignoreInvitation];
        goto LABEL_12;
      case 4:
        v3 = [*(a1 + 32) _reportJunk];
LABEL_12:
        v4 = v3;
        goto LABEL_13;
    }
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  NSLog(&cfstr_UnknownRespons.isa, v6);

  v7 = MEMORY[0x277D2C900];
  v8 = [MEMORY[0x277CCA9B8] na_genericError];
  v4 = [v7 futureWithError:v8];

LABEL_13:

  return v4;
}

void __74__HUIncomingInvitationResponseController_respondToInvitationWithResponse___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v8 = 134218242;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "respondToInvitationWithResponse: Processing error. response: %ld error: %{public}@", &v8, 0x16u);
  }

  if ((*(a1 + 40) - 1) > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *MEMORY[0x277D13CA0];
  }

  v7 = [MEMORY[0x277D14640] sharedHandler];
  [v7 handleError:v3 operationType:v6 options:0 retryBlock:0 cancelBlock:0];

  [*(a1 + 32) setError:v3];
  [*(a1 + 32) setState:3];
}

- (id)_ignoreInvitation
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HUIncomingInvitationResponseController__ignoreInvitation__block_invoke;
  v4[3] = &unk_277DB7508;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v4];

  return v2;
}

void __59__HUIncomingInvitationResponseController__ignoreInvitation__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) invitation];
    v6 = [v5 hf_prettyDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring invite %@", &v8, 0xCu);
  }

  [*(a1 + 32) setState:1];
  v7 = [*(a1 + 32) invitation];
  [v7 ignoreInviteWithCompletionHandler:v3];
}

- (id)_declineInvitation
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HUIncomingInvitationResponseController__declineInvitation__block_invoke;
  v4[3] = &unk_277DB7508;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v4];

  return v2;
}

void __60__HUIncomingInvitationResponseController__declineInvitation__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) invitation];
    v6 = [v5 hf_prettyDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Declining invite %@", &v8, 0xCu);
  }

  [*(a1 + 32) setState:1];
  v7 = [*(a1 + 32) invitation];
  [v7 cancelInviteWithCompletionHandler:v3];
}

- (id)_acceptInvitation
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HUIncomingInvitationResponseController__acceptInvitation__block_invoke;
  v4[3] = &unk_277DB7508;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v4];

  return v2;
}

void __59__HUIncomingInvitationResponseController__acceptInvitation__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) invitation];
    v6 = [v5 hf_prettyDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Accepting invite %@", &v8, 0xCu);
  }

  [*(a1 + 32) setState:1];
  v7 = [*(a1 + 32) invitation];
  [v7 acceptInviteWithCompletionHandler:v3];
}

- (id)_reportJunk
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HUIncomingInvitationResponseController__reportJunk__block_invoke;
  v4[3] = &unk_277DB7508;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v4];

  return v2;
}

void __53__HUIncomingInvitationResponseController__reportJunk__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) invitation];
    v6 = [v5 hf_prettyDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Reporting invite as junk %@", &v8, 0xCu);
  }

  [*(a1 + 32) setState:1];
  v7 = [*(a1 + 32) invitation];
  [v7 reportJunkInviteWithCompletionHandler:v3];
}

- (HUIncomingInvitationResponseControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end