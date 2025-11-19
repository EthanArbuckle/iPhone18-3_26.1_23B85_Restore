@interface GKChallengeEventHandlerUIDelegate
- (void)showLocallyCompletedBannerForIssuingPlayer:(id)a3 challenge:(id)a4 handler:(id)a5;
- (void)showReceivedBannerForIssuingPlayer:(id)a3 challenge:(id)a4 handler:(id)a5;
- (void)showRemotelyCompletedBannerForReceivingPlayer:(id)a3 challenge:(id)a4 handler:(id)a5;
@end

@implementation GKChallengeEventHandlerUIDelegate

- (void)showReceivedBannerForIssuingPlayer:(id)a3 challenge:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v14 = [a4 alertGoalText];
  v9 = [v8 displayNameWithOptions:0];
  v10 = MEMORY[0x277CCACA8];
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v13 = [v10 stringWithFormat:v12, v14];

  if (GKApplicationLinkedOnOrAfter())
  {
    [GKNotificationBanner showBannerWithTitle:v9 player:v8 message:v13 touchHandler:v7];
  }

  else
  {
    [GKNotificationBanner showBannerWithTitle:v9 player:v8 message:v13 completionHandler:v7];
  }
}

- (void)showRemotelyCompletedBannerForReceivingPlayer:(id)a3 challenge:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v14 = [a4 alertGoalText];
  v9 = [v8 displayNameWithOptions:0];
  v10 = MEMORY[0x277CCACA8];
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();
  v13 = [v10 stringWithFormat:v12, v14];

  if (GKApplicationLinkedOnOrAfter())
  {
    [GKNotificationBanner showBannerWithTitle:v9 player:v8 message:v13 touchHandler:v7];
  }

  else
  {
    [GKNotificationBanner showBannerWithTitle:v9 player:v8 message:v13 completionHandler:v7];
  }
}

- (void)showLocallyCompletedBannerForIssuingPlayer:(id)a3 challenge:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__GKChallengeEventHandlerUIDelegate_showLocallyCompletedBannerForIssuingPlayer_challenge_handler___block_invoke;
  v13[3] = &unk_27966BF40;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v10 = v9;
  v11 = v7;
  v12 = v8;
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