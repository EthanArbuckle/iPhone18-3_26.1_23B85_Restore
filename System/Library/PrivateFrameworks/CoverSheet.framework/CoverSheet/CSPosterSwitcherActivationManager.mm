@interface CSPosterSwitcherActivationManager
- (BOOL)handleEvent:(id)event;
- (CSPosterSwitcherActivationManager)initWithSource:(id)source delegate:(id)delegate unlockRequester:(id)requester;
- (CSPosterSwitcherActivationManagerDelegate)delegate;
- (CSPosterSwitcherActivationSource)source;
- (void)_failActivationWithReason:(unint64_t)reason completion:(id)completion;
- (void)_presentCoachingMessage:(unint64_t)message;
- (void)_resetUnauthenticatedActivationAttemptCount;
- (void)activateWithHandler:(id)handler onFailure:(id)failure;
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

- (CSPosterSwitcherActivationManager)initWithSource:(id)source delegate:(id)delegate unlockRequester:(id)requester
{
  sourceCopy = source;
  delegateCopy = delegate;
  requesterCopy = requester;
  v14.receiver = self;
  v14.super_class = CSPosterSwitcherActivationManager;
  v11 = [(CSPosterSwitcherActivationManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_source, sourceCopy);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v12->_unlockRequester, requester);
    v12->_hasBeenCoachedSinceReset = 0;
  }

  return v12;
}

- (void)activateWithHandler:(id)handler onFailure:(id)failure
{
  handlerCopy = handler;
  failureCopy = failure;
  WeakRetained = objc_loadWeakRetained(&self->_source);
  posterSwitcherPresentationStatus = [WeakRetained posterSwitcherPresentationStatus];

  state = [posterSwitcherPresentationStatus state];
  switch(state)
  {
    case 2:
      failureCopy[2](failureCopy, @"Poster switcher is already presented", 0);
      break;
    case 1:
      handlerCopy[2](handlerCopy);
      break;
    case 0:
      notReadyReason = [posterSwitcherPresentationStatus notReadyReason];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __67__CSPosterSwitcherActivationManager_activateWithHandler_onFailure___block_invoke;
      v12[3] = &unk_27838D5D8;
      v14 = handlerCopy;
      v15 = failureCopy;
      v13 = posterSwitcherPresentationStatus;
      [(CSPosterSwitcherActivationManager *)self _failActivationWithReason:notReadyReason completion:v12];

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

- (BOOL)handleEvent:(id)event
{
  type = [event type];
  if (type == 25 || type == 12)
  {
    [(CSPosterSwitcherActivationManager *)self _resetUnauthenticatedActivationAttemptCount];
  }

  return 0;
}

- (void)_presentCoachingMessage:(unint64_t)message
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (message == 1)
  {
    v8 = WeakRetained;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"POSTER_SWITCHER_UNLOCK_TO_EDIT" value:&stru_28302FDA0 table:@"SpringBoardUIServices"];
    [v8 posterSwitcherActivationManager:self didChangeToCoachingText:v7];
  }

  else
  {
    if (message)
    {
      goto LABEL_6;
    }

    v8 = WeakRetained;
    [WeakRetained posterSwitcherActivationManager:self didChangeToCoachingText:0];
  }

  WeakRetained = v8;
LABEL_6:
}

- (void)_failActivationWithReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  if (reason > 5)
  {
    goto LABEL_4;
  }

  if (reason != 2)
  {
    [(CSPosterSwitcherActivationManager *)self _resetUnauthenticatedActivationAttemptCount];
LABEL_4:
    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_5;
  }

  if (self->_hasBeenCoachedSinceReset)
  {
    createUnlockRequest = [(CSUnlockRequesting *)self->_unlockRequester createUnlockRequest];
    [createUnlockRequest setIntent:2];
    [createUnlockRequest setSource:25];
    [createUnlockRequest setWantsBiometricPresentation:1];
    [createUnlockRequest setConfirmedNotInPocket:1];
    unlockRequester = self->_unlockRequester;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__CSPosterSwitcherActivationManager__failActivationWithReason_completion___block_invoke;
    v10[3] = &unk_27838C010;
    v10[4] = self;
    v11 = completionCopy;
    [(CSUnlockRequesting *)unlockRequester unlockWithRequest:createUnlockRequest completion:v10];
  }

  else
  {
    self->_hasBeenCoachedSinceReset = 1;
    [(CSPosterSwitcherActivationManager *)self _presentCoachingMessage:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    (*(completionCopy + 2))(completionCopy, 0, [WeakRetained userPresenceDetectedSinceWake] ^ 1);
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