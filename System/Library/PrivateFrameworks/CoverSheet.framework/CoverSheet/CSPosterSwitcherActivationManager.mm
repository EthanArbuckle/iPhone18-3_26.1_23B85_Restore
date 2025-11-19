@interface CSPosterSwitcherActivationManager
- (BOOL)handleEvent:(id)a3;
- (CSPosterSwitcherActivationManager)initWithSource:(id)a3 delegate:(id)a4 unlockRequester:(id)a5;
- (CSPosterSwitcherActivationManagerDelegate)delegate;
- (CSPosterSwitcherActivationSource)source;
- (void)_failActivationWithReason:(unint64_t)a3 completion:(id)a4;
- (void)_presentCoachingMessage:(unint64_t)a3;
- (void)_resetUnauthenticatedActivationAttemptCount;
- (void)activateWithHandler:(id)a3 onFailure:(id)a4;
@end

@implementation CSPosterSwitcherActivationManager

- (void)_resetUnauthenticatedActivationAttemptCount
{
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "PosterSwitcherActivationManager attempt count reset", v4, 2u);
  }

  self->_hasBeenCoachedSinceReset = 0;
}

- (CSPosterSwitcherActivationManager)initWithSource:(id)a3 delegate:(id)a4 unlockRequester:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CSPosterSwitcherActivationManager;
  v11 = [(CSPosterSwitcherActivationManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_source, v8);
    objc_storeWeak(&v12->_delegate, v9);
    objc_storeStrong(&v12->_unlockRequester, a5);
    v12->_hasBeenCoachedSinceReset = 0;
  }

  return v12;
}

- (void)activateWithHandler:(id)a3 onFailure:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_source);
  v9 = [WeakRetained posterSwitcherPresentationStatus];

  v10 = [v9 state];
  switch(v10)
  {
    case 2:
      v7[2](v7, @"Poster switcher is already presented", 0);
      break;
    case 1:
      v6[2](v6);
      break;
    case 0:
      v11 = [v9 notReadyReason];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __67__CSPosterSwitcherActivationManager_activateWithHandler_onFailure___block_invoke;
      v12[3] = &unk_27838D5D8;
      v14 = v6;
      v15 = v7;
      v13 = v9;
      [(CSPosterSwitcherActivationManager *)self _failActivationWithReason:v11 completion:v12];

      break;
  }
}

void __67__CSPosterSwitcherActivationManager_activateWithHandler_onFailure___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 48);
    v8 = NSStringForCSPosterSwitcherPresentationNotReadyReason([*(a1 + 32) notReadyReason]);
    if (a3)
    {
      v7 = 0;
    }

    else
    {
      v7 = [*(a1 + 32) shouldProvideNotReadyFeedback];
    }

    (*(v6 + 16))(v6, v8, v7);
  }
}

- (BOOL)handleEvent:(id)a3
{
  v4 = [a3 type];
  if (v4 == 25 || v4 == 12)
  {
    [(CSPosterSwitcherActivationManager *)self _resetUnauthenticatedActivationAttemptCount];
  }

  return 0;
}

- (void)_presentCoachingMessage:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (a3 == 1)
  {
    v8 = WeakRetained;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"POSTER_SWITCHER_UNLOCK_TO_EDIT" value:&stru_28302FDA0 table:@"SpringBoardUIServices"];
    [v8 posterSwitcherActivationManager:self didChangeToCoachingText:v7];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v8 = WeakRetained;
    [WeakRetained posterSwitcherActivationManager:self didChangeToCoachingText:0];
  }

  WeakRetained = v8;
LABEL_6:
}

- (void)_failActivationWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (a3 > 5)
  {
    goto LABEL_4;
  }

  if (a3 != 2)
  {
    [(CSPosterSwitcherActivationManager *)self _resetUnauthenticatedActivationAttemptCount];
LABEL_4:
    (*(v6 + 2))(v6, 0, 0);
    goto LABEL_5;
  }

  if (self->_hasBeenCoachedSinceReset)
  {
    v7 = [(CSUnlockRequesting *)self->_unlockRequester createUnlockRequest];
    [v7 setIntent:2];
    [v7 setSource:25];
    [v7 setWantsBiometricPresentation:1];
    [v7 setConfirmedNotInPocket:1];
    unlockRequester = self->_unlockRequester;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__CSPosterSwitcherActivationManager__failActivationWithReason_completion___block_invoke;
    v10[3] = &unk_27838C010;
    v10[4] = self;
    v11 = v6;
    [(CSUnlockRequesting *)unlockRequester unlockWithRequest:v7 completion:v10];
  }

  else
  {
    self->_hasBeenCoachedSinceReset = 1;
    [(CSPosterSwitcherActivationManager *)self _presentCoachingMessage:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    (*(v6 + 2))(v6, 0, [WeakRetained userPresenceDetectedSinceWake] ^ 1);
  }

LABEL_5:
}

void __74__CSPosterSwitcherActivationManager__failActivationWithReason_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _resetUnauthenticatedActivationAttemptCount];
    v3 = dispatch_time(0, 150000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__CSPosterSwitcherActivationManager__failActivationWithReason_completion___block_invoke_2;
    block[3] = &unk_27838BB18;
    v6 = *(a1 + 40);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (CSPosterSwitcherActivationSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (CSPosterSwitcherActivationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end