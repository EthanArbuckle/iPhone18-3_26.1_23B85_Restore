@interface GKChallengeEventHandler
+ (GKChallengeEventHandler)challengeEventHandler;
- (id)delegate;
- (void)challengeCompleted:(id)completed;
- (void)challengeReceived:(id)received;
- (void)completedChallengeSelected:(id)selected;
- (void)receivedChallengeSelected:(id)selected;
- (void)setDelegate:(id)delegate;
- (void)showBannerForChallenge:(id)challenge complete:(id)complete;
@end

@implementation GKChallengeEventHandler

+ (GKChallengeEventHandler)challengeEventHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__GKChallengeEventHandler_challengeEventHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)receivedChallengeSelected:(id)selected
{
  selectedCopy = selected;
  if (selectedCopy)
  {
    v7 = selectedCopy;
    delegate = [(GKChallengeEventHandler *)self delegate];
    if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [GKChallenge challengeForInternalRepresentation:v7];
        [delegate localPlayerDidSelectChallenge:v6];
      }
    }

    else
    {
      [(GKChallengeEventHandler *)self setPendingReceivedChallenge:v7];
    }

    selectedCopy = v7;
  }
}

- (void)completedChallengeSelected:(id)selected
{
  selectedCopy = selected;
  if (selectedCopy)
  {
    v14 = selectedCopy;
    delegate = [(GKChallengeEventHandler *)self delegate];
    if (delegate)
    {
      v6 = [GKChallenge challengeForInternalRepresentation:v14];
      receivingPlayer = [v6 receivingPlayer];
      internal = [receivingPlayer internal];
      playerID = [internal playerID];
      v10 = +[GKLocalPlayer localPlayer];
      internal2 = [v10 internal];
      playerID2 = [internal2 playerID];
      v13 = [playerID isEqualToString:playerID2];

      if (v13)
      {
        if (objc_opt_respondsToSelector())
        {
          [delegate localPlayerDidCompleteChallenge:v6];
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        [delegate remotePlayerDidCompleteChallenge:v6];
      }
    }

    else
    {
      [(GKChallengeEventHandler *)self setPendingCompletedChallenge:v14];
    }

    selectedCopy = v14;
  }
}

- (void)challengeReceived:(id)received
{
  receivedCopy = received;
  if (!receivedCopy)
  {
    goto LABEL_12;
  }

  v5 = [GKChallenge challengeForInternalRepresentation:receivedCopy];
  delegate = [(GKChallengeEventHandler *)self delegate];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v9 = [infoDictionary objectForKey:@"GKShowChallengeBanners"];
  v10 = v9;
  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (!bOOLValue)
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
    v14 = receivedCopy;
    [(GKChallengeEventHandler *)self showBannerForChallenge:v13 complete:v12];

    goto LABEL_9;
  }

  if ([delegate shouldShowBannerForLocallyReceivedChallenge:v5])
  {
    goto LABEL_8;
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    [delegate localPlayerDidReceiveChallenge:v5];
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

- (void)challengeCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (!completedCopy)
  {
    goto LABEL_23;
  }

  v23 = completedCopy;
  v6 = [GKChallenge challengeForInternalRepresentation:completedCopy];
  delegate = [(GKChallengeEventHandler *)self delegate];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v21 = infoDictionary;
  v10 = [infoDictionary objectForKey:@"GKShowChallengeBanners"];
  v11 = v10;
  selfCopy = self;
  if (v10)
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  receivingPlayer = [v6 receivingPlayer];
  internal = [receivingPlayer internal];
  playerID = [internal playerID];
  v15 = +[GKLocalPlayer localPlayer];
  internal2 = [v15 internal];
  playerID2 = [internal2 playerID];
  v18 = [playerID isEqualToString:playerID2];

  if (!v18)
  {
    v19 = selfCopy;
    if (objc_opt_respondsToSelector())
    {
      if (([delegate shouldShowBannerForRemotelyCompletedChallenge:v6] & 1) == 0)
      {
LABEL_18:
        if (objc_opt_respondsToSelector())
        {
          [delegate remotePlayerDidCompleteChallenge:v6];
        }

        goto LABEL_20;
      }
    }

    else if (!bOOLValue)
    {
      goto LABEL_18;
    }

    [(GKChallengeEventHandler *)selfCopy showBannerForChallenge:v6 complete:0];
    goto LABEL_18;
  }

  v19 = selfCopy;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!bOOLValue)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([delegate shouldShowBannerForLocallyCompletedChallenge:v6])
  {
LABEL_13:
    [(GKChallengeEventHandler *)selfCopy showBannerForChallenge:v6 complete:0];
  }

LABEL_14:
  if (objc_opt_respondsToSelector())
  {
    [delegate localPlayerDidCompleteChallenge:v6];
  }

LABEL_20:
  if (!delegate)
  {
    [(GKChallengeEventHandler *)v19 setPendingCompletedChallenge:v23];
  }

  v5 = v23;
LABEL_23:

  MEMORY[0x2821F96F8](completedCopy, v5);
}

- (void)showBannerForChallenge:(id)challenge complete:(id)complete
{
  challengeCopy = challenge;
  completeCopy = complete;
  receivingPlayer = [challengeCopy receivingPlayer];
  issuingPlayer = [challengeCopy issuingPlayer];
  if ([challengeCopy state] == 1)
  {
    uiDelegate = self->_uiDelegate;
    if (objc_opt_respondsToSelector())
    {
      [(GKChallengeEventHandlerUIDelegate *)self->_uiDelegate showReceivedBannerForIssuingPlayer:issuingPlayer challenge:challengeCopy handler:completeCopy];
    }
  }

  else
  {
    isLocalPlayer = [receivingPlayer isLocalPlayer];
    v11 = self->_uiDelegate;
    if (isLocalPlayer)
    {
      if (objc_opt_respondsToSelector())
      {
        [(GKChallengeEventHandlerUIDelegate *)self->_uiDelegate showLocallyCompletedBannerForIssuingPlayer:issuingPlayer challenge:challengeCopy handler:completeCopy];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [(GKChallengeEventHandlerUIDelegate *)self->_uiDelegate showRemotelyCompletedBannerForReceivingPlayer:receivingPlayer challenge:challengeCopy handler:completeCopy];
    }
  }
}

@end