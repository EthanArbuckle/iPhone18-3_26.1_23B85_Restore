@interface UIViewController(GKRestrictionAlerts)
- (void)_gkInGameUIUnavailableAlertWithRestrictionMode:()GKRestrictionAlerts dismissHandler:;
@end

@implementation UIViewController(GKRestrictionAlerts)

- (void)_gkInGameUIUnavailableAlertWithRestrictionMode:()GKRestrictionAlerts dismissHandler:
{
  v6 = a4;
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  mEMORY[0x277D0C1D8]2 = [MEMORY[0x277D0C1D8] shared];
  multiplayerAllowedPlayerType = [mEMORY[0x277D0C1D8]2 multiplayerAllowedPlayerType];

  if (![mEMORY[0x277D0C1D8] isGameCenterRestricted] && !objc_msgSend(mEMORY[0x277D0C1D8], "lockedDown") && (a3 != 2 || multiplayerAllowedPlayerType) && (a3 == 3 || (objc_msgSend(localPlayer, "isAuthenticated") & 1) != 0))
  {
    v12 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  v13 = GKGameCenterUIFrameworkBundle();
  v14 = GKGetLocalizedStringFromTableInBundle();

  if (!v12)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self setNavigationBarHidden:1];
  }

  [self setModalPresentationStyle:17];
  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v14 preferredStyle:1];
  [v15 setModalPresentationStyle:17];
  v16 = MEMORY[0x277D750F8];
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__UIViewController_GKRestrictionAlerts___gkInGameUIUnavailableAlertWithRestrictionMode_dismissHandler___block_invoke;
  v22[3] = &unk_27967F710;
  v23 = v6;
  v19 = [v16 actionWithTitle:v18 style:0 handler:v22];
  [v15 addAction:v19];

LABEL_14:
  v20 = v15;

  return v15;
}

@end