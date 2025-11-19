@interface GKChallengeEventHandler
+ (GKChallengeEventHandler)challengeEventHandler;
- (id)delegate;
- (void)challengeCompleted:(id)a3;
- (void)challengeReceived:(id)a3;
- (void)completedChallengeSelected:(id)a3;
- (void)receivedChallengeSelected:(id)a3;
- (void)setDelegate:(id)delegate;
- (void)showBannerForChallenge:(id)a3 complete:(id)a4;
@end

@implementation GKChallengeEventHandler

+ (GKChallengeEventHandler)challengeEventHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__GKChallengeEventHandler_challengeEventHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (challengeEventHandler_onceToken != -1)
  {
    dispatch_once(&challengeEventHandler_onceToken, block);
  }

  v2 = challengeEventHandler_sSharedChallengeEventHandler;

  return v2;
}

uint64_t __48__GKChallengeEventHandler_challengeEventHandler__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(GKChallengeEventHandler);
  v3 = challengeEventHandler_sSharedChallengeEventHandler;
  challengeEventHandler_sSharedChallengeEventHandler = v2;

  v4 = objc_alloc_init([*(a1 + 32) uiDelegateClass]);
  v5 = _block_invoke_sUIDelegate;
  _block_invoke_sUIDelegate = v4;

  v6 = _block_invoke_sUIDelegate;
  v7 = challengeEventHandler_sSharedChallengeEventHandler;

  return [v7 setUiDelegate:v6];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);

    v6 = obj;
    if (v7 != obj)
    {
      v5 = objc_storeWeak(&self->_delegate, obj);
      if (self->_pendingReceivedChallenge)
      {
        [(GKChallengeEventHandler *)self receivedChallengeSelected:?];
        v5 = [(GKChallengeEventHandler *)self setPendingReceivedChallenge:0];
      }

      v6 = obj;
      if (self->_pendingCompletedChallenge)
      {
        [(GKChallengeEventHandler *)self completedChallengeSelected:?];
        v5 = [(GKChallengeEventHandler *)self setPendingCompletedChallenge:0];
        v6 = obj;
      }
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)receivedChallengeSelected:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(GKChallengeEventHandler *)self delegate];
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [GKChallenge challengeForInternalRepresentation:v7];
        [v5 localPlayerDidSelectChallenge:v6];
      }
    }

    else
    {
      [(GKChallengeEventHandler *)self setPendingReceivedChallenge:v7];
    }

    v4 = v7;
  }
}

- (void)completedChallengeSelected:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    v5 = [(GKChallengeEventHandler *)self delegate];
    if (v5)
    {
      v6 = [GKChallenge challengeForInternalRepresentation:v14];
      v7 = [v6 receivingPlayer];
      v8 = [v7 internal];
      v9 = [v8 playerID];
      v10 = +[GKLocalPlayer localPlayer];
      v11 = [v10 internal];
      v12 = [v11 playerID];
      v13 = [v9 isEqualToString:v12];

      if (v13)
      {
        if (objc_opt_respondsToSelector())
        {
          [v5 localPlayerDidCompleteChallenge:v6];
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        [v5 remotePlayerDidCompleteChallenge:v6];
      }
    }

    else
    {
      [(GKChallengeEventHandler *)self setPendingCompletedChallenge:v14];
    }

    v4 = v14;
  }
}

- (void)challengeReceived:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = [GKChallenge challengeForInternalRepresentation:v4];
  v6 = [(GKChallengeEventHandler *)self delegate];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 infoDictionary];

  v9 = [v8 objectForKey:@"GKShowChallengeBanners"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 BOOLValue];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (!v11)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_8:
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__GKChallengeEventHandler_challengeReceived___block_invoke;
    v12[3] = &unk_2785DDB40;
    v12[4] = self;
    v13 = v5;
    v14 = v4;
    [(GKChallengeEventHandler *)self showBannerForChallenge:v13 complete:v12];

    goto LABEL_9;
  }

  if ([v6 shouldShowBannerForLocallyReceivedChallenge:v5])
  {
    goto LABEL_8;
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    [v6 localPlayerDidReceiveChallenge:v5];
  }

LABEL_12:
}

void __45__GKChallengeEventHandler_challengeReceived___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 localPlayerDidSelectChallenge:*(a1 + 40)];
  }

  if (!v4)
  {
    [*(a1 + 32) setPendingReceivedChallenge:*(a1 + 48)];
  }

  v2 = +[GKLocalPlayer localPlayer];
  v3 = [v2 eventEmitter];
  [v3 player:v2 wantsToPlayChallenge:*(a1 + 40)];
}

- (void)challengeCompleted:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_23;
  }

  v23 = v4;
  v6 = [GKChallenge challengeForInternalRepresentation:v4];
  v7 = [(GKChallengeEventHandler *)self delegate];
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 infoDictionary];

  v21 = v9;
  v10 = [v9 objectForKey:@"GKShowChallengeBanners"];
  v11 = v10;
  v22 = self;
  if (v10)
  {
    v20 = [v10 BOOLValue];
  }

  else
  {
    v20 = 1;
  }

  v12 = [v6 receivingPlayer];
  v13 = [v12 internal];
  v14 = [v13 playerID];
  v15 = +[GKLocalPlayer localPlayer];
  v16 = [v15 internal];
  v17 = [v16 playerID];
  v18 = [v14 isEqualToString:v17];

  if (!v18)
  {
    v19 = v22;
    if (objc_opt_respondsToSelector())
    {
      if (([v7 shouldShowBannerForRemotelyCompletedChallenge:v6] & 1) == 0)
      {
LABEL_18:
        if (objc_opt_respondsToSelector())
        {
          [v7 remotePlayerDidCompleteChallenge:v6];
        }

        goto LABEL_20;
      }
    }

    else if (!v20)
    {
      goto LABEL_18;
    }

    [(GKChallengeEventHandler *)v22 showBannerForChallenge:v6 complete:0];
    goto LABEL_18;
  }

  v19 = v22;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([v7 shouldShowBannerForLocallyCompletedChallenge:v6])
  {
LABEL_13:
    [(GKChallengeEventHandler *)v22 showBannerForChallenge:v6 complete:0];
  }

LABEL_14:
  if (objc_opt_respondsToSelector())
  {
    [v7 localPlayerDidCompleteChallenge:v6];
  }

LABEL_20:
  if (!v7)
  {
    [(GKChallengeEventHandler *)v19 setPendingCompletedChallenge:v23];
  }

  v5 = v23;
LABEL_23:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)showBannerForChallenge:(id)a3 complete:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 receivingPlayer];
  v8 = [v12 issuingPlayer];
  if ([v12 state] == 1)
  {
    uiDelegate = self->_uiDelegate;
    if (objc_opt_respondsToSelector())
    {
      [(GKChallengeEventHandlerUIDelegate *)self->_uiDelegate showReceivedBannerForIssuingPlayer:v8 challenge:v12 handler:v6];
    }
  }

  else
  {
    v10 = [v7 isLocalPlayer];
    v11 = self->_uiDelegate;
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [(GKChallengeEventHandlerUIDelegate *)self->_uiDelegate showLocallyCompletedBannerForIssuingPlayer:v8 challenge:v12 handler:v6];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [(GKChallengeEventHandlerUIDelegate *)self->_uiDelegate showRemotelyCompletedBannerForReceivingPlayer:v7 challenge:v12 handler:v6];
    }
  }
}

@end