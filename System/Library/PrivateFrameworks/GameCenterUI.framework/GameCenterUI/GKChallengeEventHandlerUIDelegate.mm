@interface GKChallengeEventHandlerUIDelegate
- (void)showLocallyCompletedBannerForIssuingPlayer:(id)player challenge:(id)challenge handler:(id)handler;
- (void)showReceivedBannerForIssuingPlayer:(id)player challenge:(id)challenge handler:(id)handler;
- (void)showRemotelyCompletedBannerForReceivingPlayer:(id)player challenge:(id)challenge handler:(id)handler;
@end

@implementation GKChallengeEventHandlerUIDelegate

- (void)showReceivedBannerForIssuingPlayer:(id)player challenge:(id)challenge handler:(id)handler
{
  handlerCopy = handler;
  playerCopy = player;
  alertGoalText = [challenge alertGoalText];
  v9 = [playerCopy displayNameWithOptions:0];
  v10 = MEMORY[0x277CCACA8];
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v13 = [v10 stringWithFormat:v12, alertGoalText];

  if (GKApplicationLinkedOnOrAfter())
  {
    [GKNotificationBanner showBannerWithTitle:v9 player:playerCopy message:v13 touchHandler:handlerCopy];
  }

  else
  {
    [GKNotificationBanner showBannerWithTitle:v9 player:playerCopy message:v13 completionHandler:handlerCopy];
  }
}

- (void)showRemotelyCompletedBannerForReceivingPlayer:(id)player challenge:(id)challenge handler:(id)handler
{
  handlerCopy = handler;
  playerCopy = player;
  alertGoalText = [challenge alertGoalText];
  v9 = [playerCopy displayNameWithOptions:0];
  v10 = MEMORY[0x277CCACA8];
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v13 = [v10 stringWithFormat:v12, alertGoalText];

  if (GKApplicationLinkedOnOrAfter())
  {
    [GKNotificationBanner showBannerWithTitle:v9 player:playerCopy message:v13 touchHandler:handlerCopy];
  }

  else
  {
    [GKNotificationBanner showBannerWithTitle:v9 player:playerCopy message:v13 completionHandler:handlerCopy];
  }
}

- (void)showLocallyCompletedBannerForIssuingPlayer:(id)player challenge:(id)challenge handler:(id)handler
{
  playerCopy = player;
  challengeCopy = challenge;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__GKChallengeEventHandlerUIDelegate_showLocallyCompletedBannerForIssuingPlayer_challenge_handler___block_invoke;
  v13[3] = &unk_27966BF40;
  v14 = challengeCopy;
  v15 = playerCopy;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = playerCopy;
  v12 = challengeCopy;
  [v12 loadBannerImageWithHandler:v13];
}

void __98__GKChallengeEventHandlerUIDelegate_showLocallyCompletedBannerForIssuingPlayer_challenge_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v14 = [v3 alertGoalText];
  v5 = MEMORY[0x277CCACA8];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  v8 = [*(a1 + 40) displayNameWithOptions:0];
  v9 = [v5 stringWithFormat:v7, v8, v14];

  v10 = GKApplicationLinkedOnOrAfter();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v13 = *(a1 + 48);
  if (v10)
  {
    [GKNotificationBanner showBannerWithTitle:v12 image:v4 message:v9 touchHandler:v13];
  }

  else
  {
    [GKNotificationBanner showBannerWithTitle:v12 image:v4 message:v9 completionHandler:v13];
  }
}

@end